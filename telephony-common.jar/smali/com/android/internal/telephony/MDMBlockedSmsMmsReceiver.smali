.class public Lcom/android/internal/telephony/MDMBlockedSmsMmsReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MDMBlockedSmsMmsReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MDMBlockedSmsMmsReceiver"

.field private static mCdmaInboundSmsHandler:Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;

.field private static mGsmInboundSmsHandler:Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;

.field private static mMDMBlockedSmsMmsReceiver:Lcom/android/internal/telephony/MDMBlockedSmsMmsReceiver;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static getInstance(Lcom/android/internal/telephony/InboundSmsHandler;)Lcom/android/internal/telephony/MDMBlockedSmsMmsReceiver;
    .locals 1

    sget-object v0, Lcom/android/internal/telephony/MDMBlockedSmsMmsReceiver;->mMDMBlockedSmsMmsReceiver:Lcom/android/internal/telephony/MDMBlockedSmsMmsReceiver;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/internal/telephony/MDMBlockedSmsMmsReceiver;

    invoke-direct {v0}, Lcom/android/internal/telephony/MDMBlockedSmsMmsReceiver;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/MDMBlockedSmsMmsReceiver;->mMDMBlockedSmsMmsReceiver:Lcom/android/internal/telephony/MDMBlockedSmsMmsReceiver;

    :cond_0
    instance-of v0, p0, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;

    if-eqz v0, :cond_2

    check-cast p0, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;

    sput-object p0, Lcom/android/internal/telephony/MDMBlockedSmsMmsReceiver;->mGsmInboundSmsHandler:Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;

    :cond_1
    :goto_0
    sget-object v0, Lcom/android/internal/telephony/MDMBlockedSmsMmsReceiver;->mMDMBlockedSmsMmsReceiver:Lcom/android/internal/telephony/MDMBlockedSmsMmsReceiver;

    return-object v0

    :cond_2
    instance-of v0, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;

    sput-object p0, Lcom/android/internal/telephony/MDMBlockedSmsMmsReceiver;->mCdmaInboundSmsHandler:Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13

    const-string/jumbo v10, "MDMBlockedSmsMmsReceiver"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Received blocked SmsMms intent :"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v10, "com.samsung.android.knox.intent.extra.PDU_INTERNAL"

    invoke-virtual {p2, v10}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v4

    if-eqz v4, :cond_2

    const/4 v2, 0x0

    const-string/jumbo v10, "com.samsung.android.knox.intent.action.SEND_BLOCKED_SMS_INTERNAL"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    const-string/jumbo v10, "com.samsung.android.knox.intent.extra.SEND_TYPE_INTERNAL"

    const/4 v11, -0x1

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    const/4 v10, 0x1

    if-ne v7, v10, :cond_3

    sget-object v2, Lcom/android/internal/telephony/MDMBlockedSmsMmsReceiver;->mGsmInboundSmsHandler:Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;

    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    invoke-virtual {v2, v4, v7}, Lcom/android/internal/telephony/InboundSmsHandler;->handleBlockedSms([BI)V

    :cond_1
    const/4 v10, 0x1

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/MDMBlockedSmsMmsReceiver;->getResultExtras(Z)Landroid/os/Bundle;

    move-result-object v6

    const-string/jumbo v10, "smsBlockHandler"

    const/4 v11, 0x1

    invoke-virtual {v6, v10, v11}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    const/4 v10, 0x2

    if-ne v7, v10, :cond_0

    sget-object v2, Lcom/android/internal/telephony/MDMBlockedSmsMmsReceiver;->mCdmaInboundSmsHandler:Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;

    goto :goto_0

    :cond_4
    const-string/jumbo v10, "com.samsung.android.knox.intent.action.SEND_BLOCKED_MMS_INTERNAL"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    const/4 v5, 0x1

    :try_start_0
    sget-object v10, Lcom/android/internal/telephony/MDMBlockedSmsMmsReceiver;->mGsmInboundSmsHandler:Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;

    if-eqz v10, :cond_6

    sget-object v2, Lcom/android/internal/telephony/MDMBlockedSmsMmsReceiver;->mGsmInboundSmsHandler:Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;

    :cond_5
    :goto_2
    iget-object v10, v2, Lcom/android/internal/telephony/InboundSmsHandler;->mWapPush:Lcom/android/internal/telephony/WapPushOverSms;

    invoke-virtual {v10, v4, p0, v2}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPdu([BLandroid/content/BroadcastReceiver;Lcom/android/internal/telephony/InboundSmsHandler;)I

    move-result v5

    const/4 v10, -0x1

    if-ne v5, v10, :cond_8

    const-string/jumbo v10, "com.samsung.android.knox.intent.extra.ORIG_ADDRESS_INTERNAL"

    invoke-virtual {p2, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v10, "com.samsung.android.knox.intent.extra.TIME_STAMP_INTERNAL"

    invoke-virtual {p2, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_3
    array-length v10, v4

    if-ge v1, v10, :cond_7

    aget-byte v10, v4, v1

    int-to-char v10, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_6
    sget-object v10, Lcom/android/internal/telephony/MDMBlockedSmsMmsReceiver;->mCdmaInboundSmsHandler:Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;

    if-eqz v10, :cond_5

    sget-object v2, Lcom/android/internal/telephony/MDMBlockedSmsMmsReceiver;->mCdmaInboundSmsHandler:Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;

    goto :goto_2

    :cond_7
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-eqz v10, :cond_8

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v2, v3, v8, v10, v11}, Lcom/android/internal/telephony/InboundSmsHandler;->storeSMS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_8
    :goto_4
    const/4 v10, 0x1

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/MDMBlockedSmsMmsReceiver;->getResultExtras(Z)Landroid/os/Bundle;

    move-result-object v6

    const-string/jumbo v10, "smsBlockHandler"

    const/4 v11, 0x1

    invoke-virtual {v6, v10, v11}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_1

    :catch_0
    move-exception v0

    const-string/jumbo v10, "MDMBlockedSmsMmsReceiver"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "MDMBlockedSmsMmsReceiver onReceive exception: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method
