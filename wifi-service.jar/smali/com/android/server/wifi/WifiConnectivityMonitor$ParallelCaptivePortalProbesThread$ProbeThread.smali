.class final Lcom/android/server/wifi/WifiConnectivityMonitor$ParallelCaptivePortalProbesThread$ProbeThread;
.super Ljava/lang/Thread;
.source "WifiConnectivityMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiConnectivityMonitor$ParallelCaptivePortalProbesThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ProbeThread"
.end annotation


# static fields
.field private static final PROBE_FALLBACK:I = 0x4

.field private static final PROBE_HTTP:I = 0x1

.field private static final PROBE_HTTPS:I = 0x2

.field private static final PROBE_PAC:I = 0x3


# instance fields
.field private volatile mResult:Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalProbeResult;

.field private final mType:I

.field final synthetic this$1:Lcom/android/server/wifi/WifiConnectivityMonitor$ParallelCaptivePortalProbesThread;


# direct methods
.method public constructor <init>(Lcom/android/server/wifi/WifiConnectivityMonitor$ParallelCaptivePortalProbesThread;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParallelCaptivePortalProbesThread$ProbeThread;->this$1:Lcom/android/server/wifi/WifiConnectivityMonitor$ParallelCaptivePortalProbesThread;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput p2, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParallelCaptivePortalProbesThread$ProbeThread;->mType:I

    return-void
.end method


# virtual methods
.method public getResult()Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalProbeResult;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParallelCaptivePortalProbesThread$ProbeThread;->mResult:Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalProbeResult;

    return-object v0
.end method

.method public run()V
    .locals 10

    const/4 v9, 0x2

    const/4 v8, 0x0

    const/16 v7, 0xbb8

    const/4 v6, 0x1

    const/4 v5, 0x0

    new-instance v1, Landroid/net/util/Stopwatch;

    invoke-direct {v1}, Landroid/net/util/Stopwatch;-><init>()V

    invoke-virtual {v1}, Landroid/net/util/Stopwatch;->start()Landroid/net/util/Stopwatch;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParallelCaptivePortalProbesThread$ProbeThread;->mType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParallelCaptivePortalProbesThread$ProbeThread;->this$1:Lcom/android/server/wifi/WifiConnectivityMonitor$ParallelCaptivePortalProbesThread;

    iget-object v2, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParallelCaptivePortalProbesThread$ProbeThread;->this$1:Lcom/android/server/wifi/WifiConnectivityMonitor$ParallelCaptivePortalProbesThread;

    iget v2, v2, Lcom/android/server/wifi/WifiConnectivityMonitor$ParallelCaptivePortalProbesThread;->id:I

    iget-object v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParallelCaptivePortalProbesThread$ProbeThread;->this$1:Lcom/android/server/wifi/WifiConnectivityMonitor$ParallelCaptivePortalProbesThread;

    iget-object v3, v3, Lcom/android/server/wifi/WifiConnectivityMonitor$ParallelCaptivePortalProbesThread;->pacUrl:Ljava/net/URL;

    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParallelCaptivePortalProbesThread$ProbeThread;->this$1:Lcom/android/server/wifi/WifiConnectivityMonitor$ParallelCaptivePortalProbesThread;

    iget-object v4, v4, Lcom/android/server/wifi/WifiConnectivityMonitor$ParallelCaptivePortalProbesThread;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get81(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v2, v3, v7, v6}, Lcom/android/server/wifi/WifiConnectivityMonitor$ParallelCaptivePortalProbesThread;->-wrap0(Lcom/android/server/wifi/WifiConnectivityMonitor$ParallelCaptivePortalProbesThread;ILjava/net/URL;IZ)Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalProbeResult;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParallelCaptivePortalProbesThread$ProbeThread;->mResult:Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalProbeResult;

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParallelCaptivePortalProbesThread$ProbeThread;->this$1:Lcom/android/server/wifi/WifiConnectivityMonitor$ParallelCaptivePortalProbesThread;

    iget-object v1, v1, Lcom/android/server/wifi/WifiConnectivityMonitor$ParallelCaptivePortalProbesThread;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    iget v2, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParallelCaptivePortalProbesThread$ProbeThread;->mType:I

    invoke-virtual {v0}, Landroid/net/util/Stopwatch;->stop()J

    move-result-wide v4

    long-to-int v3, v4

    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParallelCaptivePortalProbesThread$ProbeThread;->mResult:Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalProbeResult;

    invoke-static {v1, v2, v3, v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap43(Lcom/android/server/wifi/WifiConnectivityMonitor;IILcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalProbeResult;)V

    iget v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParallelCaptivePortalProbesThread$ProbeThread;->mType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_5

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParallelCaptivePortalProbesThread$ProbeThread;->this$1:Lcom/android/server/wifi/WifiConnectivityMonitor$ParallelCaptivePortalProbesThread;

    iget-object v1, v1, Lcom/android/server/wifi/WifiConnectivityMonitor$ParallelCaptivePortalProbesThread;->finalResult:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v2, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParallelCaptivePortalProbesThread$ProbeThread;->mResult:Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalProbeResult;

    invoke-virtual {v1, v8, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParallelCaptivePortalProbesThread$ProbeThread;->this$1:Lcom/android/server/wifi/WifiConnectivityMonitor$ParallelCaptivePortalProbesThread;

    iget-object v1, v1, Lcom/android/server/wifi/WifiConnectivityMonitor$ParallelCaptivePortalProbesThread;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParallelCaptivePortalProbesThread$ProbeThread;->this$1:Lcom/android/server/wifi/WifiConnectivityMonitor$ParallelCaptivePortalProbesThread;

    iget-object v1, v1, Lcom/android/server/wifi/WifiConnectivityMonitor$ParallelCaptivePortalProbesThread;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :cond_2
    iget v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParallelCaptivePortalProbesThread$ProbeThread;->mType:I

    if-ne v1, v9, :cond_3

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParallelCaptivePortalProbesThread$ProbeThread;->this$1:Lcom/android/server/wifi/WifiConnectivityMonitor$ParallelCaptivePortalProbesThread;

    iget-object v2, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParallelCaptivePortalProbesThread$ProbeThread;->this$1:Lcom/android/server/wifi/WifiConnectivityMonitor$ParallelCaptivePortalProbesThread;

    iget v2, v2, Lcom/android/server/wifi/WifiConnectivityMonitor$ParallelCaptivePortalProbesThread;->id:I

    iget-object v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParallelCaptivePortalProbesThread$ProbeThread;->this$1:Lcom/android/server/wifi/WifiConnectivityMonitor$ParallelCaptivePortalProbesThread;

    iget-object v3, v3, Lcom/android/server/wifi/WifiConnectivityMonitor$ParallelCaptivePortalProbesThread;->httpsUrl:Ljava/net/URL;

    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParallelCaptivePortalProbesThread$ProbeThread;->this$1:Lcom/android/server/wifi/WifiConnectivityMonitor$ParallelCaptivePortalProbesThread;

    iget-object v4, v4, Lcom/android/server/wifi/WifiConnectivityMonitor$ParallelCaptivePortalProbesThread;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get81(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParallelCaptivePortalProbesThread$ProbeThread;->this$1:Lcom/android/server/wifi/WifiConnectivityMonitor$ParallelCaptivePortalProbesThread;

    iget-object v4, v4, Lcom/android/server/wifi/WifiConnectivityMonitor$ParallelCaptivePortalProbesThread;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get81(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v4, 0x1388

    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/server/wifi/WifiConnectivityMonitor$ParallelCaptivePortalProbesThread;->-wrap0(Lcom/android/server/wifi/WifiConnectivityMonitor$ParallelCaptivePortalProbesThread;ILjava/net/URL;IZ)Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalProbeResult;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParallelCaptivePortalProbesThread$ProbeThread;->mResult:Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalProbeResult;

    goto :goto_0

    :cond_3
    iget v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParallelCaptivePortalProbesThread$ProbeThread;->mType:I

    if-ne v1, v6, :cond_4

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParallelCaptivePortalProbesThread$ProbeThread;->this$1:Lcom/android/server/wifi/WifiConnectivityMonitor$ParallelCaptivePortalProbesThread;

    iget-object v2, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParallelCaptivePortalProbesThread$ProbeThread;->this$1:Lcom/android/server/wifi/WifiConnectivityMonitor$ParallelCaptivePortalProbesThread;

    iget v2, v2, Lcom/android/server/wifi/WifiConnectivityMonitor$ParallelCaptivePortalProbesThread;->id:I

    iget-object v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParallelCaptivePortalProbesThread$ProbeThread;->this$1:Lcom/android/server/wifi/WifiConnectivityMonitor$ParallelCaptivePortalProbesThread;

    iget-object v3, v3, Lcom/android/server/wifi/WifiConnectivityMonitor$ParallelCaptivePortalProbesThread;->httpUrl:Ljava/net/URL;

    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParallelCaptivePortalProbesThread$ProbeThread;->this$1:Lcom/android/server/wifi/WifiConnectivityMonitor$ParallelCaptivePortalProbesThread;

    iget-object v4, v4, Lcom/android/server/wifi/WifiConnectivityMonitor$ParallelCaptivePortalProbesThread;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get81(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v2, v3, v7, v5}, Lcom/android/server/wifi/WifiConnectivityMonitor$ParallelCaptivePortalProbesThread;->-wrap0(Lcom/android/server/wifi/WifiConnectivityMonitor$ParallelCaptivePortalProbesThread;ILjava/net/URL;IZ)Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalProbeResult;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParallelCaptivePortalProbesThread$ProbeThread;->mResult:Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalProbeResult;

    goto :goto_0

    :cond_4
    iget v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParallelCaptivePortalProbesThread$ProbeThread;->mType:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParallelCaptivePortalProbesThread$ProbeThread;->this$1:Lcom/android/server/wifi/WifiConnectivityMonitor$ParallelCaptivePortalProbesThread;

    iget-object v2, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParallelCaptivePortalProbesThread$ProbeThread;->this$1:Lcom/android/server/wifi/WifiConnectivityMonitor$ParallelCaptivePortalProbesThread;

    iget v2, v2, Lcom/android/server/wifi/WifiConnectivityMonitor$ParallelCaptivePortalProbesThread;->id:I

    iget-object v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParallelCaptivePortalProbesThread$ProbeThread;->this$1:Lcom/android/server/wifi/WifiConnectivityMonitor$ParallelCaptivePortalProbesThread;

    iget-object v3, v3, Lcom/android/server/wifi/WifiConnectivityMonitor$ParallelCaptivePortalProbesThread;->fallbackUrl:Ljava/net/URL;

    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParallelCaptivePortalProbesThread$ProbeThread;->this$1:Lcom/android/server/wifi/WifiConnectivityMonitor$ParallelCaptivePortalProbesThread;

    iget-object v4, v4, Lcom/android/server/wifi/WifiConnectivityMonitor$ParallelCaptivePortalProbesThread;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get81(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v2, v3, v7, v5}, Lcom/android/server/wifi/WifiConnectivityMonitor$ParallelCaptivePortalProbesThread;->-wrap0(Lcom/android/server/wifi/WifiConnectivityMonitor$ParallelCaptivePortalProbesThread;ILjava/net/URL;IZ)Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalProbeResult;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParallelCaptivePortalProbesThread$ProbeThread;->mResult:Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalProbeResult;

    goto/16 :goto_0

    :cond_5
    iget v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParallelCaptivePortalProbesThread$ProbeThread;->mType:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_7

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParallelCaptivePortalProbesThread$ProbeThread;->mResult:Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalProbeResult;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalProbeResult;->isPortal()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParallelCaptivePortalProbesThread$ProbeThread;->this$1:Lcom/android/server/wifi/WifiConnectivityMonitor$ParallelCaptivePortalProbesThread;

    iget-object v1, v1, Lcom/android/server/wifi/WifiConnectivityMonitor$ParallelCaptivePortalProbesThread;->finalResult:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v2, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParallelCaptivePortalProbesThread$ProbeThread;->mResult:Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalProbeResult;

    invoke-virtual {v1, v8, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_6
    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParallelCaptivePortalProbesThread$ProbeThread;->this$1:Lcom/android/server/wifi/WifiConnectivityMonitor$ParallelCaptivePortalProbesThread;

    iget-object v1, v1, Lcom/android/server/wifi/WifiConnectivityMonitor$ParallelCaptivePortalProbesThread;->fallbackLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto/16 :goto_1

    :cond_7
    iget v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParallelCaptivePortalProbesThread$ProbeThread;->mType:I

    if-ne v1, v9, :cond_8

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParallelCaptivePortalProbesThread$ProbeThread;->mResult:Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalProbeResult;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalProbeResult;->isSuccessful()Z

    move-result v1

    if-nez v1, :cond_9

    :cond_8
    iget v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParallelCaptivePortalProbesThread$ProbeThread;->mType:I

    if-ne v1, v6, :cond_1

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParallelCaptivePortalProbesThread$ProbeThread;->mResult:Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalProbeResult;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalProbeResult;->isPortal()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_9
    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParallelCaptivePortalProbesThread$ProbeThread;->this$1:Lcom/android/server/wifi/WifiConnectivityMonitor$ParallelCaptivePortalProbesThread;

    iget-object v1, v1, Lcom/android/server/wifi/WifiConnectivityMonitor$ParallelCaptivePortalProbesThread;->finalResult:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v2, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParallelCaptivePortalProbesThread$ProbeThread;->mResult:Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalProbeResult;

    invoke-virtual {v1, v8, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParallelCaptivePortalProbesThread$ProbeThread;->this$1:Lcom/android/server/wifi/WifiConnectivityMonitor$ParallelCaptivePortalProbesThread;

    iget-object v1, v1, Lcom/android/server/wifi/WifiConnectivityMonitor$ParallelCaptivePortalProbesThread;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto/16 :goto_1
.end method
