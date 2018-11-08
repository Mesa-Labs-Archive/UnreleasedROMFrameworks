.class public Lcom/android/internal/telephony/GsmCdmaCall;
.super Lcom/android/internal/telephony/Call;
.source "GsmCdmaCall.java"


# instance fields
.field mOwner:Lcom/android/internal/telephony/GsmCdmaCallTracker;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/GsmCdmaCallTracker;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/telephony/Call;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/GsmCdmaCall;->mOwner:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    return-void
.end method


# virtual methods
.method public attach(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/DriverCall;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p2, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    invoke-static {v0}, Lcom/android/internal/telephony/GsmCdmaCall;->stateFromDCState(Lcom/android/internal/telephony/DriverCall$State;)Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCall;->mState:Lcom/android/internal/telephony/Call$State;

    return-void
.end method

.method public attachFake(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/Call$State;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object p2, p0, Lcom/android/internal/telephony/GsmCdmaCall;->mState:Lcom/android/internal/telephony/Call$State;

    return-void
.end method

.method public connectionDisconnected(Lcom/android/internal/telephony/GsmCdmaConnection;)Z
    .locals 5

    iget-object v3, p0, Lcom/android/internal/telephony/GsmCdmaCall;->mState:Lcom/android/internal/telephony/Call$State;

    sget-object v4, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-eq v3, v4, :cond_2

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/android/internal/telephony/GsmCdmaCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/GsmCdmaCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/Connection;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-eq v3, v4, :cond_1

    const/4 v0, 0x0

    :cond_0
    if-eqz v0, :cond_2

    sget-object v3, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    iput-object v3, p0, Lcom/android/internal/telephony/GsmCdmaCall;->mState:Lcom/android/internal/telephony/Call$State;

    const/4 v3, 0x1

    return v3

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    return v3
.end method

.method public detach(Lcom/android/internal/telephony/GsmCdmaConnection;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    iput-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCall;->mState:Lcom/android/internal/telephony/Call$State;

    :cond_0
    return-void
.end method

.method public getConnections()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/Connection;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCall;->mConnections:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPhone()Lcom/android/internal/telephony/Phone;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCall;->mOwner:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->getPhone()Lcom/android/internal/telephony/GsmCdmaPhone;

    move-result-object v0

    return-object v0
.end method

.method public hangup()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCall;->mOwner:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->hangup(Lcom/android/internal/telephony/GsmCdmaCall;)V

    return-void
.end method

.method isFull()Z
    .locals 2

    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCall;->mOwner:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->getMaxConnectionsPerCall()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMultiparty()Z
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaCall;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    if-eq v3, v4, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaCall;->isImsCall()Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_0
    const/4 v1, 0x0

    iget-object v3, p0, Lcom/android/internal/telephony/GsmCdmaCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_2

    iget-object v3, p0, Lcom/android/internal/telephony/GsmCdmaCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/Connection;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Connection;->getCallDetails()Lcom/android/internal/telephony/CallDetails;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-boolean v3, v0, Lcom/android/internal/telephony/CallDetails;->call_isMpty:Z

    if-eqz v3, :cond_1

    return v4

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v5

    :cond_3
    iget-object v3, p0, Lcom/android/internal/telephony/GsmCdmaCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, v4, :cond_4

    move v3, v4

    :goto_1
    return v3

    :cond_4
    move v3, v5

    goto :goto_1
.end method

.method onHangupLocal()V
    .locals 4

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/android/internal/telephony/GsmCdmaCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/GsmCdmaCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/GsmCdmaConnection;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaConnection;->onHangupLocal()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    sget-object v3, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    iput-object v3, p0, Lcom/android/internal/telephony/GsmCdmaCall;->mState:Lcom/android/internal/telephony/Call$State;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCall;->mState:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method update(Lcom/android/internal/telephony/GsmCdmaConnection;Lcom/android/internal/telephony/DriverCall;)Z
    .locals 3

    const/4 v0, 0x0

    iget-object v2, p2, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    invoke-static {v2}, Lcom/android/internal/telephony/GsmCdmaCall;->stateFromDCState(Lcom/android/internal/telephony/DriverCall$State;)Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaCall;->mState:Lcom/android/internal/telephony/Call$State;

    if-eq v1, v2, :cond_0

    iput-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCall;->mState:Lcom/android/internal/telephony/Call$State;

    const/4 v0, 0x1

    :cond_0
    return v0
.end method
