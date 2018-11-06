.class Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientHandler;
.super Lcom/android/server/wifi/util/WifiHandler;
.source "WifiP2pServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClientHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Ljava/lang/String;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientHandler;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    invoke-direct {p0, p2, p3}, Lcom/android/server/wifi/util/WifiHandler;-><init>(Ljava/lang/String;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/server/wifi/util/WifiHandler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    const-string/jumbo v0, "WifiP2pService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ClientHandler.handleMessage ignoring msg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientHandler;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    invoke-static {v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->-get47(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    move-result-object v0

    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->sendMessage(Landroid/os/Message;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x22001 -> :sswitch_0
        0x22004 -> :sswitch_0
        0x22007 -> :sswitch_0
        0x2200a -> :sswitch_0
        0x2200d -> :sswitch_0
        0x22010 -> :sswitch_0
        0x22013 -> :sswitch_0
        0x22015 -> :sswitch_0
        0x22017 -> :sswitch_0
        0x2201c -> :sswitch_0
        0x2201f -> :sswitch_0
        0x22022 -> :sswitch_0
        0x22025 -> :sswitch_0
        0x22028 -> :sswitch_0
        0x2202b -> :sswitch_0
        0x2202e -> :sswitch_0
        0x22033 -> :sswitch_0
        0x22036 -> :sswitch_0
        0x22039 -> :sswitch_0
        0x2203b -> :sswitch_0
        0x2203e -> :sswitch_0
        0x22041 -> :sswitch_0
        0x22044 -> :sswitch_0
        0x22047 -> :sswitch_0
        0x22065 -> :sswitch_0
        0x22068 -> :sswitch_0
        0x2206b -> :sswitch_0
        0x2206c -> :sswitch_0
        0x2206e -> :sswitch_0
        0x2206f -> :sswitch_0
        0x22070 -> :sswitch_0
        0x22071 -> :sswitch_0
        0x22072 -> :sswitch_0
        0x22074 -> :sswitch_0
        0x22082 -> :sswitch_0
        0x2208d -> :sswitch_0
        0x2208e -> :sswitch_0
        0x2208f -> :sswitch_0
        0x22090 -> :sswitch_0
        0x22094 -> :sswitch_0
        0x22096 -> :sswitch_0
        0x22097 -> :sswitch_0
        0x2209b -> :sswitch_0
        0x2209c -> :sswitch_0
        0x220a0 -> :sswitch_0
        0x220a3 -> :sswitch_0
    .end sparse-switch
.end method
