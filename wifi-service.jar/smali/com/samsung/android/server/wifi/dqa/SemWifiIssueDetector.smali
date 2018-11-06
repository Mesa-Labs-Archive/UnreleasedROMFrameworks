.class public Lcom/samsung/android/server/wifi/dqa/SemWifiIssueDetector;
.super Landroid/os/Handler;
.source "SemWifiIssueDetector.java"


# static fields
.field private static final MAX_LIST_SIZE:I = 0xbb8

.field public static final TAG:Ljava/lang/String; = "WifiIssueDetector"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mIssueReport:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mLogLock:Ljava/lang/Object;

.field private final mLogs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/server/wifi/dqa/ReportData;",
            ">;"
        }
    .end annotation
.end field

.field private final mPatterns:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/server/wifi/dqa/WifiIssuePattern;",
            ">;"
        }
    .end annotation
.end field

.field private final mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 3

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/server/wifi/dqa/SemWifiIssueDetector;->mLogLock:Ljava/lang/Object;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/server/wifi/dqa/SemWifiIssueDetector;->mLogs:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/server/wifi/dqa/SemWifiIssueDetector;->mPatterns:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/server/wifi/dqa/SemWifiIssueDetector;->mIssueReport:Ljava/util/List;

    iput-object p1, p0, Lcom/samsung/android/server/wifi/dqa/SemWifiIssueDetector;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/samsung/android/server/wifi/dqa/SemWifiIssueDetector;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v0, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;

    invoke-direct {v0}, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/server/wifi/dqa/SemWifiIssueDetector;->mPatterns:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/samsung/android/server/wifi/dqa/SemWifiIssueDetector;->mIssueReport:Ljava/util/List;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/dqa/WifiIssuePattern;->getAssociatedKeys()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    new-instance v0, Lcom/samsung/android/server/wifi/dqa/PatternWifiConnecting;

    invoke-direct {v0}, Lcom/samsung/android/server/wifi/dqa/PatternWifiConnecting;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/server/wifi/dqa/SemWifiIssueDetector;->mPatterns:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/samsung/android/server/wifi/dqa/SemWifiIssueDetector;->mIssueReport:Ljava/util/List;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/dqa/WifiIssuePattern;->getAssociatedKeys()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private addLog(Lcom/samsung/android/server/wifi/dqa/ReportData;)V
    .locals 3

    iget-object v1, p0, Lcom/samsung/android/server/wifi/dqa/SemWifiIssueDetector;->mLogLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/dqa/SemWifiIssueDetector;->mLogs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v2, 0xbb8

    if-le v0, v2, :cond_0

    iget-object v0, p0, Lcom/samsung/android/server/wifi/dqa/SemWifiIssueDetector;->mLogs:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/dqa/SemWifiIssueDetector;->mLogs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private attemptIssueDetection(ILcom/samsung/android/server/wifi/dqa/ReportData;)V
    .locals 11

    const/4 v10, 0x0

    iget-object v6, p0, Lcom/samsung/android/server/wifi/dqa/SemWifiIssueDetector;->mPatterns:Ljava/util/List;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/server/wifi/dqa/WifiIssuePattern;

    invoke-virtual {v3, p1, p2}, Lcom/samsung/android/server/wifi/dqa/WifiIssuePattern;->isAssociated(ILcom/samsung/android/server/wifi/dqa/ReportData;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v7, p0, Lcom/samsung/android/server/wifi/dqa/SemWifiIssueDetector;->mLogLock:Ljava/lang/Object;

    monitor-enter v7

    :try_start_0
    iget-object v6, p0, Lcom/samsung/android/server/wifi/dqa/SemWifiIssueDetector;->mLogs:Ljava/util/List;

    invoke-virtual {v3, v6}, Lcom/samsung/android/server/wifi/dqa/WifiIssuePattern;->matches(Ljava/util/List;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-nez v6, :cond_1

    monitor-exit v7

    goto :goto_0

    :cond_1
    monitor-exit v7

    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/dqa/WifiIssuePattern;->getPatternId()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "WifiIssueDetector"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "pattern matched! pid="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/dqa/WifiIssuePattern;->getBigDataParams()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v6, "patternId"

    invoke-virtual {v0, v6, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/server/wifi/dqa/SemWifiIssueDetector;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v7, p0, Lcom/samsung/android/server/wifi/dqa/SemWifiIssueDetector;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8, v0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    const v9, 0x201f8

    invoke-virtual {v7, v9, v10, v10, v8}, Lcom/android/server/wifi/WifiStateMachine;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    const-string/jumbo v6, "categoryId"

    invoke-virtual {v0, v6, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    const-string/jumbo v6, "feature"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v5, v1}, Lcom/samsung/android/server/wifi/dqa/SemWifiIssueDetector;->sendBroadcastSecIssueDetected(Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v6, Lcom/samsung/android/server/wifi/dqa/ReportData;

    const/16 v7, 0x3e7

    invoke-direct {v6, v7, v0}, Lcom/samsung/android/server/wifi/dqa/ReportData;-><init>(ILandroid/os/Bundle;)V

    invoke-direct {p0, v6}, Lcom/samsung/android/server/wifi/dqa/SemWifiIssueDetector;->addLog(Lcom/samsung/android/server/wifi/dqa/ReportData;)V

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/dqa/SemWifiIssueDetector;->writeDumpFile()V

    goto :goto_0

    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6

    :cond_2
    return-void
.end method

.method private report(ILandroid/os/Bundle;)V
    .locals 6

    if-gtz p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const-string/jumbo v1, "htime"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "htime"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :cond_1
    const-string/jumbo v1, "time"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string/jumbo v1, "time"

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {p2, v1, v4}, Lcom/samsung/android/server/wifi/dqa/WifiIssuePattern;->getValue(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-string/jumbo v1, "time"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/server/wifi/dqa/ReportData;

    invoke-direct {v0, p1, p2, v2, v3}, Lcom/samsung/android/server/wifi/dqa/ReportData;-><init>(ILandroid/os/Bundle;J)V

    :goto_0
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/dqa/SemWifiIssueDetector;->addLog(Lcom/samsung/android/server/wifi/dqa/ReportData;)V

    const-string/jumbo v1, "WifiIssueDetector"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "report "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/dqa/ReportData;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/server/wifi/dqa/SemWifiIssueDetector;->mIssueReport:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/server/wifi/dqa/SemWifiIssueDetector;->attemptIssueDetection(ILcom/samsung/android/server/wifi/dqa/ReportData;)V

    :cond_2
    return-void

    :cond_3
    new-instance v0, Lcom/samsung/android/server/wifi/dqa/ReportData;

    invoke-direct {v0, p1, p2}, Lcom/samsung/android/server/wifi/dqa/ReportData;-><init>(ILandroid/os/Bundle;)V

    goto :goto_0
.end method

.method private sendBroadcastForCurrentUser(Landroid/content/Intent;)V
    .locals 4

    iget-object v1, p0, Lcom/samsung/android/server/wifi/dqa/SemWifiIssueDetector;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/dqa/SemWifiIssueDetector;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "WifiIssueDetector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Send broadcast before boot - action:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private sendBroadcastSecIssueDetected(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.android.net.wifi.ISSUE_DETECTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v1, "bigdataFeature"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "patternId"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "categoryId"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/dqa/SemWifiIssueDetector;->sendBroadcastForCurrentUser(Landroid/content/Intent;)V

    return-void
.end method

.method private writeDumpFile()V
    .locals 0

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4

    const-string/jumbo v2, "SemWifiIssueDetector:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/server/wifi/dqa/SemWifiIssueDetector;->mLogLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/server/wifi/dqa/SemWifiIssueDetector;->mLogs:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/server/wifi/dqa/ReportData;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/dqa/ReportData;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_0
    monitor-exit v3

    return-void
.end method

.method public getRawData(I)Ljava/lang/String;
    .locals 7

    const/4 v0, 0x0

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v5, p0, Lcom/samsung/android/server/wifi/dqa/SemWifiIssueDetector;->mLogLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/server/wifi/dqa/SemWifiIssueDetector;->mLogs:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    add-int/lit8 v2, v4, -0x1

    move v1, v0

    :goto_0
    if-ltz v2, :cond_1

    add-int/lit8 v0, v1, 0x1

    if-le v1, p1, :cond_0

    :goto_1
    monitor-exit v5

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    :cond_0
    :try_start_1
    iget-object v4, p0, Lcom/samsung/android/server/wifi/dqa/SemWifiIssueDetector;->mLogs:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/server/wifi/dqa/ReportData;

    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/dqa/ReportData;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string/jumbo v6, "\n"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v2, v2, -0x1

    move v1, v0

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    if-eqz v0, :cond_0

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/server/wifi/dqa/SemWifiIssueDetector;->report(ILandroid/os/Bundle;)V

    :cond_0
    return-void
.end method
