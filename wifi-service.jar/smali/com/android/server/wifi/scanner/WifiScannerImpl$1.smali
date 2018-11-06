.class final Lcom/android/server/wifi/scanner/WifiScannerImpl$1;
.super Ljava/lang/Object;
.source "WifiScannerImpl.java"

# interfaces
.implements Lcom/android/server/wifi/scanner/WifiScannerImpl$WifiScannerImplFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/scanner/WifiScannerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/wifi/Clock;)Lcom/android/server/wifi/scanner/WifiScannerImpl;
    .locals 6

    invoke-static {}, Lcom/android/server/wifi/WifiInjector;->getInstance()Lcom/android/server/wifi/WifiInjector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiInjector;->getWifiNative()Lcom/android/server/wifi/WifiNative;

    move-result-object v2

    invoke-static {}, Lcom/android/server/wifi/WifiInjector;->getInstance()Lcom/android/server/wifi/WifiInjector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiInjector;->getWifiMonitor()Lcom/android/server/wifi/WifiMonitor;

    move-result-object v3

    new-instance v0, Lcom/android/server/wifi/WifiNative$ScanCapabilities;

    invoke-direct {v0}, Lcom/android/server/wifi/WifiNative$ScanCapabilities;-><init>()V

    invoke-virtual {v2, v0}, Lcom/android/server/wifi/WifiNative;->getBgScanCapabilities(Lcom/android/server/wifi/WifiNative$ScanCapabilities;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/server/wifi/scanner/HalWifiScannerImpl;

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wifi/scanner/HalWifiScannerImpl;-><init>(Landroid/content/Context;Lcom/android/server/wifi/WifiNative;Lcom/android/server/wifi/WifiMonitor;Landroid/os/Looper;Lcom/android/server/wifi/Clock;)V

    return-object v0

    :cond_0
    new-instance v0, Lcom/android/server/wifi/scanner/WificondScannerImpl;

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wifi/scanner/WificondScannerImpl;-><init>(Landroid/content/Context;Lcom/android/server/wifi/WifiNative;Lcom/android/server/wifi/WifiMonitor;Landroid/os/Looper;Lcom/android/server/wifi/Clock;)V

    return-object v0
.end method
