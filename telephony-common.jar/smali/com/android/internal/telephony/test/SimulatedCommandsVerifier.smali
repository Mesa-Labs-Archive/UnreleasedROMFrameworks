.class public Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;
.super Ljava/lang/Object;
.source "SimulatedCommandsVerifier.java"

# interfaces
.implements Lcom/android/internal/telephony/CommandsInterface;


# static fields
.field private static sInstance:Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;
    .locals 1

    sget-object v0, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->sInstance:Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;

    invoke-direct {v0}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->sInstance:Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;

    :cond_0
    sget-object v0, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->sInstance:Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;

    return-object v0
.end method


# virtual methods
.method public acceptCall(ILandroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public acceptCall(Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public accessPhoneBookEntry(IIILcom/android/internal/telephony/uicc/AdnRecord;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public acknowledgeIncomingGsmSmsWithPdu(ZLjava/lang/String;Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public acknowledgeLastIncomingCdmaSms(ZILandroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public acknowledgeLastIncomingGsmSms(ZILandroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public cancelPendingUssd(Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public cancelTransferCall(ILandroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public changeIccPin(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public changeIccPin2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public changeIccPin2ForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public changeIccPinForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public changeIccSimPerso(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public conference(Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public deactivateDataCall(IILandroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public deleteSmsOnRuim(ILandroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public deleteSmsOnSim(ILandroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public dial(Ljava/lang/String;ILandroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public dial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public dial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;Lcom/android/internal/telephony/CallDetails;Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public dialEmergencyCall(Ljava/lang/String;ILandroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public dialEmergencyCall(Ljava/lang/String;ILcom/android/internal/telephony/CallDetails;Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public emergencyControl(ILandroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public emergencySearch(Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public exitEmergencyCallbackMode(Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public explicitCallTransfer(Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public explicitCallTransfer(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public getAcbInfo(Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public getAllowedCarriers(Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public getAtr(Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public getAvailableNetworks(Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public getBasebandVersion(Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public getCDMASubscription(Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public getCLIR(Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public getCbConfig(Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public getCdmaBroadcastConfig(Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public getCdmaSubscriptionSource(Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public getCurrentCalls(Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public getDataCallList(Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public getDataRegistrationState(Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public getDeviceIdentity(Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public getDisable2g(Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public getGsmBroadcastConfig(Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public getHardwareConfig(Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public getICBarring(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public getIMEI(Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public getIMEISV(Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public getIMSI(Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public getIMSIForApp(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public getIccCardStatus(Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public getImsRegistrationState(Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public getLastCallFailCause(Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public getLastDataCallFailCause(Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public getLastPdpFailCause(Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public getLteOnCdmaMode()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getModemActivityInfo(Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public getModemCapability(Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public getMute(Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public getNetworkSelectionMode(Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public getOperator(Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public getPDPContextList(Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public getPhoneBookEntry(IIILjava/lang/String;Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public getPhoneBookStorageInfo(ILandroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public getPreferredNetworkList(Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public getPreferredNetworkType(Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public getPreferredVoicePrivacy(Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public getRadioCapability(Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getRilVersion()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getSIMLockInfo(IILandroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public getSignalStrength(Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public getSmscAddress(Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public getUsimPBCapa(Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public getVoiceRadioTechnology(Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public getVoiceRegistrationState(Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public handleCallSetupRequestFromSim(ZLandroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public hangupConnection(ILandroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public hangupForegroundResumeBackground(Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public hangupWaitingOrBackground(Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public holdCall(Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public iccCloseLogicalChannel(ILandroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public iccIO(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public iccOpenLogicalChannel(Ljava/lang/String;ILandroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public iccTransmitApduBasicChannel(IIIIILjava/lang/String;Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public iccTransmitApduLogicalChannel(IIIIIILjava/lang/String;Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public invokeOemRilRequestRaw([BLandroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public modifyCallInitiate(Lcom/android/internal/telephony/CallModify;Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public notifySimPbReady()V
    .locals 0

    return-void
.end method

.method public nvReadItem(ILandroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public nvResetConfig(ILandroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public nvWriteCdmaPrl([BLandroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public nvWriteItem(ILjava/lang/String;Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public oemSendCdmaSmsMore([BLandroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public pullLceData(Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public queryAvailableBandMode(Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public queryCLIP(Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public queryCNAP(Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public queryCallForwardStatus(IILjava/lang/String;Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public queryCallWaiting(ILandroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public queryCdmaRoamingPreference(Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public queryCsgList(Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public queryFacilityLock(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public queryFacilityLockForApp(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public queryTTYMode(Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public refreshNitzTime(Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public registerFoT53ClirlInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public registerForAcbInfoChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public registerForCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public registerForCallWaitingInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public registerForCdmaOtaProvision(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public registerForCdmaPrlChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public registerForCdmaSubscriptionChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public registerForCellInfoList(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public registerForCsFallback(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public registerForDataCallListChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public registerForDdsChange(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public registerForDisplayInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public registerForExitEmergencyCallbackMode(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public registerForHardwareConfigChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public registerForHomeNetwork(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public registerForHysteresisDCN(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public registerForIccRefresh(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public registerForIccStatusChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public registerForImsNetworkStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public registerForImsPrefValue(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public registerForInCallVoicePrivacyOff(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public registerForInCallVoicePrivacyOn(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public registerForLceInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public registerForLineControlInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public registerForModemCapEvent(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public registerForNetworkStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public registerForNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public registerForNumberInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public registerForPcoData(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public registerForRadioCapabilityChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public registerForRadioStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public registerForRedirectedNumberInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public registerForResendIncallMute(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public registerForRilConnected(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public registerForRingbackTone(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public registerForSap(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public registerForSignalInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public registerForSimCountMismatched(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public registerForSimIccIdNoti(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public registerForSimSwaped(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public registerForSrvccStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public registerForSubscriptionStatusChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public registerForT53AudioControlInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public registerForVoiceRadioTechChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public registerT3346Timer(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public registerVoiceRadioBearerHoState(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public rejectCall(Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public reportSmsMemoryStatus(ZLandroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public reportStkServiceIsRunning(Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public requestIccSimAuthentication(ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public requestIsimAuthentication(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public requestShutdown(Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public resetRadio(Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public secSendCdmaSms([BLandroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public secSendImsCdmaSms([BIILandroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public secSendImsGsmSms(Ljava/lang/String;Ljava/lang/String;IILandroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public secSendSMS(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public secSendSMSExpectMore(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public selectCsgManual(Ljava/lang/String;IILandroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public sendBurstDtmf(Ljava/lang/String;IILandroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public sendCDMAFeatureCode(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public sendCdmaSms([BLandroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public sendDeviceState(IZLandroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public sendDtmf(CLandroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public sendEncodedUSSD([BIILandroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public sendEnvelope(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public sendEnvelopeWithStatus(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public sendImsCdmaSms([BIILandroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public sendImsGsmSms(Ljava/lang/String;Ljava/lang/String;IILandroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public sendSMS(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public sendSMSExpectMore(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public sendSMSmore(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public sendTerminalResponse(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public sendUSSD(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public separateConnection(ILandroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public setAllowedCarriers(Ljava/util/List;Landroid/os/Message;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/service/carrier/CarrierIdentifier;",
            ">;",
            "Landroid/os/Message;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public setBandMode(ILandroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public setCLIR(ILandroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public setCallForward(IIILjava/lang/String;ILandroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public setCallForward(IIILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public setCallWaiting(ZILandroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public setCdmaBroadcastActivation(ZLandroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public setCdmaBroadcastConfig([Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public setCdmaRoamingPreference(ILandroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public setCdmaSubscriptionSource(ILandroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public setDataAllowed(ZLandroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public setDataProfile([Lcom/android/internal/telephony/dataconnection/DataProfile;ZLandroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public setDisable2g(ILandroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public setEmergencyCallbackMode(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public setFacilityLock(Ljava/lang/String;ZLjava/lang/String;ILandroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public setFacilityLockForApp(Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public setGsmBroadcastActivation(ZLandroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public setGsmBroadcastConfig([Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public setICBarring(Ljava/lang/String;ILjava/lang/String;ILandroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public setImsCallList(Lcom/android/internal/telephony/ImsCallList;Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public setInitialAttachApn(Lcom/android/internal/telephony/dataconnection/DataProfile;ZLandroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public setLocationUpdates(ZLandroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public setMute(ZLandroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public setNetworkSelectionModeAutomatic(Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public setNetworkSelectionModeManual(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public setOnCallRing(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public setOnCatCallControlResult(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public setOnCatCallSetUp(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public setOnCatCcAlphaNotify(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public setOnCatEvent(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public setOnCatProactiveCmd(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public setOnCatSendSmsResult(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public setOnCatSessionEnd(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public setOnIccAppRefresh(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public setOnIccRefresh(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public setOnIccSmsFull(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public setOnNITZTime(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public setOnNewCdmaSms(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public setOnNewGsmBroadcastSms(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public setOnNewGsmSms(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public setOnPbInitComplete(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public setOnReleaseCompleteMessageRegistrant(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public setOnRestrictedStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public setOnSendDTMFResult(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public setOnSignalStrengthUpdate(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public setOnSimPbReady(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public setOnSmsDeviceReady(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public setOnSmsOnSim(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public setOnSmsStatus(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public setOnSs(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public setOnStkCallStatusResult(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public setOnSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public setOnUSSD(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public setOnUnsolOemHookRaw(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public setPhoneType(I)V
    .locals 0

    return-void
.end method

.method public setPreferredNetworkList(ILjava/lang/String;Ljava/lang/String;IIIILandroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public setPreferredNetworkType(ILandroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public setPreferredVoicePrivacy(ZLandroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public setRadioCapability(Lcom/android/internal/telephony/RadioCapability;Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public setRadioPower(ZLandroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public setSimCardPower(ZLandroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public setSimInitEvent(Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public setSimPower(ILandroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public setSmscAddress(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public setSuppServiceNotifications(ZLandroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public setTTYMode(ILandroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public setTransmitPower(ILandroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public setUiccSubscription(IIIILandroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public setUnsolResponseFilter(ILandroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public setupDataCall(ILcom/android/internal/telephony/dataconnection/DataProfile;ZZLandroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public startDtmf(CLandroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public startLceService(IZLandroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public stopDtmf(Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public stopLceService(Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public supplyIccPerso(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public supplyIccPin(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public supplyIccPin2(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public supplyIccPin2ForApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public supplyIccPinForApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public supplyIccPuk(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public supplyIccPuk2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public supplyIccPuk2ForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public supplyIccPukForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public supplyNetworkDepersonalization(Ljava/lang/String;ILandroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public supplyNetworkDepersonalization(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public switchWaitingOrHoldingAndActive(Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public testingEmergencyCall()V
    .locals 0

    return-void
.end method

.method public transferCall(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public unSetOnCallRing(Landroid/os/Handler;)V
    .locals 0

    return-void
.end method

.method public unSetOnCatCallControlResult(Landroid/os/Handler;)V
    .locals 0

    return-void
.end method

.method public unSetOnCatCallSetUp(Landroid/os/Handler;)V
    .locals 0

    return-void
.end method

.method public unSetOnCatCcAlphaNotify(Landroid/os/Handler;)V
    .locals 0

    return-void
.end method

.method public unSetOnCatEvent(Landroid/os/Handler;)V
    .locals 0

    return-void
.end method

.method public unSetOnCatProactiveCmd(Landroid/os/Handler;)V
    .locals 0

    return-void
.end method

.method public unSetOnCatSendSmsResult(Landroid/os/Handler;)V
    .locals 0

    return-void
.end method

.method public unSetOnCatSessionEnd(Landroid/os/Handler;)V
    .locals 0

    return-void
.end method

.method public unSetOnIccSmsFull(Landroid/os/Handler;)V
    .locals 0

    return-void
.end method

.method public unSetOnNITZTime(Landroid/os/Handler;)V
    .locals 0

    return-void
.end method

.method public unSetOnNewCdmaSms(Landroid/os/Handler;)V
    .locals 0

    return-void
.end method

.method public unSetOnNewGsmBroadcastSms(Landroid/os/Handler;)V
    .locals 0

    return-void
.end method

.method public unSetOnNewGsmSms(Landroid/os/Handler;)V
    .locals 0

    return-void
.end method

.method public unSetOnPbInitComplete(Landroid/os/Handler;)V
    .locals 0

    return-void
.end method

.method public unSetOnReleaseCompleteMessageRegistrant(Landroid/os/Handler;)V
    .locals 0

    return-void
.end method

.method public unSetOnRestrictedStateChanged(Landroid/os/Handler;)V
    .locals 0

    return-void
.end method

.method public unSetOnSendDTMFResult(Landroid/os/Handler;)V
    .locals 0

    return-void
.end method

.method public unSetOnSignalStrengthUpdate(Landroid/os/Handler;)V
    .locals 0

    return-void
.end method

.method public unSetOnSimPbReady(Landroid/os/Handler;)V
    .locals 0

    return-void
.end method

.method public unSetOnSmsDeviceReady(Landroid/os/Handler;)V
    .locals 0

    return-void
.end method

.method public unSetOnSmsOnSim(Landroid/os/Handler;)V
    .locals 0

    return-void
.end method

.method public unSetOnSmsStatus(Landroid/os/Handler;)V
    .locals 0

    return-void
.end method

.method public unSetOnSs(Landroid/os/Handler;)V
    .locals 0

    return-void
.end method

.method public unSetOnStkCallStatusResult(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public unSetOnSuppServiceNotification(Landroid/os/Handler;)V
    .locals 0

    return-void
.end method

.method public unSetOnUSSD(Landroid/os/Handler;)V
    .locals 0

    return-void
.end method

.method public unSetOnUnsolOemHookRaw(Landroid/os/Handler;)V
    .locals 0

    return-void
.end method

.method public unregisterForAcbInfoChanged(Landroid/os/Handler;)V
    .locals 0

    return-void
.end method

.method public unregisterForAvailable(Landroid/os/Handler;)V
    .locals 0

    return-void
.end method

.method public unregisterForCallStateChanged(Landroid/os/Handler;)V
    .locals 0

    return-void
.end method

.method public unregisterForCallWaitingInfo(Landroid/os/Handler;)V
    .locals 0

    return-void
.end method

.method public unregisterForCdmaOtaProvision(Landroid/os/Handler;)V
    .locals 0

    return-void
.end method

.method public unregisterForCdmaPrlChanged(Landroid/os/Handler;)V
    .locals 0

    return-void
.end method

.method public unregisterForCdmaSubscriptionChanged(Landroid/os/Handler;)V
    .locals 0

    return-void
.end method

.method public unregisterForCellInfoList(Landroid/os/Handler;)V
    .locals 0

    return-void
.end method

.method public unregisterForCsFallback(Landroid/os/Handler;)V
    .locals 0

    return-void
.end method

.method public unregisterForDataCallListChanged(Landroid/os/Handler;)V
    .locals 0

    return-void
.end method

.method public unregisterForDdsChange(Landroid/os/Handler;)V
    .locals 0

    return-void
.end method

.method public unregisterForDisplayInfo(Landroid/os/Handler;)V
    .locals 0

    return-void
.end method

.method public unregisterForExitEmergencyCallbackMode(Landroid/os/Handler;)V
    .locals 0

    return-void
.end method

.method public unregisterForHardwareConfigChanged(Landroid/os/Handler;)V
    .locals 0

    return-void
.end method

.method public unregisterForHomeNetwork(Landroid/os/Handler;)V
    .locals 0

    return-void
.end method

.method public unregisterForHysteresisDCN(Landroid/os/Handler;)V
    .locals 0

    return-void
.end method

.method public unregisterForIccRefresh(Landroid/os/Handler;)V
    .locals 0

    return-void
.end method

.method public unregisterForIccStatusChanged(Landroid/os/Handler;)V
    .locals 0

    return-void
.end method

.method public unregisterForImsNetworkStateChanged(Landroid/os/Handler;)V
    .locals 0

    return-void
.end method

.method public unregisterForImsPrefValue(Landroid/os/Handler;)V
    .locals 0

    return-void
.end method

.method public unregisterForInCallVoicePrivacyOff(Landroid/os/Handler;)V
    .locals 0

    return-void
.end method

.method public unregisterForInCallVoicePrivacyOn(Landroid/os/Handler;)V
    .locals 0

    return-void
.end method

.method public unregisterForLceInfo(Landroid/os/Handler;)V
    .locals 0

    return-void
.end method

.method public unregisterForLineControlInfo(Landroid/os/Handler;)V
    .locals 0

    return-void
.end method

.method public unregisterForModemCapEvent(Landroid/os/Handler;)V
    .locals 0

    return-void
.end method

.method public unregisterForNetworkStateChanged(Landroid/os/Handler;)V
    .locals 0

    return-void
.end method

.method public unregisterForNotAvailable(Landroid/os/Handler;)V
    .locals 0

    return-void
.end method

.method public unregisterForNumberInfo(Landroid/os/Handler;)V
    .locals 0

    return-void
.end method

.method public unregisterForOffOrNotAvailable(Landroid/os/Handler;)V
    .locals 0

    return-void
.end method

.method public unregisterForOn(Landroid/os/Handler;)V
    .locals 0

    return-void
.end method

.method public unregisterForPcoData(Landroid/os/Handler;)V
    .locals 0

    return-void
.end method

.method public unregisterForRadioCapabilityChanged(Landroid/os/Handler;)V
    .locals 0

    return-void
.end method

.method public unregisterForRadioStateChanged(Landroid/os/Handler;)V
    .locals 0

    return-void
.end method

.method public unregisterForRedirectedNumberInfo(Landroid/os/Handler;)V
    .locals 0

    return-void
.end method

.method public unregisterForResendIncallMute(Landroid/os/Handler;)V
    .locals 0

    return-void
.end method

.method public unregisterForRilConnected(Landroid/os/Handler;)V
    .locals 0

    return-void
.end method

.method public unregisterForRingbackTone(Landroid/os/Handler;)V
    .locals 0

    return-void
.end method

.method public unregisterForSap(Landroid/os/Handler;)V
    .locals 0

    return-void
.end method

.method public unregisterForSignalInfo(Landroid/os/Handler;)V
    .locals 0

    return-void
.end method

.method public unregisterForSimCountMismatched(Landroid/os/Handler;)V
    .locals 0

    return-void
.end method

.method public unregisterForSimIccIdNoti(Landroid/os/Handler;)V
    .locals 0

    return-void
.end method

.method public unregisterForSimSwaped(Landroid/os/Handler;)V
    .locals 0

    return-void
.end method

.method public unregisterForSrvccStateChanged(Landroid/os/Handler;)V
    .locals 0

    return-void
.end method

.method public unregisterForSubscriptionStatusChanged(Landroid/os/Handler;)V
    .locals 0

    return-void
.end method

.method public unregisterForT53AudioControlInfo(Landroid/os/Handler;)V
    .locals 0

    return-void
.end method

.method public unregisterForT53ClirInfo(Landroid/os/Handler;)V
    .locals 0

    return-void
.end method

.method public unregisterForVoiceRadioTechChanged(Landroid/os/Handler;)V
    .locals 0

    return-void
.end method

.method public unregisterT3346Timer(Landroid/os/Handler;)V
    .locals 0

    return-void
.end method

.method public unregisterVoiceRadioBearerHoState(Landroid/os/Handler;)V
    .locals 0

    return-void
.end method

.method public unsetOnIccAppRefresh(Landroid/os/Handler;)V
    .locals 0

    return-void
.end method

.method public unsetOnIccRefresh(Landroid/os/Handler;)V
    .locals 0

    return-void
.end method

.method public updateStackBinding(IILandroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public writeSmsToRuim(ILjava/lang/String;Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public writeSmsToSim(ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0

    return-void
.end method
