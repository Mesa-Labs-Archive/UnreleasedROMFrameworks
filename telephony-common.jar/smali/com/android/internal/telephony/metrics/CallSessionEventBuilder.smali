.class public Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;
.super Ljava/lang/Object;
.source "CallSessionEventBuilder.java"


# instance fields
.field private final mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;

    iget-object v0, p0, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;

    iput p1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->type:I

    return-void
.end method


# virtual methods
.method public build()Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;

    return-object v0
.end method

.method public setCallIndex(I)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;

    iput p1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->callIndex:I

    return-object p0
.end method

.method public setCallState(I)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;

    iput p1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->callState:I

    return-object p0
.end method

.method public setDataCalls([Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;

    iput-object p1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->dataCalls:[Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;

    return-object p0
.end method

.method public setDelay(I)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;

    iput p1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->delay:I

    return-object p0
.end method

.method public setImsCapabilities(Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;

    iput-object p1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->imsCapabilities:Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;

    return-object p0
.end method

.method public setImsCommand(I)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;

    iput p1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->imsCommand:I

    return-object p0
.end method

.method public setImsConnectionState(Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;

    iput-object p1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->imsConnectionState:Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;

    return-object p0
.end method

.method public setImsReasonInfo(Lcom/android/internal/telephony/nano/TelephonyProto$ImsReasonInfo;)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;

    iput-object p1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->reasonInfo:Lcom/android/internal/telephony/nano/TelephonyProto$ImsReasonInfo;

    return-object p0
.end method

.method public setNITZ(J)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;

    iput-wide p1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->nitzTimestampMillis:J

    return-object p0
.end method

.method public setPhoneState(I)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;

    iput p1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->phoneState:I

    return-object p0
.end method

.method public setRilCalls([Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;

    iput-object p1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->calls:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;

    return-object p0
.end method

.method public setRilError(I)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;

    iput p1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->error:I

    return-object p0
.end method

.method public setRilRequest(I)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;

    iput p1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->rilRequest:I

    return-object p0
.end method

.method public setRilRequestId(I)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;

    iput p1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->rilRequestId:I

    return-object p0
.end method

.method public setServiceState(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;

    iput-object p1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->serviceState:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;

    return-object p0
.end method

.method public setSettings(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;

    iput-object p1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->settings:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;

    return-object p0
.end method

.method public setSrcAccessTech(I)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;

    iput p1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->srcAccessTech:I

    return-object p0
.end method

.method public setSrvccState(I)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;

    iput p1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->srvccState:I

    return-object p0
.end method

.method public setTargetAccessTech(I)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;

    iput p1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->targetAccessTech:I

    return-object p0
.end method
