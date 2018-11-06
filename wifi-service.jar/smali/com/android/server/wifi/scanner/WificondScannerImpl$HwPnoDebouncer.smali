.class public Lcom/android/server/wifi/scanner/WificondScannerImpl$HwPnoDebouncer;
.super Ljava/lang/Object;
.source "WificondScannerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/scanner/WificondScannerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HwPnoDebouncer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/scanner/WificondScannerImpl$HwPnoDebouncer$1;,
        Lcom/android/server/wifi/scanner/WificondScannerImpl$HwPnoDebouncer$Listener;
    }
.end annotation


# static fields
.field private static final MINIMUM_PNO_GAP_MS:I = 0x1388

.field public static final PNO_DEBOUNCER_ALARM_TAG:Ljava/lang/String; = "WificondScannerImplPno Monitor"


# instance fields
.field private final mAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

.field private final mAlarmManager:Landroid/app/AlarmManager;

.field private final mClock:Lcom/android/server/wifi/Clock;

.field private mCurrentPnoState:Z

.field private final mEventHandler:Landroid/os/Handler;

.field private mExpectedPnoState:Z

.field private mLastPnoChangeTimeStamp:J

.field private mListener:Lcom/android/server/wifi/scanner/WificondScannerImpl$HwPnoDebouncer$Listener;

.field private mPnoSettings:Lcom/android/server/wifi/WifiNative$PnoSettings;

.field private mWaitForTimer:Z

.field private final mWifiNative:Lcom/android/server/wifi/WifiNative;


# direct methods
.method static synthetic -get0(Lcom/android/server/wifi/scanner/WificondScannerImpl$HwPnoDebouncer;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl$HwPnoDebouncer;->mExpectedPnoState:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/server/wifi/scanner/WificondScannerImpl$HwPnoDebouncer;)Lcom/android/server/wifi/scanner/WificondScannerImpl$HwPnoDebouncer$Listener;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl$HwPnoDebouncer;->mListener:Lcom/android/server/wifi/scanner/WificondScannerImpl$HwPnoDebouncer$Listener;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/wifi/scanner/WificondScannerImpl$HwPnoDebouncer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl$HwPnoDebouncer;->mWaitForTimer:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/wifi/scanner/WificondScannerImpl$HwPnoDebouncer;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/wifi/scanner/WificondScannerImpl$HwPnoDebouncer;->startPnoScanInternal()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/wifi/scanner/WificondScannerImpl$HwPnoDebouncer;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/wifi/scanner/WificondScannerImpl$HwPnoDebouncer;->stopPnoScanInternal()Z

    move-result v0

    return v0
.end method

.method public constructor <init>(Lcom/android/server/wifi/WifiNative;Landroid/app/AlarmManager;Landroid/os/Handler;Lcom/android/server/wifi/Clock;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl$HwPnoDebouncer;->mLastPnoChangeTimeStamp:J

    iput-boolean v2, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl$HwPnoDebouncer;->mExpectedPnoState:Z

    iput-boolean v2, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl$HwPnoDebouncer;->mCurrentPnoState:Z

    iput-boolean v2, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl$HwPnoDebouncer;->mWaitForTimer:Z

    new-instance v0, Lcom/android/server/wifi/scanner/WificondScannerImpl$HwPnoDebouncer$1;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/scanner/WificondScannerImpl$HwPnoDebouncer$1;-><init>(Lcom/android/server/wifi/scanner/WificondScannerImpl$HwPnoDebouncer;)V

    iput-object v0, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl$HwPnoDebouncer;->mAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    iput-object p1, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl$HwPnoDebouncer;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iput-object p2, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl$HwPnoDebouncer;->mAlarmManager:Landroid/app/AlarmManager;

    iput-object p3, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl$HwPnoDebouncer;->mEventHandler:Landroid/os/Handler;

    iput-object p4, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl$HwPnoDebouncer;->mClock:Lcom/android/server/wifi/Clock;

    return-void
.end method

.method private setPnoState(Z)Z
    .locals 12

    const-wide/16 v4, 0x1388

    const/4 v7, 0x1

    iput-boolean p1, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl$HwPnoDebouncer;->mExpectedPnoState:Z

    iget-boolean v0, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl$HwPnoDebouncer;->mWaitForTimer:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl$HwPnoDebouncer;->mClock:Lcom/android/server/wifi/Clock;

    invoke-virtual {v0}, Lcom/android/server/wifi/Clock;->getElapsedSinceBootMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl$HwPnoDebouncer;->mLastPnoChangeTimeStamp:J

    sub-long v10, v0, v2

    cmp-long v0, v10, v4

    if-ltz v0, :cond_2

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/android/server/wifi/scanner/WificondScannerImpl$HwPnoDebouncer;->startPnoScanInternal()Z

    move-result v7

    :cond_0
    :goto_0
    return v7

    :cond_1
    invoke-direct {p0}, Lcom/android/server/wifi/scanner/WificondScannerImpl$HwPnoDebouncer;->stopPnoScanInternal()Z

    move-result v7

    goto :goto_0

    :cond_2
    sub-long v8, v4, v10

    const-string/jumbo v0, "WificondScannerImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Start PNO timer with delay "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl$HwPnoDebouncer;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl$HwPnoDebouncer;->mClock:Lcom/android/server/wifi/Clock;

    invoke-virtual {v1}, Lcom/android/server/wifi/Clock;->getElapsedSinceBootMillis()J

    move-result-wide v2

    add-long/2addr v2, v8

    const-string/jumbo v4, "WificondScannerImplPno Monitor"

    iget-object v5, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl$HwPnoDebouncer;->mAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    iget-object v6, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl$HwPnoDebouncer;->mEventHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->set(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl$HwPnoDebouncer;->mWaitForTimer:Z

    goto :goto_0
.end method

.method private startPnoScanInternal()Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl$HwPnoDebouncer;->mCurrentPnoState:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/server/wifi/scanner/WificondScannerImpl;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "WificondScannerImpl"

    const-string/jumbo v1, "PNO state is already enable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v3

    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl$HwPnoDebouncer;->mPnoSettings:Lcom/android/server/wifi/WifiNative$PnoSettings;

    if-nez v0, :cond_2

    const-string/jumbo v0, "WificondScannerImpl"

    const-string/jumbo v1, "PNO state change to enable failed, no available Pno settings"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_2
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl$HwPnoDebouncer;->mClock:Lcom/android/server/wifi/Clock;

    invoke-virtual {v0}, Lcom/android/server/wifi/Clock;->getElapsedSinceBootMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl$HwPnoDebouncer;->mLastPnoChangeTimeStamp:J

    const-string/jumbo v0, "WificondScannerImpl"

    const-string/jumbo v1, "Remove all networks from supplicant before starting PNO scan"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl$HwPnoDebouncer;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiNative;->removeAllNetworks()Z

    iget-object v0, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl$HwPnoDebouncer;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v1, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl$HwPnoDebouncer;->mPnoSettings:Lcom/android/server/wifi/WifiNative$PnoSettings;

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiNative;->startPnoScan(Lcom/android/server/wifi/WifiNative$PnoSettings;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "WificondScannerImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Changed PNO state from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl$HwPnoDebouncer;->mCurrentPnoState:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " to enable"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v3, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl$HwPnoDebouncer;->mCurrentPnoState:Z

    return v3

    :cond_3
    const-string/jumbo v0, "WificondScannerImpl"

    const-string/jumbo v1, "PNO state change to enable failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl$HwPnoDebouncer;->mCurrentPnoState:Z

    return v2
.end method

.method private stopPnoScanInternal()Z
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl$HwPnoDebouncer;->mCurrentPnoState:Z

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/server/wifi/scanner/WificondScannerImpl;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "WificondScannerImpl"

    const-string/jumbo v1, "PNO state is already disable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v4

    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl$HwPnoDebouncer;->mClock:Lcom/android/server/wifi/Clock;

    invoke-virtual {v0}, Lcom/android/server/wifi/Clock;->getElapsedSinceBootMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl$HwPnoDebouncer;->mLastPnoChangeTimeStamp:J

    iget-object v0, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl$HwPnoDebouncer;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiNative;->stopPnoScan()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "WificondScannerImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Changed PNO state from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl$HwPnoDebouncer;->mCurrentPnoState:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " to disable"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v3, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl$HwPnoDebouncer;->mCurrentPnoState:Z

    return v4

    :cond_2
    const-string/jumbo v0, "WificondScannerImpl"

    const-string/jumbo v1, "PNO state change to disable failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v3, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl$HwPnoDebouncer;->mCurrentPnoState:Z

    return v3
.end method


# virtual methods
.method public forceStopPnoScan()V
    .locals 2

    invoke-static {}, Lcom/android/server/wifi/scanner/WificondScannerImpl;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "WificondScannerImpl"

    const-string/jumbo v1, "Force stopping Pno scan"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl$HwPnoDebouncer;->mWaitForTimer:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl$HwPnoDebouncer;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl$HwPnoDebouncer;->mAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl$HwPnoDebouncer;->mWaitForTimer:Z

    :cond_1
    invoke-direct {p0}, Lcom/android/server/wifi/scanner/WificondScannerImpl$HwPnoDebouncer;->stopPnoScanInternal()Z

    return-void
.end method

.method public startPnoScan(Lcom/android/server/wifi/WifiNative$PnoSettings;Lcom/android/server/wifi/scanner/WificondScannerImpl$HwPnoDebouncer$Listener;)Z
    .locals 3

    const/4 v2, 0x1

    invoke-static {}, Lcom/android/server/wifi/scanner/WificondScannerImpl;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "WificondScannerImpl"

    const-string/jumbo v1, "Starting PNO scan"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-object p2, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl$HwPnoDebouncer;->mListener:Lcom/android/server/wifi/scanner/WificondScannerImpl$HwPnoDebouncer$Listener;

    iput-object p1, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl$HwPnoDebouncer;->mPnoSettings:Lcom/android/server/wifi/WifiNative$PnoSettings;

    invoke-direct {p0, v2}, Lcom/android/server/wifi/scanner/WificondScannerImpl$HwPnoDebouncer;->setPnoState(Z)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl$HwPnoDebouncer;->mListener:Lcom/android/server/wifi/scanner/WificondScannerImpl$HwPnoDebouncer$Listener;

    const/4 v0, 0x0

    return v0

    :cond_1
    return v2
.end method

.method public stopPnoScan()V
    .locals 2

    invoke-static {}, Lcom/android/server/wifi/scanner/WificondScannerImpl;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "WificondScannerImpl"

    const-string/jumbo v1, "Stopping PNO scan"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/scanner/WificondScannerImpl$HwPnoDebouncer;->setPnoState(Z)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl$HwPnoDebouncer;->mListener:Lcom/android/server/wifi/scanner/WificondScannerImpl$HwPnoDebouncer$Listener;

    return-void
.end method
