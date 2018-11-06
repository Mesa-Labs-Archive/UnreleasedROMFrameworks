.class Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler$QualityResults;
.super Ljava/lang/Object;
.source "WifiConnectivityMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QualityResults"
.end annotation


# instance fields
.field private mDataRate1:I

.field private mDataRate2:I

.field private mQuality:I

.field private mRSSI1:I

.field private mRSSI2:I

.field private mTime:J

.field final synthetic this$1:Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;


# direct methods
.method public constructor <init>(Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;)V
    .locals 2

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler$QualityResults;->this$1:Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler$QualityResults;->mDataRate2:I

    iput v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler$QualityResults;->mDataRate1:I

    iput v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler$QualityResults;->mRSSI2:I

    iput v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler$QualityResults;->mRSSI1:I

    iput v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler$QualityResults;->mQuality:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler$QualityResults;->mTime:J

    return-void
.end method

.method private displayNotification()V
    .locals 9

    const/4 v8, 0x1

    const-string/jumbo v4, "%dbytes, %ddBm, %ddBm, %dMbps, %dMbps"

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    iget v6, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler$QualityResults;->mQuality:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    iget v6, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler$QualityResults;->mRSSI1:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    iget v6, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler$QualityResults;->mRSSI2:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x2

    aput-object v6, v5, v7

    iget v6, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler$QualityResults;->mDataRate1:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x3

    aput-object v6, v5, v7

    iget v6, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler$QualityResults;->mDataRate2:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x4

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler$QualityResults;->this$1:Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->-get0(Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "QualityResult : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    new-instance v3, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v3}, Landroid/app/Notification$BigTextStyle;-><init>()V

    invoke-virtual {v3, v2}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    new-instance v4, Landroid/app/Notification$Builder;

    iget-object v5, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler$QualityResults;->this$1:Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;

    iget-object v5, v5, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get16(Lcom/android/server/wifi/WifiConnectivityMonitor;)Landroid/content/Context;

    move-result-object v5

    sget-object v6, Lcom/android/internal/notification/SystemNotificationChannels;->NETWORK_STATUS:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v5, 0x108008a

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    const-string/jumbo v5, "QC"

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v1, Landroid/app/Notification;->when:J

    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler$QualityResults;->this$1:Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;

    iget-object v4, v4, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get79(Lcom/android/server/wifi/WifiConnectivityMonitor;)Landroid/app/NotificationManager;

    move-result-object v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler$QualityResults;->this$1:Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;

    iget-object v5, v4, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler$QualityResults;->this$1:Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;

    iget-object v4, v4, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get16(Lcom/android/server/wifi/WifiConnectivityMonitor;)Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v6, "notification"

    invoke-virtual {v4, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    invoke-static {v5, v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set65(Lcom/android/server/wifi/WifiConnectivityMonitor;Landroid/app/NotificationManager;)Landroid/app/NotificationManager;

    :cond_0
    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler$QualityResults;->this$1:Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;

    iget-object v4, v4, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get79(Lcom/android/server/wifi/WifiConnectivityMonitor;)Landroid/app/NotificationManager;

    move-result-object v4

    const/16 v5, 0x7d0

    invoke-virtual {v4, v5, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler$QualityResults;->mDataRate2:I

    iput v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler$QualityResults;->mDataRate1:I

    iput v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler$QualityResults;->mRSSI2:I

    iput v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler$QualityResults;->mRSSI1:I

    iput v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler$QualityResults;->mQuality:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler$QualityResults;->mTime:J

    return-void
.end method

.method public setValues(JIIIII)V
    .locals 1

    iput-wide p1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler$QualityResults;->mTime:J

    iput p3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler$QualityResults;->mQuality:I

    iput p4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler$QualityResults;->mRSSI1:I

    iput p5, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler$QualityResults;->mRSSI2:I

    iput p6, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler$QualityResults;->mDataRate1:I

    iput p7, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler$QualityResults;->mDataRate2:I

    return-void
.end method

.method public writeResults()V
    .locals 12

    iget v6, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler$QualityResults;->mQuality:I

    if-nez v6, :cond_0

    return-void

    :cond_0
    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler$QualityResults;->this$1:Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;

    iget-object v6, v6, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v6}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get81(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v6, "wlan.qc.path"

    const-string/jumbo v7, "stop"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v6, "stop"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get3()Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler$QualityResults;->this$1:Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;

    invoke-static {v6}, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->-get0(Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "It\'s not in logging state!"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler$QualityResults;->this$1:Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;

    iget-object v7, v7, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v7}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get81(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v7, "/data/log/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ".txt"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get3()Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler$QualityResults;->this$1:Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;

    invoke-static {v6}, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->-get0(Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Log file is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/4 v4, 0x0

    :try_start_0
    new-instance v5, Ljava/io/FileWriter;

    const/4 v6, 0x1

    invoke-direct {v5, v2, v6}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler$QualityResults;->this$1:Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;

    invoke-static {v7}, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->-get1(Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;)Landroid/icu/text/SimpleDateFormat;

    move-result-object v7

    new-instance v8, Ljava/util/Date;

    iget-wide v10, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler$QualityResults;->mTime:J

    invoke-direct {v8, v10, v11}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v7, v8}, Landroid/icu/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\t"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler$QualityResults;->mQuality:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\t"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler$QualityResults;->mRSSI1:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\t"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler$QualityResults;->mRSSI2:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\t"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler$QualityResults;->mDataRate1:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\t"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler$QualityResults;->mDataRate2:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler$QualityResults;->displayNotification()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v5, :cond_4

    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_4
    :goto_0
    move-object v4, v5

    :cond_5
    :goto_1
    return-void

    :catch_0
    move-exception v1

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get3()Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler$QualityResults;->this$1:Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;

    invoke-static {v6}, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->-get0(Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "File Close error"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_2
    :try_start_3
    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get3()Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler$QualityResults;->this$1:Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;

    invoke-static {v6}, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->-get0(Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " doesn\'t exist or there are something wrong on handling it"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_6
    if-eqz v4, :cond_5

    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    :catch_2
    move-exception v1

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get3()Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler$QualityResults;->this$1:Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;

    invoke-static {v6}, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->-get0(Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "File Close error"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catchall_0
    move-exception v6

    :goto_3
    if-eqz v4, :cond_7

    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_7
    :goto_4
    throw v6

    :catch_3
    move-exception v1

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get3()Z

    move-result v7

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler$QualityResults;->this$1:Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;

    invoke-static {v7}, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->-get0(Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "File Close error"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :catchall_1
    move-exception v6

    move-object v4, v5

    goto :goto_3

    :catch_4
    move-exception v0

    move-object v4, v5

    goto :goto_2
.end method
