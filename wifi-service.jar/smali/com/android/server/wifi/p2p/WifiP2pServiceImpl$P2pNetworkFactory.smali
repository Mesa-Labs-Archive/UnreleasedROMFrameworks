.class Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pNetworkFactory;
.super Landroid/net/NetworkFactory;
.source "WifiP2pServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "P2pNetworkFactory"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Landroid/os/Looper;Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkCapabilities;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pNetworkFactory;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/net/NetworkFactory;-><init>(Landroid/os/Looper;Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkCapabilities;)V

    return-void
.end method


# virtual methods
.method protected startNetwork()V
    .locals 0

    return-void
.end method

.method protected stopNetwork()V
    .locals 0

    return-void
.end method
