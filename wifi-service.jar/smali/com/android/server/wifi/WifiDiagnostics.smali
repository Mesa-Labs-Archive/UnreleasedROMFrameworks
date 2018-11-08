.class Lcom/android/server/wifi/WifiDiagnostics;
.super Lcom/android/server/wifi/BaseWifiDiagnostics;
.source "WifiDiagnostics.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/WifiDiagnostics$1;,
        Lcom/android/server/wifi/WifiDiagnostics$BugReport;,
        Lcom/android/server/wifi/WifiDiagnostics$LimitedCircularArray;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field public static final DRIVER_DUMP_SECTION_HEADER:Ljava/lang/String; = "Driver state dump"

.field public static final FIRMWARE_DUMP_SECTION_HEADER:Ljava/lang/String; = "FW Memory dump"

.field public static final MAX_ALERT_REPORTS:I = 0x1

.field public static final MAX_BUG_REPORTS:I = 0x4

.field private static final MinBufferSizes:[I

.field private static final MinWakeupIntervals:[I

.field public static final REPORT_REASON_ASSOC_FAILURE:I = 0x1

.field public static final REPORT_REASON_AUTH_FAILURE:I = 0x2

.field public static final REPORT_REASON_AUTOROAM_FAILURE:I = 0x3

.field public static final REPORT_REASON_DHCP_FAILURE:I = 0x4

.field public static final REPORT_REASON_DRIVER_HUNG:I = 0x8

.field public static final REPORT_REASON_NONE:I = 0x0

.field public static final REPORT_REASON_SCAN_FAILURE:I = 0x6

.field public static final REPORT_REASON_UNEXPECTED_DISCONNECT:I = 0x5

.field public static final REPORT_REASON_USER_ACTION:I = 0x7

.field public static final RING_BUFFER_FLAG_HAS_ASCII_ENTRIES:I = 0x2

.field public static final RING_BUFFER_FLAG_HAS_BINARY_ENTRIES:I = 0x1

.field public static final RING_BUFFER_FLAG_HAS_PER_PACKET_ENTRIES:I = 0x4

.field private static final TAG:Ljava/lang/String; = "WifiDiags"

.field public static final VERBOSE_DETAILED_LOG_WITH_WAKEUP:I = 0x3

.field public static final VERBOSE_LOG_WITH_WAKEUP:I = 0x2

.field public static final VERBOSE_NORMAL_LOG:I = 0x1

.field public static final VERBOSE_NO_LOG:I


# instance fields
.field private final RING_BUFFER_BYTE_LIMIT_LARGE:I

.field private final RING_BUFFER_BYTE_LIMIT_SMALL:I

.field private final mBuildProperties:Lcom/android/server/wifi/BuildProperties;

.field private final mHandler:Lcom/android/server/wifi/WifiNative$WifiLoggerEventHandler;

.field private mIsLoggingEventHandlerRegistered:Z

.field private final mJavaRuntime:Ljava/lang/Runtime;

.field private final mLastAlerts:Lcom/android/server/wifi/WifiDiagnostics$LimitedCircularArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/wifi/WifiDiagnostics$LimitedCircularArray",
            "<",
            "Lcom/android/server/wifi/WifiDiagnostics$BugReport;",
            ">;"
        }
    .end annotation
.end field

.field private final mLastBugReports:Lcom/android/server/wifi/WifiDiagnostics$LimitedCircularArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/wifi/WifiDiagnostics$LimitedCircularArray",
            "<",
            "Lcom/android/server/wifi/WifiDiagnostics$BugReport;",
            ">;"
        }
    .end annotation
.end field

.field private final mLastMileLogger:Lcom/android/server/wifi/LastMileLogger;

.field private final mLog:Lcom/android/server/wifi/WifiLog;

.field private mLogLevel:I

.field private mMaxRingBufferSizeBytes:I

.field private mPacketFatesForLastFailure:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wifi/WifiNative$FateReport;",
            ">;"
        }
    .end annotation
.end field

.field private mPerPacketRingBuffer:Lcom/android/server/wifi/WifiNative$RingBufferStatus;

.field private final mRingBufferData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/wifi/util/ByteArrayRingBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private mRingBuffers:[Lcom/android/server/wifi/WifiNative$RingBufferStatus;

.field private mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;


# direct methods
.method static synthetic -wrap0(Lcom/android/server/wifi/WifiDiagnostics;[B)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiDiagnostics;->compressToBase64([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    const/16 v4, 0x4000

    const/4 v3, 0x0

    const/16 v0, 0xe10

    const/16 v1, 0x3c

    const/16 v2, 0xa

    filled-new-array {v3, v0, v1, v2}, [I

    move-result-object v0

    sput-object v0, Lcom/android/server/wifi/WifiDiagnostics;->MinWakeupIntervals:[I

    const/high16 v0, 0x10000

    filled-new-array {v3, v4, v4, v0}, [I

    move-result-object v0

    sput-object v0, Lcom/android/server/wifi/WifiDiagnostics;->MinBufferSizes:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wifi/WifiInjector;Lcom/android/server/wifi/WifiStateMachine;Lcom/android/server/wifi/WifiNative;Lcom/android/server/wifi/BuildProperties;Lcom/android/server/wifi/LastMileLogger;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p4}, Lcom/android/server/wifi/BaseWifiDiagnostics;-><init>(Lcom/android/server/wifi/WifiNative;)V

    iput v2, p0, Lcom/android/server/wifi/WifiDiagnostics;->mLogLevel:I

    new-instance v0, Lcom/android/server/wifi/WifiDiagnostics$LimitedCircularArray;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/server/wifi/WifiDiagnostics$LimitedCircularArray;-><init>(Lcom/android/server/wifi/WifiDiagnostics;I)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiDiagnostics;->mLastAlerts:Lcom/android/server/wifi/WifiDiagnostics$LimitedCircularArray;

    new-instance v0, Lcom/android/server/wifi/WifiDiagnostics$LimitedCircularArray;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, Lcom/android/server/wifi/WifiDiagnostics$LimitedCircularArray;-><init>(Lcom/android/server/wifi/WifiDiagnostics;I)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiDiagnostics;->mLastBugReports:Lcom/android/server/wifi/WifiDiagnostics$LimitedCircularArray;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/WifiDiagnostics;->mRingBufferData:Ljava/util/HashMap;

    new-instance v0, Lcom/android/server/wifi/WifiDiagnostics$1;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/WifiDiagnostics$1;-><init>(Lcom/android/server/wifi/WifiDiagnostics;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiDiagnostics;->mHandler:Lcom/android/server/wifi/WifiNative$WifiLoggerEventHandler;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e00dd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    mul-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/android/server/wifi/WifiDiagnostics;->RING_BUFFER_BYTE_LIMIT_SMALL:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e00de

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    mul-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/android/server/wifi/WifiDiagnostics;->RING_BUFFER_BYTE_LIMIT_LARGE:I

    iput-object p3, p0, Lcom/android/server/wifi/WifiDiagnostics;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    iput-object p5, p0, Lcom/android/server/wifi/WifiDiagnostics;->mBuildProperties:Lcom/android/server/wifi/BuildProperties;

    iput-boolean v2, p0, Lcom/android/server/wifi/WifiDiagnostics;->mIsLoggingEventHandlerRegistered:Z

    iget v0, p0, Lcom/android/server/wifi/WifiDiagnostics;->RING_BUFFER_BYTE_LIMIT_SMALL:I

    iput v0, p0, Lcom/android/server/wifi/WifiDiagnostics;->mMaxRingBufferSizeBytes:I

    const-string/jumbo v0, "WifiDiags"

    invoke-virtual {p2, v0}, Lcom/android/server/wifi/WifiInjector;->makeLog(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/WifiDiagnostics;->mLog:Lcom/android/server/wifi/WifiLog;

    iput-object p6, p0, Lcom/android/server/wifi/WifiDiagnostics;->mLastMileLogger:Lcom/android/server/wifi/LastMileLogger;

    invoke-virtual {p2}, Lcom/android/server/wifi/WifiInjector;->getJavaRuntime()Ljava/lang/Runtime;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/WifiDiagnostics;->mJavaRuntime:Ljava/lang/Runtime;

    return-void
.end method

.method private captureBugreport(IZ)Lcom/android/server/wifi/WifiDiagnostics$BugReport;
    .locals 11

    const/16 v10, 0x7f

    new-instance v4, Lcom/android/server/wifi/WifiDiagnostics$BugReport;

    invoke-direct {v4, p0}, Lcom/android/server/wifi/WifiDiagnostics$BugReport;-><init>(Lcom/android/server/wifi/WifiDiagnostics;)V

    iput p1, v4, Lcom/android/server/wifi/WifiDiagnostics$BugReport;->errorCode:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v4, Lcom/android/server/wifi/WifiDiagnostics$BugReport;->systemTimeMs:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    iput-wide v6, v4, Lcom/android/server/wifi/WifiDiagnostics$BugReport;->kernelTimeNanos:J

    iget-object v5, p0, Lcom/android/server/wifi/WifiDiagnostics;->mRingBuffers:[Lcom/android/server/wifi/WifiNative$RingBufferStatus;

    if-eqz v5, :cond_1

    iget-object v7, p0, Lcom/android/server/wifi/WifiDiagnostics;->mRingBuffers:[Lcom/android/server/wifi/WifiNative$RingBufferStatus;

    const/4 v5, 0x0

    array-length v8, v7

    move v6, v5

    :goto_0
    if-ge v6, v8, :cond_1

    aget-object v0, v7, v6

    iget-object v5, p0, Lcom/android/server/wifi/WifiDiagnostics;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v9, v0, Lcom/android/server/wifi/WifiNative$RingBufferStatus;->name:Ljava/lang/String;

    invoke-virtual {v5, v9}, Lcom/android/server/wifi/WifiNative;->getRingBufferData(Ljava/lang/String;)Z

    iget-object v5, p0, Lcom/android/server/wifi/WifiDiagnostics;->mRingBufferData:Ljava/util/HashMap;

    iget-object v9, v0, Lcom/android/server/wifi/WifiNative$RingBufferStatus;->name:Ljava/lang/String;

    invoke-virtual {v5, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wifi/util/ByteArrayRingBuffer;

    invoke-virtual {v2}, Lcom/android/server/wifi/util/ByteArrayRingBuffer;->getNumBuffers()I

    move-result v5

    new-array v1, v5, [[B

    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v2}, Lcom/android/server/wifi/util/ByteArrayRingBuffer;->getNumBuffers()I

    move-result v5

    if-ge v3, v5, :cond_0

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/util/ByteArrayRingBuffer;->getBuffer(I)[B

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    aput-object v5, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    iget-object v5, v4, Lcom/android/server/wifi/WifiDiagnostics$BugReport;->ringBuffers:Ljava/util/HashMap;

    iget-object v9, v0, Lcom/android/server/wifi/WifiNative$RingBufferStatus;->name:Ljava/lang/String;

    invoke-virtual {v5, v9, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v6, 0x1

    move v6, v5

    goto :goto_0

    :cond_1
    invoke-direct {p0, v10}, Lcom/android/server/wifi/WifiDiagnostics;->getLogcat(I)Ljava/util/ArrayList;

    move-result-object v5

    iput-object v5, v4, Lcom/android/server/wifi/WifiDiagnostics$BugReport;->logcatLines:Ljava/util/ArrayList;

    invoke-direct {p0, v10}, Lcom/android/server/wifi/WifiDiagnostics;->getKernelLog(I)Lcom/android/server/wifi/WifiDiagnostics$LimitedCircularArray;

    move-result-object v5

    iput-object v5, v4, Lcom/android/server/wifi/WifiDiagnostics$BugReport;->kernelLogLines:Lcom/android/server/wifi/WifiDiagnostics$LimitedCircularArray;

    if-eqz p2, :cond_2

    iget-object v5, p0, Lcom/android/server/wifi/WifiDiagnostics;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v5}, Lcom/android/server/wifi/WifiNative;->getFwMemoryDump()[B

    move-result-object v5

    iput-object v5, v4, Lcom/android/server/wifi/WifiDiagnostics$BugReport;->fwMemoryDump:[B

    iget-object v5, p0, Lcom/android/server/wifi/WifiDiagnostics;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v5}, Lcom/android/server/wifi/WifiNative;->getDriverStateDump()[B

    move-result-object v5

    iput-object v5, v4, Lcom/android/server/wifi/WifiDiagnostics$BugReport;->mDriverStateDump:[B

    :cond_2
    return-object v4
.end method

.method private clearVerboseLogs()V
    .locals 2

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wifi/WifiDiagnostics;->mPacketFatesForLastFailure:Ljava/util/ArrayList;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiDiagnostics;->mLastAlerts:Lcom/android/server/wifi/WifiDiagnostics$LimitedCircularArray;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiDiagnostics$LimitedCircularArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wifi/WifiDiagnostics;->mLastAlerts:Lcom/android/server/wifi/WifiDiagnostics$LimitedCircularArray;

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/WifiDiagnostics$LimitedCircularArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wifi/WifiDiagnostics$BugReport;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiDiagnostics$BugReport;->clearVerboseLogs()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/server/wifi/WifiDiagnostics;->mLastBugReports:Lcom/android/server/wifi/WifiDiagnostics$LimitedCircularArray;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiDiagnostics$LimitedCircularArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wifi/WifiDiagnostics;->mLastBugReports:Lcom/android/server/wifi/WifiDiagnostics$LimitedCircularArray;

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/WifiDiagnostics$LimitedCircularArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wifi/WifiDiagnostics$BugReport;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiDiagnostics$BugReport;->clearVerboseLogs()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private compressToBase64([B)Ljava/lang/String;
    .locals 10

    const/4 v9, 0x0

    new-instance v3, Ljava/util/zip/Deflater;

    invoke-direct {v3}, Ljava/util/zip/Deflater;-><init>()V

    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Ljava/util/zip/Deflater;->setLevel(I)V

    invoke-virtual {v3, p1}, Ljava/util/zip/Deflater;->setInput([B)V

    invoke-virtual {v3}, Ljava/util/zip/Deflater;->finish()V

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    array-length v7, p1

    invoke-direct {v0, v7}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    const/16 v7, 0x400

    new-array v1, v7, [B

    :goto_0
    invoke-virtual {v3}, Ljava/util/zip/Deflater;->finished()Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {v3, v1}, Ljava/util/zip/Deflater;->deflate([B)I

    move-result v4

    invoke-virtual {v0, v1, v9, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-virtual {v3}, Ljava/util/zip/Deflater;->end()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    array-length v7, v2

    array-length v8, p1

    if-ge v7, v8, :cond_1

    :goto_1
    invoke-static {v2, v9}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v6

    return-object v6

    :catch_0
    move-exception v5

    iget-object v7, p0, Lcom/android/server/wifi/WifiDiagnostics;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string/jumbo v8, "ByteArrayOutputStream close error"

    invoke-interface {v7, v8}, Lcom/android/server/wifi/WifiLog;->wC(Ljava/lang/String;)V

    invoke-static {p1, v9}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v6

    return-object v6

    :cond_1
    move-object v2, p1

    goto :goto_1
.end method

.method private dumpPacketFates(Ljava/io/PrintWriter;)V
    .locals 3

    const-string/jumbo v0, "Last failed connection fates"

    iget-object v1, p0, Lcom/android/server/wifi/WifiDiagnostics;->mPacketFatesForLastFailure:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/android/server/wifi/WifiDiagnostics;->isVerboseLoggingEnabled()Z

    move-result v2

    invoke-static {p1, v0, v1, v2}, Lcom/android/server/wifi/WifiDiagnostics;->dumpPacketFatesInternal(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/util/ArrayList;Z)V

    const-string/jumbo v0, "Latest fates"

    invoke-direct {p0}, Lcom/android/server/wifi/WifiDiagnostics;->fetchPacketFates()Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/server/wifi/WifiDiagnostics;->isVerboseLoggingEnabled()Z

    move-result v2

    invoke-static {p1, v0, v1, v2}, Lcom/android/server/wifi/WifiDiagnostics;->dumpPacketFatesInternal(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/util/ArrayList;Z)V

    return-void
.end method

.method private static dumpPacketFatesInternal(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/util/ArrayList;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wifi/WifiNative$FateReport;",
            ">;Z)V"
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez p2, :cond_0

    const-string/jumbo v3, "No fates fetched for \"%s\"\n"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v5

    invoke-virtual {p0, v3, v4}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    return-void

    :cond_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_1

    const-string/jumbo v3, "HAL provided zero fates for \"%s\"\n"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v5

    invoke-virtual {p0, v3, v4}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    return-void

    :cond_1
    const-string/jumbo v3, "--------------------- %s ----------------------\n"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v5

    invoke-virtual {p0, v3, v4}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/server/wifi/WifiNative$FateReport;->getTableHeader()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/WifiNative$FateReport;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiNative$FateReport;->toTableRowString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-eqz p3, :cond_2

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiNative$FateReport;->toVerboseStringWithPiiAllowed()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    if-eqz p3, :cond_4

    const-string/jumbo v3, "\n>>> VERBOSE PACKET FATE DUMP <<<\n\n"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {p0, v3, v4}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_4
    const-string/jumbo v3, "--------------------------------------------------------------------"

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method private enableVerboseLoggingForDogfood()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private fetchPacketFates()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wifi/WifiNative$FateReport;",
            ">;"
        }
    .end annotation

    const/16 v5, 0x20

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-array v3, v5, [Lcom/android/server/wifi/WifiNative$TxFateReport;

    iget-object v4, p0, Lcom/android/server/wifi/WifiDiagnostics;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v4, v3}, Lcom/android/server/wifi/WifiNative;->getTxPktFates([Lcom/android/server/wifi/WifiNative$TxFateReport;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v0, 0x0

    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_0

    aget-object v4, v3, v0

    if-eqz v4, :cond_0

    aget-object v4, v3, v0

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-array v2, v5, [Lcom/android/server/wifi/WifiNative$RxFateReport;

    iget-object v4, p0, Lcom/android/server/wifi/WifiDiagnostics;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v4, v2}, Lcom/android/server/wifi/WifiNative;->getRxPktFates([Lcom/android/server/wifi/WifiNative$RxFateReport;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v0, 0x0

    :goto_1
    array-length v4, v2

    if-ge v0, v4, :cond_1

    aget-object v4, v2, v0

    if-eqz v4, :cond_1

    aget-object v4, v2, v0

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    new-instance v4, Lcom/android/server/wifi/WifiDiagnostics$2;

    invoke-direct {v4, p0}, Lcom/android/server/wifi/WifiDiagnostics$2;-><init>(Lcom/android/server/wifi/WifiDiagnostics;)V

    invoke-static {v1, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v1
.end method

.method private fetchRingBuffers()Z
    .locals 10

    const/4 v1, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/wifi/WifiDiagnostics;->mBuildProperties:Lcom/android/server/wifi/BuildProperties;

    invoke-interface {v3}, Lcom/android/server/wifi/BuildProperties;->isUserBuild()Z

    move-result v3

    if-eqz v3, :cond_0

    iput-object v4, p0, Lcom/android/server/wifi/WifiDiagnostics;->mRingBuffers:[Lcom/android/server/wifi/WifiNative$RingBufferStatus;

    return v2

    :cond_0
    iget-object v3, p0, Lcom/android/server/wifi/WifiDiagnostics;->mRingBuffers:[Lcom/android/server/wifi/WifiNative$RingBufferStatus;

    if-eqz v3, :cond_1

    return v1

    :cond_1
    iget-object v3, p0, Lcom/android/server/wifi/WifiDiagnostics;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiNative;->getRingBufferStatus()[Lcom/android/server/wifi/WifiNative$RingBufferStatus;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/wifi/WifiDiagnostics;->mRingBuffers:[Lcom/android/server/wifi/WifiNative$RingBufferStatus;

    iget-object v3, p0, Lcom/android/server/wifi/WifiDiagnostics;->mRingBuffers:[Lcom/android/server/wifi/WifiNative$RingBufferStatus;

    if-eqz v3, :cond_4

    iget-object v4, p0, Lcom/android/server/wifi/WifiDiagnostics;->mRingBuffers:[Lcom/android/server/wifi/WifiNative$RingBufferStatus;

    array-length v5, v4

    move v3, v2

    :goto_0
    if-ge v3, v5, :cond_5

    aget-object v0, v4, v3

    iget-object v6, p0, Lcom/android/server/wifi/WifiDiagnostics;->mRingBufferData:Ljava/util/HashMap;

    iget-object v7, v0, Lcom/android/server/wifi/WifiNative$RingBufferStatus;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/android/server/wifi/WifiDiagnostics;->mRingBufferData:Ljava/util/HashMap;

    iget-object v7, v0, Lcom/android/server/wifi/WifiNative$RingBufferStatus;->name:Ljava/lang/String;

    new-instance v8, Lcom/android/server/wifi/util/ByteArrayRingBuffer;

    iget v9, p0, Lcom/android/server/wifi/WifiDiagnostics;->mMaxRingBufferSizeBytes:I

    invoke-direct {v8, v9}, Lcom/android/server/wifi/util/ByteArrayRingBuffer;-><init>(I)V

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget v6, v0, Lcom/android/server/wifi/WifiNative$RingBufferStatus;->flag:I

    and-int/lit8 v6, v6, 0x4

    if-eqz v6, :cond_3

    iput-object v0, p0, Lcom/android/server/wifi/WifiDiagnostics;->mPerPacketRingBuffer:Lcom/android/server/wifi/WifiNative$RingBufferStatus;

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/android/server/wifi/WifiDiagnostics;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string/jumbo v4, "no ring buffers found"

    invoke-interface {v3, v4}, Lcom/android/server/wifi/WifiLog;->wC(Ljava/lang/String;)V

    :cond_5
    iget-object v3, p0, Lcom/android/server/wifi/WifiDiagnostics;->mRingBuffers:[Lcom/android/server/wifi/WifiNative$RingBufferStatus;

    if-eqz v3, :cond_6

    :goto_1
    return v1

    :cond_6
    move v1, v2

    goto :goto_1
.end method

.method private getKernelLog(I)Lcom/android/server/wifi/WifiDiagnostics$LimitedCircularArray;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/android/server/wifi/WifiDiagnostics$LimitedCircularArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v1, Lcom/android/server/wifi/WifiDiagnostics$LimitedCircularArray;

    invoke-direct {v1, p0, p1}, Lcom/android/server/wifi/WifiDiagnostics$LimitedCircularArray;-><init>(Lcom/android/server/wifi/WifiDiagnostics;I)V

    iget-object v4, p0, Lcom/android/server/wifi/WifiDiagnostics;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v4}, Lcom/android/server/wifi/WifiNative;->readKernelLog()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "\n"

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x0

    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_0

    aget-object v4, v3, v0

    invoke-virtual {v1, v4}, Lcom/android/server/wifi/WifiDiagnostics$LimitedCircularArray;->addLast(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private getLogcat(I)Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(I)V

    :try_start_0
    iget-object v5, p0, Lcom/android/server/wifi/WifiDiagnostics;->mJavaRuntime:Ljava/lang/Runtime;

    const-string/jumbo v6, "logcat -t %d"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v3

    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-virtual {v3}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :goto_0
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v5, p0, Lcom/android/server/wifi/WifiDiagnostics;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string/jumbo v6, "Exception while capturing logcat: %"

    invoke-interface {v5, v6}, Lcom/android/server/wifi/WifiLog;->dump(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    :goto_1
    return-object v2

    :cond_0
    :try_start_1
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-virtual {v3}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :goto_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Process;->waitFor()I
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private isVerboseLoggingEnabled()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/android/server/wifi/WifiDiagnostics;->mLogLevel:I

    if-le v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private resizeRingBuffers()V
    .locals 3

    iget-object v2, p0, Lcom/android/server/wifi/WifiDiagnostics;->mRingBufferData:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/util/ByteArrayRingBuffer;

    iget v2, p0, Lcom/android/server/wifi/WifiDiagnostics;->mMaxRingBufferSizeBytes:I

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/util/ByteArrayRingBuffer;->resize(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private startLoggingAllExceptPerPacketBuffers()Z
    .locals 5

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/wifi/WifiDiagnostics;->mRingBuffers:[Lcom/android/server/wifi/WifiNative$RingBufferStatus;

    if-nez v2, :cond_0

    return v1

    :cond_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiDiagnostics;->mRingBuffers:[Lcom/android/server/wifi/WifiNative$RingBufferStatus;

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v0, v2, v1

    iget v4, v0, Lcom/android/server/wifi/WifiNative$RingBufferStatus;->flag:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiDiagnostics;->startLoggingRingBuffer(Lcom/android/server/wifi/WifiNative$RingBufferStatus;)Z

    goto :goto_1

    :cond_2
    const/4 v1, 0x1

    return v1
.end method

.method private startLoggingRingBuffer(Lcom/android/server/wifi/WifiNative$RingBufferStatus;)Z
    .locals 6

    const/4 v2, 0x0

    sget-object v0, Lcom/android/server/wifi/WifiDiagnostics;->MinWakeupIntervals:[I

    iget v1, p0, Lcom/android/server/wifi/WifiDiagnostics;->mLogLevel:I

    aget v3, v0, v1

    sget-object v0, Lcom/android/server/wifi/WifiDiagnostics;->MinBufferSizes:[I

    iget v1, p0, Lcom/android/server/wifi/WifiDiagnostics;->mLogLevel:I

    aget v4, v0, v1

    iget-object v0, p0, Lcom/android/server/wifi/WifiDiagnostics;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget v1, p0, Lcom/android/server/wifi/WifiDiagnostics;->mLogLevel:I

    iget-object v5, p1, Lcom/android/server/wifi/WifiNative$RingBufferStatus;->name:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wifi/WifiNative;->startLoggingRingBuffer(IIIILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private stopLoggingAllBuffers()Z
    .locals 4

    iget-object v1, p0, Lcom/android/server/wifi/WifiDiagnostics;->mRingBuffers:[Lcom/android/server/wifi/WifiNative$RingBufferStatus;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/server/wifi/WifiDiagnostics;->mRingBuffers:[Lcom/android/server/wifi/WifiNative$RingBufferStatus;

    const/4 v1, 0x0

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiDiagnostics;->stopLoggingRingBuffer(Lcom/android/server/wifi/WifiNative$RingBufferStatus;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method private stopLoggingRingBuffer(Lcom/android/server/wifi/WifiNative$RingBufferStatus;)Z
    .locals 6

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/server/wifi/WifiDiagnostics;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v5, p1, Lcom/android/server/wifi/WifiNative$RingBufferStatus;->name:Ljava/lang/String;

    move v2, v1

    move v3, v1

    move v4, v1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wifi/WifiNative;->startLoggingRingBuffer(IIIILjava/lang/String;)Z

    move-result v0

    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public declared-synchronized captureAlertData(I[B)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/wifi/WifiDiagnostics;->isVerboseLoggingEnabled()Z

    move-result v1

    invoke-direct {p0, p1, v1}, Lcom/android/server/wifi/WifiDiagnostics;->captureBugreport(IZ)Lcom/android/server/wifi/WifiDiagnostics$BugReport;

    move-result-object v0

    iput-object p2, v0, Lcom/android/server/wifi/WifiDiagnostics$BugReport;->alertData:[B

    iget-object v1, p0, Lcom/android/server/wifi/WifiDiagnostics;->mLastAlerts:Lcom/android/server/wifi/WifiDiagnostics$LimitedCircularArray;

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/WifiDiagnostics$LimitedCircularArray;->addLast(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized captureBugReportData(I)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/wifi/WifiDiagnostics;->isVerboseLoggingEnabled()Z

    move-result v1

    invoke-direct {p0, p1, v1}, Lcom/android/server/wifi/WifiDiagnostics;->captureBugreport(IZ)Lcom/android/server/wifi/WifiDiagnostics$BugReport;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiDiagnostics;->mLastBugReports:Lcom/android/server/wifi/WifiDiagnostics$LimitedCircularArray;

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/WifiDiagnostics$LimitedCircularArray;->addLast(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p2}, Lcom/android/server/wifi/BaseWifiDiagnostics;->dump(Ljava/io/PrintWriter;)V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiDiagnostics;->mLastAlerts:Lcom/android/server/wifi/WifiDiagnostics$LimitedCircularArray;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiDiagnostics$LimitedCircularArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    const-string/jumbo v1, "--------------------------------------------------------------------"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Alert dump "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wifi/WifiDiagnostics;->mLastAlerts:Lcom/android/server/wifi/WifiDiagnostics$LimitedCircularArray;

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/WifiDiagnostics$LimitedCircularArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string/jumbo v1, "--------------------------------------------------------------------"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/server/wifi/WifiDiagnostics;->mLastBugReports:Lcom/android/server/wifi/WifiDiagnostics$LimitedCircularArray;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiDiagnostics$LimitedCircularArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    const-string/jumbo v1, "--------------------------------------------------------------------"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Bug dump "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wifi/WifiDiagnostics;->mLastBugReports:Lcom/android/server/wifi/WifiDiagnostics$LimitedCircularArray;

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/WifiDiagnostics$LimitedCircularArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string/jumbo v1, "--------------------------------------------------------------------"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    invoke-direct {p0, p2}, Lcom/android/server/wifi/WifiDiagnostics;->dumpPacketFates(Ljava/io/PrintWriter;)V

    iget-object v1, p0, Lcom/android/server/wifi/WifiDiagnostics;->mLastMileLogger:Lcom/android/server/wifi/LastMileLogger;

    invoke-virtual {v1, p2}, Lcom/android/server/wifi/LastMileLogger;->dump(Ljava/io/PrintWriter;)V

    const-string/jumbo v1, "--------------------------------------------------------------------"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method getBugReports()Lcom/android/server/wifi/WifiDiagnostics$LimitedCircularArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/server/wifi/WifiDiagnostics$LimitedCircularArray",
            "<",
            "Lcom/android/server/wifi/WifiDiagnostics$BugReport;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/wifi/WifiDiagnostics;->mLastBugReports:Lcom/android/server/wifi/WifiDiagnostics$LimitedCircularArray;

    return-object v0
.end method

.method declared-synchronized onRingBufferData(Lcom/android/server/wifi/WifiNative$RingBufferStatus;[B)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiDiagnostics;->mRingBufferData:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/android/server/wifi/WifiNative$RingBufferStatus;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/util/ByteArrayRingBuffer;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lcom/android/server/wifi/util/ByteArrayRingBuffer;->appendBuffer([B)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized onWifiAlert(I[B)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiDiagnostics;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiDiagnostics;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    const v1, 0x20064

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, p2}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(IIILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized reportConnectionEvent(JB)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiDiagnostics;->mLastMileLogger:Lcom/android/server/wifi/LastMileLogger;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wifi/LastMileLogger;->reportConnectionEvent(JB)V

    const/4 v0, 0x2

    if-ne p3, v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/wifi/WifiDiagnostics;->fetchPacketFates()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/WifiDiagnostics;->mPacketFatesForLastFailure:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized startLogging(Z)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiDiagnostics;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiNative;->getFirmwareVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/WifiDiagnostics;->mFirmwareVersion:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/wifi/WifiDiagnostics;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiNative;->getDriverVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/WifiDiagnostics;->mDriverVersion:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/wifi/WifiDiagnostics;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiNative;->getSupportedLoggerFeatureSet()I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/WifiDiagnostics;->mSupportedFeatureSet:I

    iget-boolean v0, p0, Lcom/android/server/wifi/WifiDiagnostics;->mIsLoggingEventHandlerRegistered:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiDiagnostics;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v1, p0, Lcom/android/server/wifi/WifiDiagnostics;->mHandler:Lcom/android/server/wifi/WifiNative$WifiLoggerEventHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiNative;->setLoggingEventHandler(Lcom/android/server/wifi/WifiNative$WifiLoggerEventHandler;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiDiagnostics;->mIsLoggingEventHandlerRegistered:Z

    :cond_0
    if-eqz p1, :cond_4

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/wifi/WifiDiagnostics;->mLogLevel:I

    iget v0, p0, Lcom/android/server/wifi/WifiDiagnostics;->RING_BUFFER_BYTE_LIMIT_LARGE:I

    iput v0, p0, Lcom/android/server/wifi/WifiDiagnostics;->mMaxRingBufferSizeBytes:I

    :goto_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiDiagnostics;->mRingBuffers:[Lcom/android/server/wifi/WifiNative$RingBufferStatus;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/server/wifi/WifiDiagnostics;->fetchRingBuffers()Z

    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiDiagnostics;->mRingBuffers:[Lcom/android/server/wifi/WifiNative$RingBufferStatus;

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/server/wifi/WifiDiagnostics;->stopLoggingAllBuffers()Z

    invoke-direct {p0}, Lcom/android/server/wifi/WifiDiagnostics;->resizeRingBuffers()V

    invoke-direct {p0}, Lcom/android/server/wifi/WifiDiagnostics;->startLoggingAllExceptPerPacketBuffers()Z

    :cond_2
    iget-object v0, p0, Lcom/android/server/wifi/WifiDiagnostics;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiNative;->startPktFateMonitoring()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/server/wifi/WifiDiagnostics;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string/jumbo v1, "Failed to start packet fate monitoring"

    invoke-interface {v0, v1}, Lcom/android/server/wifi/WifiLog;->wC(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    monitor-exit p0

    return-void

    :cond_4
    const/4 v0, 0x1

    :try_start_1
    iput v0, p0, Lcom/android/server/wifi/WifiDiagnostics;->mLogLevel:I

    invoke-direct {p0}, Lcom/android/server/wifi/WifiDiagnostics;->enableVerboseLoggingForDogfood()Z

    move-result v0

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/android/server/wifi/WifiDiagnostics;->RING_BUFFER_BYTE_LIMIT_LARGE:I

    :goto_1
    iput v0, p0, Lcom/android/server/wifi/WifiDiagnostics;->mMaxRingBufferSizeBytes:I

    invoke-direct {p0}, Lcom/android/server/wifi/WifiDiagnostics;->clearVerboseLogs()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_5
    :try_start_2
    iget v0, p0, Lcom/android/server/wifi/WifiDiagnostics;->RING_BUFFER_BYTE_LIMIT_SMALL:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public declared-synchronized startPacketLog()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiDiagnostics;->mPerPacketRingBuffer:Lcom/android/server/wifi/WifiNative$RingBufferStatus;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiDiagnostics;->mPerPacketRingBuffer:Lcom/android/server/wifi/WifiNative$RingBufferStatus;

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiDiagnostics;->startLoggingRingBuffer(Lcom/android/server/wifi/WifiNative$RingBufferStatus;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stopLogging()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiDiagnostics;->mIsLoggingEventHandlerRegistered:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wifi/WifiDiagnostics;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiNative;->resetLogHandler()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiDiagnostics;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string/jumbo v1, "Fail to reset log handler"

    invoke-interface {v0, v1}, Lcom/android/server/wifi/WifiLog;->wC(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiDiagnostics;->mIsLoggingEventHandlerRegistered:Z

    :cond_1
    iget v0, p0, Lcom/android/server/wifi/WifiDiagnostics;->mLogLevel:I

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/server/wifi/WifiDiagnostics;->stopLoggingAllBuffers()Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wifi/WifiDiagnostics;->mRingBuffers:[Lcom/android/server/wifi/WifiNative$RingBufferStatus;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wifi/WifiDiagnostics;->mLogLevel:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stopPacketLog()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiDiagnostics;->mPerPacketRingBuffer:Lcom/android/server/wifi/WifiNative$RingBufferStatus;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiDiagnostics;->mPerPacketRingBuffer:Lcom/android/server/wifi/WifiNative$RingBufferStatus;

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiDiagnostics;->stopLoggingRingBuffer(Lcom/android/server/wifi/WifiNative$RingBufferStatus;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
