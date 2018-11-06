.class Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$WifiP2pConnectedPeriodInfo;
.super Ljava/lang/Object;
.source "WifiP2pServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WifiP2pConnectedPeriodInfo"
.end annotation


# instance fields
.field private peerDev:Landroid/net/wifi/p2p/WifiP2pDevice;

.field private pkgName:Ljava/lang/String;

.field private startTime:J

.field final synthetic this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;


# direct methods
.method static synthetic -get0(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$WifiP2pConnectedPeriodInfo;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$WifiP2pConnectedPeriodInfo;->peerDev:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$WifiP2pConnectedPeriodInfo;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$WifiP2pConnectedPeriodInfo;->pkgName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$WifiP2pConnectedPeriodInfo;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$WifiP2pConnectedPeriodInfo;->startTime:J

    return-wide v0
.end method

.method static synthetic -set0(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$WifiP2pConnectedPeriodInfo;Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .locals 0

    iput-object p1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$WifiP2pConnectedPeriodInfo;->peerDev:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$WifiP2pConnectedPeriodInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$WifiP2pConnectedPeriodInfo;->pkgName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set2(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$WifiP2pConnectedPeriodInfo;J)J
    .locals 1

    iput-wide p1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$WifiP2pConnectedPeriodInfo;->startTime:J

    return-wide p1
.end method

.method public constructor <init>(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)V
    .locals 2

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$WifiP2pConnectedPeriodInfo;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$WifiP2pConnectedPeriodInfo;->peerDev:Landroid/net/wifi/p2p/WifiP2pDevice;

    iput-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$WifiP2pConnectedPeriodInfo;->pkgName:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$WifiP2pConnectedPeriodInfo;->startTime:J

    return-void
.end method
