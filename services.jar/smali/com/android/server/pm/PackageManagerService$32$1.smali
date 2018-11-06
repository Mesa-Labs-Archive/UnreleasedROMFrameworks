.class Lcom/android/server/pm/PackageManagerService$32$1;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService$32;->onPackageInstalled(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/pm/PackageManagerService$32;

.field final synthetic val$packageName:Ljava/lang/String;

.field final synthetic val$sdParams:Lcom/android/server/pm/PackageManagerService$SdcardParams;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService$32;Lcom/android/server/pm/PackageManagerService$SdcardParams;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$32$1;->this$1:Lcom/android/server/pm/PackageManagerService$32;

    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$32$1;->val$sdParams:Lcom/android/server/pm/PackageManagerService$SdcardParams;

    iput-object p3, p0, Lcom/android/server/pm/PackageManagerService$32$1;->val$packageName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    const/4 v10, 0x0

    const/4 v9, -0x6

    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$32$1;->this$1:Lcom/android/server/pm/PackageManagerService$32;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$32;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$32$1;->val$sdParams:Lcom/android/server/pm/PackageManagerService$SdcardParams;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService$SdcardParams;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$32$1;->val$sdParams:Lcom/android/server/pm/PackageManagerService$SdcardParams;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService$SdcardParams;->volumeUuid:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$32$1;->val$sdParams:Lcom/android/server/pm/PackageManagerService$SdcardParams;

    iget v3, v3, Lcom/android/server/pm/PackageManagerService$SdcardParams;->moveId:I

    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$32$1;->val$sdParams:Lcom/android/server/pm/PackageManagerService$SdcardParams;

    iget v4, v4, Lcom/android/server/pm/PackageManagerService$SdcardParams;->callingUid:I

    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$32$1;->val$sdParams:Lcom/android/server/pm/PackageManagerService$SdcardParams;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService$SdcardParams;->user:Landroid/os/UserHandle;

    invoke-static/range {v0 .. v5}, Lcom/android/server/pm/PackageManagerService;->-wrap49(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;Ljava/lang/String;IILandroid/os/UserHandle;)V
    :try_end_0
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v6

    const-string/jumbo v0, "PackageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Failed to move "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$32$1;->val$packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$32$1;->this$1:Lcom/android/server/pm/PackageManagerService$32;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$32;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->-get13(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/PackageManagerService$MoveCallbacks;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$32$1;->val$sdParams:Lcom/android/server/pm/PackageManagerService$SdcardParams;

    iget v1, v1, Lcom/android/server/pm/PackageManagerService$SdcardParams;->moveId:I

    invoke-static {v0, v1, v9}, Lcom/android/server/pm/PackageManagerService$MoveCallbacks;->-wrap1(Lcom/android/server/pm/PackageManagerService$MoveCallbacks;II)V

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->-get14()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->-get14()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_1
    iget v0, v6, Lcom/android/server/pm/PackageManagerException;->error:I

    if-ne v0, v9, :cond_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->-get14()Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/PackageManagerService$SdcardParams;

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$32$1;->this$1:Lcom/android/server/pm/PackageManagerService$32;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$32;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->-get13(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/PackageManagerService$MoveCallbacks;

    move-result-object v0

    iget v1, v7, Lcom/android/server/pm/PackageManagerService$SdcardParams;->moveId:I

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/android/server/pm/PackageManagerService$MoveCallbacks;->-wrap1(Lcom/android/server/pm/PackageManagerService$MoveCallbacks;II)V

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->-get14()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_0
.end method
