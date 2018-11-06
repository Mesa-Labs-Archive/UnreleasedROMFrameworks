.class public Lcom/samsung/android/telephony/SemSmsInterface;
.super Ljava/lang/Object;
.source "SemSmsInterface.java"


# static fields
.field public static final CMAS_GET_CELL_ID:Ljava/lang/String; = "getCid"

.field public static final CMAS_GET_CMAS_ALERT_HANDLING:Ljava/lang/String; = "getCmasAlertHandling"

.field public static final CMAS_GET_CMAS_CATEGORY:Ljava/lang/String; = "getCmasCategory"

.field public static final CMAS_GET_CMAS_CERTAINTY:Ljava/lang/String; = "getCmasCertainty"

.field public static final CMAS_GET_CMAS_MESSAGE_ID:Ljava/lang/String; = "getCmasMessageID"

.field public static final CMAS_GET_CMAS_MSG_EXPIRES:Ljava/lang/String; = "getCmasMsgExpires"

.field public static final CMAS_GET_CMAS_RECORDTYPE_FIRST_EXISTS:Ljava/lang/String; = "getCmasRecordTypeFirstExists"

.field public static final CMAS_GET_CMAS_RECORDTYPE_SECOND_EXISTS:Ljava/lang/String; = "getCmasRecordTypeSecondExists"

.field public static final CMAS_GET_CMAS_RESPONSE_TYPE:Ljava/lang/String; = "getCmasResponseType"

.field public static final CMAS_GET_CMAS_SEVERITY:Ljava/lang/String; = "getCmasSeverity"

.field public static final CMAS_GET_CMAS_URGENCY:Ljava/lang/String; = "getCmasUrgency"

.field public static final CMAS_GET_GEOGRAPHICAL_SCOPE:Ljava/lang/String; = "getGeographicalScope"

.field public static final CMAS_GET_LANGUAGE_CODE:Ljava/lang/String; = "getLanguageCode"

.field public static final CMAS_GET_LOCATION_AREA_CODE:Ljava/lang/String; = "getLac"

.field public static final CMAS_GET_MESSAGE_BODY:Ljava/lang/String; = "getMessageBody"

.field public static final CMAS_GET_MESSAGE_CLASS:Ljava/lang/String; = "getMessageClass"

.field public static final CMAS_GET_MESSAGE_FORMAT:Ljava/lang/String; = "getMessageFormat"

.field public static final CMAS_GET_PLMN:Ljava/lang/String; = "getPlmn"

.field public static final CMAS_GET_SERIAL_NUMBER:Ljava/lang/String; = "getSerialNumber"

.field public static final CMAS_GET_SERVICE_CATEGORY:Ljava/lang/String; = "getServiceCategory"

.field public static final CMAS_GET_WARNING_TYPE:Ljava/lang/String; = "getWarningType"

.field public static final CMAS_IS_CMAS_MESSAGE:Ljava/lang/String; = "isCmasMessage"

.field public static final CMAS_IS_EMERGENCY_MESSAGE:Ljava/lang/String; = "isEmergencyMessage"

.field public static final CMAS_IS_ETWS_MESSAGE:Ljava/lang/String; = "isEtwsMessage"

.field private static final DEFAULT_SUB_ID:I = -0x3ea

.field static final LOG_TAG:Ljava/lang/String; = "SecSmsManager"

.field public static final SMS_GET_CALLBACK_NUMBER:Ljava/lang/String; = "getCallbackNumber"

.field public static final SMS_GET_DEST_PORT:Ljava/lang/String; = "getDestPortAddr"

.field public static final SMS_GET_LINK_URL:Ljava/lang/String; = "getlinkUrl"

.field public static final SMS_GET_MESSAGE_PRIORITY:Ljava/lang/String; = "getMessagePriority"

.field public static final SMS_GET_READ_CONFIRM_ID:Ljava/lang/String; = "getReadConfirmId"

.field public static final SMS_GET_SAFE_MESSAGE_INDICATION:Ljava/lang/String; = "getSafeMessageIndication"

.field public static final SMS_GET_SHARED_APP_ID:Ljava/lang/String; = "getSharedAppId"

.field public static final SMS_GET_SHARED_CMD:Ljava/lang/String; = "getSharedCmd"

.field public static final SMS_GET_SHARED_PAYLOAD:Ljava/lang/String; = "getSharedPayLoad"

.field public static final SMS_GET_TELESERVICE_ID:Ljava/lang/String; = "getTeleserviceId"


# instance fields
.field private mSubId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculateLength(Ljava/lang/CharSequence;ZIII)[I
    .locals 2

    const-string/jumbo v0, "SecSmsManager"

    const-string/jumbo v1, "SemSmsInterface.getTextEncoding"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ltz p3, :cond_0

    if-lez p4, :cond_0

    invoke-static {p0, p1, p2, p3, p4}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/CharSequence;ZIII)[I

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {p0, p1, p2}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/CharSequence;ZI)[I

    move-result-object v0

    return-object v0
.end method

.method public static getCmasMessageValue(Lcom/samsung/android/telephony/SemSmsCbMessage;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string/jumbo v0, "SecSmsManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SemSmsInterface.getCmasMessageValue : API = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "getLanguageCode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/telephony/SemSmsCbMessage;->getLanguageCode()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string/jumbo v0, "getMessageBody"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/telephony/SemSmsCbMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const-string/jumbo v0, "getMessageFormat"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/telephony/SemSmsCbMessage;->getMessageFormat()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    const-string/jumbo v0, "getSerialNumber"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/telephony/SemSmsCbMessage;->getSerialNumber()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    const-string/jumbo v0, "getServiceCategory"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/telephony/SemSmsCbMessage;->getServiceCategory()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_4
    const-string/jumbo v0, "getCmasMessageID"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/samsung/android/telephony/SemSmsCbMessage;->getCmasMessageID()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_5
    const-string/jumbo v0, "getCmasCertainty"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/samsung/android/telephony/SemSmsCbMessage;->getCmasCertainty()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_6
    const-string/jumbo v0, "getCmasUrgency"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/samsung/android/telephony/SemSmsCbMessage;->getCmasUrgency()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_7
    const-string/jumbo v0, "getCmasSeverity"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/samsung/android/telephony/SemSmsCbMessage;->getCmasSeverity()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_8
    const-string/jumbo v0, "getCmasResponseType"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lcom/samsung/android/telephony/SemSmsCbMessage;->getCmasResponseType()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_9
    const-string/jumbo v0, "getCmasCategory"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lcom/samsung/android/telephony/SemSmsCbMessage;->getCmasCategory()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_a
    const-string/jumbo v0, "getCmasAlertHandling"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lcom/samsung/android/telephony/SemSmsCbMessage;->getCmasAlertHandling()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_b
    const-string/jumbo v0, "getCmasMsgExpires"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Lcom/samsung/android/telephony/SemSmsCbMessage;->getCmasMsgExpires()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_c
    const-string/jumbo v0, "getCmasRecordTypeFirstExists"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lcom/samsung/android/telephony/SemSmsCbMessage;->getCmasRecordTypeFirstExists()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_d
    const-string/jumbo v0, "getCmasRecordTypeSecondExists"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lcom/samsung/android/telephony/SemSmsCbMessage;->getCmasRecordTypeSecondExists()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_e
    const-string/jumbo v0, "getGeographicalScope"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lcom/samsung/android/telephony/SemSmsCbMessage;->getGeographicalScope()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_f
    const-string/jumbo v0, "isEmergencyMessage"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lcom/samsung/android/telephony/SemSmsCbMessage;->isEmergencyMessage()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_10
    const-string/jumbo v0, "isCmasMessage"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lcom/samsung/android/telephony/SemSmsCbMessage;->isCmasMessage()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_11
    const-string/jumbo v0, "isEtwsMessage"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Lcom/samsung/android/telephony/SemSmsCbMessage;->isEtwsMessage()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_12
    const-string/jumbo v0, "getMessageClass"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Lcom/samsung/android/telephony/SemSmsCbMessage;->getCmasWarningInfo()Landroid/telephony/SmsCbCmasInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/SmsCbCmasInfo;->getMessageClass()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_13
    const-string/jumbo v0, "getWarningType"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Lcom/samsung/android/telephony/SemSmsCbMessage;->getEtwsWarningInfo()Landroid/telephony/SmsCbEtwsInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/SmsCbEtwsInfo;->getWarningType()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_14
    const-string/jumbo v0, "getPlmn"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Lcom/samsung/android/telephony/SemSmsCbMessage;->getLocation()Landroid/telephony/SmsCbLocation;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/SmsCbLocation;->getPlmn()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_15
    const-string/jumbo v0, "getCid"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {p0}, Lcom/samsung/android/telephony/SemSmsCbMessage;->getLocation()Landroid/telephony/SmsCbLocation;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/SmsCbLocation;->getCid()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_16
    const-string/jumbo v0, "getLac"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-virtual {p0}, Lcom/samsung/android/telephony/SemSmsCbMessage;->getLocation()Landroid/telephony/SmsCbLocation;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/SmsCbLocation;->getLac()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_17
    const-string/jumbo v0, "SecSmsManager"

    const-string/jumbo v1, "NOT Supported API. Need to add API"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "NOT Supported API"

    return-object v0
.end method

.method public static getDefaultRespondViaMessageApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;
    .locals 2

    const-string/jumbo v0, "SecSmsManager"

    const-string/jumbo v1, "SemSmsInterface.getDefaultRespondViaMessageApplication"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0, p1}, Lcom/android/internal/telephony/SmsApplication;->getDefaultRespondViaMessageApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public static getSmsApplicationName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    const/4 v4, 0x0

    if-nez p1, :cond_0

    const-string/jumbo v2, "SecSmsManager"

    const-string/jumbo v3, "context is null"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    :cond_0
    invoke-static {p0, p1}, Lcom/android/internal/telephony/SmsApplication;->getSmsApplicationData(Ljava/lang/String;Landroid/content/Context;)Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->getApplicationName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "SecSmsManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "SemSmsInterface.getSmsApplicationName : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_1
    return-object v4
.end method

.method public static getSmsMessageValue(Landroid/telephony/SmsMessage;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string/jumbo v0, "SecSmsManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SemSmsInterface.getSmsMessageValue : API = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "getCallbackNumber"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/telephony/SmsMessage;->getCallbackNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string/jumbo v0, "getlinkUrl"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/telephony/SmsMessage;->getlinkUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const-string/jumbo v0, "getSharedAppId"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/telephony/SmsMessage;->getSharedAppId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    const-string/jumbo v0, "getSharedPayLoad"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/telephony/SmsMessage;->getSharedPayLoad()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    const-string/jumbo v0, "getSharedCmd"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroid/telephony/SmsMessage;->getSharedCmd()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_4
    const-string/jumbo v0, "getTeleserviceId"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Landroid/telephony/SmsMessage;->getTeleserviceId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_5
    const-string/jumbo v0, "getMessagePriority"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Landroid/telephony/SmsMessage;->getMessagePriority()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_6
    const-string/jumbo v0, "getSafeMessageIndication"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Landroid/telephony/SmsMessage;->getSafeMessageIndication()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_7
    const-string/jumbo v0, "getDestPortAddr"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Landroid/telephony/SmsMessage;->getDestPortAddr()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_8
    const-string/jumbo v0, "getReadConfirmId"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Landroid/telephony/SmsMessage;->getReadConfirmId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_9
    const-string/jumbo v0, "SecSmsManager"

    const-string/jumbo v1, "NOT Supported API. Need to add API"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "NOT Supported API"

    return-object v0
.end method
