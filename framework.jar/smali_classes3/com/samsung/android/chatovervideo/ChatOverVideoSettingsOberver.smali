.class public Lcom/samsung/android/chatovervideo/ChatOverVideoSettingsOberver;
.super Ljava/lang/Object;
.source "ChatOverVideoSettingsOberver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/chatovervideo/ChatOverVideoSettingsOberver$onChatOverVideoModeChangeListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "ChatOverVideoSettingsOberver"


# instance fields
.field private CHAT_OVER_VIDEO_ENABLED:Z

.field private CHAT_OVER_VIDEO_ENABLED_PACKAGES:Ljava/lang/String;

.field private mChatOverVideoSettingsObserver:Landroid/database/ContentObserver;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mListener:Lcom/samsung/android/chatovervideo/ChatOverVideoSettingsOberver$onChatOverVideoModeChangeListener;

.field private mPkgName:Ljava/lang/String;


# direct methods
.method static synthetic -wrap0(Lcom/samsung/android/chatovervideo/ChatOverVideoSettingsOberver;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/chatovervideo/ChatOverVideoSettingsOberver;->handleOnChatOverVideoSettingsChanged()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/chatovervideo/ChatOverVideoSettingsOberver;->CHAT_OVER_VIDEO_ENABLED:Z

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/android/chatovervideo/ChatOverVideoSettingsOberver;->CHAT_OVER_VIDEO_ENABLED_PACKAGES:Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/chatovervideo/ChatOverVideoSettingsOberver;->mListener:Lcom/samsung/android/chatovervideo/ChatOverVideoSettingsOberver$onChatOverVideoModeChangeListener;

    iput-object v1, p0, Lcom/samsung/android/chatovervideo/ChatOverVideoSettingsOberver;->mPkgName:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/chatovervideo/ChatOverVideoSettingsOberver;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/chatovervideo/ChatOverVideoSettingsOberver;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/samsung/android/chatovervideo/ChatOverVideoSettingsOberver;->beginObserveChatOverVideoSettings()V

    return-void
.end method

.method private doesSupportChatOverVideoFeature(Ljava/lang/String;)Z
    .locals 2

    const/4 v1, 0x0

    const-string/jumbo v0, "android"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/chatovervideo/ChatOverVideoSettingsOberver;->CHAT_OVER_VIDEO_ENABLED:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/chatovervideo/ChatOverVideoSettingsOberver;->CHAT_OVER_VIDEO_ENABLED_PACKAGES:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/chatovervideo/ChatOverVideoSettingsOberver;->CHAT_OVER_VIDEO_ENABLED_PACKAGES:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method private handleOnChatOverVideoAppsChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/chatovervideo/ChatOverVideoSettingsOberver;->mListener:Lcom/samsung/android/chatovervideo/ChatOverVideoSettingsOberver$onChatOverVideoModeChangeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/chatovervideo/ChatOverVideoSettingsOberver;->mListener:Lcom/samsung/android/chatovervideo/ChatOverVideoSettingsOberver$onChatOverVideoModeChangeListener;

    invoke-interface {v0, p2}, Lcom/samsung/android/chatovervideo/ChatOverVideoSettingsOberver$onChatOverVideoModeChangeListener;->onChatOverVideoAppsChanged(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private handleOnChatOverVideoEnableChanged(ZZ)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/chatovervideo/ChatOverVideoSettingsOberver;->mListener:Lcom/samsung/android/chatovervideo/ChatOverVideoSettingsOberver$onChatOverVideoModeChangeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/chatovervideo/ChatOverVideoSettingsOberver;->mListener:Lcom/samsung/android/chatovervideo/ChatOverVideoSettingsOberver$onChatOverVideoModeChangeListener;

    invoke-interface {v0, p2}, Lcom/samsung/android/chatovervideo/ChatOverVideoSettingsOberver$onChatOverVideoModeChangeListener;->onChatOverVideoEnableChanged(Z)V

    :cond_0
    return-void
.end method

.method private handleOnChatOverVideoSettingsChanged()V
    .locals 6

    iget-object v3, p0, Lcom/samsung/android/chatovervideo/ChatOverVideoSettingsOberver;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "chat_over_video"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    const/4 v0, 0x1

    :goto_0
    iget-boolean v3, p0, Lcom/samsung/android/chatovervideo/ChatOverVideoSettingsOberver;->CHAT_OVER_VIDEO_ENABLED:Z

    if-eq v3, v0, :cond_0

    iget-boolean v2, p0, Lcom/samsung/android/chatovervideo/ChatOverVideoSettingsOberver;->CHAT_OVER_VIDEO_ENABLED:Z

    iput-boolean v0, p0, Lcom/samsung/android/chatovervideo/ChatOverVideoSettingsOberver;->CHAT_OVER_VIDEO_ENABLED:Z

    invoke-direct {p0, v2, v0}, Lcom/samsung/android/chatovervideo/ChatOverVideoSettingsOberver;->handleOnChatOverVideoEnableChanged(ZZ)V

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/chatovervideo/ChatOverVideoSettingsOberver;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "chat_over_video_app_list"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v3, p0, Lcom/samsung/android/chatovervideo/ChatOverVideoSettingsOberver;->CHAT_OVER_VIDEO_ENABLED_PACKAGES:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/chatovervideo/ChatOverVideoSettingsOberver;->CHAT_OVER_VIDEO_ENABLED_PACKAGES:Ljava/lang/String;

    invoke-direct {p0, v3, v1}, Lcom/samsung/android/chatovervideo/ChatOverVideoSettingsOberver;->handleOnChatOverVideoAppsChanged(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/samsung/android/chatovervideo/ChatOverVideoSettingsOberver;->CHAT_OVER_VIDEO_ENABLED_PACKAGES:Ljava/lang/String;

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initObserver()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/chatovervideo/ChatOverVideoSettingsOberver;->mChatOverVideoSettingsObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/chatovervideo/ChatOverVideoSettingsOberver$1;

    iget-object v1, p0, Lcom/samsung/android/chatovervideo/ChatOverVideoSettingsOberver;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/chatovervideo/ChatOverVideoSettingsOberver$1;-><init>(Lcom/samsung/android/chatovervideo/ChatOverVideoSettingsOberver;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/chatovervideo/ChatOverVideoSettingsOberver;->mChatOverVideoSettingsObserver:Landroid/database/ContentObserver;

    :cond_0
    return-void
.end method


# virtual methods
.method public beginObserveChatOverVideoSettings()V
    .locals 4

    const/4 v3, 0x1

    invoke-direct {p0}, Lcom/samsung/android/chatovervideo/ChatOverVideoSettingsOberver;->initObserver()V

    iget-object v0, p0, Lcom/samsung/android/chatovervideo/ChatOverVideoSettingsOberver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "chat_over_video"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/chatovervideo/ChatOverVideoSettingsOberver;->mChatOverVideoSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/samsung/android/chatovervideo/ChatOverVideoSettingsOberver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "chat_over_video_app_list"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/chatovervideo/ChatOverVideoSettingsOberver;->mChatOverVideoSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-direct {p0}, Lcom/samsung/android/chatovervideo/ChatOverVideoSettingsOberver;->handleOnChatOverVideoSettingsChanged()V

    return-void
.end method

.method public final getChatOverVideoEnabledApps()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/chatovervideo/ChatOverVideoSettingsOberver;->CHAT_OVER_VIDEO_ENABLED_PACKAGES:Ljava/lang/String;

    return-object v0
.end method

.method public final isEnabledChatOverVideoFeature()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/chatovervideo/ChatOverVideoSettingsOberver;->CHAT_OVER_VIDEO_ENABLED:Z

    return v0
.end method

.method public final isEnabledChatOverVideoFeature(Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/chatovervideo/ChatOverVideoSettingsOberver;->doesSupportChatOverVideoFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public registerListenerForChatOverVideoModeChange(Lcom/samsung/android/chatovervideo/ChatOverVideoSettingsOberver$onChatOverVideoModeChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/chatovervideo/ChatOverVideoSettingsOberver;->mListener:Lcom/samsung/android/chatovervideo/ChatOverVideoSettingsOberver$onChatOverVideoModeChangeListener;

    return-void
.end method
