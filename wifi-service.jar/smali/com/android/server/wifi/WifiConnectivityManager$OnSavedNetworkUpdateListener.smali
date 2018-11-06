.class Lcom/android/server/wifi/WifiConnectivityManager$OnSavedNetworkUpdateListener;
.super Ljava/lang/Object;
.source "WifiConnectivityManager.java"

# interfaces
.implements Lcom/android/server/wifi/WifiConfigManager$OnSavedNetworkUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiConnectivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnSavedNetworkUpdateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiConnectivityManager;


# direct methods
.method private constructor <init>(Lcom/android/server/wifi/WifiConnectivityManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wifi/WifiConnectivityManager$OnSavedNetworkUpdateListener;->this$0:Lcom/android/server/wifi/WifiConnectivityManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wifi/WifiConnectivityManager;Lcom/android/server/wifi/WifiConnectivityManager$OnSavedNetworkUpdateListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConnectivityManager$OnSavedNetworkUpdateListener;-><init>(Lcom/android/server/wifi/WifiConnectivityManager;)V

    return-void
.end method

.method private updatePnoScan()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager$OnSavedNetworkUpdateListener;->this$0:Lcom/android/server/wifi/WifiConnectivityManager;

    invoke-static {v0}, Lcom/android/server/wifi/WifiConnectivityManager;->-get4(Lcom/android/server/wifi/WifiConnectivityManager;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager$OnSavedNetworkUpdateListener;->this$0:Lcom/android/server/wifi/WifiConnectivityManager;

    const-string/jumbo v1, "Saved networks updated"

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiConnectivityManager;->-wrap1(Lcom/android/server/wifi/WifiConnectivityManager;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager$OnSavedNetworkUpdateListener;->this$0:Lcom/android/server/wifi/WifiConnectivityManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiConnectivityManager;->-wrap6(Lcom/android/server/wifi/WifiConnectivityManager;Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onSavedNetworkAdded(I)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityManager$OnSavedNetworkUpdateListener;->updatePnoScan()V

    return-void
.end method

.method public onSavedNetworkEnabled(I)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityManager$OnSavedNetworkUpdateListener;->updatePnoScan()V

    return-void
.end method

.method public onSavedNetworkPermanentlyDisabled(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager$OnSavedNetworkUpdateListener;->this$0:Lcom/android/server/wifi/WifiConnectivityManager;

    invoke-static {v0}, Lcom/android/server/wifi/WifiConnectivityManager;->-get0(Lcom/android/server/wifi/WifiConnectivityManager;)Lcom/android/server/wifi/WifiConnectivityHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiConnectivityHelper;->removeNetworkIfCurrent(I)V

    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityManager$OnSavedNetworkUpdateListener;->updatePnoScan()V

    return-void
.end method

.method public onSavedNetworkRemoved(I)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityManager$OnSavedNetworkUpdateListener;->updatePnoScan()V

    return-void
.end method

.method public onSavedNetworkTemporarilyDisabled(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager$OnSavedNetworkUpdateListener;->this$0:Lcom/android/server/wifi/WifiConnectivityManager;

    invoke-static {v0}, Lcom/android/server/wifi/WifiConnectivityManager;->-get0(Lcom/android/server/wifi/WifiConnectivityManager;)Lcom/android/server/wifi/WifiConnectivityHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiConnectivityHelper;->removeNetworkIfCurrent(I)V

    return-void
.end method

.method public onSavedNetworkUpdated(I)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityManager$OnSavedNetworkUpdateListener;->updatePnoScan()V

    return-void
.end method
