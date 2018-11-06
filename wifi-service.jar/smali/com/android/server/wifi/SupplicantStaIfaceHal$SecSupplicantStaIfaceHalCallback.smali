.class Lcom/android/server/wifi/SupplicantStaIfaceHal$SecSupplicantStaIfaceHalCallback;
.super Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaIfaceCallback$Stub;
.source "SupplicantStaIfaceHal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/SupplicantStaIfaceHal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SecSupplicantStaIfaceHalCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/SupplicantStaIfaceHal;


# direct methods
.method private constructor <init>(Lcom/android/server/wifi/SupplicantStaIfaceHal;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SecSupplicantStaIfaceHalCallback;->this$0:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-direct {p0}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaIfaceCallback$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wifi/SupplicantStaIfaceHal;Lcom/android/server/wifi/SupplicantStaIfaceHal$SecSupplicantStaIfaceHalCallback;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wifi/SupplicantStaIfaceHal$SecSupplicantStaIfaceHalCallback;-><init>(Lcom/android/server/wifi/SupplicantStaIfaceHal;)V

    return-void
.end method


# virtual methods
.method public onDriverHang(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SecSupplicantStaIfaceHalCallback;->this$0:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    const-string/jumbo v1, "onDriverHang"

    invoke-static {v0, v1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->-wrap4(Lcom/android/server/wifi/SupplicantStaIfaceHal;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SecSupplicantStaIfaceHalCallback;->this$0:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-static {v0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->-get1(Lcom/android/server/wifi/SupplicantStaIfaceHal;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SecSupplicantStaIfaceHalCallback;->this$0:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-static {v0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->-get3(Lcom/android/server/wifi/SupplicantStaIfaceHal;)Lcom/android/server/wifi/WifiMonitor;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SecSupplicantStaIfaceHalCallback;->this$0:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-static {v2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->-get0(Lcom/android/server/wifi/SupplicantStaIfaceHal;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, p1, p2}, Lcom/android/server/wifi/WifiMonitor;->broadcastDriverHangEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onEapEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SecSupplicantStaIfaceHalCallback;->this$0:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    const-string/jumbo v1, "onEapEvent"

    invoke-static {v0, v1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->-wrap4(Lcom/android/server/wifi/SupplicantStaIfaceHal;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SecSupplicantStaIfaceHalCallback;->this$0:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-static {v0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->-get1(Lcom/android/server/wifi/SupplicantStaIfaceHal;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SecSupplicantStaIfaceHalCallback;->this$0:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-static {v0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->-get3(Lcom/android/server/wifi/SupplicantStaIfaceHal;)Lcom/android/server/wifi/WifiMonitor;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SecSupplicantStaIfaceHalCallback;->this$0:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-static {v2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->-get0(Lcom/android/server/wifi/SupplicantStaIfaceHal;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, p1, p2}, Lcom/android/server/wifi/WifiMonitor;->broadcastEapEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onNotifyBigdata(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SecSupplicantStaIfaceHalCallback;->this$0:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    const-string/jumbo v1, "onNotifyBigdata"

    invoke-static {v0, v1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->-wrap4(Lcom/android/server/wifi/SupplicantStaIfaceHal;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SecSupplicantStaIfaceHalCallback;->this$0:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-static {v0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->-get1(Lcom/android/server/wifi/SupplicantStaIfaceHal;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SecSupplicantStaIfaceHalCallback;->this$0:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-static {v0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->-get3(Lcom/android/server/wifi/SupplicantStaIfaceHal;)Lcom/android/server/wifi/WifiMonitor;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SecSupplicantStaIfaceHalCallback;->this$0:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-static {v2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->-get0(Lcom/android/server/wifi/SupplicantStaIfaceHal;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, p1, p2}, Lcom/android/server/wifi/WifiMonitor;->broadcastBigdataEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
