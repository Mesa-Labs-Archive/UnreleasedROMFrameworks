.class Lcom/android/server/policy/LegacyGlobalActions$28;
.super Lcom/android/server/policy/LegacyGlobalActions$SinglePressAction;
.source "LegacyGlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/LegacyGlobalActions;->makeActionsItems()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/LegacyGlobalActions;


# direct methods
.method constructor <init>(Lcom/android/server/policy/LegacyGlobalActions;II)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/policy/LegacyGlobalActions$28;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-direct {p0, p2, p3}, Lcom/android/server/policy/LegacyGlobalActions$SinglePressAction;-><init>(II)V

    return-void
.end method


# virtual methods
.method public onPress()V
    .locals 5

    const/4 v4, 0x0

    const-string/jumbo v0, "LegacyGlobalActions"

    const-string/jumbo v1, "in onPress of Restart"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/policy/LegacyGlobalActions;->-get62()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions$28;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    const-string/jumbo v1, "0003"

    const-string/jumbo v2, "ClearCoverRestart"

    invoke-static {v0, v1, v2}, Lcom/android/server/policy/LegacyGlobalActions;->-wrap32(Lcom/android/server/policy/LegacyGlobalActions;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions$28;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    const-string/jumbo v1, "0002"

    const-string/jumbo v2, "Restart"

    invoke-static {v0, v1, v2}, Lcom/android/server/policy/LegacyGlobalActions;->-wrap32(Lcom/android/server/policy/LegacyGlobalActions;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions$28;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v0}, Lcom/android/server/policy/LegacyGlobalActions;->-wrap5(Lcom/android/server/policy/LegacyGlobalActions;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions$28;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    const v1, 0x10403dd

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/server/policy/LegacyGlobalActions;->-wrap39(Lcom/android/server/policy/LegacyGlobalActions;II)V

    return-void

    :cond_1
    const-string/jumbo v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "persist.sys.shutdown"

    const-string/jumbo v1, "GARB"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions$28;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v0}, Lcom/android/server/policy/LegacyGlobalActions;->-get57(Lcom/android/server/policy/LegacyGlobalActions;)Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/policy/LegacyGlobalActions$28;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v1}, Lcom/android/server/policy/LegacyGlobalActions;->-get17(Lcom/android/server/policy/LegacyGlobalActions;)Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->reboot(Z)V

    invoke-static {}, Lcom/android/server/policy/LegacyGlobalActions;->-get69()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/android/server/policy/LegacyGlobalActions;->-get64()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {v1}, Lcom/android/server/policy/LegacyGlobalActions;->-set20(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    :goto_0
    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions$28;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v0}, Lcom/android/server/policy/LegacyGlobalActions;->-get23(Lcom/android/server/policy/LegacyGlobalActions;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    :cond_3
    invoke-static {v4}, Lcom/android/server/policy/LegacyGlobalActions;->-set21(Z)Z

    goto :goto_0
.end method

.method public showBeforeProvisioning()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public showConditional()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public showDuringKeyguard()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
