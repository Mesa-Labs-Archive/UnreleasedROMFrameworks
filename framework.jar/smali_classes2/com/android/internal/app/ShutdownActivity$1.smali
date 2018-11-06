.class Lcom/android/internal/app/ShutdownActivity$1;
.super Ljava/lang/Thread;
.source "ShutdownActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/ShutdownActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/ShutdownActivity;


# direct methods
.method constructor <init>(Lcom/android/internal/app/ShutdownActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/app/ShutdownActivity$1;->this$0:Lcom/android/internal/app/ShutdownActivity;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const-string/jumbo v2, "power"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v1

    :try_start_0
    iget-object v2, p0, Lcom/android/internal/app/ShutdownActivity$1;->this$0:Lcom/android/internal/app/ShutdownActivity;

    invoke-static {v2}, Lcom/android/internal/app/ShutdownActivity;->-get2(Lcom/android/internal/app/ShutdownActivity;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/app/ShutdownActivity$1;->this$0:Lcom/android/internal/app/ShutdownActivity;

    invoke-static {v2}, Lcom/android/internal/app/ShutdownActivity;->-get0(Lcom/android/internal/app/ShutdownActivity;)Z

    move-result v2

    iget-object v3, p0, Lcom/android/internal/app/ShutdownActivity$1;->this$0:Lcom/android/internal/app/ShutdownActivity;

    invoke-static {v3}, Lcom/android/internal/app/ShutdownActivity;->-get1(Lcom/android/internal/app/ShutdownActivity;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Landroid/os/IPowerManager;->reboot(ZLjava/lang/String;Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/internal/app/ShutdownActivity$1;->this$0:Lcom/android/internal/app/ShutdownActivity;

    invoke-static {v2}, Lcom/android/internal/app/ShutdownActivity;->-get0(Lcom/android/internal/app/ShutdownActivity;)Z

    move-result v3

    iget-object v2, p0, Lcom/android/internal/app/ShutdownActivity$1;->this$0:Lcom/android/internal/app/ShutdownActivity;

    invoke-static {v2}, Lcom/android/internal/app/ShutdownActivity;->-get3(Lcom/android/internal/app/ShutdownActivity;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "userrequested"

    :goto_1
    const/4 v4, 0x0

    invoke-interface {v1, v3, v2, v4}, Landroid/os/IPowerManager;->shutdown(ZLjava/lang/String;Z)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/internal/app/ShutdownActivity$1;->this$0:Lcom/android/internal/app/ShutdownActivity;

    invoke-static {v2}, Lcom/android/internal/app/ShutdownActivity;->-get1(Lcom/android/internal/app/ShutdownActivity;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_1
.end method
