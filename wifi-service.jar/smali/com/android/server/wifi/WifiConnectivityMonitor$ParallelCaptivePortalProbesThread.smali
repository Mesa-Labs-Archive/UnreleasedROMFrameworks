.class final Lcom/android/server/wifi/WifiConnectivityMonitor$ParallelCaptivePortalProbesThread;
.super Ljava/lang/Thread;
.source "WifiConnectivityMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiConnectivityMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ParallelCaptivePortalProbesThread"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/WifiConnectivityMonitor$ParallelCaptivePortalProbesThread$ProbeThread;
    }
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field final fallbackLatch:Ljava/util/concurrent/CountDownLatch;

.field fallbackProbe:Lcom/android/server/wifi/WifiConnectivityMonitor$ParallelCaptivePortalProbesThread$ProbeThread;

.field fallbackUrl:Ljava/net/URL;

.field final finalResult:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalProbeResult;",
            ">;"
        }
    .end annotation
.end field

.field httpProbe:Lcom/android/server/wifi/WifiConnectivityMonitor$ParallelCaptivePortalProbesThread$ProbeThread;

.field httpUrl:Ljava/net/URL;

.field httpsProbe:Lcom/android/server/wifi/WifiConnectivityMonitor$ParallelCaptivePortalProbesThread$ProbeThread;

.field httpsUrl:Ljava/net/URL;

.field id:I

.field final latch:Ljava/util/concurrent/CountDownLatch;

.field pacProbe:Lcom/android/server/wifi/WifiConnectivityMonitor$ParallelCaptivePortalProbesThread$ProbeThread;

.field pacUrl:Ljava/net/URL;

.field final synthetic this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;


# direct methods
.method static synthetic -wrap0(Lcom/android/server/wifi/WifiConnectivityMonitor$ParallelCaptivePortalProbesThread;ILjava/net/URL;IZ)Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalProbeResult;
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/wifi/WifiConnectivityMonitor$ParallelCaptivePortalProbesThread;->sendHttpProbe(ILjava/net/URL;IZ)Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalProbeResult;

    move-result-object v0

    return-object v0
.end method

.method public constructor <init>(Lcom/android/server/wifi/WifiConnectivityMonitor;ILjava/net/URL;Ljava/net/URL;Ljava/net/URL;)V
    .locals 3

    const/4 v2, 0x2

    const/4 v1, 0x1

    iput-object p1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParallelCaptivePortalProbesThread;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const-string/jumbo v0, "WifiConnectivityMonitor.ParallelCaptivePortalCheck"

    iput-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParallelCaptivePortalProbesThread;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParallelCaptivePortalProbesThread;->latch:Ljava/util/concurrent/CountDownLatch;

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParallelCaptivePortalProbesThread;->fallbackLatch:Ljava/util/concurrent/CountDownLatch;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParallelCaptivePortalProbesThread;->finalResult:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParallelCaptivePortalProbesThread$ProbeThread;

    invoke-direct {v0, p0, v2}, Lcom/android/server/wifi/WifiConnectivityMonitor$ParallelCaptivePortalProbesThread$ProbeThread;-><init>(Lcom/android/server/wifi/WifiConnectivityMonitor$ParallelCaptivePortalProbesThread;I)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParallelCaptivePortalProbesThread;->httpsProbe:Lcom/android/server/wifi/WifiConnectivityMonitor$ParallelCaptivePortalProbesThread$ProbeThread;

    new-instance v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParallelCaptivePortalProbesThread$ProbeThread;

    invoke-direct {v0, p0, v1}, Lcom/android/server/wifi/WifiConnectivityMonitor$ParallelCaptivePortalProbesThread$ProbeThread;-><init>(Lcom/android/server/wifi/WifiConnectivityMonitor$ParallelCaptivePortalProbesThread;I)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParallelCaptivePortalProbesThread;->httpProbe:Lcom/android/server/wifi/WifiConnectivityMonitor$ParallelCaptivePortalProbesThread$ProbeThread;

    new-instance v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParallelCaptivePortalProbesThread$ProbeThread;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, Lcom/android/server/wifi/WifiConnectivityMonitor$ParallelCaptivePortalProbesThread$ProbeThread;-><init>(Lcom/android/server/wifi/WifiConnectivityMonitor$ParallelCaptivePortalProbesThread;I)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParallelCaptivePortalProbesThread;->fallbackProbe:Lcom/android/server/wifi/WifiConnectivityMonitor$ParallelCaptivePortalProbesThread$ProbeThread;

    new-instance v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParallelCaptivePortalProbesThread$ProbeThread;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lcom/android/server/wifi/WifiConnectivityMonitor$ParallelCaptivePortalProbesThread$ProbeThread;-><init>(Lcom/android/server/wifi/WifiConnectivityMonitor$ParallelCaptivePortalProbesThread;I)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParallelCaptivePortalProbesThread;->pacProbe:Lcom/android/server/wifi/WifiConnectivityMonitor$ParallelCaptivePortalProbesThread$ProbeThread;

    iput p2, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParallelCaptivePortalProbesThread;->id:I

    iput-object p3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParallelCaptivePortalProbesThread;->httpsUrl:Ljava/net/URL;

    iput-object p4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParallelCaptivePortalProbesThread;->httpUrl:Ljava/net/URL;

    iput-object p5, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParallelCaptivePortalProbesThread;->fallbackUrl:Ljava/net/URL;

    return-void
.end method

.method private makeURL(Ljava/lang/String;)Ljava/net/URL;
    .locals 5

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParallelCaptivePortalProbesThread;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Bad URL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v4
.end method

.method private sendHttpProbe(ILjava/net/URL;IZ)Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalProbeResult;
    .locals 18

    const/4 v12, 0x0

    const/16 v4, 0x257

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParallelCaptivePortalProbesThread;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v14}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get70(Lcom/android/server/wifi/WifiConnectivityMonitor;)Landroid/net/Network;

    move-result-object v14

    if-nez v14, :cond_0

    sget-object v14, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalProbeResult;->FAILED:Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalProbeResult;

    return-object v14

    :cond_0
    const/16 v14, -0xf9

    invoke-static {v14}, Landroid/net/TrafficStats;->getAndSetThreadStatsTag(I)I

    move-result v5

    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParallelCaptivePortalProbesThread;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v14}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get70(Lcom/android/server/wifi/WifiConnectivityMonitor;)Landroid/net/Network;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Landroid/net/Network;->openConnection(Ljava/net/URL;)Ljava/net/URLConnection;

    move-result-object v14

    move-object v0, v14

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v12, v0

    const/16 v6, 0xbb8

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParallelCaptivePortalProbesThread;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    const/4 v15, 0x0

    invoke-static {v14, v15}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set27(Lcom/android/server/wifi/WifiConnectivityMonitor;Z)Z

    move/from16 v0, p4

    invoke-virtual {v12, v0}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    move/from16 v0, p3

    invoke-virtual {v12, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    invoke-virtual {v12, v6}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const/4 v14, 0x0

    invoke-virtual {v12, v14}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParallelCaptivePortalProbesThread;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParallelCaptivePortalProbesThread;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v15}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get16(Lcom/android/server/wifi/WifiConnectivityMonitor;)Landroid/content/Context;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap21(Lcom/android/server/wifi/WifiConnectivityMonitor;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_1

    const-string/jumbo v14, "User-Agent"

    invoke-virtual {v12, v14, v13}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    const-string/jumbo v14, "location"

    invoke-virtual {v12, v14}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get0()Z

    move-result v14

    if-eqz v14, :cond_2

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParallelCaptivePortalProbesThread;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "sendHttpProbe["

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v16, "]: "

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    if-eqz p4, :cond_8

    const-string/jumbo v14, "[PAC]"

    :goto_0
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v16, " time="

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sub-long v16, v10, v8

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v16, "ms"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v16, " ret="

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v16, " headers="

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v15, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/16 v14, 0xc8

    if-ne v4, v14, :cond_4

    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v14

    if-nez v14, :cond_4

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get0()Z

    move-result v14

    if-eqz v14, :cond_3

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParallelCaptivePortalProbesThread;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "sendHttpProbe["

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "]: Empty 200 response interpreted as 204 response."

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/16 v4, 0xcc

    :cond_4
    const/16 v14, 0xc8

    if-ne v4, v14, :cond_6

    if-eqz p4, :cond_6

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get0()Z

    move-result v14

    if-eqz v14, :cond_5

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParallelCaptivePortalProbesThread;->TAG:Ljava/lang/String;

    const-string/jumbo v15, "PAC fetch 200 response interpreted as 204 response."

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    const/16 v4, 0xcc

    :cond_6
    if-eqz v12, :cond_7

    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_7
    invoke-static {v5}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    :goto_1
    new-instance v14, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalProbeResult;

    invoke-virtual/range {p2 .. p2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v4, v7, v15}, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalProbeResult;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-object v14

    :cond_8
    :try_start_1
    const-string/jumbo v14, ""
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :catch_0
    move-exception v3

    :try_start_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParallelCaptivePortalProbesThread;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "sendHttpProbe["

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "]: mNetwork: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParallelCaptivePortalProbesThread;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get70(Lcom/android/server/wifi/WifiConnectivityMonitor;)Landroid/net/Network;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ", Exception "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v12, :cond_9

    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_9
    invoke-static {v5}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    goto :goto_1

    :catch_1
    move-exception v2

    :try_start_3
    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get0()Z

    move-result v14

    if-eqz v14, :cond_a

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParallelCaptivePortalProbesThread;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "sendHttpProbe["

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "]: Probably not a portal: exception "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_a
    const/16 v14, 0x257

    if-eqz v12, :cond_b

    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_b
    invoke-static {v5}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    goto/16 :goto_1

    :catchall_0
    move-exception v14

    if-eqz v12, :cond_c

    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_c
    invoke-static {v5}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    throw v14
.end method


# virtual methods
.method public run()V
    .locals 12

    const/16 v11, 0xbb8

    const/4 v10, 0x0

    const v9, 0x2102d

    :try_start_0
    iget-object v5, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParallelCaptivePortalProbesThread;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get64(Lcom/android/server/wifi/WifiConnectivityMonitor;)Landroid/net/LinkProperties;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    sget-object v5, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_0

    invoke-virtual {v2}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/server/wifi/WifiConnectivityMonitor$ParallelCaptivePortalProbesThread;->makeURL(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParallelCaptivePortalProbesThread;->pacUrl:Ljava/net/URL;

    iget-object v5, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParallelCaptivePortalProbesThread;->pacUrl:Ljava/net/URL;

    if-nez v5, :cond_0

    return-void

    :cond_0
    iget-object v5, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParallelCaptivePortalProbesThread;->pacUrl:Ljava/net/URL;

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParallelCaptivePortalProbesThread;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Running Captive Portal Check on pacUrl ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParallelCaptivePortalProbesThread;->id:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "]: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParallelCaptivePortalProbesThread;->pacUrl:Ljava/net/URL;

    invoke-virtual {v7}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParallelCaptivePortalProbesThread;->pacProbe:Lcom/android/server/wifi/WifiConnectivityMonitor$ParallelCaptivePortalProbesThread$ProbeThread;

    invoke-virtual {v5}, Lcom/android/server/wifi/WifiConnectivityMonitor$ParallelCaptivePortalProbesThread$ProbeThread;->start()V

    :goto_0
    iget-object v5, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParallelCaptivePortalProbesThread;->latch:Ljava/util/concurrent/CountDownLatch;

    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParallelCaptivePortalProbesThread;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v6}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get81(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v6, 0x1770

    int-to-long v6, v6

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v6, v7, v8}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get0()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParallelCaptivePortalProbesThread;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Latch Timeout - Do not send result.["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParallelCaptivePortalProbesThread;->id:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v5, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParallelCaptivePortalProbesThread;->pacUrl:Ljava/net/URL;

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParallelCaptivePortalProbesThread;->finalResult:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParallelCaptivePortalProbesThread;->pacProbe:Lcom/android/server/wifi/WifiConnectivityMonitor$ParallelCaptivePortalProbesThread$ProbeThread;

    invoke-virtual {v6}, Lcom/android/server/wifi/WifiConnectivityMonitor$ParallelCaptivePortalProbesThread$ProbeThread;->getResult()Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalProbeResult;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5, v7, v6}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    iget-object v5, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParallelCaptivePortalProbesThread;->finalResult:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParallelCaptivePortalProbesThread;->httpsProbe:Lcom/android/server/wifi/WifiConnectivityMonitor$ParallelCaptivePortalProbesThread$ProbeThread;

    invoke-virtual {v6}, Lcom/android/server/wifi/WifiConnectivityMonitor$ParallelCaptivePortalProbesThread$ProbeThread;->getResult()Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalProbeResult;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5, v7, v6}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParallelCaptivePortalProbesThread;->finalResult:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalProbeResult;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    if-nez v0, :cond_3

    sget-object v0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalProbeResult;->FAILED:Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalProbeResult;

    :cond_3
    iget v3, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalProbeResult;->mHttpResponseCode:I

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v5, "detectedUrl"

    iget-object v6, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalProbeResult;->mUrl:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v5, "redirectUrl"

    iget-object v6, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalProbeResult;->mRedirectUrl:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParallelCaptivePortalProbesThread;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get10(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;

    move-result-object v5

    if-eqz v5, :cond_5

    if-lez v3, :cond_5

    iget-object v5, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParallelCaptivePortalProbesThread;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get10(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;

    move-result-object v5

    invoke-virtual {v5, v9}, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;->hasMessages(I)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParallelCaptivePortalProbesThread;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get10(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;

    move-result-object v5

    iget v5, v5, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;->mParallelCheckId:I

    iget v6, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParallelCaptivePortalProbesThread;->id:I

    if-ne v5, v6, :cond_5

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get0()Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParallelCaptivePortalProbesThread;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "cpResult["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParallelCaptivePortalProbesThread;->id:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "]: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalProbeResult;->mHttpResponseCode:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " / "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalProbeResult;->mRedirectUrl:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v5, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParallelCaptivePortalProbesThread;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get10(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;

    move-result-object v5

    invoke-virtual {v5, v9}, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;->removeMessages(I)V

    const/16 v5, 0x257

    if-ne v3, v5, :cond_9

    iget-object v5, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParallelCaptivePortalProbesThread;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get10(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;

    move-result-object v5

    const/4 v6, 0x3

    const/4 v7, -0x1

    invoke-static {v5, v9, v6, v7}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    :cond_5
    :goto_3
    return-void

    :cond_6
    :try_start_1
    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get0()Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParallelCaptivePortalProbesThread;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Running Parallel Captive Portal Check ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParallelCaptivePortalProbesThread;->id:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    iget-object v5, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParallelCaptivePortalProbesThread;->httpsProbe:Lcom/android/server/wifi/WifiConnectivityMonitor$ParallelCaptivePortalProbesThread$ProbeThread;

    invoke-virtual {v5}, Lcom/android/server/wifi/WifiConnectivityMonitor$ParallelCaptivePortalProbesThread$ProbeThread;->start()V

    iget-object v5, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParallelCaptivePortalProbesThread;->httpProbe:Lcom/android/server/wifi/WifiConnectivityMonitor$ParallelCaptivePortalProbesThread$ProbeThread;

    invoke-virtual {v5}, Lcom/android/server/wifi/WifiConnectivityMonitor$ParallelCaptivePortalProbesThread$ProbeThread;->start()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v1

    iget-object v5, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParallelCaptivePortalProbesThread;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "sendParallelCaptivePortalProbes Error["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParallelCaptivePortalProbesThread;->id:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "]: probe wait interrupted!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalProbeResult;->FAILED:Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalProbeResult;

    goto/16 :goto_2

    :cond_8
    :try_start_2
    iget-object v5, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParallelCaptivePortalProbesThread;->finalResult:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParallelCaptivePortalProbesThread;->fallbackUrl:Ljava/net/URL;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParallelCaptivePortalProbesThread;->fallbackProbe:Lcom/android/server/wifi/WifiConnectivityMonitor$ParallelCaptivePortalProbesThread$ProbeThread;

    invoke-virtual {v5}, Lcom/android/server/wifi/WifiConnectivityMonitor$ParallelCaptivePortalProbesThread$ProbeThread;->start()V

    iget-object v5, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParallelCaptivePortalProbesThread;->fallbackLatch:Ljava/util/concurrent/CountDownLatch;

    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParallelCaptivePortalProbesThread;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v6}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get81(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    int-to-long v6, v11

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v6, v7, v8}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get0()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParallelCaptivePortalProbesThread;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "FallbackLatch Timeout - Do not send result.["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParallelCaptivePortalProbesThread;->id:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    :cond_9
    iget-object v5, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParallelCaptivePortalProbesThread;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get10(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;

    move-result-object v5

    const v6, 0x2102c

    invoke-static {v5, v6, v3, v10, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_3
.end method
