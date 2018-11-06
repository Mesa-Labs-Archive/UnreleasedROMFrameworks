.class public Lcom/samsung/android/framework/feature/ChatOverVideoFeatures;
.super Ljava/lang/Object;
.source "ChatOverVideoFeatures.java"


# static fields
.field public static final CHATOVERVIDEO_ACTION_REMOVE_ALL_BUBBLES:I = 0x63

.field public static final CHATOVERVIDEO_ACTION_REMOVE_PACKAGE_BUBBLES:I = 0x62

.field public static final CHATOVERVIDEO_CONTAINER_CLASS_NAME:Ljava/lang/String; = "com.samsung.android.app.multiwindow.minimizecontainer.MinimizeContainerService"

.field public static final CHATOVERVIDEO_CONTAINER_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.app.multiwindow"

.field public static final SAMSUNG_CHAT_OVER_VIDEO_SUPPORT:Z

.field public static final SEM_CHAT_OVER_VIDEO_APP_LIST:Ljava/lang/String; = "chat_over_video_app_list"

.field public static final SETTING_SYSTEM_CHAT_OVER_VIDEO:Ljava/lang/String; = "chat_over_video"

.field public static final TAG:Ljava/lang/String; = "ChatOverVideoFeatures"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v1, "CscFeature_Common_ConfigYuva"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "ChatOverVideo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/framework/feature/ChatOverVideoFeatures;->SAMSUNG_CHAT_OVER_VIDEO_SUPPORT:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
