.class Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;
.super Landroid/os/Handler;
.source "WifiConnectivityMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiConnectivityMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QualityResultHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler$QualityResults;
    }
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field private mCurrentTime:J

.field private mCurrentURL:Ljava/lang/String;

.field private mCurrentURLIdx:I

.field private mDateFormat:Landroid/icu/text/SimpleDateFormat;

.field private mDnsResolver:Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;

.field private mId:I

.field private mOngoingId:I

.field private mPreviousPrivateIP:Ljava/net/InetAddress;

.field private mQualityResults:Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler$QualityResults;

.field private mRxBytesBeforeQC:J

.field private mRxPacketsBeforeQC:J

.field private mStartRSSI:I

.field private mStartRate:I

.field final synthetic this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;


# direct methods
.method static synthetic -get0(Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;)Landroid/icu/text/SimpleDateFormat;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->mDateFormat:Landroid/icu/text/SimpleDateFormat;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;)Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->mDnsResolver:Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->notifyDisconnect()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wifi/WifiConnectivityMonitor;Landroid/os/Looper;I)V
    .locals 6

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    iput-object p1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const-string/jumbo v0, "WifiConnectivityMonitor.QualityResultHandler_"

    iput-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->TAG:Ljava/lang/String;

    new-instance v0, Landroid/icu/text/SimpleDateFormat;

    const-string/jumbo v1, "HH:mm:ss"

    invoke-direct {v0, v1}, Landroid/icu/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->mDateFormat:Landroid/icu/text/SimpleDateFormat;

    iput-wide v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->mCurrentTime:J

    iput v2, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->mStartRSSI:I

    iput v2, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->mStartRate:I

    iput v2, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->mOngoingId:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->mCurrentURLIdx:I

    iput-object v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->mCurrentURL:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->mPreviousPrivateIP:Ljava/net/InetAddress;

    iput-wide v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->mRxPacketsBeforeQC:J

    iput-wide v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->mRxBytesBeforeQC:J

    iput p3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->mId:I

    iget v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->mId:I

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler$QualityResults;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler$QualityResults;-><init>(Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->mQualityResults:Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler$QualityResults;

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->TAG:Ljava/lang/String;

    new-instance v0, Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;

    const-string/jumbo v1, "WifiConnectivityMonitor.DnsResolver"

    invoke-direct {v0, p1, p0, v1}, Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;-><init>(Lcom/android/server/wifi/WifiConnectivityMonitor;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->mDnsResolver:Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get0()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "create QualityResultHandler_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method private notifyDisconnect()V
    .locals 5

    const/4 v3, 0x0

    const/4 v4, 0x0

    iput v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->mOngoingId:I

    iget-object v2, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set76(Lcom/android/server/wifi/WifiConnectivityMonitor;Z)Z

    iget-object v2, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v2}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get89(Lcom/android/server/wifi/WifiConnectivityMonitor;)Ljava/net/Socket;

    move-result-object v2

    if-eqz v2, :cond_1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v2}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get89(Lcom/android/server/wifi/WifiConnectivityMonitor;)Ljava/net/Socket;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/Socket;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v2}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get89(Lcom/android/server/wifi/WifiConnectivityMonitor;)Ljava/net/Socket;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/Socket;->shutdownInput()V

    :cond_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v2}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get89(Lcom/android/server/wifi/WifiConnectivityMonitor;)Ljava/net/Socket;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v2, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v2, v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set75(Lcom/android/server/wifi/WifiConnectivityMonitor;Ljava/net/Socket;)Ljava/net/Socket;

    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v2}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get88(Lcom/android/server/wifi/WifiConnectivityMonitor;)Ljavax/net/ssl/SSLSocket;

    move-result-object v2

    if-eqz v2, :cond_2

    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v2}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get88(Lcom/android/server/wifi/WifiConnectivityMonitor;)Ljavax/net/ssl/SSLSocket;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/net/ssl/SSLSocket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iget-object v2, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v2, v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set74(Lcom/android/server/wifi/WifiConnectivityMonitor;Ljavax/net/ssl/SSLSocket;)Ljavax/net/ssl/SSLSocket;

    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->mDnsResolver:Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;->quit()V

    iget-object v2, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->mDnsResolver:Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;

    invoke-static {v2}, Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;->-wrap0(Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;)V

    return-void

    :catch_0
    move-exception v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v2, v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set75(Lcom/android/server/wifi/WifiConnectivityMonitor;Ljava/net/Socket;)Ljava/net/Socket;

    goto :goto_0

    :catch_1
    move-exception v0

    iget-object v2, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v2, v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set75(Lcom/android/server/wifi/WifiConnectivityMonitor;Ljava/net/Socket;)Ljava/net/Socket;

    goto :goto_0

    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v3, v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set75(Lcom/android/server/wifi/WifiConnectivityMonitor;Ljava/net/Socket;)Ljava/net/Socket;

    throw v2

    :catch_2
    move-exception v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v2, v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set74(Lcom/android/server/wifi/WifiConnectivityMonitor;Ljavax/net/ssl/SSLSocket;)Ljavax/net/ssl/SSLSocket;

    goto :goto_1

    :catch_3
    move-exception v0

    iget-object v2, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v2, v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set74(Lcom/android/server/wifi/WifiConnectivityMonitor;Ljavax/net/ssl/SSLSocket;)Ljavax/net/ssl/SSLSocket;

    goto :goto_1

    :catchall_1
    move-exception v2

    iget-object v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v3, v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set74(Lcom/android/server/wifi/WifiConnectivityMonitor;Ljavax/net/ssl/SSLSocket;)Ljavax/net/ssl/SSLSocket;

    throw v2
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 29

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->mId:I

    if-eqz v2, :cond_0

    return-void

    :cond_0
    const/16 v24, -0x1

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->mOngoingId:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v2}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap2(Lcom/android/server/wifi/WifiConnectivityMonitor;)Landroid/net/wifi/WifiInfo;

    move-result-object v20

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unknown command : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->what:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v8, v24

    :cond_1
    :goto_0
    return-void

    :sswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v2}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get31(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v3}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get31(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;

    move-result-object v3

    iget v3, v3, Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;->qcTriggerTemp:I

    iput v3, v2, Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;->qcTrigger:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set64(Lcom/android/server/wifi/WifiConnectivityMonitor;Z)Z

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->mCurrentURL:Ljava/lang/String;

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const v3, 0x21020

    if-ne v2, v3, :cond_1d

    if-lez v22, :cond_3

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get0()Z

    move-result v2

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "redundant QC request detected!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move/from16 v8, v24

    goto :goto_0

    :cond_3
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->mOngoingId:I

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v2}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get31(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;

    move-result-object v2

    move/from16 v0, v22

    iput v0, v2, Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;->qcId:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v2}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get31(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v3}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get31(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;

    move-result-object v3

    iget v3, v3, Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;->qcTrigger:I

    iput v3, v2, Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;->qcTriggerAtQC:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v2}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get81(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;

    move-result-object v2

    const/4 v3, 0x0

    iput v3, v2, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->mQCRedirectCount:I

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get3()Z

    move-result v2

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mOngoingId : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->mOngoingId:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, ", hybridQcMode: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const/4 v2, 0x1

    move/from16 v0, v17

    if-ne v0, v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v2}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get31(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;

    move-result-object v2

    const/4 v3, 0x2

    iput v3, v2, Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;->qcType:I

    :cond_5
    :goto_1
    const/4 v2, 0x2

    move/from16 v0, v17

    if-ne v0, v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v2}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get31(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;

    move-result-object v2

    const/16 v3, 0xb

    iput v3, v2, Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;->qcStep:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v2}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get91(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;

    move-result-object v2

    const v3, 0x21065

    const/4 v5, 0x0

    const/4 v6, 0x0

    move/from16 v0, v22

    invoke-static {v2, v3, v0, v5, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    move/from16 v8, v24

    goto/16 :goto_0

    :cond_6
    const/4 v2, 0x2

    move/from16 v0, v17

    if-ne v0, v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v2}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get31(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;

    move-result-object v2

    const/4 v3, 0x3

    iput v3, v2, Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;->qcType:I

    goto :goto_1

    :cond_7
    const/4 v2, 0x3

    move/from16 v0, v17

    if-ne v0, v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v2}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get31(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;

    move-result-object v2

    const/4 v3, 0x4

    iput v3, v2, Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;->qcType:I

    goto :goto_1

    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v2}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get18(Lcom/android/server/wifi/WifiConnectivityMonitor;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v2}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get81(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->setUrlList()V

    :cond_9
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->mCurrentURLIdx:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_a

    new-instance v25, Ljava/util/Random;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    move-object/from16 v0, v25

    invoke-direct {v0, v2, v3}, Ljava/util/Random;-><init>(J)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v2}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get81(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->mUrlList:[Ljava/lang/String;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x2

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->mCurrentURLIdx:I

    :cond_a
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v3}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get81(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;

    move-result-object v3

    iget v3, v3, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->mQCSets:I

    if-ne v2, v3, :cond_d

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->mCurrentURLIdx:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v3}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get81(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;

    move-result-object v3

    iget v3, v3, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->mQCSets:I

    add-int/lit8 v3, v3, -0x1

    if-lt v2, v3, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v2}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap5(Lcom/android/server/wifi/WifiConnectivityMonitor;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_d

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->setToDefaultURL()V

    :goto_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->mCurrentURLIdx:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v3}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get81(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->mUrlList:[Ljava/lang/String;

    array-length v3, v3

    if-lt v2, v3, :cond_b

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->mCurrentURLIdx:I

    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v2}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get7(Lcom/android/server/wifi/WifiConnectivityMonitor;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_11

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->mCurrentURLIdx:I

    if-nez v2, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v2}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get96(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/sns/SnsBigDataSCNT;

    move-result-object v2

    iget v3, v2, Lcom/samsung/android/server/wifi/sns/SnsBigDataSCNT;->mUrlGlobal01:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/samsung/android/server/wifi/sns/SnsBigDataSCNT;->mUrlGlobal01:I

    :cond_c
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v2}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get31(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->mCurrentURLIdx:I

    iput v3, v2, Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;->qcUrlIndex:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v2}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get81(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->mUrlList:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->mCurrentURLIdx:I

    aget-object v2, v2, v3

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->mCurrentURL:Ljava/lang/String;

    const/4 v2, 0x3

    move/from16 v0, v17

    if-ne v0, v2, :cond_20

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v2}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get31(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;

    move-result-object v2

    const/16 v3, 0xb

    iput v3, v2, Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;->qcStep:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v2}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get91(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->mCurrentURL:Ljava/lang/String;

    const v5, 0x21065

    const/4 v6, 0x0

    move/from16 v0, v22

    invoke-static {v2, v5, v0, v6, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    move/from16 v8, v24

    goto/16 :goto_0

    :cond_d
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->mCurrentURLIdx:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->mCurrentURLIdx:I

    goto/16 :goto_2

    :cond_e
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->mCurrentURLIdx:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v2}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get96(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/sns/SnsBigDataSCNT;

    move-result-object v2

    iget v3, v2, Lcom/samsung/android/server/wifi/sns/SnsBigDataSCNT;->mUrlGlobal02:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/samsung/android/server/wifi/sns/SnsBigDataSCNT;->mUrlGlobal02:I

    goto :goto_3

    :cond_f
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->mCurrentURLIdx:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v2}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get96(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/sns/SnsBigDataSCNT;

    move-result-object v2

    iget v3, v2, Lcom/samsung/android/server/wifi/sns/SnsBigDataSCNT;->mUrlGlobal03:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/samsung/android/server/wifi/sns/SnsBigDataSCNT;->mUrlGlobal03:I

    goto/16 :goto_3

    :cond_10
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->mCurrentURLIdx:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v2}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get96(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/sns/SnsBigDataSCNT;

    move-result-object v2

    iget v3, v2, Lcom/samsung/android/server/wifi/sns/SnsBigDataSCNT;->mUrlGlobalDefault:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/samsung/android/server/wifi/sns/SnsBigDataSCNT;->mUrlGlobalDefault:I

    goto/16 :goto_3

    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v2}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get7(Lcom/android/server/wifi/WifiConnectivityMonitor;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_16

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->mCurrentURLIdx:I

    if-nez v2, :cond_12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v2}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get96(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/sns/SnsBigDataSCNT;

    move-result-object v2

    iget v3, v2, Lcom/samsung/android/server/wifi/sns/SnsBigDataSCNT;->mUrlChina01:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/samsung/android/server/wifi/sns/SnsBigDataSCNT;->mUrlChina01:I

    goto/16 :goto_3

    :cond_12
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->mCurrentURLIdx:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v2}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get96(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/sns/SnsBigDataSCNT;

    move-result-object v2

    iget v3, v2, Lcom/samsung/android/server/wifi/sns/SnsBigDataSCNT;->mUrlChina02:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/samsung/android/server/wifi/sns/SnsBigDataSCNT;->mUrlChina02:I

    goto/16 :goto_3

    :cond_13
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->mCurrentURLIdx:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v2}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get96(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/sns/SnsBigDataSCNT;

    move-result-object v2

    iget v3, v2, Lcom/samsung/android/server/wifi/sns/SnsBigDataSCNT;->mUrlChina03:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/samsung/android/server/wifi/sns/SnsBigDataSCNT;->mUrlChina03:I

    goto/16 :goto_3

    :cond_14
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->mCurrentURLIdx:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_15

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v2}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get96(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/sns/SnsBigDataSCNT;

    move-result-object v2

    iget v3, v2, Lcom/samsung/android/server/wifi/sns/SnsBigDataSCNT;->mUrlChina04:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/samsung/android/server/wifi/sns/SnsBigDataSCNT;->mUrlChina04:I

    goto/16 :goto_3

    :cond_15
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->mCurrentURLIdx:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v2}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get96(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/sns/SnsBigDataSCNT;

    move-result-object v2

    iget v3, v2, Lcom/samsung/android/server/wifi/sns/SnsBigDataSCNT;->mUrlChinaDefault:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/samsung/android/server/wifi/sns/SnsBigDataSCNT;->mUrlChinaDefault:I

    goto/16 :goto_3

    :cond_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v2}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get7(Lcom/android/server/wifi/WifiConnectivityMonitor;)I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1a

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->mCurrentURLIdx:I

    if-nez v2, :cond_17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v2}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get96(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/sns/SnsBigDataSCNT;

    move-result-object v2

    iget v3, v2, Lcom/samsung/android/server/wifi/sns/SnsBigDataSCNT;->mUrlKorea01:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/samsung/android/server/wifi/sns/SnsBigDataSCNT;->mUrlKorea01:I

    goto/16 :goto_3

    :cond_17
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->mCurrentURLIdx:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_18

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v2}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get96(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/sns/SnsBigDataSCNT;

    move-result-object v2

    iget v3, v2, Lcom/samsung/android/server/wifi/sns/SnsBigDataSCNT;->mUrlKorea02:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/samsung/android/server/wifi/sns/SnsBigDataSCNT;->mUrlKorea02:I

    goto/16 :goto_3

    :cond_18
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->mCurrentURLIdx:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_19

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v2}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get96(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/sns/SnsBigDataSCNT;

    move-result-object v2

    iget v3, v2, Lcom/samsung/android/server/wifi/sns/SnsBigDataSCNT;->mUrlKorea03:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/samsung/android/server/wifi/sns/SnsBigDataSCNT;->mUrlKorea03:I

    goto/16 :goto_3

    :cond_19
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->mCurrentURLIdx:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v2}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get96(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/sns/SnsBigDataSCNT;

    move-result-object v2

    iget v3, v2, Lcom/samsung/android/server/wifi/sns/SnsBigDataSCNT;->mUrlKoreaDefault:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/samsung/android/server/wifi/sns/SnsBigDataSCNT;->mUrlKoreaDefault:I

    goto/16 :goto_3

    :cond_1a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v2}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get7(Lcom/android/server/wifi/WifiConnectivityMonitor;)I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_c

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->mCurrentURLIdx:I

    if-nez v2, :cond_1b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v2}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get96(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/sns/SnsBigDataSCNT;

    move-result-object v2

    iget v3, v2, Lcom/samsung/android/server/wifi/sns/SnsBigDataSCNT;->mUrlAGG01:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/samsung/android/server/wifi/sns/SnsBigDataSCNT;->mUrlAGG01:I

    goto/16 :goto_3

    :cond_1b
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->mCurrentURLIdx:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v2}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get96(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/sns/SnsBigDataSCNT;

    move-result-object v2

    iget v3, v2, Lcom/samsung/android/server/wifi/sns/SnsBigDataSCNT;->mUrlAGG02:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/samsung/android/server/wifi/sns/SnsBigDataSCNT;->mUrlAGG02:I

    goto/16 :goto_3

    :cond_1c
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->mCurrentURLIdx:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v2}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get96(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/sns/SnsBigDataSCNT;

    move-result-object v2

    iget v3, v2, Lcom/samsung/android/server/wifi/sns/SnsBigDataSCNT;->mUrlAGGDefault:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/samsung/android/server/wifi/sns/SnsBigDataSCNT;->mUrlAGGDefault:I

    goto/16 :goto_3

    :cond_1d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v2}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get81(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;

    move-result-object v2

    iget v3, v2, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->mQCRedirectCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->mQCRedirectCount:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v2}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get81(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v2, 0xa

    if-le v3, v2, :cond_1f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mQCRedirectCount > "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get81(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v5, 0xa

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v2}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get29(Lcom/android/server/wifi/WifiConnectivityMonitor;)I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v3}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get81(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;

    move-result-object v3

    iget v3, v3, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->mPassBytesAggressiveMode:I

    move/from16 v0, v22

    invoke-static {v2, v0, v3}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap38(Lcom/android/server/wifi/WifiConnectivityMonitor;II)V

    :goto_4
    move/from16 v8, v24

    goto/16 :goto_0

    :cond_1e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v3}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get81(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;

    move-result-object v3

    iget v3, v3, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->mPassBytes:I

    move/from16 v0, v22

    invoke-static {v2, v0, v3}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap38(Lcom/android/server/wifi/WifiConnectivityMonitor;II)V

    goto :goto_4

    :cond_1f
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->mCurrentURL:Ljava/lang/String;

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get3()Z

    move-result v2

    if-eqz v2, :cond_20

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "[QC_REDIRECT]"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get3()Z

    move-result v2

    if-eqz v2, :cond_21

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mCurrentURL : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->mCurrentURL:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_21
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->mCurrentURL:Ljava/lang/String;

    if-nez v2, :cond_22

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "There is no resolved URL"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->mOngoingId:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v2}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get31(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;

    move-result-object v2

    const/4 v3, 0x1

    iput v3, v2, Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;->error:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v2}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get31(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    const/4 v5, 0x2

    aget-object v3, v3, v5

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v3

    iput v3, v2, Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;->line:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    const/4 v3, 0x1

    move/from16 v0, v22

    invoke-static {v2, v0, v3}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap38(Lcom/android/server/wifi/WifiConnectivityMonitor;II)V

    move/from16 v8, v24

    goto/16 :goto_0

    :cond_22
    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get3()Z

    move-result v2

    if-eqz v2, :cond_23

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->mQualityResults:Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler$QualityResults;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler$QualityResults;->clear()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->mCurrentTime:J

    invoke-virtual/range {v20 .. v20}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->mStartRSSI:I

    invoke-virtual/range {v20 .. v20}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->mStartRate:I

    :cond_23
    const-string/jumbo v2, "wlan0"

    invoke-static {v2}, Landroid/net/TrafficStats;->getRxPackets(Ljava/lang/String;)J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->mRxPacketsBeforeQC:J

    const-string/jumbo v2, "wlan0"

    invoke-static {v2}, Landroid/net/TrafficStats;->getRxBytes(Ljava/lang/String;)J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->mRxBytesBeforeQC:J

    :try_start_0
    new-instance v28, Ljava/net/URL;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->mCurrentURL:Ljava/lang/String;

    move-object/from16 v0, v28

    invoke-direct {v0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v2}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get31(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;

    move-result-object v2

    const/4 v3, 0x7

    iput v3, v2, Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;->qcStep:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v2}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get81(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v4, 0xbb8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v2}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get29(Lcom/android/server/wifi/WifiConnectivityMonitor;)I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_24

    const/16 v4, 0x5dc

    :cond_24
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->mDnsResolver:Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;

    invoke-virtual/range {v28 .. v28}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v3}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get29(Lcom/android/server/wifi/WifiConnectivityMonitor;)I

    move-result v3

    const/4 v5, 0x3

    if-ne v3, v5, :cond_26

    const/4 v7, 0x1

    :goto_5
    const/4 v3, 0x2

    const/4 v5, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;->requestDnsQuerying(IIZLjava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_25

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "DNS List is empty, ignore dns checking"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->mOngoingId:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v2}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get31(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;

    move-result-object v2

    const/4 v3, 0x1

    iput v3, v2, Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;->error:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v2}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get31(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    const/4 v5, 0x2

    aget-object v3, v3, v5

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v3

    iput v3, v2, Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;->line:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    const/4 v3, 0x0

    move/from16 v0, v22

    invoke-static {v2, v0, v3}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap38(Lcom/android/server/wifi/WifiConnectivityMonitor;II)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_25
    :goto_6
    move/from16 v8, v24

    goto/16 :goto_0

    :cond_26
    const/4 v7, 0x0

    goto :goto_5

    :catch_0
    move-exception v19

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "couldn\'t resolve a URL : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->mCurrentURL:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->mOngoingId:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v2}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get31(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;

    move-result-object v2

    const/4 v3, 0x1

    iput v3, v2, Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;->error:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v2}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get31(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    const/4 v5, 0x2

    aget-object v3, v3, v5

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v3

    iput v3, v2, Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;->line:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    const/4 v3, 0x1

    move/from16 v0, v22

    invoke-static {v2, v0, v3}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap38(Lcom/android/server/wifi/WifiConnectivityMonitor;II)V

    goto :goto_6

    :sswitch_1
    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get3()Z

    move-result v2

    if-eqz v2, :cond_27

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "[DNS_PING_RESULT_SPECIFIC]"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_27
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v2}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get27(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;

    move-result-object v15

    if-eqz v15, :cond_28

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v2}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get34(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;

    move-result-object v2

    if-ne v15, v2, :cond_29

    :cond_28
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "currentBssid is null."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->notifyDisconnect()V

    move/from16 v8, v24

    goto/16 :goto_0

    :cond_29
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->mDnsResolver:Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg2:I

    const/4 v6, 0x1

    invoke-virtual {v2, v3, v5, v6}, Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;->checkDnsResult(III)I

    move-result v16

    const/4 v2, 0x2

    move/from16 v0, v16

    if-ne v0, v2, :cond_2b

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get3()Z

    move-result v2

    if-eqz v2, :cond_2a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "wait until the responses about remained DNS Request arrive!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2a
    move/from16 v8, v24

    goto/16 :goto_0

    :cond_2b
    const/16 v26, 0x0

    const/16 v27, -0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v2}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get31(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->mOngoingId:I

    iput v3, v2, Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;->qcId:I

    const/4 v2, 0x4

    move/from16 v0, v16

    if-ne v0, v2, :cond_38

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->mPreviousPrivateIP:Ljava/net/InetAddress;

    if-eqz v2, :cond_35

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->mPreviousPrivateIP:Ljava/net/InetAddress;

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_33

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get3()Z

    move-result v2

    if-eqz v2, :cond_2c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "DNS_CHECK_RESULT_PRIVATE_IP!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v2}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get31(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;

    move-result-object v2

    const/4 v3, 0x2

    iput v3, v2, Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;->error:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v2}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get31(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    const/4 v5, 0x2

    aget-object v3, v3, v5

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v3

    iput v3, v2, Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;->line:I

    const/16 v27, 0x0

    :cond_2d
    :goto_7
    const/4 v2, 0x1

    move/from16 v0, v16

    if-eq v0, v2, :cond_2e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v2}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get69(Lcom/android/server/wifi/WifiConnectivityMonitor;)Z

    move-result v2

    if-eqz v2, :cond_44

    :cond_2e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v2}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get69(Lcom/android/server/wifi/WifiConnectivityMonitor;)Z

    move-result v2

    if-eqz v2, :cond_41

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set58(Lcom/android/server/wifi/WifiConnectivityMonitor;Z)Z

    :cond_2f
    :goto_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->mPreviousPrivateIP:Ljava/net/InetAddress;

    if-eqz v2, :cond_30

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Change resolvedIP DNS result to Previous Private IP"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->mPreviousPrivateIP:Ljava/net/InetAddress;

    move-object/from16 v26, v0

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->mPreviousPrivateIP:Ljava/net/InetAddress;

    :cond_30
    if-nez v26, :cond_31

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v26, v0

    check-cast v26, Ljava/net/InetAddress;

    :cond_31
    move-object/from16 v0, v26

    instance-of v2, v0, Ljava/net/Inet4Address;

    if-eqz v2, :cond_43

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get3()Z

    move-result v2

    if-eqz v2, :cond_32

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "DNS Response SELECTED:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v26 .. v26}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_32
    if-eqz v26, :cond_42

    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v2}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get91(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;

    move-result-object v3

    move-object/from16 v0, v26

    check-cast v0, Ljava/net/Inet4Address;

    move-object v2, v0

    invoke-static {v2}, Landroid/net/NetworkUtils;->inetAddressToInt(Ljava/net/Inet4Address;)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->mCurrentURL:Ljava/lang/String;

    const v6, 0x21024

    move/from16 v0, v22

    invoke-static {v3, v6, v0, v2, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    move/from16 v8, v24

    goto/16 :goto_0

    :cond_33
    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get3()Z

    move-result v2

    if-eqz v2, :cond_34

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "DNS_CHECK_RESULT_different_PRIVATE_IP!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_34
    const/16 v16, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->mPreviousPrivateIP:Ljava/net/InetAddress;

    move-object/from16 v26, v0

    goto/16 :goto_7

    :cond_35
    const-string/jumbo v2, "wlan0"

    invoke-static {v2}, Landroid/net/TrafficStats;->getRxPackets(Ljava/lang/String;)J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->mRxPacketsBeforeQC:J

    const-string/jumbo v2, "wlan0"

    invoke-static {v2}, Landroid/net/TrafficStats;->getRxBytes(Ljava/lang/String;)J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->mRxBytesBeforeQC:J

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/net/InetAddress;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->mPreviousPrivateIP:Ljava/net/InetAddress;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v2}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get31(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;

    move-result-object v2

    const/4 v3, 0x2

    iput v3, v2, Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;->qcStep:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->mDnsResolver:Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v2}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get81(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v2}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get81(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;

    move-result-object v2

    iget-object v9, v2, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->DEFAULT_URL_STRING:Ljava/lang/String;

    const/4 v6, 0x1

    const/16 v7, 0xbb8

    const/4 v8, 0x0

    const/4 v10, 0x1

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;->requestDnsQuerying(IIZLjava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_36

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "DNS List is empty, ignore dns checking"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v2}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get31(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;

    move-result-object v2

    const/4 v3, 0x3

    iput v3, v2, Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;->error:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v2}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get31(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    const/4 v5, 0x2

    aget-object v3, v3, v5

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v3

    iput v3, v2, Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;->line:I

    const/16 v27, 0x0

    goto/16 :goto_7

    :cond_36
    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get3()Z

    move-result v2

    if-eqz v2, :cond_37

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "[second DNS query requested!]"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_37
    move/from16 v8, v24

    goto/16 :goto_0

    :cond_38
    const/4 v2, 0x3

    move/from16 v0, v16

    if-eq v0, v2, :cond_39

    const/4 v2, 0x5

    move/from16 v0, v16

    if-ne v0, v2, :cond_3a

    :cond_39
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->mPreviousPrivateIP:Ljava/net/InetAddress;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v2}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get31(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;

    move-result-object v2

    const/16 v3, 0xa

    iput v3, v2, Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;->error:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v2}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get31(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    const/4 v5, 0x2

    aget-object v3, v3, v5

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v3

    iput v3, v2, Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;->line:I

    const/16 v27, 0x0

    goto/16 :goto_7

    :cond_3a
    if-nez v16, :cond_2d

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get3()Z

    move-result v2

    if-eqz v2, :cond_3b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "[DNS_CHECK_RESULT_FAILURE]"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v2}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get29(Lcom/android/server/wifi/WifiConnectivityMonitor;)I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_3c

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v26, v0

    check-cast v26, Ljava/net/InetAddress;

    :cond_3c
    if-eqz v26, :cond_3d

    move-object/from16 v0, v26

    instance-of v2, v0, Ljava/net/Inet4Address;

    if-eqz v2, :cond_3d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set58(Lcom/android/server/wifi/WifiConnectivityMonitor;Z)Z

    :goto_9
    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get3()Z

    move-result v2

    if-eqz v2, :cond_2d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "result: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, " , mNeedToUsePreviousIP: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get69(Lcom/android/server/wifi/WifiConnectivityMonitor;)Z

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    :cond_3d
    if-eqz v26, :cond_3e

    move-object/from16 v0, v26

    instance-of v2, v0, Ljava/net/Inet4Address;

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_3e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v2}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get31(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;

    move-result-object v2

    const/4 v3, 0x4

    iput v3, v2, Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;->error:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v2}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get31(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    const/4 v5, 0x2

    aget-object v3, v3, v5

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v3

    iput v3, v2, Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;->line:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "DNS, IPv6 DETECTED"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v2}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap48(Lcom/android/server/wifi/WifiConnectivityMonitor;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap45(Lcom/android/server/wifi/WifiConnectivityMonitor;Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v2}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get81(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v27, 0xf423f

    goto/16 :goto_9

    :cond_3e
    const-string/jumbo v2, "wlan0"

    invoke-static {v2}, Landroid/net/TrafficStats;->getRxPackets(Ljava/lang/String;)J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->mRxPacketsBeforeQC:J

    sub-long/2addr v2, v6

    long-to-int v0, v2

    move/from16 v23, v0

    const-string/jumbo v2, "wlan0"

    invoke-static {v2}, Landroid/net/TrafficStats;->getRxBytes(Ljava/lang/String;)J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->mRxBytesBeforeQC:J

    sub-long/2addr v2, v6

    long-to-int v14, v2

    if-nez v23, :cond_3f

    if-nez v14, :cond_3f

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->mPreviousPrivateIP:Ljava/net/InetAddress;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v2}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get31(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;

    move-result-object v2

    const/4 v3, 0x5

    iput v3, v2, Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;->error:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v2}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get31(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    const/4 v5, 0x2

    aget-object v3, v3, v5

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v3

    iput v3, v2, Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;->line:I

    const/16 v27, 0x1

    goto/16 :goto_9

    :cond_3f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v2}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get81(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move/from16 v0, v23

    mul-int/lit16 v0, v0, 0x5cc

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v0, v14, :cond_40

    move/from16 v27, v14

    :cond_40
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v2}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get81(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    div-int/lit8 v27, v27, 0x3

    goto/16 :goto_9

    :cond_41
    if-eqz v15, :cond_2f

    const/4 v2, 0x1

    invoke-static {v15, v2}, Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;->-set1(Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;Z)Z

    goto/16 :goto_8

    :catch_1
    move-exception v13

    const/16 v27, 0x1

    :cond_42
    :goto_a
    move/from16 v8, v24

    goto/16 :goto_0

    :cond_43
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "The resolved IP is not IPv4"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->mOngoingId:I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->mPreviousPrivateIP:Ljava/net/InetAddress;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v2}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get31(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;

    move-result-object v2

    const/4 v3, 0x4

    iput v3, v2, Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;->error:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v2}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get31(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    const/4 v5, 0x2

    aget-object v3, v3, v5

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v3

    iput v3, v2, Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;->line:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v2}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap48(Lcom/android/server/wifi/WifiConnectivityMonitor;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap45(Lcom/android/server/wifi/WifiConnectivityMonitor;Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v3}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get81(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v3, 0xf423f

    move/from16 v0, v22

    invoke-static {v2, v0, v3}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap38(Lcom/android/server/wifi/WifiConnectivityMonitor;II)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "DNS SUCCESS, IPv6 DETECTED"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    :cond_44
    if-ltz v27, :cond_42

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->mOngoingId:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move/from16 v0, v22

    move/from16 v1, v27

    invoke-static {v2, v0, v1}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap38(Lcom/android/server/wifi/WifiConnectivityMonitor;II)V

    goto :goto_a

    :sswitch_2
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->notifyDisconnect()V

    move/from16 v8, v24

    goto/16 :goto_0

    :sswitch_3
    if-nez v22, :cond_46

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get0()Z

    move-result v2

    if-eqz v2, :cond_45

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "QC result was already reported!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_45
    move/from16 v8, v24

    goto/16 :goto_0

    :cond_46
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v18, v0

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get0()Z

    move-result v2

    if-eqz v2, :cond_47

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[QC_RESULT_RECEIVED] id:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_47
    move/from16 v0, v22

    move/from16 v1, v18

    if-eq v0, v1, :cond_48

    move/from16 v8, v24

    goto/16 :goto_0

    :cond_48
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    if-lez v2, :cond_4a

    move-object/from16 v0, p1

    iget v8, v0, Landroid/os/Message;->arg1:I

    :goto_b
    if-gez v8, :cond_4c

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get3()Z

    move-result v2

    if-eqz v2, :cond_49

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "[QC_GOOD_RX_DETECTED]"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_49
    if-nez v22, :cond_4b

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get3()Z

    move-result v2

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "There is no ongoing QC!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_4a
    const/4 v8, 0x1

    goto :goto_b

    :cond_4b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->mDnsResolver:Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;->quit()V

    const v2, 0x2105b

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->removeMessages(I)V

    const v2, 0x2105c

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->removeMessages(I)V

    const v2, 0x2105d

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->removeMessages(I)V

    const v2, 0x2105e

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->removeMessages(I)V

    move/from16 v18, v22

    move-object/from16 v0, p1

    iget v8, v0, Landroid/os/Message;->arg1:I

    :cond_4c
    :goto_c
    if-gez v8, :cond_4f

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v18, v0

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get0()Z

    move-result v2

    if-eqz v2, :cond_4d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[QC_RESOLVE_HOSTNAME_TIMEOUT/QC_GET_TIMEOUT/QC_SOCKET_TIMEOUT] id:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4d
    move/from16 v0, v22

    move/from16 v1, v18

    if-ne v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v2}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get91(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->getRxPacketsDuringQC()I

    move-result v23

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v2}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get81(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move/from16 v0, v23

    mul-int/lit16 v8, v0, 0x5cc

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v2}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get91(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->getRxBytesDuringQC()I

    move-result v14

    if-ge v8, v14, :cond_4e

    move v8, v14

    :cond_4e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v2}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get81(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    div-int/lit8 v8, v8, 0x3

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get3()Z

    move-result v2

    if-eqz v2, :cond_4f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "qualityResult : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4f
    :goto_d
    if-nez v22, :cond_50

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get3()Z

    move-result v2

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "QC result was already reported!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_50
    if-gez v8, :cond_53

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v18, v0

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get0()Z

    move-result v2

    if-eqz v2, :cond_51

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[QUALITY_CHECK_TIMEOUT] id:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_51
    move/from16 v0, v22

    move/from16 v1, v18

    if-ne v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v2}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get91(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->getRxBytesDuringQC()I

    move-result v8

    if-nez v8, :cond_52

    const/4 v8, 0x1

    :cond_52
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v2}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get110(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiStateMachine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiStateMachine;->isConnected()Z

    move-result v2

    if-nez v2, :cond_53

    const/4 v8, -0x1

    :cond_53
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v2}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get89(Lcom/android/server/wifi/WifiConnectivityMonitor;)Ljava/net/Socket;

    move-result-object v2

    if-eqz v2, :cond_55

    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v2}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get89(Lcom/android/server/wifi/WifiConnectivityMonitor;)Ljava/net/Socket;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/Socket;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_54

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v2}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get89(Lcom/android/server/wifi/WifiConnectivityMonitor;)Ljava/net/Socket;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/Socket;->shutdownInput()V

    :cond_54
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v2}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get89(Lcom/android/server/wifi/WifiConnectivityMonitor;)Ljava/net/Socket;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/Socket;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set75(Lcom/android/server/wifi/WifiConnectivityMonitor;Ljava/net/Socket;)Ljava/net/Socket;

    :cond_55
    :goto_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v2}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get88(Lcom/android/server/wifi/WifiConnectivityMonitor;)Ljavax/net/ssl/SSLSocket;

    move-result-object v2

    if-eqz v2, :cond_56

    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v2}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get88(Lcom/android/server/wifi/WifiConnectivityMonitor;)Ljavax/net/ssl/SSLSocket;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/net/ssl/SSLSocket;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set74(Lcom/android/server/wifi/WifiConnectivityMonitor;Ljavax/net/ssl/SSLSocket;)Ljavax/net/ssl/SSLSocket;

    :cond_56
    :goto_f
    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get3()Z

    move-result v2

    if-eqz v2, :cond_57

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->mQualityResults:Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler$QualityResults;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->mCurrentTime:J

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->mStartRSSI:I

    invoke-virtual/range {v20 .. v20}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v10

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->mStartRate:I

    invoke-virtual/range {v20 .. v20}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v12

    invoke-virtual/range {v5 .. v12}, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler$QualityResults;->setValues(JIIIII)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->mQualityResults:Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler$QualityResults;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler$QualityResults;->writeResults()V

    :cond_57
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->mOngoingId:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move/from16 v0, v18

    invoke-static {v2, v0, v8}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap38(Lcom/android/server/wifi/WifiConnectivityMonitor;II)V

    goto/16 :goto_0

    :catch_2
    move-exception v21

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set75(Lcom/android/server/wifi/WifiConnectivityMonitor;Ljava/net/Socket;)Ljava/net/Socket;

    goto :goto_e

    :catch_3
    move-exception v19

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set75(Lcom/android/server/wifi/WifiConnectivityMonitor;Ljava/net/Socket;)Ljava/net/Socket;

    goto :goto_e

    :catchall_0
    move-exception v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    const/4 v5, 0x0

    invoke-static {v3, v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set75(Lcom/android/server/wifi/WifiConnectivityMonitor;Ljava/net/Socket;)Ljava/net/Socket;

    throw v2

    :catch_4
    move-exception v21

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set74(Lcom/android/server/wifi/WifiConnectivityMonitor;Ljavax/net/ssl/SSLSocket;)Ljavax/net/ssl/SSLSocket;

    goto :goto_f

    :catch_5
    move-exception v19

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set74(Lcom/android/server/wifi/WifiConnectivityMonitor;Ljavax/net/ssl/SSLSocket;)Ljavax/net/ssl/SSLSocket;

    goto :goto_f

    :catchall_1
    move-exception v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    const/4 v5, 0x0

    invoke-static {v3, v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set74(Lcom/android/server/wifi/WifiConnectivityMonitor;Ljavax/net/ssl/SSLSocket;)Ljavax/net/ssl/SSLSocket;

    throw v2

    :sswitch_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v2}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get56(Lcom/android/server/wifi/WifiConnectivityMonitor;)Z

    move-result v2

    if-eqz v2, :cond_58

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set43(Lcom/android/server/wifi/WifiConnectivityMonitor;Z)Z

    :cond_58
    :sswitch_5
    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get0()Z

    move-result v2

    if-eqz v2, :cond_59

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const v3, 0x2103e

    if-ne v2, v3, :cond_5b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "[EVENT_SCAN_COMPLETE]"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_59
    :goto_10
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const v3, 0x2103e

    if-ne v2, v3, :cond_5a

    const v2, 0x21046

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->removeMessages(I)V

    :cond_5a
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->mOngoingId:I

    if-eqz v2, :cond_5d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v2}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap10(Lcom/android/server/wifi/WifiConnectivityMonitor;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_5d

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->notifyDisconnect()V

    move/from16 v8, v24

    goto/16 :goto_0

    :cond_5b
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const v3, 0x21046

    if-ne v2, v3, :cond_5c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "[EVENT_SCAN_TIMEOUT]"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    :cond_5c
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const v3, 0x2103d

    if-ne v2, v3, :cond_59

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "[EVENT_SCAN_STARTED]"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    :cond_5d
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->readOngoingId()I

    move-result v2

    if-eqz v2, :cond_5e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set42(Lcom/android/server/wifi/WifiConnectivityMonitor;Z)Z

    :cond_5e
    move/from16 v8, v24

    goto/16 :goto_0

    :sswitch_6
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const v3, 0x21043

    if-ne v2, v3, :cond_61

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get3()Z

    move-result v2

    if-eqz v2, :cond_5f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v2}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get16(Lcom/android/server/wifi/WifiConnectivityMonitor;)Landroid/content/Context;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[EVENT_NETWORK_PROPERTIES_CHANGED] "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    :cond_5f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[EVENT_NETWORK_PROPERTIES_CHANGED] "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_60

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_61

    :cond_60
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v2}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get33(Lcom/android/server/wifi/WifiConnectivityMonitor;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->mDnsResolver:Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;

    invoke-static {v3}, Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;->-get0(Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;)Landroid/net/DnsPinger;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/DnsPinger;->getDnsList()Ljava/util/List;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set25(Lcom/android/server/wifi/WifiConnectivityMonitor;Ljava/util/List;)Ljava/util/List;

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get0()Z

    move-result v2

    if-eqz v2, :cond_61

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mDnsServerList : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get33(Lcom/android/server/wifi/WifiConnectivityMonitor;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_61
    :sswitch_7
    if-nez v22, :cond_6b

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get0()Z

    move-result v2

    if-eqz v2, :cond_63

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const v3, 0x2103e

    if-eq v2, v3, :cond_62

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const v3, 0x21046

    if-ne v2, v3, :cond_64

    :cond_62
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "No QC ongoing at EVENT_SCAN_COMPLETE"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_63
    :goto_11
    move/from16 v8, v24

    goto/16 :goto_0

    :cond_64
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const v3, 0x2103d

    if-ne v2, v3, :cond_65

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "No QC ongoing at EVENT_SCAN_STARTED"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    :cond_65
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const v3, 0x21043

    if-ne v2, v3, :cond_66

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "No QC ongoing at EVENT_NETWORK_PROPERTIES_CHANGED"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    :cond_66
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const v3, 0x21044

    if-ne v2, v3, :cond_67

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "No QC ongoing at EVENT_DHCP_SESSION_STARTED"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    :cond_67
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const v3, 0x21045

    if-ne v2, v3, :cond_68

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "No QC ongoing at EVENT_DHCP_SESSION_COMPLETE"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    :cond_68
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const v3, 0x21049

    if-ne v2, v3, :cond_69

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "No QC ongoing at EVENT_ROAM_STARTED"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    :cond_69
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const v3, 0x2104a

    if-ne v2, v3, :cond_6a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "No QC ongoing at EVENT_ROAM_COMPLETE"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    :cond_6a
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const v3, 0x21048

    if-ne v2, v3, :cond_63

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "No QC ongoing at EVENT_QC_PARAMETER_UPDATE"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    :cond_6b
    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get0()Z

    move-result v2

    if-eqz v2, :cond_6c

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const v3, 0x21043

    if-ne v2, v3, :cond_71

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Ongoing QC: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, " EVENT_NETWORK_PROPERTIES_CHANGED while QC - stop the QC"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6c
    :goto_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->mDnsResolver:Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;->quit()V

    const v2, 0x2105b

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->removeMessages(I)V

    const v2, 0x2105c

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->removeMessages(I)V

    const v2, 0x2105d

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->removeMessages(I)V

    const v2, 0x2105e

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v2}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get91(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;

    move-result-object v2

    const v3, 0x21065

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->removeMessages(I)V

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const v3, 0x21043

    if-eq v2, v3, :cond_6d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v2}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap11(Lcom/android/server/wifi/WifiConnectivityMonitor;)Z

    move-result v2

    if-eqz v2, :cond_76

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set76(Lcom/android/server/wifi/WifiConnectivityMonitor;Z)Z

    :cond_6d
    :goto_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v2}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get89(Lcom/android/server/wifi/WifiConnectivityMonitor;)Ljava/net/Socket;

    move-result-object v2

    if-eqz v2, :cond_6f

    :try_start_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v2}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get89(Lcom/android/server/wifi/WifiConnectivityMonitor;)Ljava/net/Socket;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/Socket;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_6e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v2}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get89(Lcom/android/server/wifi/WifiConnectivityMonitor;)Ljava/net/Socket;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/Socket;->shutdownInput()V

    :cond_6e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v2}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get89(Lcom/android/server/wifi/WifiConnectivityMonitor;)Ljava/net/Socket;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/Socket;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set75(Lcom/android/server/wifi/WifiConnectivityMonitor;Ljava/net/Socket;)Ljava/net/Socket;

    :cond_6f
    :goto_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v2}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get88(Lcom/android/server/wifi/WifiConnectivityMonitor;)Ljavax/net/ssl/SSLSocket;

    move-result-object v2

    if-eqz v2, :cond_70

    :try_start_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v2}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get88(Lcom/android/server/wifi/WifiConnectivityMonitor;)Ljavax/net/ssl/SSLSocket;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/net/ssl/SSLSocket;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_9
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_8
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set74(Lcom/android/server/wifi/WifiConnectivityMonitor;Ljavax/net/ssl/SSLSocket;)Ljavax/net/ssl/SSLSocket;

    :cond_70
    :goto_15
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->mOngoingId:I

    move/from16 v8, v24

    goto/16 :goto_0

    :cond_71
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const v3, 0x21044

    if-ne v2, v3, :cond_72

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Ongoing QC: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, " EVENT_DHCP_SESSION_STARTED while QC - stop the QC and reschedule another QC"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_12

    :cond_72
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const v3, 0x21045

    if-ne v2, v3, :cond_73

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Ongoing QC: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, " EVENT_DHCP_SESSION_COMPLETE while QC - stop the QC and reschedule another QC"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_12

    :cond_73
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const v3, 0x21049

    if-ne v2, v3, :cond_74

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Ongoing QC: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, " EVENT_ROAM_STARTED while QC - stop the QC and reschedule another QC"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_12

    :cond_74
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const v3, 0x2104a

    if-ne v2, v3, :cond_75

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Ongoing QC: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, " EVENT_ROAM_COMPLETE while QC - stop the QC and reschedule another QC"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_12

    :cond_75
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const v3, 0x21048

    if-ne v2, v3, :cond_6c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Ongoing QC: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, " EVENT_QC_PARAMETER_UPDATE while QC - stop the QC"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_12

    :cond_76
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v2}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get77(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->restartQCCancelledByScanOrDhcp()V

    goto/16 :goto_13

    :catch_6
    move-exception v21

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set75(Lcom/android/server/wifi/WifiConnectivityMonitor;Ljava/net/Socket;)Ljava/net/Socket;

    goto/16 :goto_14

    :catch_7
    move-exception v19

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set75(Lcom/android/server/wifi/WifiConnectivityMonitor;Ljava/net/Socket;)Ljava/net/Socket;

    goto/16 :goto_14

    :catchall_2
    move-exception v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    const/4 v5, 0x0

    invoke-static {v3, v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set75(Lcom/android/server/wifi/WifiConnectivityMonitor;Ljava/net/Socket;)Ljava/net/Socket;

    throw v2

    :catch_8
    move-exception v21

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set74(Lcom/android/server/wifi/WifiConnectivityMonitor;Ljavax/net/ssl/SSLSocket;)Ljavax/net/ssl/SSLSocket;

    goto/16 :goto_15

    :catch_9
    move-exception v19

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set74(Lcom/android/server/wifi/WifiConnectivityMonitor;Ljavax/net/ssl/SSLSocket;)Ljavax/net/ssl/SSLSocket;

    goto/16 :goto_15

    :catchall_3
    move-exception v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    const/4 v5, 0x0

    invoke-static {v3, v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set74(Lcom/android/server/wifi/WifiConnectivityMonitor;Ljavax/net/ssl/SSLSocket;)Ljavax/net/ssl/SSLSocket;

    throw v2

    :sswitch_8
    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get3()Z

    move-result v2

    if-eqz v2, :cond_77

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "[QC_FAILED_BY_HIGH_LOSS]"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_77
    if-nez v22, :cond_79

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get3()Z

    move-result v2

    if-eqz v2, :cond_78

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "There is no ongoing QC!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_78
    move/from16 v8, v24

    goto/16 :goto_0

    :cond_79
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->mDnsResolver:Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;->quit()V

    const v2, 0x2105b

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->removeMessages(I)V

    const v2, 0x2105c

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->removeMessages(I)V

    const v2, 0x2105d

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->removeMessages(I)V

    const v2, 0x2105e

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->removeMessages(I)V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->mOngoingId:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v2}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get89(Lcom/android/server/wifi/WifiConnectivityMonitor;)Ljava/net/Socket;

    move-result-object v2

    if-eqz v2, :cond_7b

    :try_start_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v2}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get89(Lcom/android/server/wifi/WifiConnectivityMonitor;)Ljava/net/Socket;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/Socket;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_7a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v2}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get89(Lcom/android/server/wifi/WifiConnectivityMonitor;)Ljava/net/Socket;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/Socket;->shutdownInput()V

    :cond_7a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v2}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get89(Lcom/android/server/wifi/WifiConnectivityMonitor;)Ljava/net/Socket;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/Socket;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_b
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_a
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set75(Lcom/android/server/wifi/WifiConnectivityMonitor;Ljava/net/Socket;)Ljava/net/Socket;

    :cond_7b
    :goto_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v2}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get88(Lcom/android/server/wifi/WifiConnectivityMonitor;)Ljavax/net/ssl/SSLSocket;

    move-result-object v2

    if-eqz v2, :cond_7c

    :try_start_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v2}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get88(Lcom/android/server/wifi/WifiConnectivityMonitor;)Ljavax/net/ssl/SSLSocket;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/net/ssl/SSLSocket;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_d
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_c
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set74(Lcom/android/server/wifi/WifiConnectivityMonitor;Ljavax/net/ssl/SSLSocket;)Ljavax/net/ssl/SSLSocket;

    :cond_7c
    :goto_17
    move/from16 v8, v24

    goto/16 :goto_0

    :catch_a
    move-exception v21

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set75(Lcom/android/server/wifi/WifiConnectivityMonitor;Ljava/net/Socket;)Ljava/net/Socket;

    goto :goto_16

    :catch_b
    move-exception v19

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set75(Lcom/android/server/wifi/WifiConnectivityMonitor;Ljava/net/Socket;)Ljava/net/Socket;

    goto :goto_16

    :catchall_4
    move-exception v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    const/4 v5, 0x0

    invoke-static {v3, v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set75(Lcom/android/server/wifi/WifiConnectivityMonitor;Ljava/net/Socket;)Ljava/net/Socket;

    throw v2

    :catch_c
    move-exception v21

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set74(Lcom/android/server/wifi/WifiConnectivityMonitor;Ljavax/net/ssl/SSLSocket;)Ljavax/net/ssl/SSLSocket;

    goto :goto_17

    :catch_d
    move-exception v19

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set74(Lcom/android/server/wifi/WifiConnectivityMonitor;Ljavax/net/ssl/SSLSocket;)Ljavax/net/ssl/SSLSocket;

    goto :goto_17

    :catchall_5
    move-exception v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    const/4 v5, 0x0

    invoke-static {v3, v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set74(Lcom/android/server/wifi/WifiConnectivityMonitor;Ljavax/net/ssl/SSLSocket;)Ljavax/net/ssl/SSLSocket;

    throw v2

    :sswitch_9
    move/from16 v8, v24

    goto/16 :goto_c

    :sswitch_a
    move/from16 v8, v24

    goto/16 :goto_d

    :sswitch_b
    move/from16 v8, v24

    goto/16 :goto_b

    :sswitch_data_0
    .sparse-switch
        0x21017 -> :sswitch_2
        0x21020 -> :sswitch_0
        0x21025 -> :sswitch_3
        0x21026 -> :sswitch_b
        0x21027 -> :sswitch_0
        0x2102f -> :sswitch_8
        0x2103d -> :sswitch_5
        0x2103e -> :sswitch_5
        0x21043 -> :sswitch_6
        0x21044 -> :sswitch_7
        0x21045 -> :sswitch_7
        0x21046 -> :sswitch_4
        0x21048 -> :sswitch_7
        0x21049 -> :sswitch_7
        0x2104a -> :sswitch_7
        0x2105b -> :sswitch_a
        0x2105c -> :sswitch_9
        0x2105d -> :sswitch_9
        0x2105e -> :sswitch_9
        0x86005 -> :sswitch_1
    .end sparse-switch
.end method

.method readOngoingId()I
    .locals 1

    iget v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->mOngoingId:I

    return v0
.end method

.method setToDefaultURL()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v0}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get81(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->mUrlList:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->mCurrentURLIdx:I

    return-void
.end method
