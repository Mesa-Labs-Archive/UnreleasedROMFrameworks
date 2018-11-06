.class abstract Lcom/android/server/wifi/WifiNative$FateReport;
.super Ljava/lang/Object;
.source "WifiNative.java"


# annotations
.annotation build Lcom/android/internal/annotations/Immutable;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "FateReport"
.end annotation


# static fields
.field static final MAX_DRIVER_TIMESTAMP_MSEC:I = 0x418937

.field static final USEC_PER_MSEC:I = 0x3e8

.field static final dateFormatter:Ljava/text/SimpleDateFormat;


# instance fields
.field final mDriverTimestampUSec:J

.field final mEstimatedWallclockMSec:J

.field final mFate:B

.field final mFrameBytes:[B

.field final mFrameType:B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "HH:mm:ss.SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/wifi/WifiNative$FateReport;->dateFormatter:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method constructor <init>(BJB[B)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Lcom/android/server/wifi/WifiNative$FateReport;->mFate:B

    iput-wide p2, p0, Lcom/android/server/wifi/WifiNative$FateReport;->mDriverTimestampUSec:J

    iget-wide v0, p0, Lcom/android/server/wifi/WifiNative$FateReport;->mDriverTimestampUSec:J

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiNative$FateReport;->convertDriverTimestampUSecToWallclockMSec(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wifi/WifiNative$FateReport;->mEstimatedWallclockMSec:J

    iput-byte p4, p0, Lcom/android/server/wifi/WifiNative$FateReport;->mFrameType:B

    iput-object p5, p0, Lcom/android/server/wifi/WifiNative$FateReport;->mFrameBytes:[B

    return-void
.end method

.method private static convertDriverTimestampUSecToWallclockMSec(J)J
    .locals 14

    const-wide/32 v12, 0x418937

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v10, 0x3e8

    div-long v4, p0, v10

    rem-long v2, v0, v12

    cmp-long v10, v2, v4

    if-gez v10, :cond_0

    add-long/2addr v2, v12

    :cond_0
    sub-long v6, v2, v4

    sub-long v10, v8, v6

    return-wide v10
.end method

.method private static frameTypeToString(B)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    invoke-static {p0}, Ljava/lang/Byte;->toString(B)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string/jumbo v0, "unknown"

    return-object v0

    :pswitch_1
    const-string/jumbo v0, "data"

    return-object v0

    :pswitch_2
    const-string/jumbo v0, "802.11 management"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static getTableHeader()Ljava/lang/String;
    .locals 11

    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    const-string/jumbo v2, "\n%-15s  %-12s  %-9s  %-32s  %-12s  %-23s  %s\n"

    const/4 v3, 0x7

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "Time usec"

    aput-object v4, v3, v6

    const-string/jumbo v4, "Walltime"

    aput-object v4, v3, v7

    const-string/jumbo v4, "Direction"

    aput-object v4, v3, v8

    const-string/jumbo v4, "Fate"

    aput-object v4, v3, v9

    const-string/jumbo v4, "Protocol"

    aput-object v4, v3, v10

    const-string/jumbo v4, "Type"

    const/4 v5, 0x5

    aput-object v4, v3, v5

    const-string/jumbo v4, "Result"

    const/4 v5, 0x6

    aput-object v4, v3, v5

    invoke-virtual {v0, v2, v3}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const-string/jumbo v2, "%-15s  %-12s  %-9s  %-32s  %-12s  %-23s  %s\n"

    const/4 v3, 0x7

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "---------"

    aput-object v4, v3, v6

    const-string/jumbo v4, "--------"

    aput-object v4, v3, v7

    const-string/jumbo v4, "---------"

    aput-object v4, v3, v8

    const-string/jumbo v4, "----"

    aput-object v4, v3, v9

    const-string/jumbo v4, "--------"

    aput-object v4, v3, v10

    const-string/jumbo v4, "----"

    const/4 v5, 0x5

    aput-object v4, v3, v5

    const-string/jumbo v4, "------"

    const/4 v5, 0x6

    aput-object v4, v3, v5

    invoke-virtual {v0, v2, v3}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method protected abstract directionToString()Ljava/lang/String;
.end method

.method protected abstract fateToString()Ljava/lang/String;
.end method

.method public toTableRowString()Ljava/lang/String;
    .locals 10

    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    new-instance v0, Lcom/android/server/wifi/util/FrameParser;

    iget-byte v3, p0, Lcom/android/server/wifi/WifiNative$FateReport;->mFrameType:B

    iget-object v4, p0, Lcom/android/server/wifi/WifiNative$FateReport;->mFrameBytes:[B

    invoke-direct {v0, v3, v4}, Lcom/android/server/wifi/util/FrameParser;-><init>(B[B)V

    sget-object v3, Lcom/android/server/wifi/WifiNative$FateReport;->dateFormatter:Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    const-string/jumbo v3, "%-15s  %12s  %-9s  %-32s  %-12s  %-23s  %s\n"

    const/4 v4, 0x7

    new-array v4, v4, [Ljava/lang/Object;

    iget-wide v6, p0, Lcom/android/server/wifi/WifiNative$FateReport;->mDriverTimestampUSec:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    sget-object v5, Lcom/android/server/wifi/WifiNative$FateReport;->dateFormatter:Ljava/text/SimpleDateFormat;

    new-instance v6, Ljava/util/Date;

    iget-wide v8, p0, Lcom/android/server/wifi/WifiNative$FateReport;->mEstimatedWallclockMSec:J

    invoke-direct {v6, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiNative$FateReport;->directionToString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    aput-object v5, v4, v6

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiNative$FateReport;->fateToString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    aput-object v5, v4, v6

    iget-object v5, v0, Lcom/android/server/wifi/util/FrameParser;->mMostSpecificProtocolString:Ljava/lang/String;

    const/4 v6, 0x4

    aput-object v5, v4, v6

    iget-object v5, v0, Lcom/android/server/wifi/util/FrameParser;->mTypeString:Ljava/lang/String;

    const/4 v6, 0x5

    aput-object v5, v4, v6

    iget-object v5, v0, Lcom/android/server/wifi/util/FrameParser;->mResultString:Ljava/lang/String;

    const/4 v6, 0x6

    aput-object v5, v4, v6

    invoke-virtual {v1, v3, v4}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public toVerboseStringWithPiiAllowed()Ljava/lang/String;
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    new-instance v0, Lcom/android/server/wifi/util/FrameParser;

    iget-byte v3, p0, Lcom/android/server/wifi/WifiNative$FateReport;->mFrameType:B

    iget-object v4, p0, Lcom/android/server/wifi/WifiNative$FateReport;->mFrameBytes:[B

    invoke-direct {v0, v3, v4}, Lcom/android/server/wifi/util/FrameParser;-><init>(B[B)V

    const-string/jumbo v3, "Frame direction: %s\n"

    new-array v4, v9, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiNative$FateReport;->directionToString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-virtual {v1, v3, v4}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const-string/jumbo v3, "Frame timestamp: %d\n"

    new-array v4, v9, [Ljava/lang/Object;

    iget-wide v6, p0, Lcom/android/server/wifi/WifiNative$FateReport;->mDriverTimestampUSec:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-virtual {v1, v3, v4}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const-string/jumbo v3, "Frame fate: %s\n"

    new-array v4, v9, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiNative$FateReport;->fateToString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-virtual {v1, v3, v4}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const-string/jumbo v3, "Frame type: %s\n"

    new-array v4, v9, [Ljava/lang/Object;

    iget-byte v5, p0, Lcom/android/server/wifi/WifiNative$FateReport;->mFrameType:B

    invoke-static {v5}, Lcom/android/server/wifi/WifiNative$FateReport;->frameTypeToString(B)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-virtual {v1, v3, v4}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const-string/jumbo v3, "Frame protocol: %s\n"

    new-array v4, v9, [Ljava/lang/Object;

    iget-object v5, v0, Lcom/android/server/wifi/util/FrameParser;->mMostSpecificProtocolString:Ljava/lang/String;

    aput-object v5, v4, v8

    invoke-virtual {v1, v3, v4}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const-string/jumbo v3, "Frame protocol type: %s\n"

    new-array v4, v9, [Ljava/lang/Object;

    iget-object v5, v0, Lcom/android/server/wifi/util/FrameParser;->mTypeString:Ljava/lang/String;

    aput-object v5, v4, v8

    invoke-virtual {v1, v3, v4}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const-string/jumbo v3, "Frame length: %d\n"

    new-array v4, v9, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/server/wifi/WifiNative$FateReport;->mFrameBytes:[B

    array-length v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-virtual {v1, v3, v4}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const-string/jumbo v3, "Frame bytes"

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    iget-object v3, p0, Lcom/android/server/wifi/WifiNative$FateReport;->mFrameBytes:[B

    invoke-static {v3}, Lcom/android/internal/util/HexDump;->dumpHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    const-string/jumbo v3, "\n"

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
