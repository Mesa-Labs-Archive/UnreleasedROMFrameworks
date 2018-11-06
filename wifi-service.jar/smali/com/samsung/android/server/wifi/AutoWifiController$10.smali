.class Lcom/samsung/android/server/wifi/AutoWifiController$10;
.super Landroid/database/ContentObserver;
.source "AutoWifiController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/AutoWifiController;->registerForLocation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/AutoWifiController;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/AutoWifiController;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/server/wifi/AutoWifiController$10;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 2

    const-string/jumbo v0, "location_providers_allowed"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/net/Uri;->compareTo(Landroid/net/Uri;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/server/wifi/AutoWifiController$10;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/AutoWifiController;->-wrap6(Lcom/samsung/android/server/wifi/AutoWifiController;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/server/wifi/AutoWifiController$10;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/AutoWifiController;->sendMessage(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/AutoWifiController$10;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/AutoWifiController;->sendMessage(I)V

    goto :goto_0
.end method
