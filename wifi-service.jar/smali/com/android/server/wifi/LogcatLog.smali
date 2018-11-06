.class Lcom/android/server/wifi/LogcatLog;
.super Ljava/lang/Object;
.source "LogcatLog.java"

# interfaces
.implements Lcom/android/server/wifi/WifiLog;


# annotations
.annotation build Lcom/android/internal/annotations/Immutable;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/LogcatLog$RealLogMessage;
    }
.end annotation

.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# static fields
.field private static volatile sVerboseLogging:Z


# instance fields
.field private final mTag:Ljava/lang/String;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/wifi/LogcatLog;->sVerboseLogging:Z

    return v0
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/wifi/LogcatLog;->sVerboseLogging:Z

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wifi/LogcatLog;->mTag:Ljava/lang/String;

    return-void
.end method

.method public static enableVerboseLogging(I)V
    .locals 1

    const/4 v0, 0x0

    if-lez p0, :cond_0

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/wifi/LogcatLog;->sVerboseLogging:Z

    :goto_0
    return-void

    :cond_0
    sput-boolean v0, Lcom/android/server/wifi/LogcatLog;->sVerboseLogging:Z

    goto :goto_0
.end method

.method private makeLogMessage(ILjava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;
    .locals 2

    new-instance v0, Lcom/android/server/wifi/LogcatLog$RealLogMessage;

    iget-object v1, p0, Lcom/android/server/wifi/LogcatLog;->mTag:Ljava/lang/String;

    invoke-direct {v0, p1, v1, p2}, Lcom/android/server/wifi/LogcatLog$RealLogMessage;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public d(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/LogcatLog;->mTag:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public dump(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lcom/android/server/wifi/LogcatLog;->makeLogMessage(ILjava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/LogcatLog;->mTag:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public eC(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/LogcatLog;->mTag:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public err(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;
    .locals 1

    const/4 v0, 0x6

    invoke-direct {p0, v0, p1}, Lcom/android/server/wifi/LogcatLog;->makeLogMessage(ILjava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    return-object v0
.end method

.method public i(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/LogcatLog;->mTag:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public iC(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/LogcatLog;->mTag:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public info(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Lcom/android/server/wifi/LogcatLog;->makeLogMessage(ILjava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    return-object v0
.end method

.method public tC(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/LogcatLog;->mTag:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public trace(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;
    .locals 1

    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Lcom/android/server/wifi/LogcatLog;->makeLogMessage(ILjava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    return-object v0
.end method

.method public v(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/LogcatLog;->mTag:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public w(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/LogcatLog;->mTag:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public wC(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/LogcatLog;->mTag:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public warn(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;
    .locals 1

    const/4 v0, 0x5

    invoke-direct {p0, v0, p1}, Lcom/android/server/wifi/LogcatLog;->makeLogMessage(ILjava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    return-object v0
.end method
