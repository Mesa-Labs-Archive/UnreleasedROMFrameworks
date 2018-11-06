.class Lcom/android/server/am/VideoSurfaceRecognizer$1;
.super Ljava/lang/Object;
.source "VideoSurfaceRecognizer.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/VideoSurfaceRecognizer;->addToVideoPlayingSurfacesList(Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/VideoSurfaceRecognizer;

.field final synthetic val$sc:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Lcom/android/server/am/VideoSurfaceRecognizer;Landroid/os/IBinder;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/VideoSurfaceRecognizer$1;->this$0:Lcom/android/server/am/VideoSurfaceRecognizer;

    iput-object p2, p0, Lcom/android/server/am/VideoSurfaceRecognizer$1;->val$sc:Landroid/os/IBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 7

    iget-object v4, p0, Lcom/android/server/am/VideoSurfaceRecognizer$1;->this$0:Lcom/android/server/am/VideoSurfaceRecognizer;

    invoke-static {v4}, Lcom/android/server/am/VideoSurfaceRecognizer;->-get0(Lcom/android/server/am/VideoSurfaceRecognizer;)Ljava/util/HashSet;

    move-result-object v5

    monitor-enter v5

    :try_start_0
    iget-object v4, p0, Lcom/android/server/am/VideoSurfaceRecognizer$1;->this$0:Lcom/android/server/am/VideoSurfaceRecognizer;

    invoke-static {v4}, Lcom/android/server/am/VideoSurfaceRecognizer;->-get0(Lcom/android/server/am/VideoSurfaceRecognizer;)Ljava/util/HashSet;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/VideoSurfaceRecognizer$VideoPlayingSurface;

    iget-object v4, p0, Lcom/android/server/am/VideoSurfaceRecognizer$1;->val$sc:Landroid/os/IBinder;

    iget-object v6, v2, Lcom/android/server/am/VideoSurfaceRecognizer$VideoPlayingSurface;->mSurface:Landroid/os/IBinder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v4, v6, :cond_0

    :try_start_1
    iget-object v4, p0, Lcom/android/server/am/VideoSurfaceRecognizer$1;->this$0:Lcom/android/server/am/VideoSurfaceRecognizer;

    invoke-static {v4}, Lcom/android/server/am/VideoSurfaceRecognizer;->-get0(Lcom/android/server/am/VideoSurfaceRecognizer;)Ljava/util/HashSet;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    iget-object v0, v2, Lcom/android/server/am/VideoSurfaceRecognizer$VideoPlayingSurface;->mSurface:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    const/4 v4, 0x0

    invoke-interface {v0, p0, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    :cond_1
    monitor-exit v5

    return-void
.end method
