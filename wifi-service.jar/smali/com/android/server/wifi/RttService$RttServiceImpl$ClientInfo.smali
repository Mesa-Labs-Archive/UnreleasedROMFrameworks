.class Lcom/android/server/wifi/RttService$RttServiceImpl$ClientInfo;
.super Ljava/lang/Object;
.source "RttService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/RttService$RttServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClientInfo"
.end annotation


# instance fields
.field private final mChannel:Lcom/android/internal/util/AsyncChannel;

.field mRequests:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;",
            ">;"
        }
    .end annotation
.end field

.field mResponderRequests:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mUid:I

.field final synthetic this$1:Lcom/android/server/wifi/RttService$RttServiceImpl;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/RttService$RttServiceImpl;Lcom/android/internal/util/AsyncChannel;I)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$ClientInfo;->this$1:Lcom/android/server/wifi/RttService$RttServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$ClientInfo;->mRequests:Landroid/util/ArrayMap;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$ClientInfo;->mResponderRequests:Ljava/util/Set;

    iput-object p2, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$ClientInfo;->mChannel:Lcom/android/internal/util/AsyncChannel;

    iput p3, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$ClientInfo;->mUid:I

    return-void
.end method


# virtual methods
.method addResponderRequest(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$ClientInfo;->mResponderRequests:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method addRttRequest(ILandroid/net/wifi/RttManager$ParcelableRttParams;)Z
    .locals 4

    const/4 v3, 0x0

    if-nez p2, :cond_0

    const/4 v2, 0x0

    return v2

    :cond_0
    iget-object v0, p2, Landroid/net/wifi/RttManager$ParcelableRttParams;->mParams:[Landroid/net/wifi/RttManager$RttParams;

    new-instance v1, Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;

    iget-object v2, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$ClientInfo;->this$1:Lcom/android/server/wifi/RttService$RttServiceImpl;

    invoke-direct {v1, v2, v3}, Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;-><init>(Lcom/android/server/wifi/RttService$RttServiceImpl;Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;->key:Ljava/lang/Integer;

    iput-object p0, v1, Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;->ci:Lcom/android/server/wifi/RttService$RttServiceImpl$ClientInfo;

    iput-object v0, v1, Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;->params:[Landroid/net/wifi/RttManager$RttParams;

    iget-object v2, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$ClientInfo;->mRequests:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$ClientInfo;->this$1:Lcom/android/server/wifi/RttService$RttServiceImpl;

    invoke-static {v2}, Lcom/android/server/wifi/RttService$RttServiceImpl;->-get3(Lcom/android/server/wifi/RttService$RttServiceImpl;)Ljava/util/Queue;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x1

    return v2
.end method

.method cleanup()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$ClientInfo;->mRequests:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    iget-object v0, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$ClientInfo;->this$1:Lcom/android/server/wifi/RttService$RttServiceImpl;

    invoke-static {v0}, Lcom/android/server/wifi/RttService$RttServiceImpl;->-get3(Lcom/android/server/wifi/RttService$RttServiceImpl;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    iget-object v0, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$ClientInfo;->mResponderRequests:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object v0, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$ClientInfo;->this$1:Lcom/android/server/wifi/RttService$RttServiceImpl;

    invoke-static {v0}, Lcom/android/server/wifi/RttService$RttServiceImpl;->-get4(Lcom/android/server/wifi/RttService$RttServiceImpl;)Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;

    move-result-object v0

    const v1, 0x27206

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->sendMessage(I)V

    return-void
.end method

.method removeResponderRequest(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$ClientInfo;->mResponderRequests:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method removeRttRequest(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$ClientInfo;->mRequests:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method reportAborted(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$ClientInfo;->mChannel:Lcom/android/internal/util/AsyncChannel;

    const v1, 0x27204

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    invoke-virtual {p0}, Lcom/android/server/wifi/RttService$RttServiceImpl$ClientInfo;->cleanup()V

    return-void
.end method

.method reportFailed(IILjava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "android.net.wifi.RttManager.Description"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$ClientInfo;->mChannel:Lcom/android/internal/util/AsyncChannel;

    const v2, 0x27202

    invoke-virtual {v1, v2, p1, p2, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/android/server/wifi/RttService$RttServiceImpl$ClientInfo;->removeRttRequest(I)V

    return-void
.end method

.method reportFailed(Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;ILjava/lang/String;)V
    .locals 1

    iget-object v0, p1, Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;->key:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/android/server/wifi/RttService$RttServiceImpl$ClientInfo;->reportFailed(IILjava/lang/String;)V

    return-void
.end method

.method reportResponderEnableFailed(II)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$ClientInfo;->mChannel:Lcom/android/internal/util/AsyncChannel;

    const v1, 0x27208

    invoke-virtual {v0, v1, p2, p1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    invoke-virtual {p0, p1}, Lcom/android/server/wifi/RttService$RttServiceImpl$ClientInfo;->removeResponderRequest(I)V

    return-void
.end method

.method reportResponderEnableSucceed(ILandroid/net/wifi/RttManager$ResponderConfig;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$ClientInfo;->mChannel:Lcom/android/internal/util/AsyncChannel;

    const v1, 0x27207

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    return-void
.end method

.method reportResult(Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;[Landroid/net/wifi/RttManager$RttResult;)V
    .locals 5

    new-instance v0, Landroid/net/wifi/RttManager$ParcelableRttResults;

    invoke-direct {v0, p2}, Landroid/net/wifi/RttManager$ParcelableRttResults;-><init>([Landroid/net/wifi/RttManager$RttResult;)V

    iget-object v1, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$ClientInfo;->mChannel:Lcom/android/internal/util/AsyncChannel;

    iget-object v2, p1, Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;->key:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const v3, 0x27203

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4, v2, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    iget-object v1, p1, Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;->key:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/RttService$RttServiceImpl$ClientInfo;->removeRttRequest(I)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ClientInfo [uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$ClientInfo;->mUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", channel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$ClientInfo;->mChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
