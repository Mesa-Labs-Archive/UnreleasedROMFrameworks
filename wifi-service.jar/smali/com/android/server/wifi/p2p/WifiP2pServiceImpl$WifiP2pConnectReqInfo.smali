.class Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$WifiP2pConnectReqInfo;
.super Ljava/lang/Object;
.source "WifiP2pServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WifiP2pConnectReqInfo"
.end annotation


# instance fields
.field private connectionReceived:I

.field private isJoin:I

.field private isPersistent:I

.field private peerDev:Landroid/net/wifi/p2p/WifiP2pDevice;

.field private peerDevType:I

.field private peerGOIntentValue:I

.field private peerManufacturer:Ljava/lang/String;

.field private pkgName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;


# direct methods
.method static synthetic -get0(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$WifiP2pConnectReqInfo;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$WifiP2pConnectReqInfo;->peerDev:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$WifiP2pConnectReqInfo;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$WifiP2pConnectReqInfo;->pkgName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$WifiP2pConnectReqInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$WifiP2pConnectReqInfo;->pkgName:Ljava/lang/String;

    return-object p1
.end method

.method public constructor <init>(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)V
    .locals 1

    const/4 v0, -0x1

    iput-object p1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$WifiP2pConnectReqInfo;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$WifiP2pConnectReqInfo;->peerDevType:I

    iput v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$WifiP2pConnectReqInfo;->peerGOIntentValue:I

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$WifiP2pConnectReqInfo;)V
    .locals 2

    const/4 v0, -0x1

    iput-object p1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$WifiP2pConnectReqInfo;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$WifiP2pConnectReqInfo;->peerDevType:I

    iput v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$WifiP2pConnectReqInfo;->peerGOIntentValue:I

    if-eqz p2, :cond_0

    new-instance v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v1, p2, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$WifiP2pConnectReqInfo;->peerDev:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {v0, v1}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    iput-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$WifiP2pConnectReqInfo;->peerDev:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v0, p2, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$WifiP2pConnectReqInfo;->pkgName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$WifiP2pConnectReqInfo;->pkgName:Ljava/lang/String;

    iget v0, p2, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$WifiP2pConnectReqInfo;->connectionReceived:I

    iput v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$WifiP2pConnectReqInfo;->connectionReceived:I

    iget v0, p2, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$WifiP2pConnectReqInfo;->isPersistent:I

    iput v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$WifiP2pConnectReqInfo;->isPersistent:I

    iget v0, p2, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$WifiP2pConnectReqInfo;->isJoin:I

    iput v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$WifiP2pConnectReqInfo;->isJoin:I

    iget-object v0, p2, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$WifiP2pConnectReqInfo;->peerManufacturer:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$WifiP2pConnectReqInfo;->peerManufacturer:Ljava/lang/String;

    iget v0, p2, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$WifiP2pConnectReqInfo;->peerDevType:I

    iput v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$WifiP2pConnectReqInfo;->peerDevType:I

    iget v0, p2, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$WifiP2pConnectReqInfo;->peerGOIntentValue:I

    iput v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$WifiP2pConnectReqInfo;->peerGOIntentValue:I

    :cond_0
    return-void
.end method


# virtual methods
.method public getPeerDevType()I
    .locals 1

    iget v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$WifiP2pConnectReqInfo;->peerDevType:I

    return v0
.end method

.method public getPeerGOIntentValue()I
    .locals 1

    iget v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$WifiP2pConnectReqInfo;->peerGOIntentValue:I

    return v0
.end method

.method public getPeerManufacturer()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$WifiP2pConnectReqInfo;->peerManufacturer:Ljava/lang/String;

    return-object v0
.end method

.method public reset()V
    .locals 3

    const/4 v2, -0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$WifiP2pConnectReqInfo;->peerDev:Landroid/net/wifi/p2p/WifiP2pDevice;

    iput-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$WifiP2pConnectReqInfo;->pkgName:Ljava/lang/String;

    iput v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$WifiP2pConnectReqInfo;->connectionReceived:I

    iput v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$WifiP2pConnectReqInfo;->isPersistent:I

    iput v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$WifiP2pConnectReqInfo;->isJoin:I

    iput-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$WifiP2pConnectReqInfo;->peerManufacturer:Ljava/lang/String;

    iput v2, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$WifiP2pConnectReqInfo;->peerDevType:I

    iput v2, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$WifiP2pConnectReqInfo;->peerGOIntentValue:I

    return-void
.end method

.method public set(Landroid/net/wifi/p2p/WifiP2pDevice;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V
    .locals 4

    iput-object p1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$WifiP2pConnectReqInfo;->peerDev:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz p2, :cond_0

    const-string/jumbo v2, "\\s+"

    const-string/jumbo v3, ""

    invoke-virtual {p2, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$WifiP2pConnectReqInfo;->pkgName:Ljava/lang/String;

    :cond_0
    iput p3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$WifiP2pConnectReqInfo;->connectionReceived:I

    iput p4, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$WifiP2pConnectReqInfo;->isPersistent:I

    iput p5, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$WifiP2pConnectReqInfo;->isJoin:I

    if-eqz p6, :cond_1

    const-string/jumbo v2, "\\s+"

    const-string/jumbo v3, ""

    invoke-virtual {p6, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$WifiP2pConnectReqInfo;->peerManufacturer:Ljava/lang/String;

    :cond_1
    if-eqz p2, :cond_2

    iget-object v2, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$WifiP2pConnectReqInfo;->pkgName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    const-string/jumbo v2, "unknown"

    iput-object v2, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$WifiP2pConnectReqInfo;->pkgName:Ljava/lang/String;

    :cond_3
    if-eqz p6, :cond_4

    iget-object v2, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$WifiP2pConnectReqInfo;->peerManufacturer:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    const-string/jumbo v2, "unknown"

    iput-object v2, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$WifiP2pConnectReqInfo;->peerManufacturer:Ljava/lang/String;

    :cond_5
    if-eqz p7, :cond_6

    const-string/jumbo v2, "-"

    invoke-virtual {p7, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x3

    if-ne v2, v3, :cond_6

    const/4 v2, 0x0

    :try_start_0
    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$WifiP2pConnectReqInfo;->peerDevType:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "WifiP2pService"

    const-string/jumbo v3, "NumberFormatException while getting peerDevType"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setPeerGOIntentValue(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$WifiP2pConnectReqInfo;->peerGOIntentValue:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$WifiP2pConnectReqInfo;->pkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$WifiP2pConnectReqInfo;->connectionReceived:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$WifiP2pConnectReqInfo;->isPersistent:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$WifiP2pConnectReqInfo;->isJoin:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$WifiP2pConnectReqInfo;->peerManufacturer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$WifiP2pConnectReqInfo;->peerDevType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$WifiP2pConnectReqInfo;->peerGOIntentValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
