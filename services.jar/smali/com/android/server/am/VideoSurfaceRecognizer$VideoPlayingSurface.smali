.class Lcom/android/server/am/VideoSurfaceRecognizer$VideoPlayingSurface;
.super Ljava/lang/Object;
.source "VideoSurfaceRecognizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/VideoSurfaceRecognizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VideoPlayingSurface"
.end annotation


# instance fields
.field mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field mSurface:Landroid/os/IBinder;

.field final synthetic this$0:Lcom/android/server/am/VideoSurfaceRecognizer;


# direct methods
.method constructor <init>(Lcom/android/server/am/VideoSurfaceRecognizer;Landroid/os/IBinder;Landroid/os/IBinder$DeathRecipient;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/VideoSurfaceRecognizer$VideoPlayingSurface;->this$0:Lcom/android/server/am/VideoSurfaceRecognizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/am/VideoSurfaceRecognizer$VideoPlayingSurface;->mSurface:Landroid/os/IBinder;

    iput-object p3, p0, Lcom/android/server/am/VideoSurfaceRecognizer$VideoPlayingSurface;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    return-void
.end method
