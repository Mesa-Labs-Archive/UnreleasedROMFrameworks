.class Lcom/android/server/wifi/scanner/WificondScannerImpl$4;
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

.field final synthetic val$newScanSettings:Lcom/android/server/wifi/scanner/WificondScannerImpl$LastScanSettings;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/scanner/WificondScannerImpl;Lcom/android/server/wifi/scanner/WificondScannerImpl$LastScanSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl$4;->this$0:Lcom/android/server/wifi/scanner/WificondScannerImpl;

    iput-object p2, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl$4;->val$newScanSettings:Lcom/android/server/wifi/scanner/WificondScannerImpl$LastScanSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl$4;->val$newScanSettings:Lcom/android/server/wifi/scanner/WificondScannerImpl$LastScanSettings;

    iget-object v0, v0, Lcom/android/server/wifi/scanner/WificondScannerImpl$LastScanSettings;->singleScanEventHandler:Lcom/android/server/wifi/WifiNative$ScanEventHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl$4;->val$newScanSettings:Lcom/android/server/wifi/scanner/WificondScannerImpl$LastScanSettings;

    iget-object v0, v0, Lcom/android/server/wifi/scanner/WificondScannerImpl$LastScanSettings;->singleScanEventHandler:Lcom/android/server/wifi/WifiNative$ScanEventHandler;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/android/server/wifi/WifiNative$ScanEventHandler;->onScanStatus(I)V

    :cond_0
    return-void
.end method
