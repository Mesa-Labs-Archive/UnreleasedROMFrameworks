.class Lcom/android/internal/telephony/cat/udpRxThread;
.super Ljava/lang/Object;
.source "CatBIPConnection.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field conn:Lcom/android/internal/telephony/cat/CatBIPClientConnection;

.field volatile stopRequestUDP:Z


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/cat/CatBIPClientConnection;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/udpRxThread;->stopRequestUDP:Z

    iput-object p1, p0, Lcom/android/internal/telephony/cat/udpRxThread;->conn:Lcom/android/internal/telephony/cat/CatBIPClientConnection;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    const/4 v11, 0x1

    :cond_0
    :goto_0
    iget-boolean v7, p0, Lcom/android/internal/telephony/cat/udpRxThread;->stopRequestUDP:Z

    if-nez v7, :cond_4

    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/internal/telephony/cat/udpRxThread;->stopRequestUDP:Z

    :cond_1
    iget-object v7, p0, Lcom/android/internal/telephony/cat/udpRxThread;->conn:Lcom/android/internal/telephony/cat/CatBIPClientConnection;

    iget-object v7, v7, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->rxBuf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v7

    if-nez v7, :cond_3

    invoke-static {}, Lcom/android/internal/telephony/cat/CatService;->isBIPCmdBeingProcessed()Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/internal/telephony/cat/udpRxThread;->conn:Lcom/android/internal/telephony/cat/CatBIPClientConnection;

    iget-object v2, v7, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->socket:Ljava/lang/Object;

    check-cast v2, Ljava/net/DatagramSocket;

    iget-object v7, p0, Lcom/android/internal/telephony/cat/udpRxThread;->conn:Lcom/android/internal/telephony/cat/CatBIPClientConnection;

    iget v6, v7, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->bufferSize:I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Maximum UDP Buffer Size that can be received "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v0, v6, [B

    new-instance v1, Ljava/net/DatagramPacket;

    invoke-direct {v1, v0, v6}, Ljava/net/DatagramPacket;-><init>([BI)V

    invoke-virtual {v2, v1}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Length of UDP data received from network "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/net/DatagramPacket;->getLength()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/internal/telephony/cat/udpRxThread;->conn:Lcom/android/internal/telephony/cat/CatBIPClientConnection;

    iget-object v7, v7, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->rxBuf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v8

    invoke-virtual {v1}, Ljava/net/DatagramPacket;->getLength()I

    move-result v9

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v10, v9}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Size of rxBuf : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/cat/udpRxThread;->conn:Lcom/android/internal/telephony/cat/CatBIPClientConnection;

    iget-object v8, v8, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->rxBuf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/internal/telephony/cat/udpRxThread;->conn:Lcom/android/internal/telephony/cat/CatBIPClientConnection;

    iget-object v7, v7, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->mCatBIPManager:Lcom/android/internal/telephony/cat/CatBIPManager;

    iget-object v8, p0, Lcom/android/internal/telephony/cat/udpRxThread;->conn:Lcom/android/internal/telephony/cat/CatBIPClientConnection;

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/cat/CatBIPManager;->sendDataAvailableEvent(Lcom/android/internal/telephony/cat/CatBIPConnection;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto/16 :goto_0

    :catch_0
    move-exception v3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "IOException : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v7, "Connection reset"

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/internal/telephony/cat/udpRxThread;->conn:Lcom/android/internal/telephony/cat/CatBIPClientConnection;

    iget-object v7, v7, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->mCatBIPManager:Lcom/android/internal/telephony/cat/CatBIPManager;

    iget-object v8, p0, Lcom/android/internal/telephony/cat/udpRxThread;->conn:Lcom/android/internal/telephony/cat/CatBIPClientConnection;

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/cat/CatBIPManager;->linkDropWhenConnectionReset(Lcom/android/internal/telephony/cat/CatBIPClientConnection;)V

    :cond_2
    invoke-static {}, Ljava/lang/Thread;->yield()V

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v7

    if-eqz v7, :cond_0

    iput-boolean v11, p0, Lcom/android/internal/telephony/cat/udpRxThread;->stopRequestUDP:Z

    goto/16 :goto_0

    :cond_3
    const-wide/16 v8, 0x64

    :try_start_1
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_0

    :catch_1
    move-exception v4

    :try_start_2
    const-string/jumbo v7, "Interrupt Received!"

    invoke-static {p0, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/internal/telephony/cat/udpRxThread;->stopRequestUDP:Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Exception : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->yield()V

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v7

    if-eqz v7, :cond_0

    iput-boolean v11, p0, Lcom/android/internal/telephony/cat/udpRxThread;->stopRequestUDP:Z

    goto/16 :goto_0

    :cond_4
    return-void
.end method
