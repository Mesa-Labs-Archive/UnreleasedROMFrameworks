.class Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$WifiAwareNetworkAgent;
.super Landroid/net/NetworkAgent;
.source "WifiAwareDataPathStateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WifiAwareNetworkAgent"
.end annotation


# instance fields
.field private mNdpId:I

.field private mNetworkInfo:Landroid/net/NetworkInfo;

.field private mNetworkSpecifier:Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;

.field final synthetic this$0:Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;Landroid/os/Looper;Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkInfo;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;ILandroid/net/wifi/aware/WifiAwareNetworkSpecifier;I)V
    .locals 9

    iput-object p1, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$WifiAwareNetworkAgent;->this$0:Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v1 .. v8}, Landroid/net/NetworkAgent;-><init>(Landroid/os/Looper;Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkInfo;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;I)V

    iput-object p5, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$WifiAwareNetworkAgent;->mNetworkInfo:Landroid/net/NetworkInfo;

    move-object/from16 v0, p9

    iput-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$WifiAwareNetworkAgent;->mNetworkSpecifier:Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;

    move/from16 v0, p10

    iput v0, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$WifiAwareNetworkAgent;->mNdpId:I

    return-void
.end method


# virtual methods
.method reconfigureAgentAsDisconnected()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$WifiAwareNetworkAgent;->mNetworkInfo:Landroid/net/NetworkInfo;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    const-string/jumbo v2, ""

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$WifiAwareNetworkAgent;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$WifiAwareNetworkAgent;->sendNetworkInfo(Landroid/net/NetworkInfo;)V

    return-void
.end method

.method protected unwanted()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$WifiAwareNetworkAgent;->this$0:Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;

    invoke-static {v0}, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->-get1(Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;)Lcom/android/server/wifi/aware/WifiAwareStateManager;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$WifiAwareNetworkAgent;->mNdpId:I

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->endDataPath(I)V

    return-void
.end method
