.class Lcom/android/server/wifi/scanner/WificondScannerImpl$1;
.super Ljava/lang/Object;
.source "WificondScannerImpl.java"

# interfaces
.implements Lcom/android/server/wifi/scanner/WificondScannerImpl$HwPnoDebouncer$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/scanner/WificondScannerImpl;
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

    iput-object p1, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl$1;->this$0:Lcom/android/server/wifi/scanner/WificondScannerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPnoScanFailed()V
    .locals 2

    const-string/jumbo v0, "WificondScannerImpl"

    const-string/jumbo v1, "Pno scan failure received"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl$1;->this$0:Lcom/android/server/wifi/scanner/WificondScannerImpl;

    invoke-static {v0}, Lcom/android/server/wifi/scanner/WificondScannerImpl;->-wrap2(Lcom/android/server/wifi/scanner/WificondScannerImpl;)V

    return-void
.end method
