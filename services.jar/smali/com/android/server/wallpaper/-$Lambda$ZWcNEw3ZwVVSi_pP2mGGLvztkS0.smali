.class final synthetic Lcom/android/server/wallpaper/-$Lambda$ZWcNEw3ZwVVSi_pP2mGGLvztkS0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wallpaper/-$Lambda$ZWcNEw3ZwVVSi_pP2mGGLvztkS0;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    invoke-virtual {v0}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->lambda$-com_android_server_wallpaper_WallpaperManagerService$WallpaperConnection_48799()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wallpaper/-$Lambda$ZWcNEw3ZwVVSi_pP2mGGLvztkS0;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wallpaper/-$Lambda$ZWcNEw3ZwVVSi_pP2mGGLvztkS0;->$m$0()V

    return-void
.end method
