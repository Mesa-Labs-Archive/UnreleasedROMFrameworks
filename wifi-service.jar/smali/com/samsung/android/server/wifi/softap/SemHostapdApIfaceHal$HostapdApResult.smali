.class Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal$HostapdApResult;
.super Ljava/lang/Object;
.source "SemHostapdApIfaceHal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HostapdApResult"
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

.field private mStatus:Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/HostapdStatus;

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

    iput-object p1, p0, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal$HostapdApResult;->mMethodName:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal$HostapdApResult;->mStatus:Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/HostapdStatus;

    iput-object v0, p0, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal$HostapdApResult;->mValue:Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "entering "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal$HostapdApResult;->mMethodName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal;->logd(Ljava/lang/String;)V

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

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal$HostapdApResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal$HostapdApResult;->mValue:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSuccess()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal$HostapdApResult;->mStatus:Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/HostapdStatus;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal$HostapdApResult;->mStatus:Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/HostapdStatus;

    iget v1, v1, Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/HostapdStatus;->code:I

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public setResult(Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/HostapdStatus;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal$HostapdApResult;->mMethodName:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal;->logCompletion(Ljava/lang/String;Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/HostapdStatus;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "leaving "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal$HostapdApResult;->mMethodName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal;->logd(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal$HostapdApResult;->mStatus:Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/HostapdStatus;

    return-void
.end method

.method public setResult(Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/HostapdStatus;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/HostapdStatus;",
            "TE;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal$HostapdApResult;->mMethodName:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal;->logCompletion(Ljava/lang/String;Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/HostapdStatus;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "leaving "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal$HostapdApResult;->mMethodName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " with result = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal;->logd(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal$HostapdApResult;->mStatus:Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/HostapdStatus;

    iput-object p2, p0, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal$HostapdApResult;->mValue:Ljava/lang/Object;

    return-void
.end method
