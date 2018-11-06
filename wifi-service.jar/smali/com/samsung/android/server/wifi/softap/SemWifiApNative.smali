.class public Lcom/samsung/android/server/wifi/softap/SemWifiApNative;
.super Ljava/lang/Object;
.source "SemWifiApNative.java"


# instance fields
.field private final mInterfaceName:Ljava/lang/String;

.field private final mSemHostapdApIfaceHal:Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal;

.field private final mTAG:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "WifiApNative-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/wifi/softap/SemWifiApNative;->mTAG:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/server/wifi/softap/SemWifiApNative;->mTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "WifiInjector  mSemHostapdApIfaceHal"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "mInterfaceName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/samsung/android/server/wifi/softap/SemWifiApNative;->mInterfaceName:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/server/wifi/softap/SemWifiApNative;->mSemHostapdApIfaceHal:Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal;

    return-void
.end method


# virtual methods
.method public cancelWps()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/server/wifi/softap/SemWifiApNative;->mSemHostapdApIfaceHal:Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal;->cancelWps()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public closeSupplicantConnection()V
    .locals 0

    return-void
.end method

.method public connectToHostapd()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/server/wifi/softap/SemWifiApNative;->mSemHostapdApIfaceHal:Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal;->isInitializationStarted()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/server/wifi/softap/SemWifiApNative;->mSemHostapdApIfaceHal:Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal;->initialize()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/softap/SemWifiApNative;->mSemHostapdApIfaceHal:Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal;->isInitializationComplete()Z

    move-result v0

    return v0
.end method

.method public enableVerboseLogging(I)V
    .locals 0

    return-void
.end method

.method public getAccessPointChannel()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/server/wifi/softap/SemWifiApNative;->mSemHostapdApIfaceHal:Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal;->getAccessPointChannel()I

    move-result v0

    return v0
.end method

.method public getAccessPointNumConnectedSta()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/server/wifi/softap/SemWifiApNative;->mSemHostapdApIfaceHal:Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal;->getAccessPointNumConnectedSta()I

    move-result v0

    return v0
.end method

.method public getAccessPointStaList()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/server/wifi/softap/SemWifiApNative;->mSemHostapdApIfaceHal:Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal;->getAccessPointStaList()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInterfaceName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/server/wifi/softap/SemWifiApNative;->mInterfaceName:Ljava/lang/String;

    return-object v0
.end method

.method public getStationInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/server/wifi/softap/SemWifiApNative;->mSemHostapdApIfaceHal:Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal;

    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal;->getStationInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readWhiteList()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/server/wifi/softap/SemWifiApNative;->mSemHostapdApIfaceHal:Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal;->readWhiteList()I

    move-result v0

    return v0
.end method

.method public setAccessPointDisassocSta(Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/server/wifi/softap/SemWifiApNative;->mSemHostapdApIfaceHal:Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal;

    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal;->setAccessPointDisassocSta(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setMaxClient(I)I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/server/wifi/softap/SemWifiApNative;->mSemHostapdApIfaceHal:Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal;

    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal;->setMaxClient(I)I

    move-result v0

    return v0
.end method

.method public setTxPower(I)I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/server/wifi/softap/SemWifiApNative;->mSemHostapdApIfaceHal:Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal;

    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal;->setTxPower(I)I

    move-result v0

    return v0
.end method

.method public startWpsPbc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/server/wifi/softap/SemWifiApNative;->mSemHostapdApIfaceHal:Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal;->startWpsPbc()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public startWpsPinAp(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/server/wifi/softap/SemWifiApNative;->mSemHostapdApIfaceHal:Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal;

    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal;->startWpsPinAp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public startWpsPinApRandom()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/server/wifi/softap/SemWifiApNative;->mSemHostapdApIfaceHal:Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal;->startWpsPinApRandom()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public startWpsPinClient(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/server/wifi/softap/SemWifiApNative;->mSemHostapdApIfaceHal:Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal;

    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal;->startWpsPinClient(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public stopHostapd()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/server/wifi/softap/SemWifiApNative;->mSemHostapdApIfaceHal:Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal;

    const-string/jumbo v1, "KILL_HOSTAPD"

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal;->sendHostapdCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public validatewpspin(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/server/wifi/softap/SemWifiApNative;->mSemHostapdApIfaceHal:Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal;

    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal;->validatewpspin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
