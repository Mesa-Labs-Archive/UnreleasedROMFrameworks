.class Lcom/android/internal/telephony/test/SimulatedGsmCallState;
.super Landroid/os/Handler;
.source "SimulatedGsmCallState.java"


# static fields
.field static final CONNECTING_PAUSE_MSEC:I = 0x1f4

.field static final EVENT_PROGRESS_CALL_STATE:I = 0x1

.field static final MAX_CALLS:I = 0x7


# instance fields
.field private mAutoProgressConnecting:Z

.field mCalls:[Lcom/android/internal/telephony/test/CallInfo;

.field private mNextDialFailImmediately:Z


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/android/internal/telephony/test/CallInfo;

    iput-object v0, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mAutoProgressConnecting:Z

    return-void
.end method

.method private countActiveLines()I
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/test/InvalidStateEx;
        }
    .end annotation

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x0

    :goto_0
    iget-object v9, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    array-length v9, v9

    if-ge v6, v9, :cond_7

    iget-object v9, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    aget-object v0, v9, v6

    if-eqz v0, :cond_1

    if-nez v4, :cond_3

    iget-boolean v9, v0, Lcom/android/internal/telephony/test/CallInfo;->mIsMpty:Z

    if-eqz v9, :cond_3

    iget-object v9, v0, Lcom/android/internal/telephony/test/CallInfo;->mState:Lcom/android/internal/telephony/test/CallInfo$State;

    sget-object v12, Lcom/android/internal/telephony/test/CallInfo$State;->HOLDING:Lcom/android/internal/telephony/test/CallInfo$State;

    if-ne v9, v12, :cond_2

    const/4 v7, 0x1

    :cond_0
    :goto_1
    iget-boolean v9, v0, Lcom/android/internal/telephony/test/CallInfo;->mIsMpty:Z

    or-int/2addr v4, v9

    iget-object v9, v0, Lcom/android/internal/telephony/test/CallInfo;->mState:Lcom/android/internal/telephony/test/CallInfo$State;

    sget-object v12, Lcom/android/internal/telephony/test/CallInfo$State;->HOLDING:Lcom/android/internal/telephony/test/CallInfo$State;

    if-ne v9, v12, :cond_5

    move v9, v10

    :goto_2
    or-int/2addr v3, v9

    iget-object v9, v0, Lcom/android/internal/telephony/test/CallInfo;->mState:Lcom/android/internal/telephony/test/CallInfo$State;

    sget-object v12, Lcom/android/internal/telephony/test/CallInfo$State;->ACTIVE:Lcom/android/internal/telephony/test/CallInfo$State;

    if-ne v9, v12, :cond_6

    move v9, v10

    :goto_3
    or-int/2addr v1, v9

    invoke-virtual {v0}, Lcom/android/internal/telephony/test/CallInfo;->isConnecting()Z

    move-result v9

    or-int/2addr v2, v9

    invoke-virtual {v0}, Lcom/android/internal/telephony/test/CallInfo;->isRinging()Z

    move-result v9

    or-int/2addr v5, v9

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    const/4 v7, 0x0

    goto :goto_1

    :cond_3
    iget-boolean v9, v0, Lcom/android/internal/telephony/test/CallInfo;->mIsMpty:Z

    if-eqz v9, :cond_4

    if-eqz v7, :cond_4

    iget-object v9, v0, Lcom/android/internal/telephony/test/CallInfo;->mState:Lcom/android/internal/telephony/test/CallInfo$State;

    sget-object v12, Lcom/android/internal/telephony/test/CallInfo$State;->ACTIVE:Lcom/android/internal/telephony/test/CallInfo$State;

    if-ne v9, v12, :cond_4

    const-string/jumbo v9, "ModelInterpreter"

    const-string/jumbo v10, "Invalid state"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v9, Lcom/android/internal/telephony/test/InvalidStateEx;

    invoke-direct {v9}, Lcom/android/internal/telephony/test/InvalidStateEx;-><init>()V

    throw v9

    :cond_4
    iget-boolean v9, v0, Lcom/android/internal/telephony/test/CallInfo;->mIsMpty:Z

    if-nez v9, :cond_0

    if-eqz v4, :cond_0

    if-eqz v7, :cond_0

    iget-object v9, v0, Lcom/android/internal/telephony/test/CallInfo;->mState:Lcom/android/internal/telephony/test/CallInfo$State;

    sget-object v12, Lcom/android/internal/telephony/test/CallInfo$State;->HOLDING:Lcom/android/internal/telephony/test/CallInfo$State;

    if-ne v9, v12, :cond_0

    const-string/jumbo v9, "ModelInterpreter"

    const-string/jumbo v10, "Invalid state"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v9, Lcom/android/internal/telephony/test/InvalidStateEx;

    invoke-direct {v9}, Lcom/android/internal/telephony/test/InvalidStateEx;-><init>()V

    throw v9

    :cond_5
    move v9, v11

    goto :goto_2

    :cond_6
    move v9, v11

    goto :goto_3

    :cond_7
    const/4 v8, 0x0

    if-eqz v3, :cond_8

    const/4 v8, 0x1

    :cond_8
    if-eqz v1, :cond_9

    add-int/lit8 v8, v8, 0x1

    :cond_9
    if-eqz v2, :cond_a

    add-int/lit8 v8, v8, 0x1

    :cond_a
    if-eqz v5, :cond_b

    add-int/lit8 v8, v8, 0x1

    :cond_b
    return v8
.end method


# virtual methods
.method public conference()Z
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    array-length v3, v3

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    aget-object v0, v3, v2

    if-eqz v0, :cond_0

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0}, Lcom/android/internal/telephony/test/CallInfo;->isConnecting()Z

    move-result v3

    if-eqz v3, :cond_0

    return v4

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_1
    iget-object v3, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    array-length v3, v3

    if-ge v2, v3, :cond_3

    iget-object v3, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    aget-object v0, v3, v2

    if-eqz v0, :cond_2

    sget-object v3, Lcom/android/internal/telephony/test/CallInfo$State;->ACTIVE:Lcom/android/internal/telephony/test/CallInfo$State;

    iput-object v3, v0, Lcom/android/internal/telephony/test/CallInfo;->mState:Lcom/android/internal/telephony/test/CallInfo$State;

    if-lez v1, :cond_2

    iput-boolean v5, v0, Lcom/android/internal/telephony/test/CallInfo;->mIsMpty:Z

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    return v5
.end method

.method public explicitCallTransfer()Z
    .locals 4

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    array-length v3, v3

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    aget-object v0, v3, v2

    if-eqz v0, :cond_0

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0}, Lcom/android/internal/telephony/test/CallInfo;->isConnecting()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    return v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->triggerHangupAll()Z

    move-result v3

    return v3
.end method

.method public getClccLines()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    array-length v3, v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    array-length v3, v3

    if-ge v1, v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    aget-object v0, v3, v1

    if-eqz v0, :cond_0

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/test/CallInfo;->toCLCCLine(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method public getDriverCalls()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/DriverCall;",
            ">;"
        }
    .end annotation

    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    array-length v4, v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    iget-object v4, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    array-length v4, v4

    if-ge v2, v4, :cond_1

    iget-object v4, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    aget-object v0, v4, v2

    if-eqz v0, :cond_0

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/test/CallInfo;->toDriverCall(I)Lcom/android/internal/telephony/DriverCall;

    move-result-object v1

    new-instance v4, Lcom/android/internal/telephony/CallDetails;

    invoke-direct {v4}, Lcom/android/internal/telephony/CallDetails;-><init>()V

    iput-object v4, v1, Lcom/android/internal/telephony/DriverCall;->callDetails:Lcom/android/internal/telephony/CallDetails;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const-string/jumbo v4, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "SC< getDriverCalls "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    packed-switch v0, :pswitch_data_0

    :goto_0
    monitor-exit p0

    return-void

    :pswitch_0
    :try_start_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->progressConnectingCallState()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onAnswer()Z
    .locals 4

    monitor-enter p0

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    aget-object v0, v2, v1

    if-eqz v0, :cond_1

    iget-object v2, v0, Lcom/android/internal/telephony/test/CallInfo;->mState:Lcom/android/internal/telephony/test/CallInfo$State;

    sget-object v3, Lcom/android/internal/telephony/test/CallInfo$State;->INCOMING:Lcom/android/internal/telephony/test/CallInfo$State;

    if-eq v2, v3, :cond_0

    iget-object v2, v0, Lcom/android/internal/telephony/test/CallInfo;->mState:Lcom/android/internal/telephony/test/CallInfo$State;

    sget-object v3, Lcom/android/internal/telephony/test/CallInfo$State;->WAITING:Lcom/android/internal/telephony/test/CallInfo$State;

    if-ne v2, v3, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->switchActiveAndHeldOrWaiting()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    monitor-exit p0

    return v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    monitor-exit p0

    const/4 v2, 0x0

    return v2

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public onChld(CC)Z
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    add-int/lit8 v0, p2, -0x31

    if-ltz v0, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    array-length v2, v2

    if-lt v0, v2, :cond_1

    :cond_0
    return v3

    :cond_1
    packed-switch p1, :pswitch_data_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->releaseHeldOrUDUB()Z

    move-result v1

    goto :goto_0

    :pswitch_1
    if-gtz p2, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->releaseActiveAcceptHeldOrWaiting()Z

    move-result v1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    aget-object v2, v2, v0

    if-nez v2, :cond_3

    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    aput-object v4, v2, v0

    const/4 v1, 0x1

    goto :goto_0

    :pswitch_2
    if-gtz p2, :cond_4

    invoke-virtual {p0}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->switchActiveAndHeldOrWaiting()Z

    move-result v1

    goto :goto_0

    :cond_4
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->separateCall(I)Z

    move-result v1

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->conference()Z

    move-result v1

    goto :goto_0

    :pswitch_4
    invoke-virtual {p0}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->explicitCallTransfer()Z

    move-result v1

    goto :goto_0

    :pswitch_5
    const/4 v1, 0x0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public onDial(Ljava/lang/String;)Z
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v1, -0x1

    const-string/jumbo v4, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "SC> dial \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v4, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mNextDialFailImmediately:Z

    if-eqz v4, :cond_0

    iput-boolean v7, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mNextDialFailImmediately:Z

    const-string/jumbo v4, "GSM"

    const-string/jumbo v5, "SC< dial fail (per request)"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    :cond_0
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    const-string/jumbo v4, "GSM"

    const-string/jumbo v5, "SC< dial fail (invalid ph num)"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    :cond_1
    const-string/jumbo v4, "*99"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string/jumbo v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string/jumbo v4, "GSM"

    const-string/jumbo v5, "SC< dial ignored (gprs)"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v8

    :cond_2
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->countActiveLines()I

    move-result v4

    if-le v4, v8, :cond_3

    const-string/jumbo v4, "GSM"

    const-string/jumbo v5, "SC< dial fail (invalid call state)"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/android/internal/telephony/test/InvalidStateEx; {:try_start_0 .. :try_end_0} :catch_0

    return v7

    :catch_0
    move-exception v0

    const-string/jumbo v4, "GSM"

    const-string/jumbo v5, "SC< dial fail (invalid call state)"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    :cond_3
    const/4 v2, 0x0

    :goto_0
    iget-object v4, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    array-length v4, v4

    if-ge v2, v4, :cond_7

    if-gez v1, :cond_4

    iget-object v4, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    aget-object v4, v4, v2

    if-nez v4, :cond_4

    move v1, v2

    :cond_4
    iget-object v4, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    aget-object v4, v4, v2

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Lcom/android/internal/telephony/test/CallInfo;->isActiveOrHeld()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_5

    const-string/jumbo v4, "GSM"

    const-string/jumbo v5, "SC< dial fail (invalid call state)"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    :cond_5
    iget-object v4, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    aget-object v4, v4, v2

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/android/internal/telephony/test/CallInfo;->mState:Lcom/android/internal/telephony/test/CallInfo$State;

    sget-object v5, Lcom/android/internal/telephony/test/CallInfo$State;->ACTIVE:Lcom/android/internal/telephony/test/CallInfo$State;

    if-ne v4, v5, :cond_6

    iget-object v4, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    aget-object v4, v4, v2

    sget-object v5, Lcom/android/internal/telephony/test/CallInfo$State;->HOLDING:Lcom/android/internal/telephony/test/CallInfo$State;

    iput-object v5, v4, Lcom/android/internal/telephony/test/CallInfo;->mState:Lcom/android/internal/telephony/test/CallInfo$State;

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_7
    if-gez v1, :cond_8

    const-string/jumbo v4, "GSM"

    const-string/jumbo v5, "SC< dial fail (invalid call state)"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    :cond_8
    iget-object v4, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    invoke-static {v3}, Lcom/android/internal/telephony/test/CallInfo;->createOutgoingCall(Ljava/lang/String;)Lcom/android/internal/telephony/test/CallInfo;

    move-result-object v5

    aput-object v5, v4, v1

    iget-boolean v4, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mAutoProgressConnecting:Z

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    aget-object v4, v4, v1

    invoke-virtual {p0, v8, v4}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    const-wide/16 v6, 0x1f4

    invoke-virtual {p0, v4, v6, v7}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_9
    const-string/jumbo v4, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "SC< dial (slot = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v8
.end method

.method public onHangup()Z
    .locals 6

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    array-length v3, v3

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    aget-object v0, v3, v2

    if-eqz v0, :cond_0

    iget-object v3, v0, Lcom/android/internal/telephony/test/CallInfo;->mState:Lcom/android/internal/telephony/test/CallInfo$State;

    sget-object v4, Lcom/android/internal/telephony/test/CallInfo$State;->WAITING:Lcom/android/internal/telephony/test/CallInfo$State;

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    aput-object v5, v3, v2

    const/4 v1, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public progressConnectingCallState()V
    .locals 6

    monitor-enter p0

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    aget-object v0, v2, v1

    if-eqz v0, :cond_1

    iget-object v2, v0, Lcom/android/internal/telephony/test/CallInfo;->mState:Lcom/android/internal/telephony/test/CallInfo$State;

    sget-object v3, Lcom/android/internal/telephony/test/CallInfo$State;->DIALING:Lcom/android/internal/telephony/test/CallInfo$State;

    if-ne v2, v3, :cond_1

    sget-object v2, Lcom/android/internal/telephony/test/CallInfo$State;->ALERTING:Lcom/android/internal/telephony/test/CallInfo$State;

    iput-object v2, v0, Lcom/android/internal/telephony/test/CallInfo;->mState:Lcom/android/internal/telephony/test/CallInfo$State;

    iget-boolean v2, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mAutoProgressConnecting:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    invoke-virtual {p0, v2, v0}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v4, 0x1f4

    invoke-virtual {p0, v2, v4, v5}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_1
    monitor-exit p0

    return-void

    :cond_1
    if-eqz v0, :cond_2

    :try_start_1
    iget-object v2, v0, Lcom/android/internal/telephony/test/CallInfo;->mState:Lcom/android/internal/telephony/test/CallInfo$State;

    sget-object v3, Lcom/android/internal/telephony/test/CallInfo$State;->ALERTING:Lcom/android/internal/telephony/test/CallInfo$State;

    if-ne v2, v3, :cond_2

    sget-object v2, Lcom/android/internal/telephony/test/CallInfo$State;->ACTIVE:Lcom/android/internal/telephony/test/CallInfo$State;

    iput-object v2, v0, Lcom/android/internal/telephony/test/CallInfo;->mState:Lcom/android/internal/telephony/test/CallInfo$State;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public progressConnectingToActive()V
    .locals 4

    monitor-enter p0

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    aget-object v0, v2, v1

    if-eqz v0, :cond_2

    iget-object v2, v0, Lcom/android/internal/telephony/test/CallInfo;->mState:Lcom/android/internal/telephony/test/CallInfo$State;

    sget-object v3, Lcom/android/internal/telephony/test/CallInfo$State;->DIALING:Lcom/android/internal/telephony/test/CallInfo$State;

    if-eq v2, v3, :cond_0

    iget-object v2, v0, Lcom/android/internal/telephony/test/CallInfo;->mState:Lcom/android/internal/telephony/test/CallInfo$State;

    sget-object v3, Lcom/android/internal/telephony/test/CallInfo$State;->ALERTING:Lcom/android/internal/telephony/test/CallInfo$State;

    if-ne v2, v3, :cond_2

    :cond_0
    sget-object v2, Lcom/android/internal/telephony/test/CallInfo$State;->ACTIVE:Lcom/android/internal/telephony/test/CallInfo$State;

    iput-object v2, v0, Lcom/android/internal/telephony/test/CallInfo;->mState:Lcom/android/internal/telephony/test/CallInfo$State;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public releaseActiveAcceptHeldOrWaiting()Z
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_0
    iget-object v4, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    array-length v4, v4

    if-ge v3, v4, :cond_1

    iget-object v4, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    aget-object v0, v4, v3

    if-eqz v0, :cond_0

    iget-object v4, v0, Lcom/android/internal/telephony/test/CallInfo;->mState:Lcom/android/internal/telephony/test/CallInfo$State;

    sget-object v5, Lcom/android/internal/telephony/test/CallInfo$State;->ACTIVE:Lcom/android/internal/telephony/test/CallInfo$State;

    if-ne v4, v5, :cond_0

    iget-object v4, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    aput-object v6, v4, v3

    const/4 v1, 0x1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    if-nez v1, :cond_4

    const/4 v3, 0x0

    :goto_1
    iget-object v4, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    array-length v4, v4

    if-ge v3, v4, :cond_4

    iget-object v4, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    aget-object v0, v4, v3

    if-eqz v0, :cond_3

    iget-object v4, v0, Lcom/android/internal/telephony/test/CallInfo;->mState:Lcom/android/internal/telephony/test/CallInfo$State;

    sget-object v5, Lcom/android/internal/telephony/test/CallInfo$State;->DIALING:Lcom/android/internal/telephony/test/CallInfo$State;

    if-eq v4, v5, :cond_2

    iget-object v4, v0, Lcom/android/internal/telephony/test/CallInfo;->mState:Lcom/android/internal/telephony/test/CallInfo$State;

    sget-object v5, Lcom/android/internal/telephony/test/CallInfo$State;->ALERTING:Lcom/android/internal/telephony/test/CallInfo$State;

    if-ne v4, v5, :cond_3

    :cond_2
    iget-object v4, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    aput-object v6, v4, v3

    const/4 v1, 0x1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    :goto_2
    iget-object v4, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    array-length v4, v4

    if-ge v3, v4, :cond_6

    iget-object v4, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    aget-object v0, v4, v3

    if-eqz v0, :cond_5

    iget-object v4, v0, Lcom/android/internal/telephony/test/CallInfo;->mState:Lcom/android/internal/telephony/test/CallInfo$State;

    sget-object v5, Lcom/android/internal/telephony/test/CallInfo$State;->HOLDING:Lcom/android/internal/telephony/test/CallInfo$State;

    if-ne v4, v5, :cond_5

    sget-object v4, Lcom/android/internal/telephony/test/CallInfo$State;->ACTIVE:Lcom/android/internal/telephony/test/CallInfo$State;

    iput-object v4, v0, Lcom/android/internal/telephony/test/CallInfo;->mState:Lcom/android/internal/telephony/test/CallInfo$State;

    const/4 v2, 0x1

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_6
    if-eqz v2, :cond_7

    return v7

    :cond_7
    const/4 v3, 0x0

    :goto_3
    iget-object v4, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    array-length v4, v4

    if-ge v3, v4, :cond_9

    iget-object v4, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    aget-object v0, v4, v3

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/android/internal/telephony/test/CallInfo;->isRinging()Z

    move-result v4

    if-eqz v4, :cond_8

    sget-object v4, Lcom/android/internal/telephony/test/CallInfo$State;->ACTIVE:Lcom/android/internal/telephony/test/CallInfo$State;

    iput-object v4, v0, Lcom/android/internal/telephony/test/CallInfo;->mState:Lcom/android/internal/telephony/test/CallInfo$State;

    return v7

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_9
    return v7
.end method

.method public releaseHeldOrUDUB()Z
    .locals 6

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    array-length v3, v3

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    aget-object v0, v3, v2

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/internal/telephony/test/CallInfo;->isRinging()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v1, 0x1

    iget-object v3, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    aput-object v5, v3, v2

    :cond_0
    if-nez v1, :cond_3

    const/4 v2, 0x0

    :goto_1
    iget-object v3, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    array-length v3, v3

    if-ge v2, v3, :cond_3

    iget-object v3, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    aget-object v0, v3, v2

    if-eqz v0, :cond_1

    iget-object v3, v0, Lcom/android/internal/telephony/test/CallInfo;->mState:Lcom/android/internal/telephony/test/CallInfo$State;

    sget-object v4, Lcom/android/internal/telephony/test/CallInfo$State;->HOLDING:Lcom/android/internal/telephony/test/CallInfo$State;

    if-ne v3, v4, :cond_1

    const/4 v1, 0x1

    iget-object v3, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    aput-object v5, v3, v2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v3, 0x1

    return v3
.end method

.method public separateCall(I)Z
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    :try_start_0
    iget-object v6, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    aget-object v0, v6, p1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/test/CallInfo;->isConnecting()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-direct {p0}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->countActiveLines()I

    move-result v6

    if-eq v6, v9, :cond_1

    :cond_0
    return v8

    :cond_1
    sget-object v6, Lcom/android/internal/telephony/test/CallInfo$State;->ACTIVE:Lcom/android/internal/telephony/test/CallInfo$State;

    iput-object v6, v0, Lcom/android/internal/telephony/test/CallInfo;->mState:Lcom/android/internal/telephony/test/CallInfo$State;

    const/4 v6, 0x0

    iput-boolean v6, v0, Lcom/android/internal/telephony/test/CallInfo;->mIsMpty:Z

    const/4 v4, 0x0

    :goto_0
    iget-object v6, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    array-length v6, v6

    if-ge v4, v6, :cond_4

    const/4 v2, 0x0

    const/4 v5, 0x0

    if-eq v4, p1, :cond_2

    iget-object v6, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    aget-object v1, v6, v4

    if-eqz v1, :cond_2

    iget-object v6, v1, Lcom/android/internal/telephony/test/CallInfo;->mState:Lcom/android/internal/telephony/test/CallInfo$State;

    sget-object v7, Lcom/android/internal/telephony/test/CallInfo$State;->ACTIVE:Lcom/android/internal/telephony/test/CallInfo$State;

    if-ne v6, v7, :cond_2

    sget-object v6, Lcom/android/internal/telephony/test/CallInfo$State;->HOLDING:Lcom/android/internal/telephony/test/CallInfo$State;

    iput-object v6, v1, Lcom/android/internal/telephony/test/CallInfo;->mState:Lcom/android/internal/telephony/test/CallInfo$State;

    const/4 v2, 0x1

    move v5, v4

    :cond_2
    if-ne v2, v9, :cond_3

    iget-object v6, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    aget-object v6, v6, v5

    const/4 v7, 0x0

    iput-boolean v7, v6, Lcom/android/internal/telephony/test/CallInfo;->mIsMpty:Z
    :try_end_0
    .catch Lcom/android/internal/telephony/test/InvalidStateEx; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    return v9

    :catch_0
    move-exception v3

    return v8
.end method

.method public setAutoProgressConnectingCall(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mAutoProgressConnecting:Z

    return-void
.end method

.method public setNextDialFailImmediately(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mNextDialFailImmediately:Z

    return-void
.end method

.method public switchActiveAndHeldOrWaiting()Z
    .locals 5

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    array-length v3, v3

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    aget-object v0, v3, v2

    if-eqz v0, :cond_2

    iget-object v3, v0, Lcom/android/internal/telephony/test/CallInfo;->mState:Lcom/android/internal/telephony/test/CallInfo$State;

    sget-object v4, Lcom/android/internal/telephony/test/CallInfo$State;->HOLDING:Lcom/android/internal/telephony/test/CallInfo$State;

    if-ne v3, v4, :cond_2

    const/4 v1, 0x1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    iget-object v3, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    array-length v3, v3

    if-ge v2, v3, :cond_5

    iget-object v3, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    aget-object v0, v3, v2

    if-eqz v0, :cond_1

    iget-object v3, v0, Lcom/android/internal/telephony/test/CallInfo;->mState:Lcom/android/internal/telephony/test/CallInfo$State;

    sget-object v4, Lcom/android/internal/telephony/test/CallInfo$State;->ACTIVE:Lcom/android/internal/telephony/test/CallInfo$State;

    if-ne v3, v4, :cond_3

    sget-object v3, Lcom/android/internal/telephony/test/CallInfo$State;->HOLDING:Lcom/android/internal/telephony/test/CallInfo$State;

    iput-object v3, v0, Lcom/android/internal/telephony/test/CallInfo;->mState:Lcom/android/internal/telephony/test/CallInfo$State;

    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    iget-object v3, v0, Lcom/android/internal/telephony/test/CallInfo;->mState:Lcom/android/internal/telephony/test/CallInfo$State;

    sget-object v4, Lcom/android/internal/telephony/test/CallInfo$State;->HOLDING:Lcom/android/internal/telephony/test/CallInfo$State;

    if-ne v3, v4, :cond_4

    sget-object v3, Lcom/android/internal/telephony/test/CallInfo$State;->ACTIVE:Lcom/android/internal/telephony/test/CallInfo$State;

    iput-object v3, v0, Lcom/android/internal/telephony/test/CallInfo;->mState:Lcom/android/internal/telephony/test/CallInfo$State;

    goto :goto_2

    :cond_4
    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/telephony/test/CallInfo;->isRinging()Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Lcom/android/internal/telephony/test/CallInfo$State;->ACTIVE:Lcom/android/internal/telephony/test/CallInfo$State;

    iput-object v3, v0, Lcom/android/internal/telephony/test/CallInfo;->mState:Lcom/android/internal/telephony/test/CallInfo$State;

    goto :goto_2

    :cond_5
    const/4 v3, 0x1

    return v3
.end method

.method public triggerHangupAll()Z
    .locals 5

    monitor-enter p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    array-length v3, v3

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    aget-object v0, v3, v2

    iget-object v3, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    aget-object v3, v3, v2

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    const/4 v4, 0x0

    aput-object v4, v3, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    monitor-exit p0

    return v1

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public triggerHangupBackground()Z
    .locals 5

    monitor-enter p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    array-length v3, v3

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    aget-object v0, v3, v2

    if-eqz v0, :cond_0

    iget-object v3, v0, Lcom/android/internal/telephony/test/CallInfo;->mState:Lcom/android/internal/telephony/test/CallInfo$State;

    sget-object v4, Lcom/android/internal/telephony/test/CallInfo$State;->HOLDING:Lcom/android/internal/telephony/test/CallInfo$State;

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    const/4 v4, 0x0

    aput-object v4, v3, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    monitor-exit p0

    return v1

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public triggerHangupForeground()Z
    .locals 5

    monitor-enter p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    array-length v3, v3

    if-ge v2, v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    aget-object v0, v3, v2

    if-eqz v0, :cond_1

    iget-object v3, v0, Lcom/android/internal/telephony/test/CallInfo;->mState:Lcom/android/internal/telephony/test/CallInfo$State;

    sget-object v4, Lcom/android/internal/telephony/test/CallInfo$State;->INCOMING:Lcom/android/internal/telephony/test/CallInfo$State;

    if-eq v3, v4, :cond_0

    iget-object v3, v0, Lcom/android/internal/telephony/test/CallInfo;->mState:Lcom/android/internal/telephony/test/CallInfo$State;

    sget-object v4, Lcom/android/internal/telephony/test/CallInfo$State;->WAITING:Lcom/android/internal/telephony/test/CallInfo$State;

    if-ne v3, v4, :cond_1

    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    const/4 v4, 0x0

    aput-object v4, v3, v2

    const/4 v1, 0x1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_1
    iget-object v3, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    array-length v3, v3

    if-ge v2, v3, :cond_6

    iget-object v3, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    aget-object v0, v3, v2

    if-eqz v0, :cond_4

    iget-object v3, v0, Lcom/android/internal/telephony/test/CallInfo;->mState:Lcom/android/internal/telephony/test/CallInfo$State;

    sget-object v4, Lcom/android/internal/telephony/test/CallInfo$State;->DIALING:Lcom/android/internal/telephony/test/CallInfo$State;

    if-eq v3, v4, :cond_3

    iget-object v3, v0, Lcom/android/internal/telephony/test/CallInfo;->mState:Lcom/android/internal/telephony/test/CallInfo$State;

    sget-object v4, Lcom/android/internal/telephony/test/CallInfo$State;->ACTIVE:Lcom/android/internal/telephony/test/CallInfo$State;

    if-ne v3, v4, :cond_5

    :cond_3
    :goto_2
    iget-object v3, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    const/4 v4, 0x0

    aput-object v4, v3, v2

    const/4 v1, 0x1

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    iget-object v3, v0, Lcom/android/internal/telephony/test/CallInfo;->mState:Lcom/android/internal/telephony/test/CallInfo$State;

    sget-object v4, Lcom/android/internal/telephony/test/CallInfo$State;->ALERTING:Lcom/android/internal/telephony/test/CallInfo$State;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v3, v4, :cond_4

    goto :goto_2

    :cond_6
    monitor-exit p0

    return v1

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public triggerRing(Ljava/lang/String;)Z
    .locals 7

    const/4 v6, 0x0

    monitor-enter p0

    const/4 v1, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    array-length v4, v4

    if-ge v2, v4, :cond_4

    iget-object v4, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    aget-object v0, v4, v2

    if-nez v0, :cond_1

    if-gez v1, :cond_1

    move v1, v2

    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_3

    iget-object v4, v0, Lcom/android/internal/telephony/test/CallInfo;->mState:Lcom/android/internal/telephony/test/CallInfo$State;

    sget-object v5, Lcom/android/internal/telephony/test/CallInfo$State;->INCOMING:Lcom/android/internal/telephony/test/CallInfo$State;

    if-eq v4, v5, :cond_2

    iget-object v4, v0, Lcom/android/internal/telephony/test/CallInfo;->mState:Lcom/android/internal/telephony/test/CallInfo$State;

    sget-object v5, Lcom/android/internal/telephony/test/CallInfo$State;->WAITING:Lcom/android/internal/telephony/test/CallInfo$State;

    if-ne v4, v5, :cond_3

    :cond_2
    const-string/jumbo v4, "ModelInterpreter"

    const-string/jumbo v5, "triggerRing failed; phone already ringing"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v6

    :cond_3
    if-eqz v0, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_4
    if-gez v1, :cond_5

    :try_start_1
    const-string/jumbo v4, "ModelInterpreter"

    const-string/jumbo v5, "triggerRing failed; all full"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v6

    :cond_5
    :try_start_2
    iget-object v4, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/test/CallInfo;->createIncomingCall(Ljava/lang/String;)Lcom/android/internal/telephony/test/CallInfo;

    move-result-object v5

    aput-object v5, v4, v1

    if-eqz v3, :cond_6

    iget-object v4, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    aget-object v4, v4, v1

    sget-object v5, Lcom/android/internal/telephony/test/CallInfo$State;->WAITING:Lcom/android/internal/telephony/test/CallInfo$State;

    iput-object v5, v4, Lcom/android/internal/telephony/test/CallInfo;->mState:Lcom/android/internal/telephony/test/CallInfo$State;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_6
    monitor-exit p0

    const/4 v4, 0x1

    return v4

    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method
