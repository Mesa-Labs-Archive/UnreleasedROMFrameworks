.class final Lcom/android/server/wm/SamsungWindowManagerService$H;
.super Landroid/os/Handler;
.source "SamsungWindowManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/SamsungWindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "H"
.end annotation


# static fields
.field public static final SET_COVER_SWITCH_STATE:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/SamsungWindowManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/wm/SamsungWindowManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/SamsungWindowManagerService$H;->this$0:Lcom/android/server/wm/SamsungWindowManagerService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/cover/CoverState;

    iget v1, v0, Lcom/samsung/android/cover/CoverState;->type:I

    const/16 v2, 0x9

    if-eq v1, v2, :cond_0

    iget v1, v0, Lcom/samsung/android/cover/CoverState;->type:I

    const/16 v2, 0xa

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/SamsungWindowManagerService$H;->this$0:Lcom/android/server/wm/SamsungWindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v1, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/SamsungWindowManagerService$H;->this$0:Lcom/android/server/wm/SamsungWindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    check-cast v1, Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager;->getSamsungPolicy()Lcom/android/server/policy/IPhoneWindowManagerBridge;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/server/policy/IPhoneWindowManagerBridge;->setCoverSwitchState(Lcom/samsung/android/cover/CoverState;)Z

    iget-object v1, p0, Lcom/android/server/wm/SamsungWindowManagerService$H;->this$0:Lcom/android/server/wm/SamsungWindowManagerService;

    iget-boolean v3, v0, Lcom/samsung/android/cover/CoverState;->switchState:Z

    invoke-static {v1, v3}, Lcom/android/server/wm/SamsungWindowManagerService;->-wrap0(Lcom/android/server/wm/SamsungWindowManagerService;Z)Z

    iget-object v1, p0, Lcom/android/server/wm/SamsungWindowManagerService$H;->this$0:Lcom/android/server/wm/SamsungWindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    iget-object v1, p0, Lcom/android/server/wm/SamsungWindowManagerService$H;->this$0:Lcom/android/server/wm/SamsungWindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    iget-object v1, p0, Lcom/android/server/wm/SamsungWindowManagerService$H;->this$0:Lcom/android/server/wm/SamsungWindowManagerService;

    iget-boolean v3, v0, Lcom/samsung/android/cover/CoverState;->switchState:Z

    invoke-static {v1, v3}, Lcom/android/server/wm/SamsungWindowManagerService;->-wrap1(Lcom/android/server/wm/SamsungWindowManagerService;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
