.class public final Lcom/android/server/am/VideoSurfaceRecognizer;
.super Ljava/lang/Object;
.source "VideoSurfaceRecognizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/VideoSurfaceRecognizer$IVideoSurfacePlayCallBack;,
        Lcom/android/server/am/VideoSurfaceRecognizer$VideoPlayingSurface;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "VideoSurfaceRecognizer"


# instance fields
.field private mAM:Lcom/android/server/am/ActivityManagerService;

.field private mAllowedVideoPlayerApps:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCallback:Lcom/android/server/am/VideoSurfaceRecognizer$IVideoSurfacePlayCallBack;

.field private mChatOverVideoModeEnabled:Z

.field private mContext:Landroid/content/Context;

.field private mH:Landroid/os/Handler;

.field private mVideoPlayingSurfaces:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/android/server/am/VideoSurfaceRecognizer$VideoPlayingSurface;",
            ">;"
        }
    .end annotation
.end field

.field private mWm:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method static synthetic -get0(Lcom/android/server/am/VideoSurfaceRecognizer;)Ljava/util/HashSet;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/VideoSurfaceRecognizer;->mVideoPlayingSurfaces:Ljava/util/HashSet;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/wm/WindowManagerService;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/VideoSurfaceRecognizer;->mWm:Lcom/android/server/wm/WindowManagerService;

    iput-object v0, p0, Lcom/android/server/am/VideoSurfaceRecognizer;->mAM:Lcom/android/server/am/ActivityManagerService;

    iput-object v0, p0, Lcom/android/server/am/VideoSurfaceRecognizer;->mCallback:Lcom/android/server/am/VideoSurfaceRecognizer$IVideoSurfacePlayCallBack;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/VideoSurfaceRecognizer;->mAllowedVideoPlayerApps:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/VideoSurfaceRecognizer;->mVideoPlayingSurfaces:Ljava/util/HashSet;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/VideoSurfaceRecognizer;->mChatOverVideoModeEnabled:Z

    iput-object p1, p0, Lcom/android/server/am/VideoSurfaceRecognizer;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/am/VideoSurfaceRecognizer;->mH:Landroid/os/Handler;

    iput-object p3, p0, Lcom/android/server/am/VideoSurfaceRecognizer;->mAM:Lcom/android/server/am/ActivityManagerService;

    iput-object p4, p0, Lcom/android/server/am/VideoSurfaceRecognizer;->mWm:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {p0}, Lcom/android/server/am/VideoSurfaceRecognizer;->updateAllowedVideoPlayerAppsList()V

    return-void
.end method

.method private addToVideoPlayingSurfacesList(Landroid/os/IBinder;)V
    .locals 6

    iget-object v3, p0, Lcom/android/server/am/VideoSurfaceRecognizer;->mVideoPlayingSurfaces:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->isEmpty()Z

    move-result v2

    new-instance v0, Lcom/android/server/am/VideoSurfaceRecognizer$1;

    invoke-direct {v0, p0, p1}, Lcom/android/server/am/VideoSurfaceRecognizer$1;-><init>(Lcom/android/server/am/VideoSurfaceRecognizer;Landroid/os/IBinder;)V

    iget-object v4, p0, Lcom/android/server/am/VideoSurfaceRecognizer;->mVideoPlayingSurfaces:Ljava/util/HashSet;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/VideoSurfaceRecognizer;->mVideoPlayingSurfaces:Ljava/util/HashSet;

    new-instance v5, Lcom/android/server/am/VideoSurfaceRecognizer$VideoPlayingSurface;

    invoke-direct {v5, p0, p1, v0}, Lcom/android/server/am/VideoSurfaceRecognizer$VideoPlayingSurface;-><init>(Lcom/android/server/am/VideoSurfaceRecognizer;Landroid/os/IBinder;Landroid/os/IBinder$DeathRecipient;)V

    invoke-virtual {v3, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    invoke-interface {p1, v0, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit v4

    const-string/jumbo v3, "addToVideoPlayingSurfacesList"

    invoke-direct {p0, v3, p1}, Lcom/android/server/am/VideoSurfaceRecognizer;->logVideoPlayingSurfaces(Ljava/lang/String;Landroid/os/IBinder;)V

    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/android/server/am/VideoSurfaceRecognizer;->mVideoPlayingSurfaces:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->isEmpty()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_1

    invoke-direct {p0}, Lcom/android/server/am/VideoSurfaceRecognizer;->notifyVideoSurfacePlayStarted()V

    :cond_1
    return-void

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private logVideoPlayingSurfaces(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 0

    return-void
.end method

.method private notifyVideoSurfacePlayStarted()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/VideoSurfaceRecognizer;->mCallback:Lcom/android/server/am/VideoSurfaceRecognizer$IVideoSurfacePlayCallBack;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/VideoSurfaceRecognizer;->mCallback:Lcom/android/server/am/VideoSurfaceRecognizer$IVideoSurfacePlayCallBack;

    invoke-interface {v0}, Lcom/android/server/am/VideoSurfaceRecognizer$IVideoSurfacePlayCallBack;->onVideoSurfacePlayStarted()V

    :cond_0
    return-void
.end method

.method private notifyVideoSurfacePlayStopped()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/VideoSurfaceRecognizer;->mCallback:Lcom/android/server/am/VideoSurfaceRecognizer$IVideoSurfacePlayCallBack;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/VideoSurfaceRecognizer;->mCallback:Lcom/android/server/am/VideoSurfaceRecognizer$IVideoSurfacePlayCallBack;

    invoke-interface {v0}, Lcom/android/server/am/VideoSurfaceRecognizer$IVideoSurfacePlayCallBack;->onVideoSurfacePlayStopped()V

    :cond_0
    return-void
.end method

.method private removeFromVideoPlayingSurfacesList(Landroid/os/IBinder;)V
    .locals 8

    iget-object v5, p0, Lcom/android/server/am/VideoSurfaceRecognizer;->mVideoPlayingSurfaces:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->isEmpty()Z

    move-result v4

    iget-object v6, p0, Lcom/android/server/am/VideoSurfaceRecognizer;->mVideoPlayingSurfaces:Ljava/util/HashSet;

    monitor-enter v6

    :try_start_0
    iget-object v5, p0, Lcom/android/server/am/VideoSurfaceRecognizer;->mVideoPlayingSurfaces:Ljava/util/HashSet;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/VideoSurfaceRecognizer$VideoPlayingSurface;

    iget-object v5, v2, Lcom/android/server/am/VideoSurfaceRecognizer$VideoPlayingSurface;->mSurface:Landroid/os/IBinder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p1, v5, :cond_0

    :try_start_1
    iget-object v5, p0, Lcom/android/server/am/VideoSurfaceRecognizer;->mVideoPlayingSurfaces:Ljava/util/HashSet;

    invoke-virtual {v5, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    iget-object v0, v2, Lcom/android/server/am/VideoSurfaceRecognizer$VideoPlayingSurface;->mSurface:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    iget-object v5, v2, Lcom/android/server/am/VideoSurfaceRecognizer$VideoPlayingSurface;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    const/4 v7, 0x0

    invoke-interface {v0, v5, v7}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
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
    move-exception v5

    monitor-exit v6

    throw v5

    :cond_1
    monitor-exit v6

    const-string/jumbo v5, "removeFromVideoPlayingSurfacesList"

    invoke-direct {p0, v5, p1}, Lcom/android/server/am/VideoSurfaceRecognizer;->logVideoPlayingSurfaces(Ljava/lang/String;Landroid/os/IBinder;)V

    if-nez v4, :cond_2

    iget-object v5, p0, Lcom/android/server/am/VideoSurfaceRecognizer;->mVideoPlayingSurfaces:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-direct {p0}, Lcom/android/server/am/VideoSurfaceRecognizer;->notifyVideoSurfacePlayStopped()V

    :cond_2
    return-void
.end method

.method private updateAllowedVideoPlayerAppsList()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/VideoSurfaceRecognizer;->mAllowedVideoPlayerApps:Ljava/util/HashSet;

    const-string/jumbo v1, "com.google.android.youtube"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/am/VideoSurfaceRecognizer;->mAllowedVideoPlayerApps:Ljava/util/HashSet;

    const-string/jumbo v1, "com.samsung.android.video"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/am/VideoSurfaceRecognizer;->mAllowedVideoPlayerApps:Ljava/util/HashSet;

    const-string/jumbo v1, "org.videolan.vlc"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public clearVideoPlayingSurface()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/VideoSurfaceRecognizer;->mVideoPlayingSurfaces:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/VideoSurfaceRecognizer;->mVideoPlayingSurfaces:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    invoke-direct {p0}, Lcom/android/server/am/VideoSurfaceRecognizer;->notifyVideoSurfacePlayStopped()V

    :cond_0
    return-void
.end method

.method dump(Ljava/io/PrintWriter;)V
    .locals 5

    const-string/jumbo v0, "  "

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string/jumbo v4, "-------------------------------------------------------------------------------"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v4, "ChatOverVideo::VIDEO SURFACE RECOGNIZER"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, " mChatOverVideoModeEnabled="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v4, p0, Lcom/android/server/am/VideoSurfaceRecognizer;->mChatOverVideoModeEnabled:Z

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Z)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, " mIsVideoPlaying="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/am/VideoSurfaceRecognizer;->isVisibleVideoPlayingSurface()Z

    move-result v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Z)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, " mAllowedVideoPlayerApps:: size = "

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/am/VideoSurfaceRecognizer;->mAllowedVideoPlayerApps:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    iget-object v4, p0, Lcom/android/server/am/VideoSurfaceRecognizer;->mAllowedVideoPlayerApps:Ljava/util/HashSet;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/android/server/am/VideoSurfaceRecognizer;->mVideoPlayingSurfaces:Ljava/util/HashSet;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/VideoSurfaceRecognizer$VideoPlayingSurface;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, " mVideoPlayingSurfaces="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/android/server/am/VideoSurfaceRecognizer$VideoPlayingSurface;->mSurface:Landroid/os/IBinder;

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public isVideoPlaying()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/am/VideoSurfaceRecognizer;->isVisibleVideoPlayingSurface()Z

    move-result v0

    return v0
.end method

.method public isVisibleVideoPlayingSurface()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/VideoSurfaceRecognizer;->mVideoPlayingSurfaces:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public onChatOverVideoModeEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/am/VideoSurfaceRecognizer;->mChatOverVideoModeEnabled:Z

    return-void
.end method

.method public reportVideoPlayingSurface(Landroid/os/IBinder;Z)V
    .locals 0

    if-eqz p2, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/am/VideoSurfaceRecognizer;->addToVideoPlayingSurfacesList(Landroid/os/IBinder;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/am/VideoSurfaceRecognizer;->removeFromVideoPlayingSurfacesList(Landroid/os/IBinder;)V

    goto :goto_0
.end method

.method public setVideoSurfacePlayCallBack(Lcom/android/server/am/VideoSurfaceRecognizer$IVideoSurfacePlayCallBack;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/VideoSurfaceRecognizer;->mCallback:Lcom/android/server/am/VideoSurfaceRecognizer$IVideoSurfacePlayCallBack;

    return-void
.end method

.method public shouldReportVideoPlayingSurface(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/VideoSurfaceRecognizer;->mAllowedVideoPlayerApps:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
