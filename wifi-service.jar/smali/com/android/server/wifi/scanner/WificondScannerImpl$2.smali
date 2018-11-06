.class Lcom/android/server/wifi/scanner/WificondScannerImpl$2;
.super Ljava/lang/Object;
.source "WificondScannerImpl.java"

# interfaces
.implements Landroid/app/AlarmManager$OnAlarmListener;


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

    iput-object p1, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl$2;->this$0:Lcom/android/server/wifi/scanner/WificondScannerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAlarm()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl$2;->this$0:Lcom/android/server/wifi/scanner/WificondScannerImpl;

    invoke-static {v0}, Lcom/android/server/wifi/scanner/WificondScannerImpl;->-get2(Lcom/android/server/wifi/scanner/WificondScannerImpl;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl$2;->this$0:Lcom/android/server/wifi/scanner/WificondScannerImpl;

    invoke-static {v0}, Lcom/android/server/wifi/scanner/WificondScannerImpl;->-wrap0(Lcom/android/server/wifi/scanner/WificondScannerImpl;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
