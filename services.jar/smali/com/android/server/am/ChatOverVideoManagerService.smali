.class public final Lcom/android/server/am/ChatOverVideoManagerService;
.super Ljava/lang/Object;
.source "ChatOverVideoManagerService.java"

# interfaces
.implements Lcom/android/server/am/VideoSurfaceRecognizer$IVideoSurfacePlayCallBack;


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "ChatOverVideoManagerService"


# instance fields
.field private mAM:Lcom/android/server/am/ActivityManagerService;

.field private mChatOverVideoAppsList:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mChatOverVideoModeEnabled:Z

.field private mChatOverVideoSettingsOberver:Lcom/samsung/android/chatovervideo/ChatOverVideoSettingsOberver;

.field private mContext:Landroid/content/Context;

.field private mH:Landroid/os/Handler;

.field private mRecognizer:Lcom/android/server/am/VideoSurfaceRecognizer;

.field private mWm:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method static synthetic -get0(Lcom/android/server/am/ChatOverVideoManagerService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/am/ChatOverVideoManagerService;->mChatOverVideoModeEnabled:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/server/am/ChatOverVideoManagerService;)Lcom/android/server/wm/WindowManagerService;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/ChatOverVideoManagerService;->mWm:Lcom/android/server/wm/WindowManagerService;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/am/ChatOverVideoManagerService;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/ChatOverVideoManagerService;->handleonChatOverVideoEnableChanged(Z)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/am/ChatOverVideoManagerService;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/ChatOverVideoManagerService;->updateChatOverVideoAppsList(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/wm/WindowManagerService;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ChatOverVideoManagerService;->mWm:Lcom/android/server/wm/WindowManagerService;

    iput-object v1, p0, Lcom/android/server/am/ChatOverVideoManagerService;->mAM:Lcom/android/server/am/ActivityManagerService;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/ChatOverVideoManagerService;->mChatOverVideoModeEnabled:Z

    iput-object v1, p0, Lcom/android/server/am/ChatOverVideoManagerService;->mChatOverVideoAppsList:Ljava/util/Set;

    iput-object v1, p0, Lcom/android/server/am/ChatOverVideoManagerService;->mRecognizer:Lcom/android/server/am/VideoSurfaceRecognizer;

    iput-object p1, p0, Lcom/android/server/am/ChatOverVideoManagerService;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/am/ChatOverVideoManagerService;->mH:Landroid/os/Handler;

    iput-object p3, p0, Lcom/android/server/am/ChatOverVideoManagerService;->mAM:Lcom/android/server/am/ActivityManagerService;

    iput-object p4, p0, Lcom/android/server/am/ChatOverVideoManagerService;->mWm:Lcom/android/server/wm/WindowManagerService;

    new-instance v0, Lcom/android/server/am/VideoSurfaceRecognizer;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/android/server/am/VideoSurfaceRecognizer;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/wm/WindowManagerService;)V

    iput-object v0, p0, Lcom/android/server/am/ChatOverVideoManagerService;->mRecognizer:Lcom/android/server/am/VideoSurfaceRecognizer;

    iget-object v0, p0, Lcom/android/server/am/ChatOverVideoManagerService;->mRecognizer:Lcom/android/server/am/VideoSurfaceRecognizer;

    invoke-virtual {v0, p0}, Lcom/android/server/am/VideoSurfaceRecognizer;->setVideoSurfacePlayCallBack(Lcom/android/server/am/VideoSurfaceRecognizer$IVideoSurfacePlayCallBack;)V

    invoke-direct {p0}, Lcom/android/server/am/ChatOverVideoManagerService;->initObserver()V

    return-void
.end method

.method private handleChatOverVideoAppsListChanged(Ljava/lang/String;Z)V
    .locals 2

    if-eqz p2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ChatOverVideoManagerService;->mAM:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mMultiWindowManager:Lcom/android/server/am/MultiWindowManagerService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/server/am/MultiWindowManagerService;->notifyOnAppsRemoved(ZLjava/lang/String;)V

    goto :goto_0
.end method

.method private handleonChatOverVideoEnableChanged(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/android/server/am/ChatOverVideoManagerService;->mChatOverVideoModeEnabled:Z

    iget-object v0, p0, Lcom/android/server/am/ChatOverVideoManagerService;->mRecognizer:Lcom/android/server/am/VideoSurfaceRecognizer;

    invoke-virtual {v0, p1}, Lcom/android/server/am/VideoSurfaceRecognizer;->onChatOverVideoModeEnabled(Z)V

    iget-object v0, p0, Lcom/android/server/am/ChatOverVideoManagerService;->mChatOverVideoAppsList:Ljava/util/Set;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ChatOverVideoManagerService;->mChatOverVideoAppsList:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ChatOverVideoManagerService;->mChatOverVideoSettingsOberver:Lcom/samsung/android/chatovervideo/ChatOverVideoSettingsOberver;

    invoke-virtual {v0}, Lcom/samsung/android/chatovervideo/ChatOverVideoSettingsOberver;->getChatOverVideoEnabledApps()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/am/ChatOverVideoManagerService;->initChatOverVideoAppsList(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/android/server/am/ChatOverVideoManagerService;->mWm:Lcom/android/server/wm/WindowManagerService;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/wm/WindowManagerService;->setViewTransparencyEnabled(ZZ)Z

    return-void
.end method

.method private initChatOverVideoAppsList(Ljava/lang/String;)V
    .locals 3

    const-string/jumbo v1, ";"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/HashSet;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/android/server/am/ChatOverVideoManagerService;->mChatOverVideoAppsList:Ljava/util/Set;

    return-void
.end method

.method private initObserver()V
    .locals 3

    new-instance v0, Lcom/samsung/android/chatovervideo/ChatOverVideoSettingsOberver;

    iget-object v1, p0, Lcom/android/server/am/ChatOverVideoManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/am/ChatOverVideoManagerService;->mH:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/chatovervideo/ChatOverVideoSettingsOberver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/am/ChatOverVideoManagerService;->mChatOverVideoSettingsOberver:Lcom/samsung/android/chatovervideo/ChatOverVideoSettingsOberver;

    iget-object v0, p0, Lcom/android/server/am/ChatOverVideoManagerService;->mChatOverVideoSettingsOberver:Lcom/samsung/android/chatovervideo/ChatOverVideoSettingsOberver;

    new-instance v1, Lcom/android/server/am/ChatOverVideoManagerService$1;

    invoke-direct {v1, p0}, Lcom/android/server/am/ChatOverVideoManagerService$1;-><init>(Lcom/android/server/am/ChatOverVideoManagerService;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/chatovervideo/ChatOverVideoSettingsOberver;->registerListenerForChatOverVideoModeChange(Lcom/samsung/android/chatovervideo/ChatOverVideoSettingsOberver$onChatOverVideoModeChangeListener;)V

    iget-object v0, p0, Lcom/android/server/am/ChatOverVideoManagerService;->mChatOverVideoSettingsOberver:Lcom/samsung/android/chatovervideo/ChatOverVideoSettingsOberver;

    invoke-virtual {v0}, Lcom/samsung/android/chatovervideo/ChatOverVideoSettingsOberver;->isEnabledChatOverVideoFeature()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/am/ChatOverVideoManagerService;->handleonChatOverVideoEnableChanged(Z)V

    return-void
.end method

.method private updateChatOverVideoAppsList(Ljava/lang/String;)V
    .locals 9

    const-string/jumbo v6, ";"

    invoke-virtual {p1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/util/HashSet;

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string/jumbo v6, "ChatOverVideoManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Settings->updateChatOverVideoAppsList  new list "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/util/HashSet;

    iget-object v6, p0, Lcom/android/server/am/ChatOverVideoManagerService;->mChatOverVideoAppsList:Ljava/util/Set;

    invoke-direct {v1, v6}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v1, v5}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string/jumbo v6, "ChatOverVideoManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Settings->updateChatOverVideoAppsList   removed from list "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    invoke-direct {p0, v2, v6}, Lcom/android/server/am/ChatOverVideoManagerService;->handleChatOverVideoAppsListChanged(Ljava/lang/String;Z)V

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iget-object v6, p0, Lcom/android/server/am/ChatOverVideoManagerService;->mChatOverVideoAppsList:Ljava/util/Set;

    invoke-interface {v0, v6}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string/jumbo v6, "ChatOverVideoManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Settings->updateChatOverVideoAppsList  added from list "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x1

    invoke-direct {p0, v2, v6}, Lcom/android/server/am/ChatOverVideoManagerService;->handleChatOverVideoAppsListChanged(Ljava/lang/String;Z)V

    goto :goto_2

    :cond_2
    iput-object v5, p0, Lcom/android/server/am/ChatOverVideoManagerService;->mChatOverVideoAppsList:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public clearVideoPlayingSurface()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/ChatOverVideoManagerService;->mRecognizer:Lcom/android/server/am/VideoSurfaceRecognizer;

    invoke-virtual {v0}, Lcom/android/server/am/VideoSurfaceRecognizer;->clearVideoPlayingSurface()V

    return-void
.end method

.method dump(Ljava/io/PrintWriter;)V
    .locals 2

    const-string/jumbo v0, "  "

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string/jumbo v1, "-------------------------------------------------------------------------------"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v1, "CHATOVERVIDEO MANAGER SERVICE"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, " mChatOverVideoModeEnabled="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/am/ChatOverVideoManagerService;->mChatOverVideoModeEnabled:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, " mChatOverVideoAppsList="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/am/ChatOverVideoManagerService;->mChatOverVideoAppsList:Ljava/util/Set;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    iget-object v1, p0, Lcom/android/server/am/ChatOverVideoManagerService;->mRecognizer:Lcom/android/server/am/VideoSurfaceRecognizer;

    invoke-virtual {v1, p1}, Lcom/android/server/am/VideoSurfaceRecognizer;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public isChatOverVideoModeEnabled(Ljava/lang/String;)Z
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/android/server/am/ChatOverVideoManagerService;->mChatOverVideoModeEnabled:Z

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/am/ChatOverVideoManagerService;->isVisibleVideoPlayingSurface()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/android/server/am/ChatOverVideoManagerService;->mChatOverVideoAppsList:Ljava/util/Set;

    if-eqz v0, :cond_2

    if-nez p1, :cond_3

    :cond_2
    return v1

    :cond_3
    iget-object v0, p0, Lcom/android/server/am/ChatOverVideoManagerService;->mChatOverVideoAppsList:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isVideoPlaying()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/ChatOverVideoManagerService;->mRecognizer:Lcom/android/server/am/VideoSurfaceRecognizer;

    invoke-virtual {v0}, Lcom/android/server/am/VideoSurfaceRecognizer;->isVideoPlaying()Z

    move-result v0

    return v0
.end method

.method public isVisibleVideoPlayingSurface()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/ChatOverVideoManagerService;->mRecognizer:Lcom/android/server/am/VideoSurfaceRecognizer;

    invoke-virtual {v0}, Lcom/android/server/am/VideoSurfaceRecognizer;->isVisibleVideoPlayingSurface()Z

    move-result v0

    return v0
.end method

.method public onFreeformStackChanged(Landroid/view/IApplicationToken;Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/am/ChatOverVideoManagerService;->mChatOverVideoModeEnabled:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ChatOverVideoManagerService;->mWm:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, p2, p1}, Lcom/android/server/wm/WindowManagerService;->updateViewTransparencyFlag(ZLandroid/view/IApplicationToken;)V

    return-void
.end method

.method public onVideoSurfacePlayStarted()V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/server/am/ChatOverVideoManagerService;->mWm:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, v1, v1}, Lcom/android/server/wm/WindowManagerService;->setViewTransparencyEnabled(ZZ)Z

    return-void
.end method

.method public onVideoSurfacePlayStopped()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/ChatOverVideoManagerService;->mWm:Lcom/android/server/wm/WindowManagerService;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->setViewTransparencyEnabled(ZZ)Z

    return-void
.end method

.method public reportVideoPlayingSurface(Landroid/os/IBinder;Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/ChatOverVideoManagerService;->mRecognizer:Lcom/android/server/am/VideoSurfaceRecognizer;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/VideoSurfaceRecognizer;->reportVideoPlayingSurface(Landroid/os/IBinder;Z)V

    return-void
.end method

.method public shouldReportVideoPlayingSurface(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/ChatOverVideoManagerService;->mRecognizer:Lcom/android/server/am/VideoSurfaceRecognizer;

    invoke-virtual {v0, p1}, Lcom/android/server/am/VideoSurfaceRecognizer;->shouldReportVideoPlayingSurface(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
