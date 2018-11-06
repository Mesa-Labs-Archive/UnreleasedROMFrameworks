.class Lcom/android/internal/telephony/cat/tcpRxThread;
.super Ljava/lang/Object;
.source "CatBIPConnection.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field conn:Lcom/android/internal/telephony/cat/CatBIPClientConnection;

.field volatile stopRequestTCP:Z

.field volatile terminatedByException:Z


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/cat/CatBIPClientConnection;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/tcpRxThread;->stopRequestTCP:Z

    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/tcpRxThread;->terminatedByException:Z

    iput-object p1, p0, Lcom/android/internal/telephony/cat/tcpRxThread;->conn:Lcom/android/internal/telephony/cat/CatBIPClientConnection;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const/4 v8, 0x1

    :cond_0
    :goto_0
    iget-boolean v6, p0, Lcom/android/internal/telephony/cat/tcpRxThread;->stopRequestTCP:Z

    if-nez v6, :cond_7

    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/internal/telephony/cat/tcpRxThread;->stopRequestTCP:Z

    :cond_1
    iget-object v6, p0, Lcom/android/internal/telephony/cat/tcpRxThread;->conn:Lcom/android/internal/telephony/cat/CatBIPClientConnection;

    iget-object v6, v6, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->rxBuf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v6

    if-nez v6, :cond_6

    invoke-static {}, Lcom/android/internal/telephony/cat/CatService;->isBIPCmdBeingProcessed()Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/android/internal/telephony/cat/tcpRxThread;->conn:Lcom/android/internal/telephony/cat/CatBIPClientConnection;

    iget v5, v6, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->bufferSize:I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Maximum Packet Size negotiated by UICC "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v0, v5, [B

    iget-object v6, p0, Lcom/android/internal/telephony/cat/tcpRxThread;->conn:Lcom/android/internal/telephony/cat/CatBIPClientConnection;

    iget-object v6, v6, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->in:Ljava/io/DataInputStream;

    invoke-virtual {v6, v0}, Ljava/io/DataInputStream;->read([B)I

    move-result v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Length of data = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, -0x1

    if-eq v4, v6, :cond_4

    iget-object v6, p0, Lcom/android/internal/telephony/cat/tcpRxThread;->conn:Lcom/android/internal/telephony/cat/CatBIPClientConnection;

    iget-object v6, v6, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->rxBuf:Ljava/io/ByteArrayOutputStream;

    const/4 v7, 0x0

    invoke-virtual {v6, v0, v7, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    iget-object v6, p0, Lcom/android/internal/telephony/cat/tcpRxThread;->conn:Lcom/android/internal/telephony/cat/CatBIPClientConnection;

    iget-object v6, v6, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->mCatBIPManager:Lcom/android/internal/telephony/cat/CatBIPManager;

    iget-object v7, p0, Lcom/android/internal/telephony/cat/tcpRxThread;->conn:Lcom/android/internal/telephony/cat/CatBIPClientConnection;

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/cat/CatBIPManager;->sendDataAvailableEvent(Lcom/android/internal/telephony/cat/CatBIPConnection;)V

    const-string/jumbo v6, "Read Data!!"

    invoke-static {p0, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "IOException : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v6, "Connection reset"

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string/jumbo v6, "Pending connect failure"

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    :cond_2
    iget-object v6, p0, Lcom/android/internal/telephony/cat/tcpRxThread;->conn:Lcom/android/internal/telephony/cat/CatBIPClientConnection;

    iget-object v6, v6, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->mCatBIPManager:Lcom/android/internal/telephony/cat/CatBIPManager;

    iget-object v7, p0, Lcom/android/internal/telephony/cat/tcpRxThread;->conn:Lcom/android/internal/telephony/cat/CatBIPClientConnection;

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/cat/CatBIPManager;->linkDropWhenConnectionReset(Lcom/android/internal/telephony/cat/CatBIPClientConnection;)V

    :cond_3
    iput-boolean v8, p0, Lcom/android/internal/telephony/cat/tcpRxThread;->terminatedByException:Z

    invoke-static {}, Ljava/lang/Thread;->yield()V

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v6

    if-eqz v6, :cond_0

    iput-boolean v8, p0, Lcom/android/internal/telephony/cat/tcpRxThread;->stopRequestTCP:Z

    goto/16 :goto_0

    :cond_4
    :try_start_1
    iget-object v6, p0, Lcom/android/internal/telephony/cat/tcpRxThread;->conn:Lcom/android/internal/telephony/cat/CatBIPClientConnection;

    iget-object v6, v6, Lcom/android/internal/telephony/cat/CatBIPConnection;->uiccTerminalIface:Lcom/android/internal/telephony/cat/TransportLevel;

    invoke-virtual {v6}, Lcom/android/internal/telephony/cat/TransportLevel;->isServer()Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/android/internal/telephony/cat/tcpRxThread;->conn:Lcom/android/internal/telephony/cat/CatBIPClientConnection;

    const/4 v7, 0x5

    iput-byte v7, v6, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->linkStateCause:B

    iget-object v6, p0, Lcom/android/internal/telephony/cat/tcpRxThread;->conn:Lcom/android/internal/telephony/cat/CatBIPClientConnection;

    iget-object v6, v6, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->mCatBIPManager:Lcom/android/internal/telephony/cat/CatBIPManager;

    iget-object v7, p0, Lcom/android/internal/telephony/cat/tcpRxThread;->conn:Lcom/android/internal/telephony/cat/CatBIPClientConnection;

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/cat/CatBIPManager;->sendChannelStatusEvent(Lcom/android/internal/telephony/cat/CatBIPConnection;)V

    :cond_5
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/internal/telephony/cat/tcpRxThread;->stopRequestTCP:Z

    const-string/jumbo v6, "Connection terminated by BIP Server"

    invoke-static {p0, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Exception : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-boolean v8, p0, Lcom/android/internal/telephony/cat/tcpRxThread;->terminatedByException:Z

    invoke-static {}, Ljava/lang/Thread;->yield()V

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v6

    if-eqz v6, :cond_0

    iput-boolean v8, p0, Lcom/android/internal/telephony/cat/tcpRxThread;->stopRequestTCP:Z

    goto/16 :goto_0

    :cond_6
    const-wide/16 v6, 0x64

    :try_start_2
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    :catch_2
    move-exception v2

    :try_start_3
    const-string/jumbo v6, "Interrupt Received!"

    invoke-static {p0, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/internal/telephony/cat/tcpRxThread;->stopRequestTCP:Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    :cond_7
    return-void
.end method
