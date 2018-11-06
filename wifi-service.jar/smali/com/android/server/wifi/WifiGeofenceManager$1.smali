.class Lcom/android/server/wifi/WifiGeofenceManager$1;
.super Ljava/lang/Object;
.source "WifiGeofenceManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiGeofenceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiGeofenceManager;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiGeofenceManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wifi/WifiGeofenceManager$1;->this$0:Lcom/android/server/wifi/WifiGeofenceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiGeofenceManager$1;->this$0:Lcom/android/server/wifi/WifiGeofenceManager;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiGeofenceManager;->initGeofence()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
