.class public Lcom/android/server/wifi/LastMileLogger;
.super Ljava/lang/Object;
.source "LastMileLogger.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LastMileLogger"

.field private static final WIFI_EVENT_BUFFER_PATH:Ljava/lang/String; = "/sys/kernel/debug/tracing/instances/wifi/trace"

.field private static final WIFI_EVENT_ENABLE_PATH:Ljava/lang/String; = "/sys/kernel/debug/tracing/instances/wifi/tracing_on"

.field private static final WIFI_EVENT_RELEASE_PATH:Ljava/lang/String; = "/sys/kernel/debug/tracing/instances/wifi/free_buffer"


# instance fields
.field private final mEventBufferPath:Ljava/lang/String;

.field private final mEventEnablePath:Ljava/lang/String;

.field private final mEventReleasePath:Ljava/lang/String;

.field private mLastMileLogForLastFailure:[B

.field private mLastMileTraceHandle:Ljava/io/FileInputStream;

.field private mLog:Lcom/android/server/wifi/WifiLog;

.field private mPendingConnectionId:J


# direct methods
.method public constructor <init>(Lcom/android/server/wifi/WifiInjector;)V
    .locals 3

    const-string/jumbo v0, "/sys/kernel/debug/tracing/instances/wifi/trace"

    const-string/jumbo v1, "/sys/kernel/debug/tracing/instances/wifi/tracing_on"

    const-string/jumbo v2, "/sys/kernel/debug/tracing/instances/wifi/free_buffer"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/server/wifi/LastMileLogger;-><init>(Lcom/android/server/wifi/WifiInjector;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wifi/WifiInjector;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/wifi/LastMileLogger;->mPendingConnectionId:J

    const-string/jumbo v0, "LastMileLogger"

    invoke-virtual {p1, v0}, Lcom/android/server/wifi/WifiInjector;->makeLog(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/LastMileLogger;->mLog:Lcom/android/server/wifi/WifiLog;

    iput-object p2, p0, Lcom/android/server/wifi/LastMileLogger;->mEventBufferPath:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/wifi/LastMileLogger;->mEventEnablePath:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/wifi/LastMileLogger;->mEventReleasePath:Ljava/lang/String;

    return-void
.end method

.method private disableTracing()V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/LastMileLogger;->mEventEnablePath:Ljava/lang/String;

    const-string/jumbo v2, "0"

    invoke-static {v1, v2}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/android/server/wifi/LastMileLogger;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string/jumbo v2, "Failed to stop event tracing: %"

    invoke-interface {v1, v2}, Lcom/android/server/wifi/WifiLog;->warn(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/server/wifi/WifiLog$LogMessage;->r(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    goto :goto_0
.end method

.method private static dumpInternal(Ljava/io/PrintWriter;Ljava/lang/String;[B)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    array-length v0, p2

    if-ge v0, v1, :cond_1

    :cond_0
    const-string/jumbo v0, "No last mile log for \"%s\"\n"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    return-void

    :cond_1
    const-string/jumbo v0, "-------------------------- %s ---------------------------\n"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "--------------------------------------------------------------------"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method private enableTracing()V
    .locals 3

    invoke-direct {p0}, Lcom/android/server/wifi/LastMileLogger;->ensureFailSafeIsArmed()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wifi/LastMileLogger;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string/jumbo v2, "Failed to arm fail-safe."

    invoke-interface {v1, v2}, Lcom/android/server/wifi/WifiLog;->wC(Ljava/lang/String;)V

    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/LastMileLogger;->mEventEnablePath:Ljava/lang/String;

    const-string/jumbo v2, "1"

    invoke-static {v1, v2}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/android/server/wifi/LastMileLogger;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string/jumbo v2, "Failed to start event tracing: %"

    invoke-interface {v1, v2}, Lcom/android/server/wifi/WifiLog;->warn(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/server/wifi/WifiLog$LogMessage;->r(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    goto :goto_0
.end method

.method private ensureFailSafeIsArmed()Z
    .locals 4

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/android/server/wifi/LastMileLogger;->mLastMileTraceHandle:Ljava/io/FileInputStream;

    if-eqz v1, :cond_0

    return v3

    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v2, p0, Lcom/android/server/wifi/LastMileLogger;->mEventReleasePath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/wifi/LastMileLogger;->mLastMileTraceHandle:Ljava/io/FileInputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/android/server/wifi/LastMileLogger;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string/jumbo v2, "Failed to open free_buffer pseudo-file: %"

    invoke-interface {v1, v2}, Lcom/android/server/wifi/WifiLog;->warn(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/server/wifi/WifiLog$LogMessage;->r(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    const/4 v1, 0x0

    return v1
.end method

.method private readTrace()[B
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/LastMileLogger;->mEventBufferPath:Ljava/lang/String;

    invoke-static {v1}, Llibcore/io/IoUtils;->readFileAsByteArray(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/android/server/wifi/LastMileLogger;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string/jumbo v2, "Failed to read event trace: %"

    invoke-interface {v1, v2}, Lcom/android/server/wifi/WifiLog;->warn(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/server/wifi/WifiLog$LogMessage;->r(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    const/4 v1, 0x0

    new-array v1, v1, [B

    return-object v1
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 2

    const-string/jumbo v0, "Last failed last-mile log"

    iget-object v1, p0, Lcom/android/server/wifi/LastMileLogger;->mLastMileLogForLastFailure:[B

    invoke-static {p1, v0, v1}, Lcom/android/server/wifi/LastMileLogger;->dumpInternal(Ljava/io/PrintWriter;Ljava/lang/String;[B)V

    const-string/jumbo v0, "Latest last-mile log"

    invoke-direct {p0}, Lcom/android/server/wifi/LastMileLogger;->readTrace()[B

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/android/server/wifi/LastMileLogger;->dumpInternal(Ljava/io/PrintWriter;Ljava/lang/String;[B)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wifi/LastMileLogger;->mLastMileLogForLastFailure:[B

    return-void
.end method

.method public reportConnectionEvent(JB)V
    .locals 5

    const-wide/16 v2, -0x1

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/LastMileLogger;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string/jumbo v1, "Ignoring negative connection id: %"

    invoke-interface {v0, v1}, Lcom/android/server/wifi/WifiLog;->warn(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(J)Lcom/android/server/wifi/WifiLog$LogMessage;

    return-void

    :cond_0
    packed-switch p3, :pswitch_data_0

    return-void

    :pswitch_0
    iput-wide p1, p0, Lcom/android/server/wifi/LastMileLogger;->mPendingConnectionId:J

    invoke-direct {p0}, Lcom/android/server/wifi/LastMileLogger;->enableTracing()V

    return-void

    :pswitch_1
    iput-wide v2, p0, Lcom/android/server/wifi/LastMileLogger;->mPendingConnectionId:J

    invoke-direct {p0}, Lcom/android/server/wifi/LastMileLogger;->disableTracing()V

    return-void

    :pswitch_2
    iget-wide v0, p0, Lcom/android/server/wifi/LastMileLogger;->mPendingConnectionId:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1

    iput-wide v2, p0, Lcom/android/server/wifi/LastMileLogger;->mPendingConnectionId:J

    invoke-direct {p0}, Lcom/android/server/wifi/LastMileLogger;->disableTracing()V

    invoke-direct {p0}, Lcom/android/server/wifi/LastMileLogger;->readTrace()[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/LastMileLogger;->mLastMileLogForLastFailure:[B

    return-void

    :cond_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
