.class Lcom/android/server/execute/SemExecuteManagerService$MyPackageMonitor;
.super Lcom/android/internal/content/PackageMonitor;
.source "SemExecuteManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/execute/SemExecuteManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyPackageMonitor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/execute/SemExecuteManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/execute/SemExecuteManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/execute/SemExecuteManagerService$MyPackageMonitor;->this$0:Lcom/android/server/execute/SemExecuteManagerService;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method


# virtual methods
.method public onPackageModified(Ljava/lang/String;)V
    .locals 5

    const/16 v4, 0x3e6

    const-string/jumbo v0, "SemExecuteManagerService"

    const-string/jumbo v1, "onPackageModified"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/execute/SemExecuteManagerService$MyPackageMonitor;->this$0:Lcom/android/server/execute/SemExecuteManagerService;

    invoke-static {v0}, Lcom/android/server/execute/SemExecuteManagerService;->-get2(Lcom/android/server/execute/SemExecuteManagerService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/execute/SemExecuteManagerService$MyPackageMonitor;->this$0:Lcom/android/server/execute/SemExecuteManagerService;

    invoke-static {v0}, Lcom/android/server/execute/SemExecuteManagerService;->-get2(Lcom/android/server/execute/SemExecuteManagerService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/execute/SemExecuteManagerService$MyPackageMonitor;->this$0:Lcom/android/server/execute/SemExecuteManagerService;

    invoke-static {v0}, Lcom/android/server/execute/SemExecuteManagerService;->-get2(Lcom/android/server/execute/SemExecuteManagerService;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public onSomePackagesChanged()V
    .locals 5

    const/16 v4, 0x3e6

    const-string/jumbo v0, "SemExecuteManagerService"

    const-string/jumbo v1, "onSomePackagesChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/execute/SemExecuteManagerService$MyPackageMonitor;->this$0:Lcom/android/server/execute/SemExecuteManagerService;

    invoke-static {v0}, Lcom/android/server/execute/SemExecuteManagerService;->-get2(Lcom/android/server/execute/SemExecuteManagerService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/execute/SemExecuteManagerService$MyPackageMonitor;->this$0:Lcom/android/server/execute/SemExecuteManagerService;

    invoke-static {v0}, Lcom/android/server/execute/SemExecuteManagerService;->-get2(Lcom/android/server/execute/SemExecuteManagerService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/execute/SemExecuteManagerService$MyPackageMonitor;->this$0:Lcom/android/server/execute/SemExecuteManagerService;

    invoke-static {v0}, Lcom/android/server/execute/SemExecuteManagerService;->-get2(Lcom/android/server/execute/SemExecuteManagerService;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method
