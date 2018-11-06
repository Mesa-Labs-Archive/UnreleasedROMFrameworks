.class public Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;
.super Ljava/lang/Object;
.source "TelephonyEventBuilder.java"


# instance fields
.field private final mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;


# direct methods
.method public constructor <init>(I)V
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;-><init>(JI)V

    return-void
.end method

.method public constructor <init>(JI)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    iput-wide p1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->timestampMillis:J

    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    iput p3, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->phoneId:I

    return-void
.end method


# virtual methods
.method public build()Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    return-object v0
.end method

.method public setDataCalls([Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;)Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;
    .locals 2

    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    const/4 v1, 0x7

    iput v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->type:I

    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    iput-object p1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->dataCalls:[Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;

    return-object p0
.end method

.method public setDataStallRecoveryAction(I)Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;
    .locals 2

    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    const/16 v1, 0xa

    iput v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->type:I

    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    iput p1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->dataStallAction:I

    return-object p0
.end method

.method public setDeactivateDataCall(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilDeactivateDataCall;)Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;
    .locals 2

    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    const/16 v1, 0x8

    iput v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->type:I

    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    iput-object p1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->deactivateDataCall:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilDeactivateDataCall;

    return-object p0
.end method

.method public setDeactivateDataCallResponse(I)Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;
    .locals 2

    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    const/16 v1, 0x9

    iput v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->type:I

    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    iput p1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->error:I

    return-object p0
.end method

.method public setImsCapabilities(Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;)Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;
    .locals 2

    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    const/4 v1, 0x4

    iput v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->type:I

    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    iput-object p1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->imsCapabilities:Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;

    return-object p0
.end method

.method public setImsConnectionState(Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;)Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;
    .locals 2

    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    const/4 v1, 0x3

    iput v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->type:I

    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    iput-object p1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->imsConnectionState:Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;

    return-object p0
.end method

.method public setModemRestart(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$ModemRestart;)Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;
    .locals 2

    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    const/16 v1, 0xb

    iput v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->type:I

    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    iput-object p1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->modemRestart:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$ModemRestart;

    return-object p0
.end method

.method public setNITZ(J)Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;
    .locals 3

    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    const/16 v1, 0xc

    iput v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->type:I

    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    iput-wide p1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->nitzTimestampMillis:J

    return-object p0
.end method

.method public setServiceState(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;)Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;
    .locals 2

    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    const/4 v1, 0x2

    iput v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->type:I

    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    iput-object p1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->serviceState:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;

    return-object p0
.end method

.method public setSettings(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;)Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;
    .locals 2

    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    const/4 v1, 0x1

    iput v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->type:I

    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    iput-object p1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->settings:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;

    return-object p0
.end method

.method public setSetupDataCall(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilSetupDataCall;)Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;
    .locals 2

    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    const/4 v1, 0x5

    iput v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->type:I

    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    iput-object p1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->setupDataCall:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilSetupDataCall;

    return-object p0
.end method

.method public setSetupDataCallResponse(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;)Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;
    .locals 2

    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    const/4 v1, 0x6

    iput v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->type:I

    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    iput-object p1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->setupDataCallResponse:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;

    return-object p0
.end method
