.class Lcom/android/server/aod/AODManagerService$4;
.super Ljava/lang/Object;
.source "AODManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/aod/AODManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/aod/AODManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/aod/AODManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/aod/AODManagerService$4;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/aod/AODManagerService$4;->this$0:Lcom/android/server/aod/AODManagerService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Retry updateAODTspState, mAODTspStateRetryCount : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/aod/AODManagerService$4;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-static {v2}, Lcom/android/server/aod/AODManagerService;->-get10(Lcom/android/server/aod/AODManagerService;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/aod/AODManagerService;->-wrap14(Lcom/android/server/aod/AODManagerService;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/aod/AODManagerService$4;->this$0:Lcom/android/server/aod/AODManagerService;

    const-string/jumbo v1, "/sys/class/sec/tsp/cmd"

    iget-object v2, p0, Lcom/android/server/aod/AODManagerService$4;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-static {v2}, Lcom/android/server/aod/AODManagerService;->-get19(Lcom/android/server/aod/AODManagerService;)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/server/aod/AODManagerService;->-wrap35(Lcom/android/server/aod/AODManagerService;Ljava/lang/String;Z)V

    return-void
.end method
