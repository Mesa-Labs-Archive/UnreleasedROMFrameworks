.class Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ExternalClientInfo;
.super Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;
.source "WifiScanningServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExternalClientInfo"
.end annotation


# instance fields
.field private final mChannel:Lcom/android/internal/util/AsyncChannel;

.field private mDisconnected:Z

.field final synthetic this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;


# direct methods
.method static synthetic -get0(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ExternalClientInfo;)Lcom/android/internal/util/AsyncChannel;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ExternalClientInfo;->mChannel:Lcom/android/internal/util/AsyncChannel;

    return-object v0
.end method

.method constructor <init>(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;ILandroid/os/Messenger;Lcom/android/internal/util/AsyncChannel;)V
    .locals 2

    iput-object p1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ExternalClientInfo;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;-><init>(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;ILandroid/os/Messenger;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ExternalClientInfo;->mDisconnected:Z

    iput-object p4, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ExternalClientInfo;->mChannel:Lcom/android/internal/util/AsyncChannel;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "New client, channel: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->-wrap2(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public cleanup()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ExternalClientInfo;->mDisconnected:Z

    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ExternalClientInfo;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    invoke-static {v0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->-get11(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;->removePnoSettings(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;)V

    invoke-super {p0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;->cleanup()V

    return-void
.end method

.method public reportEvent(IIILjava/lang/Object;)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ExternalClientInfo;->mDisconnected:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ExternalClientInfo;->mChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    :cond_0
    return-void
.end method
