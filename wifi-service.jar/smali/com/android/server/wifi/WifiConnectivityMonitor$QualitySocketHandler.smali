.class Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;
.super Landroid/os/Handler;
.source "WifiConnectivityMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiConnectivityMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "QualitySocketHandler"
.end annotation


# static fields
.field private static final PORT_HTTP:I = 0x50

.field private static final PORT_HTTPS:I = 0x1bb

.field private static final PORT_MPTCP:I = 0x5603


# instance fields
.field private TAG:Ljava/lang/String;

.field private mRxBytesBeforeQC:J

.field private mRxPacketsBeforeQC:J

.field final synthetic this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;


# direct methods
.method public constructor <init>(Lcom/android/server/wifi/WifiConnectivityMonitor;Landroid/os/Looper;)V
    .locals 4

    const-wide/16 v2, 0x0

    iput-object p1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const-string/jumbo v0, "WifiConnectivityMonitor.QualitySocketHandler"

    iput-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->TAG:Ljava/lang/String;

    iput-wide v2, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->mRxPacketsBeforeQC:J

    iput-wide v2, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->mRxBytesBeforeQC:J

    return-void
.end method

.method private sendGetMethod(Ljava/net/Socket;ILjava/lang/String;IZ)V
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/RuntimeException;,
            Ljava/lang/AssertionError;
        }
    .end annotation

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get3()Z

    move-result v17

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->TAG:Ljava/lang/String;

    move-object/from16 v17, v0

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "[URL] "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get58(Lcom/android/server/wifi/WifiConnectivityMonitor;)Z

    move-result v17

    if-eqz v17, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get85(Lcom/android/server/wifi/WifiConnectivityMonitor;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v4

    :goto_0
    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get3()Z

    move-result v17

    if-eqz v17, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->TAG:Ljava/lang/String;

    move-object/from16 v18, v0

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "addr : "

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get58(Lcom/android/server/wifi/WifiConnectivityMonitor;)Z

    move-result v17

    if-eqz v17, :cond_7

    const-string/jumbo v17, " (Proxy)"

    :goto_1
    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    new-instance v16, Ljava/net/URL;

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    const/16 v13, 0x50

    if-eqz p5, :cond_2

    const/16 v13, 0x1bb

    :cond_2
    invoke-virtual/range {v16 .. v16}, Ljava/net/URL;->getPort()I

    move-result v17

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_3

    invoke-virtual/range {v16 .. v16}, Ljava/net/URL;->getPort()I

    move-result v13

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get58(Lcom/android/server/wifi/WifiConnectivityMonitor;)Z

    move-result v17

    if-eqz v17, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get86(Lcom/android/server/wifi/WifiConnectivityMonitor;)I

    move-result v13

    :cond_4
    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get0()Z

    move-result v17

    if-eqz v17, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->TAG:Ljava/lang/String;

    move-object/from16 v17, v0

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "getProtocol: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v16 .. v16}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    const-string/jumbo v17, "http"

    invoke-virtual/range {v16 .. v16}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_8

    const-string/jumbo v17, "https"

    invoke-virtual/range {v16 .. v16}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    :goto_2
    if-nez v17, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->TAG:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string/jumbo v18, "No http(s) request!"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v17, Ljava/net/SocketException;

    invoke-direct/range {v17 .. v17}, Ljava/net/SocketException;-><init>()V

    throw v17

    :cond_6
    invoke-static/range {p2 .. p2}, Landroid/net/NetworkUtils;->intToInetAddress(I)Ljava/net/InetAddress;

    move-result-object v4

    goto/16 :goto_0

    :cond_7
    const-string/jumbo v17, " "

    goto/16 :goto_1

    :cond_8
    const/16 v17, 0x1

    goto :goto_2

    :cond_9
    const-string/jumbo v6, "/"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get58(Lcom/android/server/wifi/WifiConnectivityMonitor;)Z

    move-result v17

    if-eqz v17, :cond_d

    const-string/jumbo v17, ""

    invoke-virtual/range {v16 .. v16}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_c

    const-string/jumbo v17, "http://%s%s"

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    invoke-static/range {p2 .. p2}, Landroid/net/NetworkUtils;->intToInetAddress(I)Ljava/net/InetAddress;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    aput-object v19, v18, v20

    invoke-virtual/range {v16 .. v16}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x1

    aput-object v19, v18, v20

    invoke-static/range {v17 .. v18}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    :cond_a
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap2(Lcom/android/server/wifi/WifiConnectivityMonitor;)Landroid/net/wifi/WifiInfo;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v17

    invoke-static/range {v17 .. v17}, Landroid/net/NetworkUtils;->intToInetAddress(I)Ljava/net/InetAddress;

    move-result-object v8

    if-nez p1, :cond_e

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get0()Z

    move-result v17

    if-eqz v17, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->TAG:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string/jumbo v18, "socket closed before connect"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    new-instance v17, Ljava/net/SocketException;

    invoke-direct/range {v17 .. v17}, Ljava/net/SocketException;-><init>()V

    throw v17

    :cond_c
    const-string/jumbo v17, "http://%s/"

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    invoke-static/range {p2 .. p2}, Landroid/net/NetworkUtils;->intToInetAddress(I)Ljava/net/InetAddress;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    aput-object v19, v18, v20

    invoke-static/range {v17 .. v18}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    :cond_d
    const-string/jumbo v17, ""

    invoke-virtual/range {v16 .. v16}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_a

    invoke-virtual/range {v16 .. v16}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    :cond_e
    const-string/jumbo v17, "wlan0"

    invoke-static/range {v17 .. v17}, Landroid/net/TrafficStats;->getRxPackets(Ljava/lang/String;)J

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->mRxPacketsBeforeQC:J

    const-string/jumbo v17, "wlan0"

    invoke-static/range {v17 .. v17}, Landroid/net/TrafficStats;->getRxBytes(Ljava/lang/String;)J

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->mRxBytesBeforeQC:J

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v9

    move/from16 v0, p4

    iput v0, v9, Landroid/os/Message;->arg1:I

    if-nez p4, :cond_11

    const v17, 0x2102d

    move/from16 v0, v17

    iput v0, v9, Landroid/os/Message;->what:I

    const/16 v17, 0x0

    move/from16 v0, v17

    iput v0, v9, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get10(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get81(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 v18, 0x2710

    move-object/from16 v0, v17

    move-wide/from16 v1, v18

    invoke-virtual {v0, v9, v1, v2}, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get31(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;

    move-result-object v17

    const/16 v18, 0x4

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;->qcStep:I

    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get68(Lcom/android/server/wifi/WifiConnectivityMonitor;)Z

    move-result v17

    if-eqz v17, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->TAG:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string/jumbo v18, "MPTCP is enabled."

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v17, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setReuseAddress(Z)V

    new-instance v17, Ljava/net/InetSocketAddress;

    const/16 v18, 0x5603

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v0, v8, v1}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/net/Socket;->bind(Ljava/net/SocketAddress;)V

    :goto_5
    :try_start_0
    sget-object v17, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-virtual/range {p1 .. p1}, Ljava/net/Socket;->getFileDescriptor$()Ljava/io/FileDescriptor;

    move-result-object v18

    sget v19, Landroid/system/OsConstants;->SOL_SOCKET:I

    sget v20, Landroid/system/OsConstants;->SO_BINDTODEVICE:I

    const-string/jumbo v21, "wlan0"

    invoke-interface/range {v17 .. v21}, Llibcore/io/Os;->setsockoptIfreq(Ljava/io/FileDescriptor;IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get37(Lcom/android/server/wifi/WifiConnectivityMonitor;)Z

    move-result v17

    if-eqz v17, :cond_14

    const/16 v15, 0x1388

    :goto_6
    if-lez p4, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get29(Lcom/android/server/wifi/WifiConnectivityMonitor;)I

    move-result v17

    const/16 v18, 0x3

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get81(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v15, 0xbb8

    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-static/range {v17 .. v18}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set27(Lcom/android/server/wifi/WifiConnectivityMonitor;Z)Z

    new-instance v17, Ljava/net/InetSocketAddress;

    move-object/from16 v0, v17

    invoke-direct {v0, v4, v13}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v15}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    if-lez p4, :cond_15

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get3()Z

    move-result v17

    if-eqz v17, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->TAG:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string/jumbo v18, "socket Connected!"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get90(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;

    move-result-object v17

    const v18, 0x2105d

    invoke-virtual/range {v17 .. v18}, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->removeMessages(I)V

    return-void

    :cond_11
    const v17, 0x2105d

    move/from16 v0, v17

    iput v0, v9, Landroid/os/Message;->what:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get90(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get81(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 v18, 0x2710

    move-object/from16 v0, v17

    move-wide/from16 v1, v18

    invoke-virtual {v0, v9, v1, v2}, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get31(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;

    move-result-object v17

    const/16 v18, 0x8

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;->qcStep:I

    goto/16 :goto_4

    :cond_12
    new-instance v17, Ljava/net/InetSocketAddress;

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v0, v8, v1}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/net/Socket;->bind(Ljava/net/SocketAddress;)V

    goto/16 :goto_5

    :catch_0
    move-exception v5

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get3()Z

    move-result v17

    if-eqz v17, :cond_13

    invoke-virtual {v5}, Landroid/system/ErrnoException;->printStackTrace()V

    :cond_13
    new-instance v17, Ljava/net/SocketException;

    invoke-direct/range {v17 .. v17}, Ljava/net/SocketException;-><init>()V

    throw v17

    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get81(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v15, 0xbb8

    goto/16 :goto_6

    :cond_15
    if-eqz p5, :cond_16

    move-object/from16 v17, p1

    check-cast v17, Ljavax/net/ssl/SSLSocket;

    invoke-virtual/range {v17 .. v17}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    :cond_16
    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get3()Z

    move-result v17

    if-eqz v17, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->TAG:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string/jumbo v18, "socket Connected!"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_17
    if-nez p4, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get10(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;

    move-result-object v17

    const v18, 0x2102d

    invoke-virtual/range {v17 .. v18}, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;->removeMessages(I)V

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v10

    const v17, 0x2102d

    move/from16 v0, v17

    iput v0, v10, Landroid/os/Message;->what:I

    const/16 v17, 0x1

    move/from16 v0, v17

    iput v0, v10, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get10(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get81(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 v18, 0xbb8

    move-object/from16 v0, v17

    move-wide/from16 v1, v18

    invoke-virtual {v0, v10, v1, v2}, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :goto_7
    const-string/jumbo v17, "wlan0"

    invoke-static/range {v17 .. v17}, Landroid/net/TrafficStats;->getRxPackets(Ljava/lang/String;)J

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->mRxPacketsBeforeQC:J

    const-string/jumbo v17, "wlan0"

    invoke-static/range {v17 .. v17}, Landroid/net/TrafficStats;->getRxBytes(Ljava/lang/String;)J

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->mRxBytesBeforeQC:J

    invoke-virtual/range {p1 .. p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v14

    new-instance v12, Ljava/io/OutputStreamWriter;

    invoke-direct {v12, v14}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get81(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;

    move-result-object v17

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->mPropertiesModelName:Ljava/lang/String;

    move-object/from16 v17, v0

    if-nez v17, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get81(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;

    move-result-object v17

    const-string/jumbo v18, "ro.product.model"

    invoke-static/range {v18 .. v18}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->mPropertiesModelName:Ljava/lang/String;

    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get81(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;

    move-result-object v17

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->mPropertiesOsVersion:Ljava/lang/String;

    move-object/from16 v17, v0

    if-nez v17, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get81(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;

    move-result-object v17

    const-string/jumbo v18, "ro.build.version.release"

    invoke-static/range {v18 .. v18}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->mPropertiesOsVersion:Ljava/lang/String;

    :cond_19
    const/4 v11, 0x0

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get0()Z

    move-result v17

    if-eqz v17, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get81(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;

    move-result-object v17

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->mUserAgentModelName:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get81(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;

    move-result-object v17

    move-object/from16 v0, v17

    iget-object v11, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->mUserAgentModelName:Ljava/lang/String;

    :goto_8
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "GET "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, " HTTP/1.1\r\n"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "Host: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v16 .. v16}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, "\r\n"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    const-string/jumbo v17, "Connection: close\r\n"

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    const-string/jumbo v17, "Accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8\r\n"

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "User-Agent: Dalvik/2.1.0 (Linux; U; Android "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get81(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;

    move-result-object v18

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->mPropertiesOsVersion:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, "; "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, " Build/NRD90M\r\n"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    const-string/jumbo v17, "Accept-Encoding: gzip,deflate,sdch\r\n"

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    const-string/jumbo v17, "Accept-Language: en-GB,en;q=0.8,en-US;q=0.6,en;q=0.4\r\n"

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    const-string/jumbo v17, "\r\n"

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/io/OutputStreamWriter;->flush()V

    invoke-virtual {v14}, Ljava/io/OutputStream;->flush()V

    if-nez p4, :cond_20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get31(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;

    move-result-object v17

    const/16 v18, 0x5

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;->qcStep:I

    :goto_9
    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get3()Z

    move-result v17

    if-eqz v17, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->TAG:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string/jumbo v18, "socket.sendGetMethod!"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a
    return-void

    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get90(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;

    move-result-object v17

    const v18, 0x2105d

    invoke-virtual/range {v17 .. v18}, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->removeMessages(I)V

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v10

    const v17, 0x2105e

    move/from16 v0, v17

    iput v0, v10, Landroid/os/Message;->what:I

    move/from16 v0, p4

    iput v0, v10, Landroid/os/Message;->arg1:I

    if-eqz p5, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get90(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get81(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get81(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v18, 0x5

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    const-wide/16 v20, 0x3e8

    mul-long v18, v18, v20

    move-object/from16 v0, v17

    move-wide/from16 v1, v18

    invoke-virtual {v0, v10, v1, v2}, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_7

    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get90(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get81(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 v18, 0xbb8

    move-object/from16 v0, v17

    move-wide/from16 v1, v18

    invoke-virtual {v0, v10, v1, v2}, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_7

    :cond_1d
    const-string/jumbo v11, "SM-G930F"

    goto/16 :goto_8

    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get81(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;

    move-result-object v17

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->mPropertiesModelName:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get81(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;

    move-result-object v17

    move-object/from16 v0, v17

    iget-object v11, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->mPropertiesModelName:Ljava/lang/String;

    goto/16 :goto_8

    :cond_1f
    const-string/jumbo v11, "SM-G930F"

    goto/16 :goto_8

    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get31(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;

    move-result-object v17

    const/16 v18, 0x9

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;->qcStep:I

    goto/16 :goto_9
.end method


# virtual methods
.method getRxBytesDuringQC()I
    .locals 6

    const-string/jumbo v1, "wlan0"

    invoke-static {v1}, Landroid/net/TrafficStats;->getRxBytes(Ljava/lang/String;)J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->mRxBytesBeforeQC:J

    sub-long/2addr v2, v4

    long-to-int v0, v2

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get3()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getRxBytesDuringQC : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v0
.end method

.method getRxPacketsDuringQC()I
    .locals 6

    const-string/jumbo v1, "wlan0"

    invoke-static {v1}, Landroid/net/TrafficStats;->getRxPackets(Ljava/lang/String;)J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->mRxPacketsBeforeQC:J

    sub-long/2addr v2, v4

    long-to-int v0, v2

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get3()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getRxPacketsDuringQC : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 48

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    sparse-switch v4, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    const/16 v29, 0x0

    move-object/from16 v0, p1

    iget v8, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg2:I

    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get0()Z

    move-result v4

    if-eqz v4, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "[QUALITY_CHECK_START] id : "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get3()Z

    move-result v4

    if-eqz v4, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get16(Lcom/android/server/wifi/WifiConnectivityMonitor;)Landroid/content/Context;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "[QUALITY_CHECK_START] id : "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v9, 0x0

    invoke-static {v4, v5, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    :cond_2
    const/16 v36, 0x0

    const/16 v34, 0x0

    const/16 v41, 0x0

    const/16 v26, 0x0

    :try_start_0
    new-instance v42, Ljava/net/URL;

    move-object/from16 v0, v42

    invoke-direct {v0, v7}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string/jumbo v4, "https"

    invoke-virtual/range {v42 .. v42}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_12

    move-result v26

    move-object/from16 v41, v42

    :goto_1
    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get0()Z

    move-result v4

    if-eqz v4, :cond_3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "isSSLSocket: "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v9, ", url: "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/16 v4, -0xf9

    invoke-static {v4}, Landroid/net/TrafficStats;->getAndSetThreadStatsTag(I)I

    move-result v30

    const/4 v4, 0x1

    if-lt v8, v4, :cond_4

    :try_start_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get89(Lcom/android/server/wifi/WifiConnectivityMonitor;)Ljava/net/Socket;

    move-result-object v4

    if-eqz v4, :cond_9

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get89(Lcom/android/server/wifi/WifiConnectivityMonitor;)Ljava/net/Socket;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/Socket;->isClosed()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_9

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get88(Lcom/android/server/wifi/WifiConnectivityMonitor;)Ljavax/net/ssl/SSLSocket;

    move-result-object v4

    if-eqz v4, :cond_9

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get88(Lcom/android/server/wifi/WifiConnectivityMonitor;)Ljavax/net/ssl/SSLSocket;

    move-result-object v4

    invoke-virtual {v4}, Ljavax/net/ssl/SSLSocket;->isClosed()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_9

    :cond_4
    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get3()Z

    move-result v4

    if-eqz v4, :cond_5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "(mQCSocket != null) : "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get89(Lcom/android/server/wifi/WifiConnectivityMonitor;)Ljava/net/Socket;

    move-result-object v4

    if-eqz v4, :cond_7

    const/4 v4, 0x1

    :goto_2
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "(mQCSSLSocket != null) : "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get88(Lcom/android/server/wifi/WifiConnectivityMonitor;)Ljavax/net/ssl/SSLSocket;

    move-result-object v4

    if-eqz v4, :cond_8

    const/4 v4, 0x1

    :goto_3
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/AssertionError; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_5
    const/16 v29, 0x1

    :cond_6
    invoke-static/range {v30 .. v30}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get90(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->readOngoingId()I

    move-result v31

    if-eqz v29, :cond_c

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get0()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "couldn\'t test quality by problem on using socket!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :catch_0
    move-exception v21

    :goto_4
    const/16 v41, 0x0

    goto/16 :goto_1

    :cond_7
    const/4 v4, 0x0

    goto :goto_2

    :cond_8
    const/4 v4, 0x0

    goto :goto_3

    :cond_9
    const/16 v24, 0x0

    :goto_5
    :try_start_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get81(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;

    move-result-object v4

    iget v4, v4, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->mQCRepeat:I

    move/from16 v0, v24

    if-ge v0, v4, :cond_6

    if-eqz v26, :cond_a

    invoke-static {}, Ljavax/net/ssl/SSLSocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v22

    check-cast v22, Ljavax/net/ssl/SSLSocketFactory;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-virtual/range {v22 .. v22}, Ljavax/net/ssl/SSLSocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v4

    check-cast v4, Ljavax/net/ssl/SSLSocket;

    invoke-static {v5, v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set74(Lcom/android/server/wifi/WifiConnectivityMonitor;Ljavax/net/ssl/SSLSocket;)Ljavax/net/ssl/SSLSocket;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get88(Lcom/android/server/wifi/WifiConnectivityMonitor;)Ljavax/net/ssl/SSLSocket;

    move-result-object v5

    const/4 v9, 0x1

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->sendGetMethod(Ljava/net/Socket;ILjava/lang/String;IZ)V

    :goto_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get81(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;

    move-result-object v4

    iget v0, v4, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->mPassBytesAggressiveMode:I

    move/from16 v34, v0

    add-int/lit8 v24, v24, 0x1

    goto :goto_5

    :cond_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    new-instance v5, Ljava/net/Socket;

    invoke-direct {v5}, Ljava/net/Socket;-><init>()V

    invoke-static {v4, v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set75(Lcom/android/server/wifi/WifiConnectivityMonitor;Ljava/net/Socket;)Ljava/net/Socket;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get89(Lcom/android/server/wifi/WifiConnectivityMonitor;)Ljava/net/Socket;

    move-result-object v5

    const/4 v9, 0x0

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->sendGetMethod(Ljava/net/Socket;ILjava/lang/String;IZ)V
    :try_end_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/AssertionError; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_6

    :catch_1
    move-exception v40

    :try_start_4
    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get3()Z

    move-result v4

    if-eqz v4, :cond_b

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "SocketTimeoutException"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    const-string/jumbo v4, "wlan0"

    invoke-static {v4}, Landroid/net/TrafficStats;->getRxBytes(Ljava/lang/String;)J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->mRxBytesBeforeQC:J

    move-wide/from16 v46, v0

    sub-long v4, v4, v46

    long-to-int v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get81(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    div-int/lit8 v34, v4, 0x3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static/range {v30 .. v30}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get90(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->readOngoingId()I

    move-result v31

    if-eqz v29, :cond_27

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get0()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "couldn\'t test quality by problem on using socket!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_c
    if-nez v31, :cond_d

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get0()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "quality id["

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v9, "] was already timed out!"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get89(Lcom/android/server/wifi/WifiConnectivityMonitor;)Ljava/net/Socket;

    move-result-object v4

    if-eqz v4, :cond_f

    :try_start_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get89(Lcom/android/server/wifi/WifiConnectivityMonitor;)Ljava/net/Socket;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/Socket;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_e

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get89(Lcom/android/server/wifi/WifiConnectivityMonitor;)Ljava/net/Socket;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/Socket;->shutdownInput()V

    :cond_e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get89(Lcom/android/server/wifi/WifiConnectivityMonitor;)Ljava/net/Socket;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/Socket;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_11

    :cond_f
    :goto_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set75(Lcom/android/server/wifi/WifiConnectivityMonitor;Ljava/net/Socket;)Ljava/net/Socket;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get88(Lcom/android/server/wifi/WifiConnectivityMonitor;)Ljavax/net/ssl/SSLSocket;

    move-result-object v4

    if-eqz v4, :cond_10

    :try_start_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get88(Lcom/android/server/wifi/WifiConnectivityMonitor;)Ljavax/net/ssl/SSLSocket;

    move-result-object v4

    invoke-virtual {v4}, Ljavax/net/ssl/SSLSocket;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_10

    :cond_10
    :goto_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set74(Lcom/android/server/wifi/WifiConnectivityMonitor;Ljavax/net/ssl/SSLSocket;)Ljavax/net/ssl/SSLSocket;

    move/from16 v0, v31

    if-ne v8, v0, :cond_13

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get90(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;

    move-result-object v4

    const v5, 0x21027

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->hasMessages(I)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_13

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get0()Z

    move-result v4

    if-eqz v4, :cond_11

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "send qc result...id:"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get90(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;

    move-result-object v4

    const v5, 0x21025

    move/from16 v0, v34

    invoke-static {v4, v5, v0, v8}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    :cond_12
    :goto_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get90(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;

    move-result-object v4

    const v5, 0x2105c

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get90(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;

    move-result-object v4

    const v5, 0x2105d

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get90(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;

    move-result-object v4

    const v5, 0x2105e

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get90(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;

    move-result-object v4

    const v5, 0x2105b

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->removeMessages(I)V

    goto/16 :goto_0

    :cond_13
    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get0()Z

    move-result v4

    if-eqz v4, :cond_12

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "[id:%d, ongoingId:%d] Skip sending result"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v13, 0x0

    aput-object v10, v9, v13

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v13, 0x1

    aput-object v10, v9, v13

    invoke-static {v5, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    :catch_2
    move-exception v15

    :try_start_7
    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get3()Z

    move-result v4

    if-eqz v4, :cond_14

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "AssertionError occured : "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :cond_14
    const/16 v34, -0x1

    invoke-static/range {v30 .. v30}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get90(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->readOngoingId()I

    move-result v31

    if-eqz v29, :cond_15

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get0()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "couldn\'t test quality by problem on using socket!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_15
    if-nez v31, :cond_16

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get0()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "quality id["

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v9, "] was already timed out!"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_16
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get89(Lcom/android/server/wifi/WifiConnectivityMonitor;)Ljava/net/Socket;

    move-result-object v4

    if-eqz v4, :cond_18

    :try_start_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get89(Lcom/android/server/wifi/WifiConnectivityMonitor;)Ljava/net/Socket;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/Socket;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_17

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get89(Lcom/android/server/wifi/WifiConnectivityMonitor;)Ljava/net/Socket;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/Socket;->shutdownInput()V

    :cond_17
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get89(Lcom/android/server/wifi/WifiConnectivityMonitor;)Ljava/net/Socket;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/Socket;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_f

    :cond_18
    :goto_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set75(Lcom/android/server/wifi/WifiConnectivityMonitor;Ljava/net/Socket;)Ljava/net/Socket;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get88(Lcom/android/server/wifi/WifiConnectivityMonitor;)Ljavax/net/ssl/SSLSocket;

    move-result-object v4

    if-eqz v4, :cond_19

    :try_start_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get88(Lcom/android/server/wifi/WifiConnectivityMonitor;)Ljavax/net/ssl/SSLSocket;

    move-result-object v4

    invoke-virtual {v4}, Ljavax/net/ssl/SSLSocket;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_e

    :cond_19
    :goto_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set74(Lcom/android/server/wifi/WifiConnectivityMonitor;Ljavax/net/ssl/SSLSocket;)Ljavax/net/ssl/SSLSocket;

    move/from16 v0, v31

    if-ne v8, v0, :cond_1c

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get90(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;

    move-result-object v4

    const v5, 0x21027

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->hasMessages(I)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_1c

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get0()Z

    move-result v4

    if-eqz v4, :cond_1a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "send qc result...id:"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get90(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;

    move-result-object v4

    const v5, 0x21025

    move/from16 v0, v34

    invoke-static {v4, v5, v0, v8}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    :cond_1b
    :goto_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get90(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;

    move-result-object v4

    const v5, 0x2105c

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get90(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;

    move-result-object v4

    const v5, 0x2105d

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get90(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;

    move-result-object v4

    const v5, 0x2105e

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get90(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;

    move-result-object v4

    const v5, 0x2105b

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->removeMessages(I)V

    goto/16 :goto_0

    :cond_1c
    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get0()Z

    move-result v4

    if-eqz v4, :cond_1b

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "[id:%d, ongoingId:%d] Skip sending result"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v13, 0x0

    aput-object v10, v9, v13

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v13, 0x1

    aput-object v10, v9, v13

    invoke-static {v5, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    :catch_3
    move-exception v18

    :try_start_a
    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get3()Z

    move-result v4

    if-eqz v4, :cond_1d

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Exception occured : "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1d
    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get3()Z

    move-result v4

    if-eqz v4, :cond_1e

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :cond_1e
    const/16 v34, -0x1

    invoke-static/range {v30 .. v30}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get90(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->readOngoingId()I

    move-result v31

    if-eqz v29, :cond_1f

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get0()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "couldn\'t test quality by problem on using socket!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_1f
    if-nez v31, :cond_20

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get0()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "quality id["

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v9, "] was already timed out!"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_20
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get89(Lcom/android/server/wifi/WifiConnectivityMonitor;)Ljava/net/Socket;

    move-result-object v4

    if-eqz v4, :cond_22

    :try_start_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get89(Lcom/android/server/wifi/WifiConnectivityMonitor;)Ljava/net/Socket;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/Socket;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_21

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get89(Lcom/android/server/wifi/WifiConnectivityMonitor;)Ljava/net/Socket;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/Socket;->shutdownInput()V

    :cond_21
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get89(Lcom/android/server/wifi/WifiConnectivityMonitor;)Ljava/net/Socket;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/Socket;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_d

    :cond_22
    :goto_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set75(Lcom/android/server/wifi/WifiConnectivityMonitor;Ljava/net/Socket;)Ljava/net/Socket;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get88(Lcom/android/server/wifi/WifiConnectivityMonitor;)Ljavax/net/ssl/SSLSocket;

    move-result-object v4

    if-eqz v4, :cond_23

    :try_start_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get88(Lcom/android/server/wifi/WifiConnectivityMonitor;)Ljavax/net/ssl/SSLSocket;

    move-result-object v4

    invoke-virtual {v4}, Ljavax/net/ssl/SSLSocket;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_c

    :cond_23
    :goto_e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set74(Lcom/android/server/wifi/WifiConnectivityMonitor;Ljavax/net/ssl/SSLSocket;)Ljavax/net/ssl/SSLSocket;

    move/from16 v0, v31

    if-ne v8, v0, :cond_26

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get90(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;

    move-result-object v4

    const v5, 0x21027

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->hasMessages(I)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_26

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get0()Z

    move-result v4

    if-eqz v4, :cond_24

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "send qc result...id:"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_24
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get90(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;

    move-result-object v4

    const v5, 0x21025

    move/from16 v0, v34

    invoke-static {v4, v5, v0, v8}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    :cond_25
    :goto_f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get90(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;

    move-result-object v4

    const v5, 0x2105c

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get90(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;

    move-result-object v4

    const v5, 0x2105d

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get90(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;

    move-result-object v4

    const v5, 0x2105e

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get90(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;

    move-result-object v4

    const v5, 0x2105b

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->removeMessages(I)V

    goto/16 :goto_0

    :cond_26
    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get0()Z

    move-result v4

    if-eqz v4, :cond_25

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "[id:%d, ongoingId:%d] Skip sending result"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v13, 0x0

    aput-object v10, v9, v13

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v13, 0x1

    aput-object v10, v9, v13

    invoke-static {v5, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    :cond_27
    if-nez v31, :cond_28

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get0()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "quality id["

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v9, "] was already timed out!"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_28
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get89(Lcom/android/server/wifi/WifiConnectivityMonitor;)Ljava/net/Socket;

    move-result-object v4

    if-eqz v4, :cond_2a

    :try_start_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get89(Lcom/android/server/wifi/WifiConnectivityMonitor;)Ljava/net/Socket;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/Socket;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_29

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get89(Lcom/android/server/wifi/WifiConnectivityMonitor;)Ljava/net/Socket;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/Socket;->shutdownInput()V

    :cond_29
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get89(Lcom/android/server/wifi/WifiConnectivityMonitor;)Ljava/net/Socket;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/Socket;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_b

    :cond_2a
    :goto_10
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set75(Lcom/android/server/wifi/WifiConnectivityMonitor;Ljava/net/Socket;)Ljava/net/Socket;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get88(Lcom/android/server/wifi/WifiConnectivityMonitor;)Ljavax/net/ssl/SSLSocket;

    move-result-object v4

    if-eqz v4, :cond_2b

    :try_start_e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get88(Lcom/android/server/wifi/WifiConnectivityMonitor;)Ljavax/net/ssl/SSLSocket;

    move-result-object v4

    invoke-virtual {v4}, Ljavax/net/ssl/SSLSocket;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_a

    :cond_2b
    :goto_11
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set74(Lcom/android/server/wifi/WifiConnectivityMonitor;Ljavax/net/ssl/SSLSocket;)Ljavax/net/ssl/SSLSocket;

    move/from16 v0, v31

    if-ne v8, v0, :cond_2e

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get90(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;

    move-result-object v4

    const v5, 0x21027

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->hasMessages(I)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_2e

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get0()Z

    move-result v4

    if-eqz v4, :cond_2c

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "send qc result...id:"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get90(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;

    move-result-object v4

    const v5, 0x21025

    move/from16 v0, v34

    invoke-static {v4, v5, v0, v8}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    :cond_2d
    :goto_12
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get90(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;

    move-result-object v4

    const v5, 0x2105c

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get90(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;

    move-result-object v4

    const v5, 0x2105d

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get90(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;

    move-result-object v4

    const v5, 0x2105e

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get90(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;

    move-result-object v4

    const v5, 0x2105b

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->removeMessages(I)V

    goto/16 :goto_0

    :cond_2e
    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get0()Z

    move-result v4

    if-eqz v4, :cond_2d

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "[id:%d, ongoingId:%d] Skip sending result"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v13, 0x0

    aput-object v10, v9, v13

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v13, 0x1

    aput-object v10, v9, v13

    invoke-static {v5, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12

    :catchall_0
    move-exception v4

    invoke-static/range {v30 .. v30}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get90(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->readOngoingId()I

    move-result v31

    if-eqz v29, :cond_2f

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get0()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "couldn\'t test quality by problem on using socket!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_2f
    if-nez v31, :cond_30

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get0()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "quality id["

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v9, "] was already timed out!"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_30
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get89(Lcom/android/server/wifi/WifiConnectivityMonitor;)Ljava/net/Socket;

    move-result-object v5

    if-eqz v5, :cond_32

    :try_start_f
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get89(Lcom/android/server/wifi/WifiConnectivityMonitor;)Ljava/net/Socket;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/Socket;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_31

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get89(Lcom/android/server/wifi/WifiConnectivityMonitor;)Ljava/net/Socket;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/Socket;->shutdownInput()V

    :cond_31
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get89(Lcom/android/server/wifi/WifiConnectivityMonitor;)Ljava/net/Socket;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/Socket;->close()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_9

    :cond_32
    :goto_13
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    const/4 v9, 0x0

    invoke-static {v5, v9}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set75(Lcom/android/server/wifi/WifiConnectivityMonitor;Ljava/net/Socket;)Ljava/net/Socket;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get88(Lcom/android/server/wifi/WifiConnectivityMonitor;)Ljavax/net/ssl/SSLSocket;

    move-result-object v5

    if-eqz v5, :cond_33

    :try_start_10
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get88(Lcom/android/server/wifi/WifiConnectivityMonitor;)Ljavax/net/ssl/SSLSocket;

    move-result-object v5

    invoke-virtual {v5}, Ljavax/net/ssl/SSLSocket;->close()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_8

    :cond_33
    :goto_14
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    const/4 v9, 0x0

    invoke-static {v5, v9}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set74(Lcom/android/server/wifi/WifiConnectivityMonitor;Ljavax/net/ssl/SSLSocket;)Ljavax/net/ssl/SSLSocket;

    move/from16 v0, v31

    if-ne v8, v0, :cond_36

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get90(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;

    move-result-object v5

    const v9, 0x21027

    invoke-virtual {v5, v9}, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->hasMessages(I)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_36

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get0()Z

    move-result v5

    if-eqz v5, :cond_34

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "send qc result...id:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_34
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get90(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;

    move-result-object v5

    const v9, 0x21025

    move/from16 v0, v34

    invoke-static {v5, v9, v0, v8}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    :cond_35
    :goto_15
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get90(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;

    move-result-object v5

    const v9, 0x2105c

    invoke-virtual {v5, v9}, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get90(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;

    move-result-object v5

    const v9, 0x2105d

    invoke-virtual {v5, v9}, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get90(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;

    move-result-object v5

    const v9, 0x2105e

    invoke-virtual {v5, v9}, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get90(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;

    move-result-object v5

    const v9, 0x2105b

    invoke-virtual {v5, v9}, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->removeMessages(I)V

    throw v4

    :cond_36
    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get0()Z

    move-result v5

    if-eqz v5, :cond_35

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "[id:%d, ongoingId:%d] Skip sending result"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v14, 0x0

    aput-object v13, v10, v14

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v14, 0x1

    aput-object v13, v10, v14

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15

    :sswitch_1
    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get0()Z

    move-result v4

    if-eqz v4, :cond_37

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "[CONNECT_CAPTIVE_PORTAL]"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_37
    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->arg2:I

    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Ljava/lang/String;

    const/16 v23, 0x0

    const/16 v39, -0x1

    const/16 v37, 0x0

    new-instance v44, Landroid/os/Bundle;

    invoke-direct/range {v44 .. v44}, Landroid/os/Bundle;-><init>()V

    const/16 v4, -0xf9

    invoke-static {v4}, Landroid/net/TrafficStats;->getAndSetThreadStatsTag(I)I

    move-result v38

    :try_start_11
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    new-instance v5, Ljava/net/Socket;

    invoke-direct {v5}, Ljava/net/Socket;-><init>()V

    invoke-static {v4, v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set7(Lcom/android/server/wifi/WifiConnectivityMonitor;Ljava/net/Socket;)Ljava/net/Socket;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get11(Lcom/android/server/wifi/WifiConnectivityMonitor;)Ljava/net/Socket;

    move-result-object v10

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v9, p0

    invoke-direct/range {v9 .. v14}, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->sendGetMethod(Ljava/net/Socket;ILjava/lang/String;IZ)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get11(Lcom/android/server/wifi/WifiConnectivityMonitor;)Ljava/net/Socket;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v25

    new-instance v16, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    move-object/from16 v0, v25

    invoke-direct {v4, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v16

    invoke-direct {v0, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-virtual/range {v16 .. v16}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get31(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;

    move-result-object v4

    const/4 v5, 0x6

    iput v5, v4, Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;->qcStep:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get10(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;

    move-result-object v4

    const v5, 0x2102d

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;->removeMessages(I)V

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v28

    const v4, 0x2102d

    move-object/from16 v0, v28

    iput v4, v0, Landroid/os/Message;->what:I

    const/4 v4, 0x2

    move-object/from16 v0, v28

    iput v4, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get10(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get81(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 v46, 0xbb8

    move-object/from16 v0, v28

    move-wide/from16 v1, v46

    invoke-virtual {v4, v0, v1, v2}, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    if-eqz v23, :cond_3c

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0xc

    if-le v4, v5, :cond_3c

    const/16 v4, 0x9

    const/16 v5, 0xc

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "response code: "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v4, 0x64

    move/from16 v0, v17

    if-lt v0, v4, :cond_3c

    const/16 v4, 0x3e7

    move/from16 v0, v17

    if-ge v0, v4, :cond_3c

    move/from16 v39, v17

    const/16 v27, 0x0

    const/16 v33, 0x0

    :cond_38
    invoke-virtual/range {v16 .. v16}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v27

    if-eqz v27, :cond_3a

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_3a

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get3()Z

    move-result v4

    if-eqz v4, :cond_39

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "header : "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v27

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_39
    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x9

    if-le v4, v5, :cond_38

    const/4 v4, 0x0

    const/16 v5, 0x9

    move-object/from16 v0, v27

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "Location:"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_38

    const/16 v4, 0x9

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v33

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get3()Z

    move-result v4

    if-eqz v4, :cond_3a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "redirectURL : "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v33

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3a
    if-eqz v33, :cond_3b

    move-object/from16 v0, v33

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3b

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "same Location : "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v33

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v37, 0x1

    :cond_3b
    const-string/jumbo v4, "detectedUrl"

    move-object/from16 v0, v44

    invoke-virtual {v0, v4, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "redirectUrl"

    move-object/from16 v0, v44

    move-object/from16 v1, v33

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3c
    if-eqz v25, :cond_3d

    invoke-virtual/range {v25 .. v25}, Ljava/io/InputStream;->close()V

    const/16 v25, 0x0

    :cond_3d
    if-gez v39, :cond_42

    new-instance v4, Ljava/net/SocketException;

    invoke-direct {v4}, Ljava/net/SocketException;-><init>()V

    throw v4
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_4
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    :catch_4
    move-exception v19

    :try_start_12
    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get0()Z

    move-result v4

    if-eqz v4, :cond_3e

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Exception occured : "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3e
    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get0()Z

    move-result v4

    if-eqz v4, :cond_3f

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get11(Lcom/android/server/wifi/WifiConnectivityMonitor;)Ljava/net/Socket;

    move-result-object v4

    if-eqz v4, :cond_40

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get10(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;

    move-result-object v4

    const v5, 0x2102d

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get10(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;

    move-result-object v4

    const v5, 0x2102d

    const/4 v9, 0x3

    const/4 v10, -0x1

    invoke-static {v4, v5, v9, v10}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    :cond_40
    invoke-static/range {v38 .. v38}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get11(Lcom/android/server/wifi/WifiConnectivityMonitor;)Ljava/net/Socket;

    move-result-object v4

    if-eqz v4, :cond_0

    :try_start_13
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get11(Lcom/android/server/wifi/WifiConnectivityMonitor;)Ljava/net/Socket;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/Socket;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_41

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get11(Lcom/android/server/wifi/WifiConnectivityMonitor;)Ljava/net/Socket;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/Socket;->shutdownInput()V

    :cond_41
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get11(Lcom/android/server/wifi/WifiConnectivityMonitor;)Ljava/net/Socket;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/Socket;->close()V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_6

    :goto_16
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set7(Lcom/android/server/wifi/WifiConnectivityMonitor;Ljava/net/Socket;)Ljava/net/Socket;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get10(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;

    move-result-object v4

    if-eqz v4, :cond_0

    if-lez v39, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get10(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;

    move-result-object v4

    const v5, 0x2102d

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;->hasMessages(I)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get10(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;

    move-result-object v5

    if-eqz v37, :cond_45

    const/4 v4, 0x1

    :goto_17
    const v9, 0x2102c

    move/from16 v0, v39

    move-object/from16 v1, v44

    invoke-static {v5, v9, v0, v4, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get10(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;

    move-result-object v4

    const v5, 0x2102d

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;->removeMessages(I)V

    goto/16 :goto_0

    :cond_42
    invoke-static/range {v38 .. v38}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get11(Lcom/android/server/wifi/WifiConnectivityMonitor;)Ljava/net/Socket;

    move-result-object v4

    if-eqz v4, :cond_0

    :try_start_14
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get11(Lcom/android/server/wifi/WifiConnectivityMonitor;)Ljava/net/Socket;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/Socket;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_43

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get11(Lcom/android/server/wifi/WifiConnectivityMonitor;)Ljava/net/Socket;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/Socket;->shutdownInput()V

    :cond_43
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get11(Lcom/android/server/wifi/WifiConnectivityMonitor;)Ljava/net/Socket;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/Socket;->close()V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_7

    :goto_18
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set7(Lcom/android/server/wifi/WifiConnectivityMonitor;Ljava/net/Socket;)Ljava/net/Socket;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get10(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;

    move-result-object v4

    if-eqz v4, :cond_0

    if-lez v39, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get10(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;

    move-result-object v4

    const v5, 0x2102d

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;->hasMessages(I)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get10(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;

    move-result-object v5

    if-eqz v37, :cond_44

    const/4 v4, 0x1

    :goto_19
    const v9, 0x2102c

    move/from16 v0, v39

    move-object/from16 v1, v44

    invoke-static {v5, v9, v0, v4, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get10(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;

    move-result-object v4

    const v5, 0x2102d

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;->removeMessages(I)V

    goto/16 :goto_0

    :cond_44
    const/4 v4, 0x0

    goto :goto_19

    :cond_45
    const/4 v4, 0x0

    goto/16 :goto_17

    :catchall_1
    move-exception v4

    invoke-static/range {v38 .. v38}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get11(Lcom/android/server/wifi/WifiConnectivityMonitor;)Ljava/net/Socket;

    move-result-object v5

    if-eqz v5, :cond_47

    :try_start_15
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get11(Lcom/android/server/wifi/WifiConnectivityMonitor;)Ljava/net/Socket;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/Socket;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_46

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get11(Lcom/android/server/wifi/WifiConnectivityMonitor;)Ljava/net/Socket;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/Socket;->shutdownInput()V

    :cond_46
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get11(Lcom/android/server/wifi/WifiConnectivityMonitor;)Ljava/net/Socket;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/Socket;->close()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_5

    :goto_1a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    const/4 v9, 0x0

    invoke-static {v5, v9}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set7(Lcom/android/server/wifi/WifiConnectivityMonitor;Ljava/net/Socket;)Ljava/net/Socket;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get10(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;

    move-result-object v5

    if-eqz v5, :cond_47

    if-lez v39, :cond_47

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get10(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;

    move-result-object v5

    const v9, 0x2102d

    invoke-virtual {v5, v9}, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;->hasMessages(I)Z

    move-result v5

    if-eqz v5, :cond_47

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get10(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;

    move-result-object v9

    if-eqz v37, :cond_48

    const/4 v5, 0x1

    :goto_1b
    const v10, 0x2102c

    move/from16 v0, v39

    move-object/from16 v1, v44

    invoke-static {v9, v10, v0, v5, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get10(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;

    move-result-object v5

    const v9, 0x2102d

    invoke-virtual {v5, v9}, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;->removeMessages(I)V

    :cond_47
    throw v4

    :cond_48
    const/4 v5, 0x0

    goto :goto_1b

    :sswitch_2
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v32, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v43, v0

    check-cast v43, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get90(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->readOngoingId()I

    move-result v31

    const/4 v4, 0x1

    move/from16 v0, v32

    if-ge v0, v4, :cond_49

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get0()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "couldn\'t test quality by problem - id < 1"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_49
    if-nez v31, :cond_4a

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get0()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "quality id["

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v32

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v9, "] was already timed out!"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_4a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move/from16 v0, v32

    invoke-virtual {v4, v0}, Lcom/android/server/wifi/WifiConnectivityMonitor;->doPingTest(I)I

    move-result v35

    move/from16 v0, v32

    move/from16 v1, v31

    if-ne v0, v1, :cond_50

    if-eqz v43, :cond_4c

    const v4, 0x96b43f

    move/from16 v0, v35

    if-ne v0, v4, :cond_4c

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get0()Z

    move-result v4

    if-eqz v4, :cond_4b

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "ICMP Ping Result is successful. Move on to HTTP QC."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get90(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;

    move-result-object v4

    const v5, 0x21027

    move-object/from16 v0, v43

    invoke-static {v4, v5, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    :cond_4c
    if-eqz v43, :cond_4e

    const/4 v4, 0x1

    move/from16 v0, v32

    if-ne v0, v4, :cond_4e

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get0()Z

    move-result v4

    if-eqz v4, :cond_4d

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "ICMP Ping Result is not successful on first attempt. Move on to HTTP QC."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get90(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;

    move-result-object v4

    const v5, 0x21027

    move-object/from16 v0, v43

    invoke-static {v4, v5, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    :cond_4e
    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get0()Z

    move-result v4

    if-eqz v4, :cond_4f

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "send ICMP ping result...id:"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v32

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get90(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;

    move-result-object v4

    const v5, 0x21025

    move/from16 v0, v35

    move/from16 v1, v32

    invoke-static {v4, v5, v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    :cond_50
    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get0()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "[id:%d, ongoingId:%d] Skip sending ICMP ping result"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v13, 0x0

    aput-object v10, v9, v13

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v13, 0x1

    aput-object v10, v9, v13

    invoke-static {v5, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :catch_5
    move-exception v20

    goto/16 :goto_1a

    :catch_6
    move-exception v20

    goto/16 :goto_16

    :catch_7
    move-exception v20

    goto/16 :goto_18

    :catch_8
    move-exception v20

    goto/16 :goto_14

    :catch_9
    move-exception v20

    goto/16 :goto_13

    :catch_a
    move-exception v20

    goto/16 :goto_11

    :catch_b
    move-exception v20

    goto/16 :goto_10

    :catch_c
    move-exception v20

    goto/16 :goto_e

    :catch_d
    move-exception v20

    goto/16 :goto_d

    :catch_e
    move-exception v20

    goto/16 :goto_b

    :catch_f
    move-exception v20

    goto/16 :goto_a

    :catch_10
    move-exception v20

    goto/16 :goto_8

    :catch_11
    move-exception v20

    goto/16 :goto_7

    :catch_12
    move-exception v21

    move-object/from16 v41, v42

    goto/16 :goto_4

    nop

    :sswitch_data_0
    .sparse-switch
        0x21024 -> :sswitch_0
        0x2102b -> :sswitch_1
        0x21065 -> :sswitch_2
    .end sparse-switch
.end method
