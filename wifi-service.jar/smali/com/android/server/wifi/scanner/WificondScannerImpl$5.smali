.class Lcom/android/server/wifi/scanner/WificondScannerImpl$5;
.super Ljava/lang/Object;
.source "WificondScannerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/scanner/WificondScannerImpl;->processPendingScans()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/scanner/WificondScannerImpl;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/scanner/WificondScannerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl$5;->this$0:Lcom/android/server/wifi/scanner/WificondScannerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl$5;->this$0:Lcom/android/server/wifi/scanner/WificondScannerImpl;

    invoke-static {v0}, Lcom/android/server/wifi/scanner/WificondScannerImpl;->-get1(Lcom/android/server/wifi/scanner/WificondScannerImpl;)Lcom/android/server/wifi/WifiNative$PnoEventHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl$5;->this$0:Lcom/android/server/wifi/scanner/WificondScannerImpl;

    invoke-static {v0}, Lcom/android/server/wifi/scanner/WificondScannerImpl;->-get1(Lcom/android/server/wifi/scanner/WificondScannerImpl;)Lcom/android/server/wifi/WifiNative$PnoEventHandler;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/wifi/WifiNative$PnoEventHandler;->onPnoScanFailed()V

    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl$5;->this$0:Lcom/android/server/wifi/scanner/WificondScannerImpl;

    invoke-static {v0, v1}, Lcom/android/server/wifi/scanner/WificondScannerImpl;->-set1(Lcom/android/server/wifi/scanner/WificondScannerImpl;Lcom/android/server/wifi/WifiNative$PnoSettings;)Lcom/android/server/wifi/WifiNative$PnoSettings;

    iget-object v0, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl$5;->this$0:Lcom/android/server/wifi/scanner/WificondScannerImpl;

    invoke-static {v0, v1}, Lcom/android/server/wifi/scanner/WificondScannerImpl;->-set0(Lcom/android/server/wifi/scanner/WificondScannerImpl;Lcom/android/server/wifi/WifiNative$PnoEventHandler;)Lcom/android/server/wifi/WifiNative$PnoEventHandler;

    return-void
.end method
