.class Lcom/android/server/wifi/WifiConnectivityMonitor$3;
.super Landroid/database/ContentObserver;
.source "WifiConnectivityMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/WifiConnectivityMonitor;->registerForWatchdogToggle()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiConnectivityMonitor;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$3;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$3;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    const v1, 0x21001

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConnectivityMonitor;->sendMessage(I)V

    return-void
.end method
