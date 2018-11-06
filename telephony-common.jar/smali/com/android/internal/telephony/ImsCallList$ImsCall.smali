.class public Lcom/android/internal/telephony/ImsCallList$ImsCall;
.super Ljava/lang/Object;
.source "ImsCallList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ImsCallList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImsCall"
.end annotation


# instance fields
.field mIsMpty:I

.field mIsMt:I

.field mNumber:Ljava/lang/String;

.field mState:I

.field mType:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/ImsCallList$ImsCall;->mState:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/ImsCallList$ImsCall;->mType:I

    iput v1, p0, Lcom/android/internal/telephony/ImsCallList$ImsCall;->mIsMt:I

    iput v1, p0, Lcom/android/internal/telephony/ImsCallList$ImsCall;->mIsMpty:I

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/ImsCallList$ImsCall;->mNumber:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/Connection;)V
    .locals 4

    const/4 v3, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/ImsCallList$ImsCall;->mState:I

    iput v1, p0, Lcom/android/internal/telephony/ImsCallList$ImsCall;->mType:I

    iput v2, p0, Lcom/android/internal/telephony/ImsCallList$ImsCall;->mIsMt:I

    iput v2, p0, Lcom/android/internal/telephony/ImsCallList$ImsCall;->mIsMpty:I

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/ImsCallList$ImsCall;->mNumber:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ImsCallList$ImsCall;->fwStateToRilState(Lcom/android/internal/telephony/Call$State;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/ImsCallList$ImsCall;->mState:I

    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->isEmergency()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    iput v0, p0, Lcom/android/internal/telephony/ImsCallList$ImsCall;->mType:I

    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    iput v0, p0, Lcom/android/internal/telephony/ImsCallList$ImsCall;->mIsMt:I

    iput v2, p0, Lcom/android/internal/telephony/ImsCallList$ImsCall;->mIsMpty:I

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/ImsCallList$ImsCall;->mNumber:Ljava/lang/String;

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getVideoState()I

    move-result v0

    invoke-static {v0}, Lcom/android/ims/ImsCallProfile;->getCallTypeFromVideoState(I)I

    move-result v0

    if-ne v0, v3, :cond_1

    iput v1, p0, Lcom/android/internal/telephony/ImsCallList$ImsCall;->mType:I

    goto :goto_0

    :cond_1
    iput v3, p0, Lcom/android/internal/telephony/ImsCallList$ImsCall;->mType:I

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1
.end method

.method public static fwStateToRilState(Lcom/android/internal/telephony/Call$State;)I
    .locals 1

    sget-object v0, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    sget-object v0, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne p0, v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    sget-object v0, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-ne p0, v0, :cond_2

    const/4 v0, 0x2

    return v0

    :cond_2
    sget-object v0, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne p0, v0, :cond_3

    const/4 v0, 0x3

    return v0

    :cond_3
    sget-object v0, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-ne p0, v0, :cond_4

    const/4 v0, 0x4

    return v0

    :cond_4
    sget-object v0, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne p0, v0, :cond_5

    const/4 v0, 0x5

    return v0

    :cond_5
    const/4 v0, -0x1

    return v0
.end method

.method public static stateToString(I)Ljava/lang/String;
    .locals 3

    packed-switch p0, :pswitch_data_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "UNKNOWN("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_0
    const-string/jumbo v0, "IDLE"

    goto :goto_0

    :pswitch_1
    const-string/jumbo v0, "ACTIVE"

    goto :goto_0

    :pswitch_2
    const-string/jumbo v0, "HOLDING"

    goto :goto_0

    :pswitch_3
    const-string/jumbo v0, "DIALING"

    goto :goto_0

    :pswitch_4
    const-string/jumbo v0, "ALERTING"

    goto :goto_0

    :pswitch_5
    const-string/jumbo v0, "INCOMING"

    goto :goto_0

    :pswitch_6
    const-string/jumbo v0, "WAITING"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public static typeToString(I)Ljava/lang/String;
    .locals 3

    sparse-switch p0, :sswitch_data_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :sswitch_0
    const-string/jumbo v0, "voice"

    goto :goto_0

    :sswitch_1
    const-string/jumbo v0, "video"

    goto :goto_0

    :sswitch_2
    const-string/jumbo v0, "EMERGENCY"

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x8 -> :sswitch_2
    .end sparse-switch
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    const/4 v3, 0x1

    const-string/jumbo v0, "<MASKED>"

    sget-boolean v1, Lcom/android/internal/telephony/TelephonyFeatures;->SHIP_BUILD:Z

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/ImsCallList$ImsCall;->mNumber:Ljava/lang/String;

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/ImsCallList$ImsCall;->mState:I

    invoke-static {v2}, Lcom/android/internal/telephony/ImsCallList$ImsCall;->stateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/ImsCallList$ImsCall;->mType:I

    invoke-static {v2}, Lcom/android/internal/telephony/ImsCallList$ImsCall;->typeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v1, p0, Lcom/android/internal/telephony/ImsCallList$ImsCall;->mIsMt:I

    if-ne v1, v3, :cond_1

    const-string/jumbo v1, ", mt"

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v1, p0, Lcom/android/internal/telephony/ImsCallList$ImsCall;->mIsMpty:I

    if-ne v1, v3, :cond_2

    const-string/jumbo v1, ", conf"

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/ImsCallList$ImsCall;->mNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_1
    const-string/jumbo v1, ", mo"

    goto :goto_0

    :cond_2
    const-string/jumbo v1, ", norm"

    goto :goto_1
.end method
