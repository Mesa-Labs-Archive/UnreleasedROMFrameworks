.class Lcom/android/internal/telephony/cat/CatBIPServerListenThread;
.super Ljava/lang/Object;
.source "CatBIPServerListenTread.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field bipcon:Lcom/android/internal/telephony/cat/CatBIPServerConnection;

.field mCatBIPManager:Lcom/android/internal/telephony/cat/CatBIPManager;

.field s:Ljava/net/Socket;

.field serverSocket:Ljava/net/ServerSocket;

.field volatile stopRequest:Z


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/cat/CatBIPConnection;Lcom/android/internal/telephony/cat/CatBIPManager;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatBIPServerListenThread;->s:Ljava/net/Socket;

    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatBIPServerListenThread;->bipcon:Lcom/android/internal/telephony/cat/CatBIPServerConnection;

    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatBIPServerListenThread;->mCatBIPManager:Lcom/android/internal/telephony/cat/CatBIPManager;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/CatBIPServerListenThread;->stopRequest:Z

    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatBIPServerListenThread;->serverSocket:Ljava/net/ServerSocket;

    check-cast p1, Lcom/android/internal/telephony/cat/CatBIPServerConnection;

    iput-object p1, p0, Lcom/android/internal/telephony/cat/CatBIPServerListenThread;->bipcon:Lcom/android/internal/telephony/cat/CatBIPServerConnection;

    iput-object p2, p0, Lcom/android/internal/telephony/cat/CatBIPServerListenThread;->mCatBIPManager:Lcom/android/internal/telephony/cat/CatBIPManager;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Port Number : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/cat/CatBIPServerListenThread;->bipcon:Lcom/android/internal/telephony/cat/CatBIPServerConnection;

    iget-object v5, v5, Lcom/android/internal/telephony/cat/CatBIPServerConnection;->uiccTerminalIface:Lcom/android/internal/telephony/cat/TransportLevel;

    iget v5, v5, Lcom/android/internal/telephony/cat/TransportLevel;->portNumber:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    new-instance v4, Ljava/net/ServerSocket;

    iget-object v5, p0, Lcom/android/internal/telephony/cat/CatBIPServerListenThread;->bipcon:Lcom/android/internal/telephony/cat/CatBIPServerConnection;

    iget-object v5, v5, Lcom/android/internal/telephony/cat/CatBIPServerConnection;->uiccTerminalIface:Lcom/android/internal/telephony/cat/TransportLevel;

    iget v5, v5, Lcom/android/internal/telephony/cat/TransportLevel;->portNumber:I

    invoke-direct {v4, v5}, Ljava/net/ServerSocket;-><init>(I)V

    iput-object v4, p0, Lcom/android/internal/telephony/cat/CatBIPServerListenThread;->serverSocket:Ljava/net/ServerSocket;

    const-string/jumbo v4, "Server socket created."

    invoke-static {p0, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    iget-object v4, p0, Lcom/android/internal/telephony/cat/CatBIPServerListenThread;->bipcon:Lcom/android/internal/telephony/cat/CatBIPServerConnection;

    iget-object v5, p0, Lcom/android/internal/telephony/cat/CatBIPServerListenThread;->serverSocket:Ljava/net/ServerSocket;

    iput-object v5, v4, Lcom/android/internal/telephony/cat/CatBIPServerConnection;->server:Ljava/net/ServerSocket;

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/android/internal/telephony/cat/CatBIPServerListenThread;->bipcon:Lcom/android/internal/telephony/cat/CatBIPServerConnection;

    iget v4, v4, Lcom/android/internal/telephony/cat/CatBIPServerConnection;->bufferSize:I

    new-array v0, v4, [B

    :cond_0
    :try_start_1
    iget-boolean v4, p0, Lcom/android/internal/telephony/cat/CatBIPServerListenThread;->stopRequest:Z

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/android/internal/telephony/cat/CatBIPServerListenThread;->serverSocket:Ljava/net/ServerSocket;

    invoke-virtual {v4}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/cat/CatBIPServerListenThread;->s:Ljava/net/Socket;

    const-string/jumbo v4, "Connection Accepted"

    invoke-static {p0, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/internal/telephony/cat/CatBIPServerListenThread;->bipcon:Lcom/android/internal/telephony/cat/CatBIPServerConnection;

    iget-object v5, p0, Lcom/android/internal/telephony/cat/CatBIPServerListenThread;->s:Ljava/net/Socket;

    iput-object v5, v4, Lcom/android/internal/telephony/cat/CatBIPServerConnection;->socket:Ljava/net/Socket;

    const-string/jumbo v4, "Sending Channel Status event "

    invoke-static {p0, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/internal/telephony/cat/CatBIPServerListenThread;->bipcon:Lcom/android/internal/telephony/cat/CatBIPServerConnection;

    const/4 v5, 0x2

    iput-byte v5, v4, Lcom/android/internal/telephony/cat/CatBIPServerConnection;->linkState:B

    iget-object v4, p0, Lcom/android/internal/telephony/cat/CatBIPServerListenThread;->bipcon:Lcom/android/internal/telephony/cat/CatBIPServerConnection;

    const/4 v5, 0x0

    iput-byte v5, v4, Lcom/android/internal/telephony/cat/CatBIPServerConnection;->linkStateCause:B

    iget-object v4, p0, Lcom/android/internal/telephony/cat/CatBIPServerListenThread;->bipcon:Lcom/android/internal/telephony/cat/CatBIPServerConnection;

    iget-object v4, v4, Lcom/android/internal/telephony/cat/CatBIPServerConnection;->mCatBIPManager:Lcom/android/internal/telephony/cat/CatBIPManager;

    iget-object v5, p0, Lcom/android/internal/telephony/cat/CatBIPServerListenThread;->bipcon:Lcom/android/internal/telephony/cat/CatBIPServerConnection;

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/cat/CatBIPManager;->sendChannelStatusEvent(Lcom/android/internal/telephony/cat/CatBIPConnection;)V

    iget-object v4, p0, Lcom/android/internal/telephony/cat/CatBIPServerListenThread;->bipcon:Lcom/android/internal/telephony/cat/CatBIPServerConnection;

    new-instance v5, Ljava/io/BufferedInputStream;

    iget-object v6, p0, Lcom/android/internal/telephony/cat/CatBIPServerListenThread;->bipcon:Lcom/android/internal/telephony/cat/CatBIPServerConnection;

    iget-object v6, v6, Lcom/android/internal/telephony/cat/CatBIPServerConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v6}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/cat/CatBIPServerListenThread;->bipcon:Lcom/android/internal/telephony/cat/CatBIPServerConnection;

    iget v7, v7, Lcom/android/internal/telephony/cat/CatBIPServerConnection;->bufferSize:I

    invoke-direct {v5, v6, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    iput-object v5, v4, Lcom/android/internal/telephony/cat/CatBIPServerConnection;->reader:Ljava/io/BufferedInputStream;

    iget-object v4, p0, Lcom/android/internal/telephony/cat/CatBIPServerListenThread;->bipcon:Lcom/android/internal/telephony/cat/CatBIPServerConnection;

    new-instance v5, Ljava/io/BufferedOutputStream;

    iget-object v6, p0, Lcom/android/internal/telephony/cat/CatBIPServerListenThread;->bipcon:Lcom/android/internal/telephony/cat/CatBIPServerConnection;

    iget-object v6, v6, Lcom/android/internal/telephony/cat/CatBIPServerConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v6}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/cat/CatBIPServerListenThread;->bipcon:Lcom/android/internal/telephony/cat/CatBIPServerConnection;

    iget v7, v7, Lcom/android/internal/telephony/cat/CatBIPServerConnection;->bufferSize:I

    invoke-direct {v5, v6, v7}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    iput-object v5, v4, Lcom/android/internal/telephony/cat/CatBIPServerConnection;->writer:Ljava/io/BufferedOutputStream;

    iget-object v4, p0, Lcom/android/internal/telephony/cat/CatBIPServerListenThread;->bipcon:Lcom/android/internal/telephony/cat/CatBIPServerConnection;

    new-instance v5, Ljava/io/ByteArrayOutputStream;

    const/16 v6, 0xff

    invoke-direct {v5, v6}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    iput-object v5, v4, Lcom/android/internal/telephony/cat/CatBIPServerConnection;->byteArrayWriter:Ljava/io/ByteArrayOutputStream;

    iget-object v4, p0, Lcom/android/internal/telephony/cat/CatBIPServerListenThread;->bipcon:Lcom/android/internal/telephony/cat/CatBIPServerConnection;

    new-instance v5, Ljava/io/ByteArrayOutputStream;

    const/16 v6, 0xff

    invoke-direct {v5, v6}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    iput-object v5, v4, Lcom/android/internal/telephony/cat/CatBIPServerConnection;->storeSendData:Ljava/io/ByteArrayOutputStream;

    iget-object v4, p0, Lcom/android/internal/telephony/cat/CatBIPServerListenThread;->bipcon:Lcom/android/internal/telephony/cat/CatBIPServerConnection;

    const/4 v5, 0x0

    iput v5, v4, Lcom/android/internal/telephony/cat/CatBIPServerConnection;->lastReadPosition:I

    const-string/jumbo v4, "Reading data from input stream..."

    invoke-static {p0, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    iget-object v4, p0, Lcom/android/internal/telephony/cat/CatBIPServerListenThread;->bipcon:Lcom/android/internal/telephony/cat/CatBIPServerConnection;

    iget-object v4, v4, Lcom/android/internal/telephony/cat/CatBIPServerConnection;->reader:Ljava/io/BufferedInputStream;

    invoke-virtual {v4, v0}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v1

    const/4 v4, -0x1

    if-eq v1, v4, :cond_3

    iget-object v4, p0, Lcom/android/internal/telephony/cat/CatBIPServerListenThread;->bipcon:Lcom/android/internal/telephony/cat/CatBIPServerConnection;

    iget-object v4, v4, Lcom/android/internal/telephony/cat/CatBIPServerConnection;->byteArrayWriter:Ljava/io/ByteArrayOutputStream;

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "bytesRead=["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "], sendDataAvailable Event"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/internal/telephony/cat/CatBIPServerListenThread;->bipcon:Lcom/android/internal/telephony/cat/CatBIPServerConnection;

    iget-object v4, v4, Lcom/android/internal/telephony/cat/CatBIPServerConnection;->mCatBIPManager:Lcom/android/internal/telephony/cat/CatBIPManager;

    iget-object v5, p0, Lcom/android/internal/telephony/cat/CatBIPServerListenThread;->bipcon:Lcom/android/internal/telephony/cat/CatBIPServerConnection;

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/cat/CatBIPManager;->sendDataAvailableEvent(Lcom/android/internal/telephony/cat/CatBIPConnection;)V

    const-string/jumbo v4, "Reading data from input stream..."

    invoke-static {p0, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v3

    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Exception while handling connection: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v4, p0, Lcom/android/internal/telephony/cat/CatBIPServerListenThread;->s:Ljava/net/Socket;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/internal/telephony/cat/CatBIPServerListenThread;->s:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/net/Socket;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    :cond_1
    :goto_1
    :try_start_4
    iget-object v4, p0, Lcom/android/internal/telephony/cat/CatBIPServerListenThread;->serverSocket:Ljava/net/ServerSocket;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/internal/telephony/cat/CatBIPServerListenThread;->serverSocket:Ljava/net/ServerSocket;

    invoke-virtual {v4}, Ljava/net/ServerSocket;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6

    :cond_2
    :goto_2
    const-string/jumbo v4, "Server thread stopped."

    invoke-static {p0, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_3
    return-void

    :catch_1
    move-exception v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "IOException while creating server socket: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_3
    :try_start_5
    const-string/jumbo v4, "Input stream end reached."

    invoke-static {p0, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    iget-object v4, p0, Lcom/android/internal/telephony/cat/CatBIPServerListenThread;->s:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/net/Socket;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_4
    const/4 v4, 0x0

    :try_start_7
    iput-object v4, p0, Lcom/android/internal/telephony/cat/CatBIPServerListenThread;->s:Ljava/net/Socket;

    iget-object v4, p0, Lcom/android/internal/telephony/cat/CatBIPServerListenThread;->bipcon:Lcom/android/internal/telephony/cat/CatBIPServerConnection;

    const/4 v5, 0x1

    iput-byte v5, v4, Lcom/android/internal/telephony/cat/CatBIPServerConnection;->linkState:B

    iget-object v4, p0, Lcom/android/internal/telephony/cat/CatBIPServerListenThread;->bipcon:Lcom/android/internal/telephony/cat/CatBIPServerConnection;

    const/4 v5, 0x0

    iput-byte v5, v4, Lcom/android/internal/telephony/cat/CatBIPServerConnection;->linkStateCause:B

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/internal/telephony/cat/CatBIPServerListenThread;->stopRequest:Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :cond_4
    :try_start_8
    iget-object v4, p0, Lcom/android/internal/telephony/cat/CatBIPServerListenThread;->s:Ljava/net/Socket;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/internal/telephony/cat/CatBIPServerListenThread;->s:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/net/Socket;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    :cond_5
    :goto_5
    :try_start_9
    iget-object v4, p0, Lcom/android/internal/telephony/cat/CatBIPServerListenThread;->serverSocket:Ljava/net/ServerSocket;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/internal/telephony/cat/CatBIPServerListenThread;->serverSocket:Ljava/net/ServerSocket;

    invoke-virtual {v4}, Ljava/net/ServerSocket;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    :cond_6
    :goto_6
    const-string/jumbo v4, "Server thread stopped."

    invoke-static {p0, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_3

    :catch_2
    move-exception v3

    :try_start_a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Exception while closing connection socket: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v4

    :try_start_b
    iget-object v5, p0, Lcom/android/internal/telephony/cat/CatBIPServerListenThread;->s:Ljava/net/Socket;

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/android/internal/telephony/cat/CatBIPServerListenThread;->s:Ljava/net/Socket;

    invoke-virtual {v5}, Ljava/net/Socket;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_7

    :cond_7
    :goto_7
    :try_start_c
    iget-object v5, p0, Lcom/android/internal/telephony/cat/CatBIPServerListenThread;->serverSocket:Ljava/net/ServerSocket;

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/android/internal/telephony/cat/CatBIPServerListenThread;->serverSocket:Ljava/net/ServerSocket;

    invoke-virtual {v5}, Ljava/net/ServerSocket;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_8

    :cond_8
    :goto_8
    const-string/jumbo v5, "Server thread stopped."

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    throw v4

    :catch_3
    move-exception v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Exception while closing connection socket: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_5

    :catch_4
    move-exception v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Exception while closing server socket: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_6

    :catch_5
    move-exception v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Exception while closing connection socket: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_1

    :catch_6
    move-exception v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Exception while closing server socket: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_2

    :catch_7
    move-exception v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Exception while closing connection socket: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_7

    :catch_8
    move-exception v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Exception while closing server socket: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_8
.end method
