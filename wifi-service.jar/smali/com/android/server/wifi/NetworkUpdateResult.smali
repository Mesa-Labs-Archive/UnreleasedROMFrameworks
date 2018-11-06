.class public Lcom/android/server/wifi/NetworkUpdateResult;
.super Ljava/lang/Object;
.source "NetworkUpdateResult.java"


# instance fields
.field credentialChanged:Z

.field ipChanged:Z

.field isNewNetwork:Z

.field netId:I

.field proxyChanged:Z


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/android/server/wifi/NetworkUpdateResult;->isNewNetwork:Z

    iput p1, p0, Lcom/android/server/wifi/NetworkUpdateResult;->netId:I

    iput-boolean v0, p0, Lcom/android/server/wifi/NetworkUpdateResult;->ipChanged:Z

    iput-boolean v0, p0, Lcom/android/server/wifi/NetworkUpdateResult;->proxyChanged:Z

    iput-boolean v0, p0, Lcom/android/server/wifi/NetworkUpdateResult;->credentialChanged:Z

    return-void
.end method

.method public constructor <init>(ZZZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/NetworkUpdateResult;->isNewNetwork:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wifi/NetworkUpdateResult;->netId:I

    iput-boolean p1, p0, Lcom/android/server/wifi/NetworkUpdateResult;->ipChanged:Z

    iput-boolean p2, p0, Lcom/android/server/wifi/NetworkUpdateResult;->proxyChanged:Z

    iput-boolean p3, p0, Lcom/android/server/wifi/NetworkUpdateResult;->credentialChanged:Z

    return-void
.end method


# virtual methods
.method public getNetworkId()I
    .locals 1

    iget v0, p0, Lcom/android/server/wifi/NetworkUpdateResult;->netId:I

    return v0
.end method

.method public hasCredentialChanged()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wifi/NetworkUpdateResult;->credentialChanged:Z

    return v0
.end method

.method public hasIpChanged()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wifi/NetworkUpdateResult;->ipChanged:Z

    return v0
.end method

.method public hasProxyChanged()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wifi/NetworkUpdateResult;->proxyChanged:Z

    return v0
.end method

.method public isNewNetwork()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wifi/NetworkUpdateResult;->isNewNetwork:Z

    return v0
.end method

.method public isSuccess()Z
    .locals 2

    iget v0, p0, Lcom/android/server/wifi/NetworkUpdateResult;->netId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setIsNewNetwork(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wifi/NetworkUpdateResult;->isNewNetwork:Z

    return-void
.end method

.method public setNetworkId(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/wifi/NetworkUpdateResult;->netId:I

    return-void
.end method
