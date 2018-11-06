.class Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$NetworkObserver;
.super Lcom/android/server/net/BaseNetworkObserver;
.source "SoftApManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetworkObserver"
.end annotation


# instance fields
.field private final mIfaceName:Ljava/lang/String;

.field final synthetic this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$NetworkObserver;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    invoke-direct {p0}, Lcom/android/server/net/BaseNetworkObserver;-><init>()V

    iput-object p2, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$NetworkObserver;->mIfaceName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public interfaceLinkStateChanged(Ljava/lang/String;Z)V
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$NetworkObserver;->mIfaceName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$NetworkObserver;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    if-eqz p2, :cond_1

    const/4 v0, 0x1

    :goto_0
    const/4 v3, 0x3

    invoke-virtual {v2, v3, v0, v1, p0}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->sendMessage(IIILjava/lang/Object;)V

    :cond_0
    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method
