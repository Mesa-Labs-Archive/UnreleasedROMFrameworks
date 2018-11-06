.class final Lcom/android/server/am/MultiWindowManagerService$H;
.super Landroid/os/Handler;
.source "MultiWindowManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/MultiWindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "H"
.end annotation


# static fields
.field public static final NOTIFY_ACTIVITY_STACK_ATTACHED:I = 0x1

.field public static final NOTIFY_ACTIVITY_STACK_DETACHED:I = 0x2

.field public static final NOTIFY_ADD_APPPAIR_SHORTCUT_ONE_APP_FAIL_TOAST:I = 0xd1

.field public static final NOTIFY_ADD_APPPAIR_SHORTCUT_OTHER_WORKSPACE_FAIL_TOAST:I = 0xd4

.field public static final NOTIFY_ADD_APPPAIR_SHORTCUT_SECURE_FOLDER_FAIL_TOAST:I = 0xd3

.field public static final NOTIFY_ADD_APPPAIR_SHORTCUT_TWO_APP_FAIL_TOAST:I = 0xd2

.field public static final NOTIFY_APPLY_FREEFORM_MINIMIZE_POLICY:I = 0x68

.field public static final NOTIFY_AUTO_RESIZE_STATE_CHANGED:I = 0xca

.field public static final NOTIFY_COV_APPS_REMOVED:I = 0x12d

.field public static final NOTIFY_DOCKED_STACK_MINIMIZED_CHANGED:I = 0xcd

.field public static final NOTIFY_DOCKED_TASK_TO_BACK_TRANSITION_FINISHED:I = 0xd0

.field public static final NOTIFY_FOCUS_STACK_CHANGED:I = 0xc9

.field public static final NOTIFY_FREEFORM_MINIMIZE_STATE_CHANGED:I = 0x65

.field public static final NOTIFY_FREEFORM_WINDOW_ANIMATION_END:I = 0x66

.field public static final NOTIFY_MULTIWINDOW_ENABLE_CHANGED:I = 0xcb

.field public static final NOTIFY_PROCESS_KILL_BY_CLOSING_FREEFORM:I = 0x69

.field public static final NOTIFY_SCREEN_FREEZE_ANIMATION_FINISHED:I = 0xcc

.field public static final NOTIFY_SNAP_WINDOW_DISMISSED:I = 0xce

.field public static final SCHEDULE_INITIALIZE_PAIRACTIVITY_MODE:I = 0xcf

.field public static final SCHEDULE_INITIALIZE_PAIRACTIVITY_MODE_DURATON:I = 0x7d0

.field public static final SCHEDULE_MINIMIZE_ALL:I = 0x67

.field public static final SOURCE_RECORD_NOT_SUPPORT_FREEFORM:I = 0x6a


# instance fields
.field final synthetic this$0:Lcom/android/server/am/MultiWindowManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/MultiWindowManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 60

    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->what:I

    sparse-switch v13, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v13}, Lcom/android/server/am/MultiWindowManagerService;->-get2(Lcom/android/server/am/MultiWindowManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v14

    monitor-enter v14

    :try_start_0
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Lcom/android/internal/os/SomeArgs;

    move-object/from16 v0, v21

    iget-object v13, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v13, Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v46

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    move-object/from16 v43, v0

    check-cast v43, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v13}, Lcom/android/server/am/MultiWindowManagerService;->-get2(Lcom/android/server/am/MultiWindowManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v13

    invoke-virtual {v13}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v19

    const/16 v37, 0x0

    :goto_1
    move/from16 v0, v37

    move/from16 v1, v19

    if-ge v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v13}, Lcom/android/server/am/MultiWindowManagerService;->-get2(Lcom/android/server/am/MultiWindowManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v13

    move/from16 v0, v37

    invoke-virtual {v13, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v41

    check-cast v41, Lcom/samsung/android/chatovervideo/IChatOverVideoCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    move-object/from16 v0, v41

    move/from16 v1, v46

    move-object/from16 v2, v43

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/chatovervideo/IChatOverVideoCallback;->onAppsRemoved(ZLjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    add-int/lit8 v37, v37, 0x1

    goto :goto_1

    :catch_0
    move-exception v31

    :try_start_2
    const-string/jumbo v13, "MultiWindowManager"

    const-string/jumbo v15, "onStateChanged, RemoteException occured"

    invoke-static {v13, v15}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v13

    monitor-exit v14

    throw v13

    :cond_1
    :try_start_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v13}, Lcom/android/server/am/MultiWindowManagerService;->-get2(Lcom/android/server/am/MultiWindowManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v13

    invoke-virtual {v13}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_3
    monitor-exit v14

    goto :goto_0

    :sswitch_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v13}, Lcom/android/server/am/MultiWindowManagerService;->-get3(Lcom/android/server/am/MultiWindowManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v14

    monitor-enter v14

    :try_start_4
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Lcom/android/internal/os/SomeArgs;

    move-object/from16 v0, v21

    iget v7, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    move-object/from16 v0, v21

    iget v9, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    move-object/from16 v0, v21

    iget v10, v0, Lcom/android/internal/os/SomeArgs;->argi3:I

    move-object/from16 v0, v21

    iget-object v6, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v6, Landroid/graphics/Rect;

    move-object/from16 v0, v21

    iget-object v8, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v8, Landroid/content/ComponentName;

    move-object/from16 v0, v21

    iget-object v11, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v11, Landroid/os/Bundle;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v13}, Lcom/android/server/am/MultiWindowManagerService;->-get3(Lcom/android/server/am/MultiWindowManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v13

    invoke-virtual {v13}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v19

    const/16 v37, 0x0

    :goto_4
    move/from16 v0, v37

    move/from16 v1, v19

    if-ge v0, v1, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v13}, Lcom/android/server/am/MultiWindowManagerService;->-get3(Lcom/android/server/am/MultiWindowManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v13

    move/from16 v0, v37

    invoke-virtual {v13, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/multiwindow/IMultiWindowCallback;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    invoke-interface/range {v5 .. v11}, Lcom/samsung/android/multiwindow/IMultiWindowCallback;->onStateChanged(Landroid/graphics/Rect;ILandroid/content/ComponentName;IILandroid/os/Bundle;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :goto_5
    add-int/lit8 v37, v37, 0x1

    goto :goto_4

    :catch_1
    move-exception v31

    :try_start_6
    const-string/jumbo v13, "MultiWindowManager"

    const-string/jumbo v15, "onStateChanged, RemoteException occured"

    invoke-static {v13, v15}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception v13

    monitor-exit v14

    throw v13

    :cond_2
    :try_start_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v13}, Lcom/android/server/am/MultiWindowManagerService;->-get3(Lcom/android/server/am/MultiWindowManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v13

    invoke-virtual {v13}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_3

    :sswitch_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v13}, Lcom/android/server/am/MultiWindowManagerService;->-get3(Lcom/android/server/am/MultiWindowManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v14

    monitor-enter v14

    :try_start_8
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Lcom/android/internal/os/SomeArgs;

    move-object/from16 v0, v21

    iget v7, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    move/from16 v58, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    move-object/from16 v53, v0

    check-cast v53, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v13}, Lcom/android/server/am/MultiWindowManagerService;->-get3(Lcom/android/server/am/MultiWindowManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v13

    invoke-virtual {v13}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v19

    const/16 v37, 0x0

    :goto_6
    move/from16 v0, v37

    move/from16 v1, v19

    if-ge v0, v1, :cond_3

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v13}, Lcom/android/server/am/MultiWindowManagerService;->-get3(Lcom/android/server/am/MultiWindowManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v13

    move/from16 v0, v37

    invoke-virtual {v13, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/multiwindow/IMultiWindowCallback;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    move/from16 v0, v58

    move-object/from16 v1, v53

    invoke-interface {v5, v7, v0, v1}, Lcom/samsung/android/multiwindow/IMultiWindowCallback;->onAnimationEnd(IILandroid/graphics/Rect;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :goto_7
    add-int/lit8 v37, v37, 0x1

    goto :goto_6

    :catch_2
    move-exception v31

    :try_start_a
    const-string/jumbo v13, "MultiWindowManager"

    const-string/jumbo v15, "onAnimationEnd, RemoteException occured"

    invoke-static {v13, v15}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    goto :goto_7

    :catchall_2
    move-exception v13

    monitor-exit v14

    throw v13

    :cond_3
    :try_start_b
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v13}, Lcom/android/server/am/MultiWindowManagerService;->-get3(Lcom/android/server/am/MultiWindowManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v13

    invoke-virtual {v13}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    goto/16 :goto_3

    :sswitch_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v13}, Lcom/android/server/am/MultiWindowManagerService;->-get4(Lcom/android/server/am/MultiWindowManagerService;)Lcom/android/server/am/FreeformStackController;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/server/am/FreeformStackController;->minimizeAllTasksInFreeformLocked()Z

    goto/16 :goto_0

    :sswitch_4
    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v13}, Lcom/android/server/am/MultiWindowManagerService;->-get1(Lcom/android/server/am/MultiWindowManagerService;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v14

    monitor-enter v14

    :try_start_c
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v13}, Lcom/android/server/am/MultiWindowManagerService;->-get4(Lcom/android/server/am/MultiWindowManagerService;)Lcom/android/server/am/FreeformStackController;

    move-result-object v13

    invoke-virtual {v13, v7}, Lcom/android/server/am/FreeformStackController;->applyFreeformMinimizePolicyLocked(I)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    monitor-exit v14

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_0

    :catchall_3
    move-exception v13

    monitor-exit v14

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v13

    :sswitch_5
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v52, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v25, v0

    invoke-static {}, Lcom/android/server/am/MultiWindowManagerService;->-get0()Z

    move-result v13

    if-eqz v13, :cond_4

    const-string/jumbo v13, "MultiWindowManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "NOTIFY_ACTIVITY_STACK_ATTACHED, stackId="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, v52

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ", displayId="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, v25

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const/4 v13, 0x2

    move/from16 v0, v52

    if-ne v0, v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v13}, Lcom/android/server/am/MultiWindowManagerService;->-get4(Lcom/android/server/am/MultiWindowManagerService;)Lcom/android/server/am/FreeformStackController;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/server/am/FreeformStackController;->getMinimizeServiceBinder()Lcom/android/server/am/FreeformMinimizeServiceBinder;

    move-result-object v13

    const-string/jumbo v14, "freeform attached"

    invoke-virtual {v13, v14}, Lcom/android/server/am/FreeformMinimizeServiceBinder;->bindMinimizeContainerServiceIfNeeded(Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_6
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v52, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v25, v0

    invoke-static {}, Lcom/android/server/am/MultiWindowManagerService;->-get0()Z

    move-result v13

    if-eqz v13, :cond_5

    const-string/jumbo v13, "MultiWindowManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "NOTIFY_ACTIVITY_STACK_DETACHED, stackId="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, v52

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ", displayId="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, v25

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    const/4 v13, 0x2

    move/from16 v0, v52

    if-ne v0, v13, :cond_6

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v13}, Lcom/android/server/am/MultiWindowManagerService;->-get4(Lcom/android/server/am/MultiWindowManagerService;)Lcom/android/server/am/FreeformStackController;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/server/am/FreeformStackController;->getMinimizeServiceBinder()Lcom/android/server/am/FreeformMinimizeServiceBinder;

    move-result-object v13

    const-string/jumbo v14, "freeform detached"

    invoke-virtual {v13, v14}, Lcom/android/server/am/FreeformMinimizeServiceBinder;->unbindMinimizeContainerServiceIfNeeded(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    const/4 v13, 0x3

    move/from16 v0, v52

    if-ne v0, v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v13}, Lcom/android/server/am/MultiWindowManagerService;->-get1(Lcom/android/server/am/MultiWindowManagerService;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v14

    monitor-enter v14

    :try_start_d
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v13}, Lcom/android/server/am/MultiWindowManagerService;->-get6(Lcom/android/server/am/MultiWindowManagerService;)Lcom/android/server/am/ScreenFreezeAnimationManager;

    move-result-object v13

    const/4 v15, 0x0

    invoke-virtual {v13, v15}, Lcom/android/server/am/ScreenFreezeAnimationManager;->setSkipScreenFreezeAnimation(Z)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    :try_start_e
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v13}, Lcom/android/server/am/MultiWindowManagerService;->-get7(Lcom/android/server/am/MultiWindowManagerService;)Lcom/android/server/am/ActivityStackSupervisor;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/server/am/ActivityStackSupervisor;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v44

    if-eqz v44, :cond_7

    new-instance v38, Landroid/content/Intent;

    const-string/jumbo v13, "com.samsung.android.knox.container.LOCK_SECUREFOLDER"

    move-object/from16 v0, v38

    invoke-direct {v0, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v13, "userid"

    move-object/from16 v0, v44

    iget v15, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    move-object/from16 v0, v38

    invoke-virtual {v0, v13, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v13, "isHomeActivity"

    invoke-virtual/range {v44 .. v44}, Lcom/android/server/am/ActivityRecord;->isHomeActivity()Z

    move-result v15

    move-object/from16 v0, v38

    invoke-virtual {v0, v13, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v13, "componentName"

    move-object/from16 v0, v44

    iget-object v15, v0, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    move-object/from16 v0, v38

    invoke-virtual {v0, v13, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v13}, Lcom/android/server/am/MultiWindowManagerService;->-get1(Lcom/android/server/am/MultiWindowManagerService;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v13

    iget-object v13, v13, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    sget-object v15, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    move-object/from16 v0, v38

    invoke-virtual {v13, v0, v15}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v13}, Lcom/android/server/am/MultiWindowManagerService;->-get1(Lcom/android/server/am/MultiWindowManagerService;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v13

    iget-object v13, v13, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v13}, Lcom/android/server/am/UserController;->getPersonaManager()Lcom/android/server/pm/PersonaManagerService;

    move-result-object v13

    if-eqz v13, :cond_7

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v13}, Lcom/android/server/am/MultiWindowManagerService;->-get1(Lcom/android/server/am/MultiWindowManagerService;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v13

    iget-object v13, v13, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v13}, Lcom/android/server/am/UserController;->getPersonaManager()Lcom/android/server/pm/PersonaManagerService;

    move-result-object v13

    move-object/from16 v0, v44

    iget v15, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-virtual {v13, v15}, Lcom/android/server/pm/PersonaManagerService;->setFocusedUser(I)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_3
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    :cond_7
    :goto_8
    monitor-exit v14

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_0

    :catch_3
    move-exception v32

    :try_start_f
    const-string/jumbo v13, "MultiWindowManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Error sendBroadcastAsUser intent LOCK_SECUREFOLDER. event NOTIFY_ACTIVITY_STACK_DETACHED."

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, v32

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    goto :goto_8

    :catchall_4
    move-exception v13

    monitor-exit v14

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v13

    :sswitch_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v13}, Lcom/android/server/am/MultiWindowManagerService;->-get1(Lcom/android/server/am/MultiWindowManagerService;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v13

    monitor-enter v13

    :try_start_10
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    monitor-exit v13

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_0

    :catchall_5
    move-exception v14

    monitor-exit v13

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v14

    :sswitch_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v13}, Lcom/android/server/am/MultiWindowManagerService;->-get5(Lcom/android/server/am/MultiWindowManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v14

    monitor-enter v14

    :try_start_11
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v34, v0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v13}, Lcom/android/server/am/MultiWindowManagerService;->-get5(Lcom/android/server/am/MultiWindowManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v13

    invoke-virtual {v13}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v51

    const/16 v37, 0x0

    :goto_9
    move/from16 v0, v37

    move/from16 v1, v51

    if-ge v0, v1, :cond_8

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v13}, Lcom/android/server/am/MultiWindowManagerService;->-get5(Lcom/android/server/am/MultiWindowManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v13

    move/from16 v0, v37

    invoke-virtual {v13, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v39

    check-cast v39, Lcom/samsung/android/multiwindow/IMultiWindowEventListener;
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    :try_start_12
    move-object/from16 v0, v39

    move/from16 v1, v34

    invoke-interface {v0, v1}, Lcom/samsung/android/multiwindow/IMultiWindowEventListener;->onFocusStackChanged(I)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_12} :catch_4
    .catchall {:try_start_12 .. :try_end_12} :catchall_6

    :goto_a
    add-int/lit8 v37, v37, 0x1

    goto :goto_9

    :catch_4
    move-exception v31

    :try_start_13
    const-string/jumbo v13, "MultiWindowManager"

    const-string/jumbo v15, "Error delivering onFocusStackChanged event."

    move-object/from16 v0, v31

    invoke-static {v13, v15, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_6

    goto :goto_a

    :catchall_6
    move-exception v13

    monitor-exit v14

    throw v13

    :cond_8
    :try_start_14
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v13}, Lcom/android/server/am/MultiWindowManagerService;->-get5(Lcom/android/server/am/MultiWindowManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v13

    invoke-virtual {v13}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_6

    goto/16 :goto_3

    :sswitch_9
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v13}, Lcom/android/server/am/MultiWindowManagerService;->-get5(Lcom/android/server/am/MultiWindowManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v14

    monitor-enter v14

    :try_start_15
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Lcom/android/internal/os/SomeArgs;

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    move/from16 v22, v0

    move-object/from16 v0, v21

    iget v13, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    const/4 v15, 0x1

    if-ne v13, v15, :cond_9

    const/16 v47, 0x1

    :goto_b
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    move-object/from16 v30, v0

    check-cast v30, Landroid/graphics/Rect;

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    move-object/from16 v36, v0

    check-cast v36, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v13}, Lcom/android/server/am/MultiWindowManagerService;->-get5(Lcom/android/server/am/MultiWindowManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v13

    invoke-virtual {v13}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v51

    const/16 v37, 0x0

    :goto_c
    move/from16 v0, v37

    move/from16 v1, v51

    if-ge v0, v1, :cond_a

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v13}, Lcom/android/server/am/MultiWindowManagerService;->-get5(Lcom/android/server/am/MultiWindowManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v13

    move/from16 v0, v37

    invoke-virtual {v13, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v39

    check-cast v39, Lcom/samsung/android/multiwindow/IMultiWindowEventListener;
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_7

    :try_start_16
    move-object/from16 v0, v39

    move/from16 v1, v22

    move-object/from16 v2, v30

    move-object/from16 v3, v36

    move/from16 v4, v47

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/samsung/android/multiwindow/IMultiWindowEventListener;->onAutoResizeStateChanged(ILandroid/graphics/Rect;Landroid/graphics/Rect;Z)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_16} :catch_5
    .catchall {:try_start_16 .. :try_end_16} :catchall_7

    :goto_d
    add-int/lit8 v37, v37, 0x1

    goto :goto_c

    :cond_9
    const/16 v47, 0x0

    goto :goto_b

    :catch_5
    move-exception v31

    :try_start_17
    const-string/jumbo v13, "MultiWindowManager"

    const-string/jumbo v15, "Error delivering Auto-Resize state change event."

    move-object/from16 v0, v31

    invoke-static {v13, v15, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_7

    goto :goto_d

    :catchall_7
    move-exception v13

    monitor-exit v14

    throw v13

    :cond_a
    :try_start_18
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v13}, Lcom/android/server/am/MultiWindowManagerService;->-get5(Lcom/android/server/am/MultiWindowManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v13

    invoke-virtual {v13}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_7

    goto/16 :goto_3

    :sswitch_a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v13}, Lcom/android/server/am/MultiWindowManagerService;->-get5(Lcom/android/server/am/MultiWindowManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v14

    monitor-enter v14

    :try_start_19
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->arg1:I

    const/4 v15, 0x1

    if-ne v13, v15, :cond_b

    const/16 v42, 0x1

    :goto_e
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v13}, Lcom/android/server/am/MultiWindowManagerService;->-get5(Lcom/android/server/am/MultiWindowManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v13

    invoke-virtual {v13}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v51

    const/16 v37, 0x0

    :goto_f
    move/from16 v0, v37

    move/from16 v1, v51

    if-ge v0, v1, :cond_c

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v13}, Lcom/android/server/am/MultiWindowManagerService;->-get5(Lcom/android/server/am/MultiWindowManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v13

    move/from16 v0, v37

    invoke-virtual {v13, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v39

    check-cast v39, Lcom/samsung/android/multiwindow/IMultiWindowEventListener;
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_8

    :try_start_1a
    move-object/from16 v0, v39

    move/from16 v1, v42

    invoke-interface {v0, v1}, Lcom/samsung/android/multiwindow/IMultiWindowEventListener;->onMultiWindowEnableChanged(Z)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_1a} :catch_6
    .catchall {:try_start_1a .. :try_end_1a} :catchall_8

    :goto_10
    add-int/lit8 v37, v37, 0x1

    goto :goto_f

    :cond_b
    const/16 v42, 0x0

    goto :goto_e

    :catch_6
    move-exception v31

    :try_start_1b
    const-string/jumbo v13, "MultiWindowManager"

    const-string/jumbo v15, "Error delivering onMultiWindowEnableChanged event."

    move-object/from16 v0, v31

    invoke-static {v13, v15, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_8

    goto :goto_10

    :catchall_8
    move-exception v13

    monitor-exit v14

    throw v13

    :cond_c
    :try_start_1c
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v13}, Lcom/android/server/am/MultiWindowManagerService;->-get5(Lcom/android/server/am/MultiWindowManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v13

    invoke-virtual {v13}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_8

    goto/16 :goto_3

    :sswitch_b
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v13}, Lcom/android/server/am/MultiWindowManagerService;->-get5(Lcom/android/server/am/MultiWindowManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v14

    monitor-enter v14

    :try_start_1d
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v13}, Lcom/android/server/am/MultiWindowManagerService;->-get5(Lcom/android/server/am/MultiWindowManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v13

    invoke-virtual {v13}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v51

    const/16 v37, 0x0

    :goto_11
    move/from16 v0, v37

    move/from16 v1, v51

    if-ge v0, v1, :cond_d

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v13}, Lcom/android/server/am/MultiWindowManagerService;->-get5(Lcom/android/server/am/MultiWindowManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v13

    move/from16 v0, v37

    invoke-virtual {v13, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v39

    check-cast v39, Lcom/samsung/android/multiwindow/IMultiWindowEventListener;
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_9

    :try_start_1e
    invoke-interface/range {v39 .. v39}, Lcom/samsung/android/multiwindow/IMultiWindowEventListener;->onScreenFreezeAnimationFinished()V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_1e} :catch_7
    .catchall {:try_start_1e .. :try_end_1e} :catchall_9

    :goto_12
    add-int/lit8 v37, v37, 0x1

    goto :goto_11

    :catch_7
    move-exception v31

    :try_start_1f
    const-string/jumbo v13, "MultiWindowManager"

    const-string/jumbo v15, "Error delivering onScreenFreezeAnimationFinished event."

    move-object/from16 v0, v31

    invoke-static {v13, v15, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_9

    goto :goto_12

    :catchall_9
    move-exception v13

    monitor-exit v14

    throw v13

    :cond_d
    :try_start_20
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v13}, Lcom/android/server/am/MultiWindowManagerService;->-get5(Lcom/android/server/am/MultiWindowManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v13

    invoke-virtual {v13}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_9

    goto/16 :goto_3

    :sswitch_c
    const/16 v49, 0x0

    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->arg1:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_10

    const/16 v40, 0x1

    :goto_13
    const/16 v27, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v13}, Lcom/android/server/am/MultiWindowManagerService;->-get1(Lcom/android/server/am/MultiWindowManagerService;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v14

    monitor-enter v14

    :try_start_21
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v13}, Lcom/android/server/am/MultiWindowManagerService;->-get1(Lcom/android/server/am/MultiWindowManagerService;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v13

    iget-object v13, v13, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v15, 0x3

    invoke-virtual {v13, v15}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v28

    if-eqz v28, :cond_f

    invoke-virtual/range {v28 .. v28}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v56

    if-eqz v56, :cond_f

    invoke-virtual/range {v56 .. v56}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v57

    if-eqz v57, :cond_f

    invoke-virtual/range {v57 .. v57}, Lcom/android/server/am/TaskRecord;->getRootActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v48

    if-eqz v48, :cond_e

    move-object/from16 v0, v48

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    move-object/from16 v49, v0
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_a

    :cond_e
    const/16 v27, 0x1

    :cond_f
    monitor-exit v14

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v13}, Lcom/android/server/am/MultiWindowManagerService;->-get5(Lcom/android/server/am/MultiWindowManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v14

    monitor-enter v14

    :try_start_22
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v13}, Lcom/android/server/am/MultiWindowManagerService;->-get5(Lcom/android/server/am/MultiWindowManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v13

    invoke-virtual {v13}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v51

    const/16 v37, 0x0

    :goto_14
    move/from16 v0, v37

    move/from16 v1, v51

    if-ge v0, v1, :cond_11

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v13}, Lcom/android/server/am/MultiWindowManagerService;->-get5(Lcom/android/server/am/MultiWindowManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v13

    move/from16 v0, v37

    invoke-virtual {v13, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v39

    check-cast v39, Lcom/samsung/android/multiwindow/IMultiWindowEventListener;
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_b

    :try_start_23
    move-object/from16 v0, v39

    move/from16 v1, v40

    move/from16 v2, v27

    move-object/from16 v3, v49

    invoke-interface {v0, v1, v2, v3}, Lcom/samsung/android/multiwindow/IMultiWindowEventListener;->onDockedStackMinimizedChanged(ZZLandroid/content/pm/ActivityInfo;)V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_23} :catch_8
    .catchall {:try_start_23 .. :try_end_23} :catchall_b

    :goto_15
    add-int/lit8 v37, v37, 0x1

    goto :goto_14

    :cond_10
    const/16 v40, 0x0

    goto :goto_13

    :catchall_a
    move-exception v13

    monitor-exit v14

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v13

    :catch_8
    move-exception v31

    :try_start_24
    const-string/jumbo v13, "MultiWindowManager"

    const-string/jumbo v15, "Error delivering onDockedStackMinimizedChanged event."

    move-object/from16 v0, v31

    invoke-static {v13, v15, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_b

    goto :goto_15

    :catchall_b
    move-exception v13

    monitor-exit v14

    throw v13

    :cond_11
    :try_start_25
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v13}, Lcom/android/server/am/MultiWindowManagerService;->-get5(Lcom/android/server/am/MultiWindowManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v13

    invoke-virtual {v13}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_b

    goto/16 :goto_3

    :sswitch_d
    sget-boolean v13, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SNAP_WINDOW_SUPPORT:Z

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v13}, Lcom/android/server/am/MultiWindowManagerService;->-get5(Lcom/android/server/am/MultiWindowManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v14

    monitor-enter v14

    :try_start_26
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v45, v0

    check-cast v45, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v13}, Lcom/android/server/am/MultiWindowManagerService;->-get5(Lcom/android/server/am/MultiWindowManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v13

    invoke-virtual {v13}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v51

    const/16 v37, 0x0

    :goto_16
    move/from16 v0, v37

    move/from16 v1, v51

    if-ge v0, v1, :cond_12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v13}, Lcom/android/server/am/MultiWindowManagerService;->-get5(Lcom/android/server/am/MultiWindowManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v13

    move/from16 v0, v37

    invoke-virtual {v13, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v39

    check-cast v39, Lcom/samsung/android/multiwindow/IMultiWindowEventListener;
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_c

    :try_start_27
    move-object/from16 v0, v39

    move-object/from16 v1, v45

    invoke-interface {v0, v1}, Lcom/samsung/android/multiwindow/IMultiWindowEventListener;->onSnapWindowDismissed(Ljava/lang/String;)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_27} :catch_9
    .catchall {:try_start_27 .. :try_end_27} :catchall_c

    :goto_17
    add-int/lit8 v37, v37, 0x1

    goto :goto_16

    :catch_9
    move-exception v31

    :try_start_28
    const-string/jumbo v13, "MultiWindowManager"

    const-string/jumbo v15, "Error delivering onSnapWindowDismissed event."

    move-object/from16 v0, v31

    invoke-static {v13, v15, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_c

    goto :goto_17

    :catchall_c
    move-exception v13

    monitor-exit v14

    throw v13

    :cond_12
    :try_start_29
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v13}, Lcom/android/server/am/MultiWindowManagerService;->-get5(Lcom/android/server/am/MultiWindowManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v13

    invoke-virtual {v13}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_c

    goto/16 :goto_3

    :sswitch_e
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v13}, Lcom/android/server/am/MultiWindowManagerService;->-get1(Lcom/android/server/am/MultiWindowManagerService;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v14

    monitor-enter v14

    :try_start_2a
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v13}, Lcom/android/server/am/MultiWindowManagerService;->-get7(Lcom/android/server/am/MultiWindowManagerService;)Lcom/android/server/am/ActivityStackSupervisor;

    move-result-object v13

    const/4 v15, 0x3

    invoke-virtual {v13, v15}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    const/4 v15, 0x0

    move-object/from16 v0, v29

    invoke-static {v13, v0, v15}, Lcom/android/server/am/MultiWindowManagerService;->-wrap0(Lcom/android/server/am/MultiWindowManagerService;Lcom/android/server/am/ActivityStack;Z)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v13}, Lcom/android/server/am/MultiWindowManagerService;->-get7(Lcom/android/server/am/MultiWindowManagerService;)Lcom/android/server/am/ActivityStackSupervisor;

    move-result-object v13

    const/4 v15, 0x1

    invoke-virtual {v13, v15}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v35

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    const/4 v15, 0x0

    move-object/from16 v0, v35

    invoke-static {v13, v0, v15}, Lcom/android/server/am/MultiWindowManagerService;->-wrap0(Lcom/android/server/am/MultiWindowManagerService;Lcom/android/server/am/ActivityStack;Z)V
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_d

    monitor-exit v14

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_0

    :catchall_d
    move-exception v13

    monitor-exit v14

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v13

    :sswitch_f
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v13}, Lcom/android/server/am/MultiWindowManagerService;->-get1(Lcom/android/server/am/MultiWindowManagerService;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v59

    monitor-enter v59

    :try_start_2b
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v13}, Lcom/android/server/am/MultiWindowManagerService;->-get7(Lcom/android/server/am/MultiWindowManagerService;)Lcom/android/server/am/ActivityStackSupervisor;

    move-result-object v13

    const/4 v14, 0x3

    invoke-virtual {v13, v14}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_e

    move-result-object v26

    if-nez v26, :cond_13

    monitor-exit v59

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_13
    :try_start_2c
    invoke-virtual/range {v26 .. v26}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v54

    const/4 v13, 0x0

    move-object/from16 v0, v54

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/am/TaskRecord;
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_e

    if-nez v12, :cond_14

    monitor-exit v59

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_14
    :try_start_2d
    invoke-virtual {v12}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_e

    move-result-object v20

    if-nez v20, :cond_15

    monitor-exit v59

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_15
    :try_start_2e
    const-string/jumbo v18, "dockedTaskToBack"

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x2

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-virtual/range {v12 .. v18}, Lcom/android/server/am/TaskRecord;->reparent(IZIZZLjava/lang/String;)Z
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_e

    monitor-exit v59

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_0

    :catchall_e
    move-exception v13

    monitor-exit v59

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v13

    :sswitch_10
    new-instance v14, Landroid/view/ContextThemeWrapper;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v13}, Lcom/android/server/am/MultiWindowManagerService;->-get1(Lcom/android/server/am/MultiWindowManagerService;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v13

    iget-object v13, v13, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const v15, 0x103012b

    invoke-direct {v14, v13, v15}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v13}, Lcom/android/server/am/MultiWindowManagerService;->-get1(Lcom/android/server/am/MultiWindowManagerService;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v13

    iget-object v13, v13, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const/4 v13, 0x1

    new-array v0, v13, [Ljava/lang/Object;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Ljava/lang/String;

    const/16 v17, 0x0

    aput-object v13, v16, v17

    const v13, 0x10405cd

    move-object/from16 v0, v16

    invoke-virtual {v15, v13, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    const/4 v15, 0x0

    invoke-static {v14, v13, v15}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v55

    invoke-virtual/range {v55 .. v55}, Landroid/widget/Toast;->setShowForAllUsers()V

    invoke-virtual/range {v55 .. v55}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :sswitch_11
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Landroid/os/Bundle;

    const-string/jumbo v13, "dockedAppLabel"

    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    const-string/jumbo v13, "fullAppLabel"

    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v50

    new-instance v13, Landroid/view/ContextThemeWrapper;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v14}, Lcom/android/server/am/MultiWindowManagerService;->-get1(Lcom/android/server/am/MultiWindowManagerService;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v14

    iget-object v14, v14, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const v15, 0x103012b

    invoke-direct {v13, v14, v15}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v14}, Lcom/android/server/am/MultiWindowManagerService;->-get1(Lcom/android/server/am/MultiWindowManagerService;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v14

    iget-object v14, v14, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v33, v15, v16

    const/16 v16, 0x1

    aput-object v50, v15, v16

    const v16, 0x10405ce

    move/from16 v0, v16

    invoke-virtual {v14, v0, v15}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    invoke-static {v13, v14, v15}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v55

    invoke-virtual/range {v55 .. v55}, Landroid/widget/Toast;->setShowForAllUsers()V

    invoke-virtual/range {v55 .. v55}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :sswitch_12
    new-instance v13, Landroid/view/ContextThemeWrapper;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v14}, Lcom/android/server/am/MultiWindowManagerService;->-get1(Lcom/android/server/am/MultiWindowManagerService;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v14

    iget-object v14, v14, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const v15, 0x103012b

    invoke-direct {v13, v14, v15}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v14}, Lcom/android/server/am/MultiWindowManagerService;->-get1(Lcom/android/server/am/MultiWindowManagerService;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v14

    iget-object v14, v14, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x10405d0

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    invoke-static {v13, v14, v15}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v55

    invoke-virtual/range {v55 .. v55}, Landroid/widget/Toast;->setShowForAllUsers()V

    invoke-virtual/range {v55 .. v55}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :sswitch_13
    new-instance v14, Landroid/view/ContextThemeWrapper;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v13}, Lcom/android/server/am/MultiWindowManagerService;->-get1(Lcom/android/server/am/MultiWindowManagerService;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v13

    iget-object v13, v13, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const v15, 0x103012b

    invoke-direct {v14, v13, v15}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v13}, Lcom/android/server/am/MultiWindowManagerService;->-get1(Lcom/android/server/am/MultiWindowManagerService;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v13

    iget-object v13, v13, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const/4 v13, 0x1

    new-array v0, v13, [Ljava/lang/Object;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Ljava/lang/String;

    const/16 v17, 0x0

    aput-object v13, v16, v17

    const v13, 0x10405cf

    move-object/from16 v0, v16

    invoke-virtual {v15, v13, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    const/4 v15, 0x0

    invoke-static {v14, v13, v15}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v55

    invoke-virtual/range {v55 .. v55}, Landroid/widget/Toast;->setShowForAllUsers()V

    invoke-virtual/range {v55 .. v55}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :sswitch_14
    new-instance v24, Landroid/view/ContextThemeWrapper;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v13}, Lcom/android/server/am/MultiWindowManagerService;->-get1(Lcom/android/server/am/MultiWindowManagerService;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v13

    iget-object v13, v13, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const v14, 0x103012b

    move-object/from16 v0, v24

    invoke-direct {v0, v13, v14}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v13}, Lcom/android/server/am/MultiWindowManagerService;->-get1(Lcom/android/server/am/MultiWindowManagerService;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v13

    iget-object v13, v13, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x10402e0

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    move-object/from16 v0, v24

    invoke-static {v0, v13, v14}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v55

    invoke-virtual/range {v55 .. v55}, Landroid/widget/Toast;->setShowForAllUsers()V

    invoke-virtual/range {v55 .. v55}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_5
        0x2 -> :sswitch_6
        0x65 -> :sswitch_1
        0x66 -> :sswitch_2
        0x67 -> :sswitch_3
        0x68 -> :sswitch_4
        0x69 -> :sswitch_7
        0x6a -> :sswitch_14
        0xc9 -> :sswitch_8
        0xca -> :sswitch_9
        0xcb -> :sswitch_a
        0xcc -> :sswitch_b
        0xcd -> :sswitch_c
        0xce -> :sswitch_d
        0xcf -> :sswitch_e
        0xd0 -> :sswitch_f
        0xd1 -> :sswitch_10
        0xd2 -> :sswitch_11
        0xd3 -> :sswitch_12
        0xd4 -> :sswitch_13
        0x12d -> :sswitch_0
    .end sparse-switch
.end method
