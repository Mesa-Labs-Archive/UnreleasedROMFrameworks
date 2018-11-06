.class public Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;
.super Landroid/os/Handler;
.source "LmsAssemblyTrackerCTC.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/LmsAssemblyTrackerCTC$1;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final DEST_PORT_FLAG_3GPP:I = 0x20000

.field private static final DEST_PORT_FLAG_3GPP2:I = 0x40000

.field private static final DEST_PORT_FLAG_NO_PORT:I = 0x10000

.field private static final EVENT_FIRST_DISPLAY_TIMEOUT:I = 0x1

.field private static final EVENT_MAXIMAL_CONNECTION_TIMEOUT:I = 0x2

.field private static final MAXIMAL_CONNECTION_TIME_ALARM_ACTION:Ljava/lang/String; = "com.android.internal.telephony.CTC_LMS_CONNECTION_ALARM"

.field private static final RAW_URI:Landroid/net/Uri;

.field private static final TAG:Ljava/lang/String; = "LmsAssemblyTrackerCTC"


# instance fields
.field private final mAlarmReceiver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private final mInboundSmsHandler:Lcom/android/internal/telephony/InboundSmsHandler;

.field private mIsAlarmReceiverActive:Z

.field private final mQueuedLmsTokens:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;",
            "Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    sput-boolean v0, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;->DEBUG:Z

    sget-object v0, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v1, "raw"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;->RAW_URI:Landroid/net/Uri;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/InboundSmsHandler;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;->mIsAlarmReceiverActive:Z

    new-instance v0, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC$1;-><init>(Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;)V

    iput-object v0, p0, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;->mAlarmReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;->mQueuedLmsTokens:Ljava/util/Map;

    iput-object p1, p0, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;->mInboundSmsHandler:Lcom/android/internal/telephony/InboundSmsHandler;

    invoke-virtual {p0}, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;->updateMaximalConnectionTimeAlarm()V

    return-void
.end method

.method private static dbSelectionForLmsToken(Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;)Landroid/util/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string/jumbo v0, "address = ? AND reference_number = ?"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;->address:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p0, Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;->refNumber:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method private deleteStoredMessageParts(Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;)V
    .locals 5

    invoke-static {p1}, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;->dbSelectionForLmsToken(Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;)Landroid/util/Pair;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;->RAW_URI:Landroid/net/Uri;

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/String;

    invoke-virtual {v3, v4, v1, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method private dispatchIncompleteLms(Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;I)V
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x0

    const-string/jumbo v3, "dispatchIncompleteLms, lmsToken=%s, lmsStatus=%d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v8

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v3, Lcom/android/internal/telephony/SMSDispatcher;->RAW_PROJECTION:[Ljava/lang/String;

    invoke-direct {p0, v3, p1, v7}, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;->queryStoredMessageParts([Ljava/lang/String;Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-nez v1, :cond_0

    const-string/jumbo v3, "LmsAssemblyTrackerCTC"

    const-string/jumbo v4, "dispatchIncompleteLms: cursor is NULL"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v0, Lcom/android/internal/telephony/InboundSmsHandler$LmsPartCollector;

    iget v3, p1, Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;->msgCount:I

    invoke-direct {v0, v3, v8}, Lcom/android/internal/telephony/InboundSmsHandler$LmsPartCollector;-><init>(IZ)V

    :try_start_0
    const-string/jumbo v3, "sequence"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v4, "pdu"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    const-string/jumbo v5, "destination_port"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v1, v3, v4, v5}, Lcom/android/internal/telephony/InboundSmsHandler$LmsPartCollector;->addAllFromCursor(Landroid/database/Cursor;III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/InboundSmsHandler$LmsPartCollector;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v3, "LmsAssemblyTrackerCTC"

    const-string/jumbo v4, "dispatchIncompleteLms: no parts stored"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception v3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v3

    :cond_1
    const/high16 v2, 0x10000

    const-string/jumbo v3, "3gpp2"

    iget-object v4, p1, Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;->format:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/high16 v2, 0x50000

    :goto_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/InboundSmsHandler$LmsPartCollector;->getDestPort()I

    move-result v3

    if-eq v3, v2, :cond_3

    const-string/jumbo v3, "LmsAssemblyTrackerCTC"

    const-string/jumbo v4, "dispatchIncompleteLms: ignoring partial dispatch request for port-addressed LMS"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    const/high16 v2, 0x30000

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;->mInboundSmsHandler:Lcom/android/internal/telephony/InboundSmsHandler;

    invoke-virtual {v0}, Lcom/android/internal/telephony/InboundSmsHandler$LmsPartCollector;->getPdusSequence()[[B

    move-result-object v4

    invoke-virtual {v3, v4, p1, p2, v7}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchPdusCTC([[BLcom/samsung/android/telephony/cdma/SemLmsTokenCTC;ILcom/android/internal/telephony/InboundSmsTracker;)V

    return-void
.end method

.method private findStoredMessagePartsOlderThan(J)Ljava/util/Set;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/Set",
            "<",
            "Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;",
            ">;"
        }
    .end annotation

    const/4 v7, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v6, 0x0

    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "address"

    aput-object v3, v2, v6

    const-string/jumbo v3, "reference_number"

    aput-object v3, v2, v4

    const-string/jumbo v3, "count"

    aput-object v3, v2, v5

    const-string/jumbo v3, "format"

    aput-object v3, v2, v7

    const-string/jumbo v3, "date <= ?"

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    const-string/jumbo v5, "date ASC"

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;->queryStoredMessageParts([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v2, "LmsAssemblyTrackerCTC"

    const-string/jumbo v3, "findStoredMessagePartsOlderThan, cursor is NULL"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/4 v5, 0x2

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    const/4 v6, 0x3

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v2

    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-object v1
.end method

.method private static getFirstDisplayTimeoutDuration(I)J
    .locals 6

    int-to-long v2, p0

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x14

    mul-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    mul-long v0, v2, v4

    sget-boolean v2, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "debug.lms_assemble_timeout_1st"

    invoke-static {v2, v0, v1}, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;->getSystemPropertyAsLong(Ljava/lang/String;J)J

    move-result-wide v2

    return-wide v2

    :cond_0
    return-wide v0
.end method

.method private static getMaximalTimeoutDuration()J
    .locals 6

    const-wide/32 v4, 0x2932e00

    const-wide/32 v0, 0x2932e00

    sget-boolean v2, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "debug.lms_assemble_timeout_max"

    invoke-static {v2, v4, v5}, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;->getSystemPropertyAsLong(Ljava/lang/String;J)J

    move-result-wide v2

    return-wide v2

    :cond_0
    return-wide v4
.end method

.method private getOrCreateLmsToken(Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;)Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;->getQueuedLmsToken(Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;)Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;

    invoke-direct {v0, p1}, Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;-><init>(Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;)V

    iget-object v1, p0, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;->mQueuedLmsTokens:Ljava/util/Map;

    invoke-interface {v1, v0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method private getQueuedLmsToken(Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;)Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;->mQueuedLmsTokens:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;

    return-object v0
.end method

.method private static getSystemPropertyAsLong(Ljava/lang/String;J)J
    .locals 5

    :try_start_0
    const-string/jumbo v1, ""

    invoke-static {p0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    return-wide v2

    :catch_0
    move-exception v0

    return-wide p1
.end method

.method private handleFirstDisplayTimeout(Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;)V
    .locals 4

    const/4 v3, 0x1

    const-string/jumbo v0, "handleFirstDisplayTimeout, lmsToken=%s"

    new-array v1, v3, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;->cancelFirstDisplayTimeout(Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;)V

    invoke-direct {p0, p1, v3}, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;->dispatchIncompleteLms(Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;I)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;->updateMaximalConnectionTimeAlarm()V

    return-void
.end method

.method private handleMaximalConnectionTimeout()V
    .locals 9

    const/4 v8, 0x0

    const-string/jumbo v3, "handleMaximalConnectionTimeout"

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {}, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;->getMaximalTimeoutDuration()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-direct {p0, v4, v5}, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;->findStoredMessagePartsOlderThan(J)Ljava/util/Set;

    move-result-object v2

    const-string/jumbo v3, "handleMaximalConnectionTimeout: timed out lms: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v8

    invoke-static {v3, v4}, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;

    const/4 v3, 0x2

    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;->dispatchIncompleteLms(Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;I)V

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;->deleteStoredMessageParts(Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;->updateMaximalConnectionTimeAlarm()V

    return-void
.end method

.method private static varargs logd(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    sget-boolean v0, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "LmsAssemblyTrackerCTC"

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private queryStoredMessageParts([Ljava/lang/String;Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7

    invoke-static {p2}, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;->dbSelectionForLmsToken(Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;)Landroid/util/Pair;

    move-result-object v6

    iget-object v0, p0, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;->RAW_URI:Landroid/net/Uri;

    iget-object v3, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v4, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, [Ljava/lang/String;

    move-object v2, p1

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private queryStoredMessageParts([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6

    iget-object v0, p0, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;->RAW_URI:Landroid/net/Uri;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private registerAlarmReceiver()V
    .locals 3

    iget-boolean v1, p0, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;->mIsAlarmReceiverActive:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "com.android.internal.telephony.CTC_LMS_CONNECTION_ALARM"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;->mAlarmReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;->mIsAlarmReceiverActive:Z

    return-void
.end method

.method private removeQueuedLmsToken(Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;->mQueuedLmsTokens:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private unregisterAlarmReceiver()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;->mIsAlarmReceiverActive:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;->mAlarmReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;->mIsAlarmReceiverActive:Z

    return-void
.end method


# virtual methods
.method public cancelFirstDisplayTimeout(Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;)V
    .locals 5

    const/4 v4, 0x1

    const-string/jumbo v1, "cancelFirstDisplayTimeout, lmsToken=%s"

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;->getQueuedLmsToken(Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;)Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v4, v0}, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;->removeMessages(ILjava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;->removeQueuedLmsToken(Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;)V

    :cond_0
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    :try_start_0
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;->handleFirstDisplayTimeout(Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "LmsAssemblyTrackerCTC"

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :pswitch_1
    :try_start_1
    invoke-direct {p0}, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;->handleMaximalConnectionTimeout()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public hasScheduledFirstDisplayTimeout()Z
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;->hasMessages(I)Z

    move-result v0

    return v0
.end method

.method public hasScheduledFirstDisplayTimeout(Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;)Z
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;->getQueuedLmsToken(Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;)Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;->hasMessages(ILjava/lang/Object;)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isMaximalConnectionTimeAlarmActive()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;->mIsAlarmReceiverActive:Z

    return v0
.end method

.method public scheduleFirstDisplayTimeout(Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;)V
    .locals 8

    const/4 v7, 0x1

    const-string/jumbo v4, "scheduleFirstDisplayTimeout, lmsToken=%s"

    new-array v5, v7, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-static {v4, v5}, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;->getOrCreateLmsToken(Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;)Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;

    move-result-object v1

    iget v4, p1, Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;->msgCount:I

    invoke-static {v4}, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;->getFirstDisplayTimeoutDuration(I)J

    move-result-wide v2

    invoke-virtual {p0, v7, v1}, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public updateMaximalConnectionTimeAlarm()V
    .locals 12

    const/4 v11, 0x1

    const/4 v7, 0x0

    const/4 v10, 0x0

    const-string/jumbo v5, "updateMaximalConnectionTimeAlarm"

    new-array v6, v10, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    new-array v5, v11, [Ljava/lang/String;

    const-string/jumbo v6, "date"

    aput-object v6, v5, v10

    const-string/jumbo v6, "date ASC"

    invoke-direct {p0, v5, v7, v7, v6}, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;->queryStoredMessageParts([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-nez v1, :cond_0

    const-string/jumbo v5, "LmsAssemblyTrackerCTC"

    const-string/jumbo v6, "updateMaximalConnectionTimeAlarm: cursor is NULL"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v4, 0x0

    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x0

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {}, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;->getMaximalTimeoutDuration()J

    move-result-wide v8

    add-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v5, "com.android.internal.telephony.CTC_LMS_CONNECTION_ALARM"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;->mContext:Landroid/content/Context;

    const/high16 v6, 0x10000000

    invoke-static {v5, v10, v2, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    iget-object v5, p0, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "alarm"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    if-eqz v4, :cond_2

    const-string/jumbo v5, "updateMaximalConnectionTimeAlarm: set alarm at %s"

    new-array v6, v11, [Ljava/lang/Object;

    new-instance v7, Ljava/util/Date;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-direct {v7, v8, v9}, Ljava/util/Date;-><init>(J)V

    aput-object v7, v6, v10

    invoke-static {v5, v6}, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;->registerAlarmReceiver()V

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v0, v11, v6, v7, v3}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    :goto_0
    return-void

    :catchall_0
    move-exception v5

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v5

    :cond_2
    const-string/jumbo v5, "updateMaximalConnectionTimeAlarm: no alarm needed"

    new-array v6, v10, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;->unregisterAlarmReceiver()V

    invoke-virtual {v0, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    goto :goto_0
.end method
