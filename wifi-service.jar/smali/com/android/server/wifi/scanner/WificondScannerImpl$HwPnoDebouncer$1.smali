.class Lcom/android/server/wifi/scanner/WificondScannerImpl$HwPnoDebouncer$1;
.super Ljava/lang/Object;
.source "WificondScannerImpl.java"

# interfaces
.implements Landroid/app/AlarmManager$OnAlarmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/scanner/WificondScannerImpl$HwPnoDebouncer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/wifi/scanner/WificondScannerImpl$HwPnoDebouncer;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/scanner/WificondScannerImpl$HwPnoDebouncer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl$HwPnoDebouncer$1;->this$1:Lcom/android/server/wifi/scanner/WificondScannerImpl$HwPnoDebouncer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAlarm()V
    .locals 3

    invoke-static {}, Lcom/android/server/wifi/scanner/WificondScannerImpl;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "WificondScannerImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "PNO timer expired, expected state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl$HwPnoDebouncer$1;->this$1:Lcom/android/server/wifi/scanner/WificondScannerImpl$HwPnoDebouncer;

    invoke-static {v2}, Lcom/android/server/wifi/scanner/WificondScannerImpl$HwPnoDebouncer;->-get0(Lcom/android/server/wifi/scanner/WificondScannerImpl$HwPnoDebouncer;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl$HwPnoDebouncer$1;->this$1:Lcom/android/server/wifi/scanner/WificondScannerImpl$HwPnoDebouncer;

    invoke-static {v0}, Lcom/android/server/wifi/scanner/WificondScannerImpl$HwPnoDebouncer;->-get0(Lcom/android/server/wifi/scanner/WificondScannerImpl$HwPnoDebouncer;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl$HwPnoDebouncer$1;->this$1:Lcom/android/server/wifi/scanner/WificondScannerImpl$HwPnoDebouncer;

    invoke-static {v0}, Lcom/android/server/wifi/scanner/WificondScannerImpl$HwPnoDebouncer;->-wrap0(Lcom/android/server/wifi/scanner/WificondScannerImpl$HwPnoDebouncer;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl$HwPnoDebouncer$1;->this$1:Lcom/android/server/wifi/scanner/WificondScannerImpl$HwPnoDebouncer;

    invoke-static {v0}, Lcom/android/server/wifi/scanner/WificondScannerImpl$HwPnoDebouncer;->-get1(Lcom/android/server/wifi/scanner/WificondScannerImpl$HwPnoDebouncer;)Lcom/android/server/wifi/scanner/WificondScannerImpl$HwPnoDebouncer$Listener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl$HwPnoDebouncer$1;->this$1:Lcom/android/server/wifi/scanner/WificondScannerImpl$HwPnoDebouncer;

    invoke-static {v0}, Lcom/android/server/wifi/scanner/WificondScannerImpl$HwPnoDebouncer;->-get1(Lcom/android/server/wifi/scanner/WificondScannerImpl$HwPnoDebouncer;)Lcom/android/server/wifi/scanner/WificondScannerImpl$HwPnoDebouncer$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/wifi/scanner/WificondScannerImpl$HwPnoDebouncer$Listener;->onPnoScanFailed()V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl$HwPnoDebouncer$1;->this$1:Lcom/android/server/wifi/scanner/WificondScannerImpl$HwPnoDebouncer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/wifi/scanner/WificondScannerImpl$HwPnoDebouncer;->-set0(Lcom/android/server/wifi/scanner/WificondScannerImpl$HwPnoDebouncer;Z)Z

    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl$HwPnoDebouncer$1;->this$1:Lcom/android/server/wifi/scanner/WificondScannerImpl$HwPnoDebouncer;

    invoke-static {v0}, Lcom/android/server/wifi/scanner/WificondScannerImpl$HwPnoDebouncer;->-wrap1(Lcom/android/server/wifi/scanner/WificondScannerImpl$HwPnoDebouncer;)Z

    goto :goto_0
.end method
