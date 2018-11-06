.class public Lcom/android/internal/telephony/PduTest;
.super Ljava/lang/Object;
.source "PduTest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/PduTest$1;
    }
.end annotation


# static fields
.field private static final ACTION_TEST_PDU:Ljava/lang/String; = "com.android.internal.telephony.PduTest"

.field private static final DBG:Z

.field private static final PDU_TYPE_RECEIVED_BROADCAST_SMS:I = 0x2

.field private static final PDU_TYPE_RECEIVED_CDMA_SMS:I = 0x1

.field private static final PDU_TYPE_RECEIVED_GSM_SMS:I


# instance fields
.field private LOG_TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field protected mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mPhoneId:I

.field private mRadioIndication:Lcom/android/internal/telephony/RadioIndication;

.field private mRil:Lcom/android/internal/telephony/RIL;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/android/internal/telephony/PduTest;->DBG:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/internal/telephony/PduTest;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PduTest;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/internal/telephony/PduTest;)I
    .locals 1

    iget v0, p0, Lcom/android/internal/telephony/PduTest;->mPhoneId:I

    return v0
.end method

.method static synthetic -get3(Lcom/android/internal/telephony/PduTest;)Lcom/android/internal/telephony/RadioIndication;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PduTest;->mRadioIndication:Lcom/android/internal/telephony/RadioIndication;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/internal/telephony/PduTest;[B)Landroid/telephony/SmsMessage;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PduTest;->createFromPdu([B)Landroid/telephony/SmsMessage;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/internal/telephony/PduTest;ILandroid/telephony/SmsMessage;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/PduTest;->cdmaNewSms(ILandroid/telephony/SmsMessage;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    sput-boolean v0, Lcom/android/internal/telephony/PduTest;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/RIL;Lcom/android/internal/telephony/RadioIndication;I)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v1, "PduTest"

    iput-object v1, p0, Lcom/android/internal/telephony/PduTest;->LOG_TAG:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/telephony/PduTest;->mPhoneId:I

    new-instance v1, Lcom/android/internal/telephony/PduTest$1;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/PduTest$1;-><init>(Lcom/android/internal/telephony/PduTest;)V

    iput-object v1, p0, Lcom/android/internal/telephony/PduTest;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/internal/telephony/PduTest;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/internal/telephony/PduTest;->mRil:Lcom/android/internal/telephony/RIL;

    iput-object p3, p0, Lcom/android/internal/telephony/PduTest;->mRadioIndication:Lcom/android/internal/telephony/RadioIndication;

    iput p4, p0, Lcom/android/internal/telephony/PduTest;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/internal/telephony/PduTest;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/PduTest;->LOG_TAG:Ljava/lang/String;

    sget-boolean v1, Lcom/android/internal/telephony/PduTest;->DBG:Z

    if-eqz v1, :cond_0

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "com.android.internal.telephony.PduTest"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/PduTest;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "register for intent action=com.android.internal.telephony.PduTest"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/internal/telephony/PduTest;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/PduTest;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method private cdmaNewSms(ILandroid/telephony/SmsMessage;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x2

    iget-object v0, p0, Lcom/android/internal/telephony/PduTest;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processIndication(I)V

    iget-object v0, p0, Lcom/android/internal/telephony/PduTest;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v1, 0x3fc

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/RIL;->unsljLog(I)V

    iget-object v0, p0, Lcom/android/internal/telephony/PduTest;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, v2, v2}, Lcom/android/internal/telephony/RIL;->writeMetricsNewSms(II)V

    iget-object v0, p0, Lcom/android/internal/telephony/PduTest;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mCdmaSmsRegistrant:Landroid/os/Registrant;

    new-instance v1, Landroid/os/AsyncResult;

    invoke-direct {v1, v3, p2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    return-void
.end method

.method private createFromPdu([B)Landroid/telephony/SmsMessage;
    .locals 12

    const/4 v9, 0x0

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v3, Ljava/io/DataInputStream;

    invoke-direct {v3, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance v4, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    invoke-direct {v4}, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;-><init>()V

    new-instance v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;-><init>()V

    new-instance v8, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;

    invoke-direct {v8}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;-><init>()V

    iput v9, v8, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;->type:I

    iput-byte v9, v8, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;->odd:B

    new-array v9, v9, [B

    iput-object v9, v8, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;->origBytes:[B

    :try_start_0
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v9

    iput v9, v4, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->messageType:I

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v9

    iput v9, v4, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v9

    iput v9, v4, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->serviceCategory:I

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readByte()B

    move-result v9

    iput v9, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readByte()B

    move-result v9

    iput v9, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readByte()B

    move-result v9

    iput v9, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->ton:I

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readByte()B

    move-result v9

    iput v9, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberPlan:I

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v7

    iput v7, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    array-length v9, p1

    if-le v7, v9, :cond_0

    new-instance v9, Ljava/lang/RuntimeException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "createFromPdu: Invalid pdu, addr.numberOfDigits "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " > pdu len "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    array-length v11, p1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :catch_0
    move-exception v5

    new-instance v9, Ljava/lang/RuntimeException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "createFromPdu: conversion from byte array to object failed: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9

    :cond_0
    :try_start_1
    new-array v9, v7, [B

    iput-object v9, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    iget-object v9, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    const/4 v10, 0x0

    invoke-virtual {v3, v9, v10, v7}, Ljava/io/DataInputStream;->read([BII)I

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v9

    iput v9, v4, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerReply:I

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readByte()B

    move-result v9

    iput-byte v9, v4, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->replySeqNo:B

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readByte()B

    move-result v9

    iput-byte v9, v4, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->errorClass:B

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readByte()B

    move-result v9

    iput-byte v9, v4, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->causeCode:B

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    array-length v9, p1

    if-le v2, v9, :cond_1

    new-instance v9, Ljava/lang/RuntimeException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "createFromPdu: Invalid pdu, bearerDataLength "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " > pdu len "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    array-length v11, p1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    move-exception v6

    iget-object v9, p0, Lcom/android/internal/telephony/PduTest;->LOG_TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "createFromPdu: conversion from byte array to object failed: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iput-object v0, v4, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    iput-object v8, v4, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origSubaddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;

    new-instance v9, Landroid/telephony/SmsMessage;

    new-instance v10, Lcom/android/internal/telephony/cdma/SmsMessage;

    invoke-direct {v10, v0, v4}, Lcom/android/internal/telephony/cdma/SmsMessage;-><init>(Lcom/android/internal/telephony/SmsAddress;Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;)V

    invoke-direct {v9, v10}, Landroid/telephony/SmsMessage;-><init>(Lcom/android/internal/telephony/SmsMessageBase;)V

    return-object v9

    :cond_1
    :try_start_2
    new-array v9, v2, [B

    iput-object v9, v4, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    iget-object v9, v4, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    const/4 v10, 0x0

    invoke-virtual {v3, v9, v10, v2}, Ljava/io/DataInputStream;->read([BII)I

    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0
.end method


# virtual methods
.method dispose()V
    .locals 2

    sget-boolean v0, Lcom/android/internal/telephony/PduTest;->DBG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/PduTest;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/telephony/PduTest;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method
