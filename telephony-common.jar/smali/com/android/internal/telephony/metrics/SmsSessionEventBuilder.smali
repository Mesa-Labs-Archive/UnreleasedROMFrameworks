.class public Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;
.super Ljava/lang/Object;
.source "SmsSessionEventBuilder.java"


# instance fields
.field mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;

    iget-object v0, p0, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;

    iput p1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->type:I

    return-void
.end method


# virtual methods
.method public build()Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;

    return-object v0
.end method

.method public setDataCalls([Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;)Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;

    iput-object p1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->dataCalls:[Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;

    return-object p0
.end method

.method public setDelay(I)Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;

    iput p1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->delay:I

    return-object p0
.end method

.method public setErrorCode(I)Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;

    iput p1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->errorCode:I

    return-object p0
.end method

.method public setFormat(I)Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;

    iput p1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->format:I

    return-object p0
.end method

.method public setImsCapabilities(Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;)Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;

    iput-object p1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->imsCapabilities:Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;

    return-object p0
.end method

.method public setImsConnectionState(Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;)Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;

    iput-object p1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->imsConnectionState:Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;

    return-object p0
.end method

.method public setRilErrno(I)Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;

    iput p1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->error:I

    return-object p0
.end method

.method public setRilRequestId(I)Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;

    iput p1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->rilRequestId:I

    return-object p0
.end method

.method public setServiceState(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;)Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;

    iput-object p1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->serviceState:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;

    return-object p0
.end method

.method public setSettings(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;)Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;

    iput-object p1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->settings:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;

    return-object p0
.end method

.method public setTech(I)Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;

    iput p1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->tech:I

    return-object p0
.end method
