.class Lcom/android/internal/telephony/sip/SipCommandInterface;
.super Lcom/android/internal/telephony/BaseCommands;
.source "SipCommandInterface.java"

# interfaces
.implements Lcom/android/internal/telephony/CommandsInterface;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/BaseCommands;-><init>(Landroid/content/Context;)V

    return-void
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
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public getModemActivityInfo(Landroid/os/Message;)V
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
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

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

.method public setDataProfile([Lcom/android/internal/telephony/dataconnection/DataProfile;ZLandroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public setDisable2g(ILandroid/os/Message;)V
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

.method public setOnNITZTime(Landroid/os/Handler;ILjava/lang/Object;)V
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

.method public transferCall(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V
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
