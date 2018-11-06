.class Lcom/android/server/wifi/WifiMetrics$1;
.super Landroid/os/Handler;
.source "WifiMetrics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/WifiMetrics;-><init>(Lcom/android/server/wifi/Clock;Landroid/os/Looper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiMetrics;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiMetrics;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wifi/WifiMetrics$1;->this$0:Lcom/android/server/wifi/WifiMetrics;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics$1;->this$0:Lcom/android/server/wifi/WifiMetrics;

    invoke-static {v0}, Lcom/android/server/wifi/WifiMetrics;->-get1(Lcom/android/server/wifi/WifiMetrics;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics$1;->this$0:Lcom/android/server/wifi/WifiMetrics;

    invoke-static {v0, p1}, Lcom/android/server/wifi/WifiMetrics;->-wrap0(Lcom/android/server/wifi/WifiMetrics;Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
