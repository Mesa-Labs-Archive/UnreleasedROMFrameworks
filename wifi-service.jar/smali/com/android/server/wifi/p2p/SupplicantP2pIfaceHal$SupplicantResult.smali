.class Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;
.super Ljava/lang/Object;
.source "SupplicantP2pIfaceHal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SupplicantResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mMethodName:Ljava/lang/String;

.field private mStatus:Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

.field private mValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->mMethodName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->mStatus:Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    iput-object v0, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->mValue:Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "entering "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->mMethodName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->logd(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getResult()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->mValue:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSuccess()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->mStatus:Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->mStatus:Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    iget v1, v1, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->code:I

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public setResult(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->mMethodName:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->logCompletion(Ljava/lang/String;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "leaving "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->mMethodName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->logd(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->mStatus:Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    return-void
.end method

.method public setResult(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;",
            "TE;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->mMethodName:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->logCompletion(Ljava/lang/String;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "leaving "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->mMethodName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " with result = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->logd(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->mStatus:Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    iput-object p2, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->mValue:Ljava/lang/Object;

    return-void
.end method
