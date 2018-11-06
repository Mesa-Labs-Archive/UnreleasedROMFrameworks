.class Lcom/android/server/wifi/WifiDiagnostics$BugReport;
.super Ljava/lang/Object;
.source "WifiDiagnostics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiDiagnostics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BugReport"
.end annotation


# instance fields
.field alertData:[B

.field errorCode:I

.field fwMemoryDump:[B

.field kernelLogLines:Lcom/android/server/wifi/WifiDiagnostics$LimitedCircularArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/wifi/WifiDiagnostics$LimitedCircularArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field kernelTimeNanos:J

.field logcatLines:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mDriverStateDump:[B

.field ringBuffers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[[B>;"
        }
    .end annotation
.end field

.field systemTimeMs:J

.field final synthetic this$0:Lcom/android/server/wifi/WifiDiagnostics;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiDiagnostics;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/wifi/WifiDiagnostics$BugReport;->this$0:Lcom/android/server/wifi/WifiDiagnostics;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/WifiDiagnostics$BugReport;->ringBuffers:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method clearVerboseLogs()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wifi/WifiDiagnostics$BugReport;->fwMemoryDump:[B

    iput-object v0, p0, Lcom/android/server/wifi/WifiDiagnostics$BugReport;->mDriverStateDump:[B

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 18

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/server/wifi/WifiDiagnostics$BugReport;->systemTimeMs:J

    invoke-virtual {v5, v14, v15}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const-string/jumbo v14, "system time = "

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "%tm-%td %tH:%tM:%tS.%tL"

    const/16 v16, 0x6

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object v5, v16, v17

    const/16 v17, 0x1

    aput-object v5, v16, v17

    const/16 v17, 0x2

    aput-object v5, v16, v17

    const/16 v17, 0x3

    aput-object v5, v16, v17

    const/16 v17, 0x4

    aput-object v5, v16, v17

    const/16 v17, 0x5

    aput-object v5, v16, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "\n"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/server/wifi/WifiDiagnostics$BugReport;->kernelTimeNanos:J

    const-wide/32 v16, 0xf4240

    div-long v10, v14, v16

    const-string/jumbo v14, "kernel time = "

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-wide/16 v16, 0x3e8

    div-long v16, v10, v16

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "."

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-wide/16 v16, 0x3e8

    rem-long v16, v10, v16

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "\n"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiDiagnostics$BugReport;->alertData:[B

    if-nez v14, :cond_0

    const-string/jumbo v14, "reason = "

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/wifi/WifiDiagnostics$BugReport;->errorCode:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "\n"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiDiagnostics$BugReport;->kernelLogLines:Lcom/android/server/wifi/WifiDiagnostics$LimitedCircularArray;

    if-eqz v14, :cond_2

    const-string/jumbo v14, "kernel log: \n"

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v8, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiDiagnostics$BugReport;->kernelLogLines:Lcom/android/server/wifi/WifiDiagnostics$LimitedCircularArray;

    invoke-virtual {v14}, Lcom/android/server/wifi/WifiDiagnostics$LimitedCircularArray;->size()I

    move-result v14

    if-ge v8, v14, :cond_1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiDiagnostics$BugReport;->kernelLogLines:Lcom/android/server/wifi/WifiDiagnostics$LimitedCircularArray;

    invoke-virtual {v14, v8}, Lcom/android/server/wifi/WifiDiagnostics$LimitedCircularArray;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "\n"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_0
    const-string/jumbo v14, "errorCode = "

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/wifi/WifiDiagnostics$BugReport;->errorCode:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v14, "data \n"

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiDiagnostics$BugReport;->this$0:Lcom/android/server/wifi/WifiDiagnostics;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wifi/WifiDiagnostics$BugReport;->alertData:[B

    invoke-static {v14, v15}, Lcom/android/server/wifi/WifiDiagnostics;->-wrap0(Lcom/android/server/wifi/WifiDiagnostics;[B)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "\n"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string/jumbo v14, "\n"

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiDiagnostics$BugReport;->logcatLines:Ljava/util/ArrayList;

    if-eqz v14, :cond_4

    const-string/jumbo v14, "system log: \n"

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v8, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiDiagnostics$BugReport;->logcatLines:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v8, v14, :cond_3

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiDiagnostics$BugReport;->logcatLines:Ljava/util/ArrayList;

    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "\n"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_3
    const-string/jumbo v14, "\n"

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiDiagnostics$BugReport;->ringBuffers:Ljava/util/HashMap;

    invoke-virtual {v14}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[B

    const-string/jumbo v14, "ring-buffer = "

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "\n"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v13, 0x0

    const/4 v8, 0x0

    :goto_4
    array-length v14, v3

    if-ge v8, v14, :cond_5

    aget-object v14, v3, v8

    array-length v14, v14

    add-int/2addr v13, v14

    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_5
    new-array v2, v13, [B

    const/4 v9, 0x0

    const/4 v8, 0x0

    :goto_5
    array-length v14, v3

    if-ge v8, v14, :cond_6

    aget-object v14, v3, v8

    aget-object v15, v3, v8

    array-length v15, v15

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-static {v14, v0, v2, v9, v15}, Ljava/lang/System;->arraycopy([BI[BII)V

    aget-object v14, v3, v8

    array-length v14, v14

    add-int/2addr v9, v14

    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    :cond_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiDiagnostics$BugReport;->this$0:Lcom/android/server/wifi/WifiDiagnostics;

    invoke-static {v14, v2}, Lcom/android/server/wifi/WifiDiagnostics;->-wrap0(Lcom/android/server/wifi/WifiDiagnostics;[B)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v14, "\n"

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiDiagnostics$BugReport;->fwMemoryDump:[B

    if-eqz v14, :cond_8

    const-string/jumbo v14, "FW Memory dump"

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v14, "\n"

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiDiagnostics$BugReport;->this$0:Lcom/android/server/wifi/WifiDiagnostics;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wifi/WifiDiagnostics$BugReport;->fwMemoryDump:[B

    invoke-static {v14, v15}, Lcom/android/server/wifi/WifiDiagnostics;->-wrap0(Lcom/android/server/wifi/WifiDiagnostics;[B)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v14, "\n"

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiDiagnostics$BugReport;->mDriverStateDump:[B

    if-eqz v14, :cond_9

    const-string/jumbo v14, "Driver state dump"

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiDiagnostics$BugReport;->mDriverStateDump:[B

    invoke-static {v14}, Lcom/android/server/wifi/util/StringUtil;->isAsciiPrintable([B)Z

    move-result v14

    if-eqz v14, :cond_a

    const-string/jumbo v14, " (ascii)\n"

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v14, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wifi/WifiDiagnostics$BugReport;->mDriverStateDump:[B

    const-string/jumbo v16, "US-ASCII"

    invoke-static/range {v16 .. v16}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v16

    invoke-direct/range {v14 .. v16}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v14, "\n"

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    :goto_6
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    return-object v14

    :cond_a
    const-string/jumbo v14, " (base64)\n"

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiDiagnostics$BugReport;->this$0:Lcom/android/server/wifi/WifiDiagnostics;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wifi/WifiDiagnostics$BugReport;->mDriverStateDump:[B

    invoke-static {v14, v15}, Lcom/android/server/wifi/WifiDiagnostics;->-wrap0(Lcom/android/server/wifi/WifiDiagnostics;[B)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6
.end method
