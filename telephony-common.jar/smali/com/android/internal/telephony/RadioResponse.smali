.class public Lcom/android/internal/telephony/RadioResponse;
.super Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioResponse$Stub;
.source "RadioResponse.java"


# static fields
.field private static final CDMA_BROADCAST_SMS_NO_OF_SERVICE_CATEGORIES:I = 0x1f

.field private static final CDMA_BSI_NO_OF_INTS_STRUCT:I = 0x3

.field static final USSD_DCS_KS5601:I = 0x94


# instance fields
.field mRil:Lcom/android/internal/telephony/RIL;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/RIL;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioResponse$Stub;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    return-void
.end method

.method private convertOperatorInfo(Lcom/android/internal/telephony/hardware/radio/V1_0/SecOperatorInfo;)Lcom/android/internal/telephony/OperatorInfo;
    .locals 17

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object v6, v6, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const-string/jumbo v7, "gsm.operator.isroaming"

    const-string/jumbo v15, ""

    invoke-static {v6, v7, v15}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/internal/telephony/hardware/radio/V1_0/SecOperatorInfo;->base:Landroid/hardware/radio/V1_0/OperatorInfo;

    iget-object v2, v6, Landroid/hardware/radio/V1_0/OperatorInfo;->alphaLong:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/internal/telephony/hardware/radio/V1_0/SecOperatorInfo;->base:Landroid/hardware/radio/V1_0/OperatorInfo;

    iget-object v3, v6, Landroid/hardware/radio/V1_0/OperatorInfo;->alphaShort:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/internal/telephony/hardware/radio/V1_0/SecOperatorInfo;->base:Landroid/hardware/radio/V1_0/OperatorInfo;

    iget-object v4, v6, Landroid/hardware/radio/V1_0/OperatorInfo;->operatorNumeric:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/internal/telephony/hardware/radio/V1_0/SecOperatorInfo;->base:Landroid/hardware/radio/V1_0/OperatorInfo;

    iget v6, v6, Landroid/hardware/radio/V1_0/OperatorInfo;->status:I

    invoke-static {v6}, Lcom/android/internal/telephony/RadioResponse;->convertOpertatorInfoToString(I)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "false"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string/jumbo v6, "CHN"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object v7, v7, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v7}, Lcom/android/internal/telephony/TelephonyFeatures;->getCountryName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    packed-switch v6, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    new-instance v1, Lcom/android/internal/telephony/OperatorInfo;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/internal/telephony/hardware/radio/V1_0/SecOperatorInfo;->rat:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/internal/telephony/hardware/radio/V1_0/SecOperatorInfo;->lac:Ljava/lang/String;

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/telephony/OperatorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Add OperatorInfo is:"

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v15, " "

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v15, " "

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v15, " "

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v15, " "

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/internal/telephony/hardware/radio/V1_0/SecOperatorInfo;->rat:Ljava/lang/String;

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v15, " "

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/internal/telephony/hardware/radio/V1_0/SecOperatorInfo;->lac:Ljava/lang/String;

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    return-object v1

    :pswitch_1
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10401da

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    goto :goto_0

    :pswitch_2
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1040257

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    goto/16 :goto_0

    :pswitch_3
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x104024c

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    goto/16 :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object v6, v6, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const-string/jumbo v15, "HKG"

    const/16 v16, 0x0

    aput-object v15, v7, v16

    const-string/jumbo v15, "TPE"

    const/16 v16, 0x1

    aput-object v15, v7, v16

    invoke-static {v6, v7}, Lcom/android/internal/telephony/TelephonyFeatures;->isCountrySpecific(I[Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object v6, v6, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const-string/jumbo v7, "gsm.sim.operator.numeric"

    const-string/jumbo v15, ""

    invoke-static {v6, v7, v15}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object v6, v6, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const-string/jumbo v7, "gsm.sim.operator.alpha"

    const-string/jumbo v15, ""

    invoke-static {v6, v7, v15}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const/4 v8, 0x0

    const/4 v11, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    :cond_2
    :goto_1
    if-eqz v8, :cond_0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v15, " Network, SPN sholud be displayed instead of PLMN : "

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v15, "SPN : "

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    move-object v2, v13

    move-object v3, v13

    goto/16 :goto_0

    :sswitch_0
    const-string/jumbo v6, "45400"

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string/jumbo v6, "45402"

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string/jumbo v6, "45410"

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string/jumbo v6, "45418"

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_3
    const-string/jumbo v11, "CSL"

    const/4 v8, 0x1

    goto :goto_1

    :sswitch_1
    const-string/jumbo v6, "45416"

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    const-string/jumbo v6, "45419"

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_4
    const-string/jumbo v11, "PCCW-HKT"

    const/4 v8, 0x1

    goto :goto_1

    :sswitch_2
    const-string/jumbo v6, "46605"

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string/jumbo v11, "APT"

    const/4 v8, 0x1

    goto :goto_1

    :sswitch_3
    const-string/jumbo v6, "45412"

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string/jumbo v11, "CMHK"

    const/4 v8, 0x1

    goto/16 :goto_1

    :sswitch_4
    const-string/jumbo v6, "45406"

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string/jumbo v11, "SmarTone HK"

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    const/4 v8, 0x1

    goto/16 :goto_1

    :sswitch_5
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object v6, v6, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object v6, v6, Lcom/android/internal/telephony/RIL;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "phone"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/TelephonyManager;

    const/4 v7, 0x0

    aget v7, v14, v7

    invoke-virtual {v6, v7}, Landroid/telephony/TelephonyManager;->getGroupIdLevel1(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string/jumbo v6, "0405"

    invoke-virtual {v9, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string/jumbo v6, "45403"

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    const-string/jumbo v6, "45404"

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_5
    const-string/jumbo v11, "3/3(2G)"

    const/4 v8, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object v6, v6, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const-string/jumbo v7, "gsm.operator.alpha"

    const-string/jumbo v15, ""

    invoke-static {v6, v7, v15}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0xb3b0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0xb158 -> :sswitch_0
        0xb15a -> :sswitch_0
        0xb15b -> :sswitch_5
        0xb15c -> :sswitch_5
        0xb15e -> :sswitch_4
        0xb162 -> :sswitch_0
        0xb164 -> :sswitch_3
        0xb165 -> :sswitch_3
        0xb168 -> :sswitch_1
        0xb16a -> :sswitch_0
        0xb16b -> :sswitch_1
        0xb669 -> :sswitch_2
    .end sparse-switch
.end method

.method private static convertOpertatorInfoToString(I)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const-string/jumbo v0, "unknown"

    return-object v0

    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    const-string/jumbo v0, "available"

    return-object v0

    :cond_1
    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    const-string/jumbo v0, "current"

    return-object v0

    :cond_2
    const/4 v0, 0x3

    if-ne p0, v0, :cond_3

    const-string/jumbo v0, "forbidden"

    return-object v0

    :cond_3
    const-string/jumbo v0, ""

    return-object v0
.end method

.method private oemResponseGsmBroadcastConfig(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lcom/android/internal/telephony/hardware/radio/V1_0/OemCbConfigArgs;)V
    .locals 13

    const/4 v12, 0x1

    iget-object v11, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v11, p1}, Lcom/android/internal/telephony/RIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v10

    if-eqz v10, :cond_6

    new-instance v9, Lcom/samsung/android/telephony/gsm/SemCbConfig;

    invoke-direct {v9}, Lcom/samsung/android/telephony/gsm/SemCbConfig;-><init>()V

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v3, 0x64

    :try_start_0
    iget v11, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v11, v12, :cond_0

    const/4 v9, 0x0

    iget-object v11, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v11, v10, p1, v9}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    return-void

    :cond_0
    :try_start_1
    iget v2, p2, Lcom/android/internal/telephony/hardware/radio/V1_0/OemCbConfigArgs;->bCBEnabled:I

    if-ne v2, v12, :cond_1

    const/4 v11, 0x1

    iput-boolean v11, v9, Lcom/samsung/android/telephony/gsm/SemCbConfig;->bCBEnabled:Z

    :goto_0
    iget v11, p2, Lcom/android/internal/telephony/hardware/radio/V1_0/OemCbConfigArgs;->selectedId:I

    iput v11, v9, Lcom/samsung/android/telephony/gsm/SemCbConfig;->selectedId:I

    iget v11, p2, Lcom/android/internal/telephony/hardware/radio/V1_0/OemCbConfigArgs;->msgIdMaxCount:I

    iput v11, v9, Lcom/samsung/android/telephony/gsm/SemCbConfig;->msgIdMaxCount:I

    iget v11, p2, Lcom/android/internal/telephony/hardware/radio/V1_0/OemCbConfigArgs;->msgIdCount:I

    iput v11, v9, Lcom/samsung/android/telephony/gsm/SemCbConfig;->msgIdCount:I

    iget v11, v9, Lcom/samsung/android/telephony/gsm/SemCbConfig;->msgIdMaxCount:I

    if-lez v11, :cond_3

    iget v11, v9, Lcom/samsung/android/telephony/gsm/SemCbConfig;->msgIdMaxCount:I

    mul-int/lit8 v11, v11, 0x2

    new-array v0, v11, [B

    :goto_1
    iget v11, v9, Lcom/samsung/android/telephony/gsm/SemCbConfig;->msgIdCount:I

    new-array v8, v11, [I

    iput-object v8, v9, Lcom/samsung/android/telephony/gsm/SemCbConfig;->msgIds:[I

    iget-object v1, p2, Lcom/android/internal/telephony/hardware/radio/V1_0/OemCbConfigArgs;->msgIDs:Ljava/lang/String;

    if-eqz v1, :cond_4

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v0

    const/4 v4, 0x0

    :goto_2
    iget v11, v9, Lcom/samsung/android/telephony/gsm/SemCbConfig;->msgIdCount:I

    if-ge v4, v11, :cond_4

    aget-byte v11, v0, v5

    and-int/lit16 v6, v11, 0xff

    add-int/lit8 v11, v5, 0x1

    aget-byte v11, v0, v11

    and-int/lit16 v7, v11, 0xff

    iget-object v11, v9, Lcom/samsung/android/telephony/gsm/SemCbConfig;->msgIds:[I

    shl-int/lit8 v12, v6, 0x8

    or-int/2addr v12, v7

    aput v12, v11, v4

    add-int/lit8 v5, v5, 0x2

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_1
    const/4 v11, 0x2

    if-ne v2, v11, :cond_2

    const/4 v11, 0x0

    iput-boolean v11, v9, Lcom/samsung/android/telephony/gsm/SemCbConfig;->bCBEnabled:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v11

    iget-object v12, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v12, v10, p1, v9}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    throw v11

    :cond_2
    :try_start_2
    iget-object v11, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    const-string/jumbo v12, "oemResponseGsmBroadcastConfig parameter is invalid. processResponseDone with return null."

    invoke-virtual {v11, v12}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    const/16 v11, 0x42

    iput v11, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v9, 0x0

    iget-object v11, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v11, v10, p1, v9}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    return-void

    :cond_3
    :try_start_3
    new-array v0, v3, [B

    goto :goto_1

    :cond_4
    iget v11, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v11, :cond_5

    iget-object v11, v10, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v11, v9}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_5
    iget-object v11, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v11, v10, p1, v9}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_6
    return-void
.end method

.method private oemResponsePreferredNetworkInfos(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/hardware/radio/V1_0/OemPreferredNetworkInfo;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v10

    if-eqz v10, :cond_2

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    const/4 v8, 0x0

    :goto_0
    :try_start_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v8, v0, :cond_0

    new-instance v0, Lcom/android/internal/telephony/PreferredNetworkListInfo;

    invoke-virtual {p2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/hardware/radio/V1_0/OemPreferredNetworkInfo;

    iget v1, v1, Lcom/android/internal/telephony/hardware/radio/V1_0/OemPreferredNetworkInfo;->index:I

    invoke-virtual {p2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/hardware/radio/V1_0/OemPreferredNetworkInfo;

    iget-object v2, v2, Lcom/android/internal/telephony/hardware/radio/V1_0/OemPreferredNetworkInfo;->oper:Ljava/lang/String;

    invoke-virtual {p2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/hardware/radio/V1_0/OemPreferredNetworkInfo;

    iget-object v3, v3, Lcom/android/internal/telephony/hardware/radio/V1_0/OemPreferredNetworkInfo;->plmn:Ljava/lang/String;

    invoke-virtual {p2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/hardware/radio/V1_0/OemPreferredNetworkInfo;

    iget v4, v4, Lcom/android/internal/telephony/hardware/radio/V1_0/OemPreferredNetworkInfo;->gsmAct:I

    invoke-virtual {p2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/hardware/radio/V1_0/OemPreferredNetworkInfo;

    iget v5, v5, Lcom/android/internal/telephony/hardware/radio/V1_0/OemPreferredNetworkInfo;->gsmCompactAct:I

    invoke-virtual {p2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/hardware/radio/V1_0/OemPreferredNetworkInfo;

    iget v6, v6, Lcom/android/internal/telephony/hardware/radio/V1_0/OemPreferredNetworkInfo;->utranAct:I

    invoke-virtual {p2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/hardware/radio/V1_0/OemPreferredNetworkInfo;

    iget v7, v7, Lcom/android/internal/telephony/hardware/radio/V1_0/OemPreferredNetworkInfo;->mode:I

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/telephony/PreferredNetworkListInfo;-><init>(ILjava/lang/String;Ljava/lang/String;IIII)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_0
    iget v0, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v0, :cond_1

    iget-object v0, v10, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v0, v9}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, v10, p1, v9}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v1, v10, p1, v9}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    throw v0
.end method

.method private responseActivityData(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/ActivityStatsInfo;)V
    .locals 21

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/internal/telephony/RIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v20

    if-eqz v20, :cond_1

    const/16 v19, 0x0

    :try_start_0
    move-object/from16 v0, p1

    iget v4, v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v4, :cond_2

    move-object/from16 v0, p2

    iget v6, v0, Landroid/hardware/radio/V1_0/ActivityStatsInfo;->sleepModeTimeMs:I

    move-object/from16 v0, p2

    iget v7, v0, Landroid/hardware/radio/V1_0/ActivityStatsInfo;->idleModeTimeMs:I

    const/4 v4, 0x5

    new-array v8, v4, [I

    const/4 v2, 0x0

    :goto_0
    const/4 v4, 0x5

    if-ge v2, v4, :cond_0

    move-object/from16 v0, p2

    iget-object v4, v0, Landroid/hardware/radio/V1_0/ActivityStatsInfo;->txmModetimeMs:[I

    aget v4, v4, v2

    aput v4, v8, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    move-object/from16 v0, p2

    iget v9, v0, Landroid/hardware/radio/V1_0/ActivityStatsInfo;->rxModeTimeMs:I

    new-instance v3, Landroid/telephony/ModemActivityInfo;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const/4 v10, 0x0

    invoke-direct/range {v3 .. v10}, Landroid/telephony/ModemActivityInfo;-><init>(JII[III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_1
    :try_start_1
    move-object/from16 v0, v20

    iget-object v4, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v4, v3}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v4, v0, v1, v3}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_1
    return-void

    :cond_2
    :try_start_2
    new-instance v3, Landroid/telephony/ModemActivityInfo;

    const-wide/16 v12, 0x0

    const/4 v4, 0x5

    new-array v0, v4, [I

    move-object/from16 v16, v0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v11, v3

    invoke-direct/range {v11 .. v18}, Landroid/telephony/ModemActivityInfo;-><init>(JII[III)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 v4, 0x0

    :try_start_3
    move-object/from16 v0, p1

    iput v4, v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v4

    :goto_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v5, v0, v1, v3}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    throw v4

    :catchall_1
    move-exception v4

    move-object/from16 v3, v19

    goto :goto_2
.end method

.method private responseCallForwardInfo(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/radio/V1_0/CallForwardInfo;",
            ">;)V"
        }
    .end annotation

    iget-object v3, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v3, p1}, Lcom/android/internal/telephony/RIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v1, v3, [Lcom/android/internal/telephony/CallForwardInfo;

    const/4 v0, 0x0

    :goto_0
    :try_start_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    new-instance v3, Lcom/android/internal/telephony/CallForwardInfo;

    invoke-direct {v3}, Lcom/android/internal/telephony/CallForwardInfo;-><init>()V

    aput-object v3, v1, v0

    aget-object v4, v1, v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/radio/V1_0/CallForwardInfo;

    iget v3, v3, Landroid/hardware/radio/V1_0/CallForwardInfo;->status:I

    iput v3, v4, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    aget-object v4, v1, v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/radio/V1_0/CallForwardInfo;

    iget v3, v3, Landroid/hardware/radio/V1_0/CallForwardInfo;->reason:I

    iput v3, v4, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    aget-object v4, v1, v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/radio/V1_0/CallForwardInfo;

    iget v3, v3, Landroid/hardware/radio/V1_0/CallForwardInfo;->serviceClass:I

    iput v3, v4, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    aget-object v4, v1, v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/radio/V1_0/CallForwardInfo;

    iget v3, v3, Landroid/hardware/radio/V1_0/CallForwardInfo;->toa:I

    iput v3, v4, Lcom/android/internal/telephony/CallForwardInfo;->toa:I

    aget-object v4, v1, v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/radio/V1_0/CallForwardInfo;

    iget-object v3, v3, Landroid/hardware/radio/V1_0/CallForwardInfo;->number:Ljava/lang/String;

    iput-object v3, v4, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    aget-object v4, v1, v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/radio/V1_0/CallForwardInfo;

    iget v3, v3, Landroid/hardware/radio/V1_0/CallForwardInfo;->timeSeconds:I

    iput v3, v4, Lcom/android/internal/telephony/CallForwardInfo;->timeSeconds:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v3, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v3, :cond_1

    iget-object v3, v2, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v3, v1}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v3, v2, p1, v1}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_2
    return-void

    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v4, v2, p1, v1}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    throw v3
.end method

.method private responseCarrierIdentifiers(Landroid/hardware/radio/V1_0/RadioResponseInfo;ZLandroid/hardware/radio/V1_0/CarrierRestrictions;)V
    .locals 14

    iget-object v1, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/RIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v12

    if-eqz v12, :cond_6

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    const/4 v8, 0x0

    :goto_0
    :try_start_0
    move-object/from16 v0, p3

    iget-object v1, v0, Landroid/hardware/radio/V1_0/CarrierRestrictions;->allowedCarriers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v8, v1, :cond_4

    move-object/from16 v0, p3

    iget-object v1, v0, Landroid/hardware/radio/V1_0/CarrierRestrictions;->allowedCarriers:Ljava/util/ArrayList;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/V1_0/Carrier;

    iget-object v2, v1, Landroid/hardware/radio/V1_0/Carrier;->mcc:Ljava/lang/String;

    move-object/from16 v0, p3

    iget-object v1, v0, Landroid/hardware/radio/V1_0/CarrierRestrictions;->allowedCarriers:Ljava/util/ArrayList;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/V1_0/Carrier;

    iget-object v3, v1, Landroid/hardware/radio/V1_0/Carrier;->mnc:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p3

    iget-object v1, v0, Landroid/hardware/radio/V1_0/CarrierRestrictions;->allowedCarriers:Ljava/util/ArrayList;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/V1_0/Carrier;

    iget v10, v1, Landroid/hardware/radio/V1_0/Carrier;->matchType:I

    move-object/from16 v0, p3

    iget-object v1, v0, Landroid/hardware/radio/V1_0/CarrierRestrictions;->allowedCarriers:Ljava/util/ArrayList;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/V1_0/Carrier;

    iget-object v9, v1, Landroid/hardware/radio/V1_0/Carrier;->matchData:Ljava/lang/String;

    const/4 v1, 0x1

    if-ne v10, v1, :cond_1

    move-object v4, v9

    :cond_0
    :goto_1
    new-instance v1, Landroid/service/carrier/CarrierIdentifier;

    invoke-direct/range {v1 .. v7}, Landroid/service/carrier/CarrierIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    if-ne v10, v1, :cond_2

    move-object v5, v9

    goto :goto_1

    :cond_2
    const/4 v1, 0x3

    if-ne v10, v1, :cond_3

    move-object v6, v9

    goto :goto_1

    :cond_3
    const/4 v1, 0x4

    if-ne v10, v1, :cond_0

    move-object v7, v9

    goto :goto_1

    :cond_4
    iget v1, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v1, :cond_5

    iget-object v1, v12, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v1, v11}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    iget-object v1, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v1, v12, p1, v11}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_6
    return-void

    :catchall_0
    move-exception v1

    iget-object v13, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v13, v12, p1, v11}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    throw v1
.end method

.method private responseCdmaBroadcastConfig(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;",
            ">;)V"
        }
    .end annotation

    const/4 v7, 0x1

    const/4 v8, 0x0

    iget-object v6, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v6, p1}, Lcom/android/internal/telephony/RIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v5

    if-eqz v5, :cond_4

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_0

    const/16 v2, 0x5e

    new-array v4, v2, [I

    const/16 v6, 0x1f

    const/4 v7, 0x0

    aput v6, v4, v7

    const/4 v0, 0x1

    :goto_0
    const/16 v6, 0x5e

    if-ge v0, v6, :cond_2

    add-int/lit8 v6, v0, 0x0

    div-int/lit8 v7, v0, 0x3

    aput v7, v4, v6

    add-int/lit8 v6, v0, 0x1

    const/4 v7, 0x1

    aput v7, v4, v6

    add-int/lit8 v6, v0, 0x2

    const/4 v7, 0x0

    aput v7, v4, v6

    add-int/lit8 v0, v0, 0x3

    goto :goto_0

    :cond_0
    mul-int/lit8 v6, v3, 0x3

    add-int/lit8 v2, v6, 0x1

    new-array v4, v2, [I

    const/4 v6, 0x0

    aput v3, v4, v6

    const/4 v0, 0x1

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_2

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;

    iget v6, v6, Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;->serviceCategory:I

    aput v6, v4, v0

    add-int/lit8 v9, v0, 0x1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;

    iget v6, v6, Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;->language:I

    aput v6, v4, v9

    add-int/lit8 v9, v0, 0x2

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;

    iget-boolean v6, v6, Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;->selected:Z

    if-eqz v6, :cond_1

    move v6, v7

    :goto_2
    aput v6, v4, v9

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x3

    goto :goto_1

    :cond_1
    move v6, v8

    goto :goto_2

    :cond_2
    iget v6, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v6, :cond_3

    iget-object v6, v5, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v6, v4}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    iget-object v6, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v6, v5, p1, v4}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_4
    return-void

    :catchall_0
    move-exception v6

    iget-object v7, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v7, v5, p1, v4}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    throw v6
.end method

.method private responseCellInfoList(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/radio/V1_0/CellInfo;",
            ">;)V"
        }
    .end annotation

    iget-object v2, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/RIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {p2}, Lcom/android/internal/telephony/RIL;->convertHalCellInfoList(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    :try_start_0
    iget v2, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v2, :cond_0

    iget-object v2, v1, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v2, v0}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v2, v1, p1, v0}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_1
    return-void

    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v3, v1, p1, v0}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    throw v2
.end method

.method private responseCellList(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/radio/V1_0/NeighboringCell;",
            ">;)V"
        }
    .end annotation

    iget-object v8, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v8, p1}, Lcom/android/internal/telephony/RIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v5

    if-eqz v5, :cond_2

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    iget-object v8, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object v8, v8, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v8}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object v8, v8, Lcom/android/internal/telephony/RIL;->mContext:Landroid/content/Context;

    const-string/jumbo v9, "phone"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/telephony/TelephonyManager;

    const/4 v9, 0x0

    aget v9, v7, v9

    invoke-virtual {v8, v9}, Landroid/telephony/TelephonyManager;->getDataNetworkType(I)I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v1, v8, :cond_0

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/hardware/radio/V1_0/NeighboringCell;

    iget v6, v8, Landroid/hardware/radio/V1_0/NeighboringCell;->rssi:I

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/hardware/radio/V1_0/NeighboringCell;

    iget-object v2, v8, Landroid/hardware/radio/V1_0/NeighboringCell;->cid:Ljava/lang/String;

    new-instance v0, Landroid/telephony/NeighboringCellInfo;

    invoke-direct {v0, v6, v2, v3}, Landroid/telephony/NeighboringCellInfo;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget v8, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v8, :cond_1

    iget-object v8, v5, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v8, v4}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    iget-object v8, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v8, v5, p1, v4}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_2
    return-void

    :catchall_0
    move-exception v8

    iget-object v9, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v9, v5, p1, v4}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    throw v8
.end method

.method private responseCurrentCalls(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/radio/V1_0/Call;",
            ">;)V"
        }
    .end annotation

    const/4 v11, 0x1

    iget-object v6, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v6, p1}, Lcom/android/internal/telephony/RIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_3

    :try_start_0
    new-instance v0, Lcom/android/internal/telephony/DriverCall;

    invoke-direct {v0}, Lcom/android/internal/telephony/DriverCall;-><init>()V

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/radio/V1_0/Call;

    iget v6, v6, Landroid/hardware/radio/V1_0/Call;->state:I

    invoke-static {v6}, Lcom/android/internal/telephony/DriverCall;->stateFromCLCC(I)Lcom/android/internal/telephony/DriverCall$State;

    move-result-object v6

    iput-object v6, v0, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/radio/V1_0/Call;

    iget v6, v6, Landroid/hardware/radio/V1_0/Call;->index:I

    iput v6, v0, Lcom/android/internal/telephony/DriverCall;->index:I

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/radio/V1_0/Call;

    iget v6, v6, Landroid/hardware/radio/V1_0/Call;->toa:I

    iput v6, v0, Lcom/android/internal/telephony/DriverCall;->TOA:I

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/radio/V1_0/Call;

    iget-boolean v6, v6, Landroid/hardware/radio/V1_0/Call;->isMpty:Z

    iput-boolean v6, v0, Lcom/android/internal/telephony/DriverCall;->isMpty:Z

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/radio/V1_0/Call;

    iget-boolean v6, v6, Landroid/hardware/radio/V1_0/Call;->isMT:Z

    iput-boolean v6, v0, Lcom/android/internal/telephony/DriverCall;->isMT:Z

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/radio/V1_0/Call;

    iget-byte v6, v6, Landroid/hardware/radio/V1_0/Call;->als:B

    iput v6, v0, Lcom/android/internal/telephony/DriverCall;->als:I

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/radio/V1_0/Call;

    iget-boolean v6, v6, Landroid/hardware/radio/V1_0/Call;->isVoice:Z

    iput-boolean v6, v0, Lcom/android/internal/telephony/DriverCall;->isVoice:Z

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/radio/V1_0/Call;

    iget-boolean v6, v6, Landroid/hardware/radio/V1_0/Call;->isVoicePrivacy:Z

    iput-boolean v6, v0, Lcom/android/internal/telephony/DriverCall;->isVoicePrivacy:Z

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/radio/V1_0/Call;

    iget-object v6, v6, Landroid/hardware/radio/V1_0/Call;->number:Ljava/lang/String;

    iput-object v6, v0, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/radio/V1_0/Call;

    iget v6, v6, Landroid/hardware/radio/V1_0/Call;->numberPresentation:I

    invoke-static {v6}, Lcom/android/internal/telephony/DriverCall;->presentationFromCLIP(I)I

    move-result v6

    iput v6, v0, Lcom/android/internal/telephony/DriverCall;->numberPresentation:I

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/radio/V1_0/Call;

    iget-object v6, v6, Landroid/hardware/radio/V1_0/Call;->name:Ljava/lang/String;

    iput-object v6, v0, Lcom/android/internal/telephony/DriverCall;->name:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/radio/V1_0/Call;

    iget v6, v6, Landroid/hardware/radio/V1_0/Call;->namePresentation:I

    invoke-static {v6}, Lcom/android/internal/telephony/DriverCall;->presentationFromCLIP(I)I

    move-result v6

    iput v6, v0, Lcom/android/internal/telephony/DriverCall;->namePresentation:I

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/radio/V1_0/Call;

    iget-object v6, v6, Landroid/hardware/radio/V1_0/Call;->uusInfo:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ne v6, v11, :cond_1

    new-instance v6, Lcom/android/internal/telephony/UUSInfo;

    invoke-direct {v6}, Lcom/android/internal/telephony/UUSInfo;-><init>()V

    iput-object v6, v0, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    iget-object v7, v0, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/radio/V1_0/Call;

    iget-object v6, v6, Landroid/hardware/radio/V1_0/Call;->uusInfo:Ljava/util/ArrayList;

    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/radio/V1_0/UusInfo;

    iget v6, v6, Landroid/hardware/radio/V1_0/UusInfo;->uusType:I

    invoke-virtual {v7, v6}, Lcom/android/internal/telephony/UUSInfo;->setType(I)V

    iget-object v7, v0, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/radio/V1_0/Call;

    iget-object v6, v6, Landroid/hardware/radio/V1_0/Call;->uusInfo:Ljava/util/ArrayList;

    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/radio/V1_0/UusInfo;

    iget v6, v6, Landroid/hardware/radio/V1_0/UusInfo;->uusDcs:I

    invoke-virtual {v7, v6}, Lcom/android/internal/telephony/UUSInfo;->setDcs(I)V

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/radio/V1_0/Call;

    iget-object v6, v6, Landroid/hardware/radio/V1_0/Call;->uusInfo:Ljava/util/ArrayList;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/radio/V1_0/UusInfo;

    iget-object v6, v6, Landroid/hardware/radio/V1_0/UusInfo;->uusData:Ljava/lang/String;

    if-eqz v6, :cond_0

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/radio/V1_0/Call;

    iget-object v6, v6, Landroid/hardware/radio/V1_0/Call;->uusInfo:Ljava/util/ArrayList;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/radio/V1_0/UusInfo;

    iget-object v6, v6, Landroid/hardware/radio/V1_0/UusInfo;->uusData:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    iget-object v6, v0, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    invoke-virtual {v6, v5}, Lcom/android/internal/telephony/UUSInfo;->setUserData([B)V

    :goto_1
    iget-object v6, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    const-string/jumbo v7, "Incoming UUS : type=%d, dcs=%d, length=%d"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    iget-object v9, v0, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    invoke-virtual {v9}, Lcom/android/internal/telephony/UUSInfo;->getType()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v8, v10

    iget-object v9, v0, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    invoke-virtual {v9}, Lcom/android/internal/telephony/UUSInfo;->getDcs()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x1

    aput-object v9, v8, v10

    iget-object v9, v0, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    invoke-virtual {v9}, Lcom/android/internal/telephony/UUSInfo;->getUserData()[B

    move-result-object v9

    array-length v9, v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x2

    aput-object v9, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/RIL;->riljLogv(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Incoming UUS : data (hex): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v0, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    invoke-virtual {v8}, Lcom/android/internal/telephony/UUSInfo;->getUserData()[B

    move-result-object v8

    invoke-static {v8}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/RIL;->riljLogv(Ljava/lang/String;)V

    :goto_2
    iget-object v6, v0, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    iget v7, v0, Lcom/android/internal/telephony/DriverCall;->TOA:I

    invoke-static {v6, v7}, Landroid/telephony/PhoneNumberUtils;->stringFromStringAndTOA(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean v6, v0, Lcom/android/internal/telephony/DriverCall;->isVoicePrivacy:Z

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object v6, v6, Lcom/android/internal/telephony/RIL;->mVoicePrivacyOnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v6}, Landroid/os/RegistrantList;->notifyRegistrants()V

    iget-object v6, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    const-string/jumbo v7, "InCall VoicePrivacy is enabled"

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_0
    iget-object v6, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    const-string/jumbo v7, "responseCurrentCalls: uusInfo data is null"

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_1

    :catchall_0
    move-exception v6

    iget-object v7, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v7, v4, p1, v1}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    throw v6

    :cond_1
    :try_start_1
    iget-object v6, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    const-string/jumbo v7, "Incoming UUS : NOT present!"

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/RIL;->riljLogv(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    iget-object v6, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object v6, v6, Lcom/android/internal/telephony/RIL;->mVoicePrivacyOffRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v6}, Landroid/os/RegistrantList;->notifyRegistrants()V

    iget-object v6, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    const-string/jumbo v7, "InCall VoicePrivacy is disabled"

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    if-nez v3, :cond_4

    iget-object v6, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object v6, v6, Lcom/android/internal/telephony/RIL;->mTestingEmergencyCall:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object v6, v6, Lcom/android/internal/telephony/RIL;->mEmergencyCallbackModeRegistrant:Landroid/os/Registrant;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    const-string/jumbo v7, "responseCurrentCalls: call ended, testing emergency call, notify ECM Registrants"

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object v6, v6, Lcom/android/internal/telephony/RIL;->mEmergencyCallbackModeRegistrant:Landroid/os/Registrant;

    invoke-virtual {v6}, Landroid/os/Registrant;->notifyRegistrant()V

    :cond_4
    iget v6, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v6, :cond_5

    iget-object v6, v4, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v6, v1}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_5
    iget-object v6, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v6, v4, p1, v1}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_6
    return-void
.end method

.method private responseDataCallList(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/radio/V1_0/SetupDataCallResult;",
            ">;)V"
        }
    .end annotation

    iget-object v4, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v4, p1}, Lcom/android/internal/telephony/RIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v3

    if-eqz v3, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/V1_0/SetupDataCallResult;

    invoke-static {v1}, Lcom/android/internal/telephony/RIL;->convertDataCallResult(Landroid/hardware/radio/V1_0/SetupDataCallResult;)Lcom/android/internal/telephony/dataconnection/DataCallResponse;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v4

    iget-object v5, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v5, v3, p1, v0}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    throw v4

    :cond_0
    :try_start_1
    iget v4, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v4, :cond_1

    iget-object v4, v3, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v4, v0}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v4, v3, p1, v0}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method private responseGmsBroadcastConfig(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v8

    if-eqz v8, :cond_2

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    :goto_0
    :try_start_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v6, v0, :cond_0

    new-instance v0, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;

    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;

    iget v1, v1, Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;->fromServiceId:I

    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;

    iget v2, v2, Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;->toServiceId:I

    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;

    iget v3, v3, Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;->fromCodeScheme:I

    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;

    iget v4, v4, Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;->toCodeScheme:I

    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;

    iget-boolean v5, v5, Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;->selected:Z

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;-><init>(IIIIZ)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    iget v0, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v0, :cond_1

    iget-object v0, v8, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v0, v7}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, v8, p1, v7}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v1, v8, p1, v7}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    throw v0
.end method

.method private responseHardwareConfig(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/radio/V1_0/HardwareConfig;",
            ">;)V"
        }
    .end annotation

    iget-object v2, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/RIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-static {p2, v2}, Lcom/android/internal/telephony/RIL;->convertHalHwConfigList(Ljava/util/ArrayList;Lcom/android/internal/telephony/RIL;)Ljava/util/ArrayList;

    move-result-object v0

    :try_start_0
    iget v2, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v2, :cond_0

    iget-object v2, v1, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v2, v0}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v2, v1, p1, v0}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_1
    return-void

    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v3, v1, p1, v0}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    throw v2
.end method

.method private responseICC_IOBase64(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/IccIoResult;)V
    .locals 8

    const/4 v2, 0x0

    const/4 v7, 0x0

    iget-object v3, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v3, p1}, Lcom/android/internal/telephony/RIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v0, Lcom/android/internal/telephony/uicc/IccIoResult;

    iget v3, p2, Landroid/hardware/radio/V1_0/IccIoResult;->sw1:I

    iget v4, p2, Landroid/hardware/radio/V1_0/IccIoResult;->sw2:I

    iget-object v5, p2, Landroid/hardware/radio/V1_0/IccIoResult;->simResponse:Ljava/lang/String;

    const-string/jumbo v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v2, p2, Landroid/hardware/radio/V1_0/IccIoResult;->simResponse:Ljava/lang/String;

    invoke-static {v2, v7}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    :goto_0
    invoke-direct {v0, v3, v4, v2}, Lcom/android/internal/telephony/uicc/IccIoResult;-><init>(II[B)V

    :try_start_0
    iget v2, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v2, :cond_0

    iget-object v2, v1, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v2, v0}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v2, v1, p1, v0}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_1
    return-void

    :cond_2
    check-cast v2, [B

    goto :goto_0

    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v3, v1, p1, v0}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    throw v2
.end method

.method private responseIccCardStatus(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/CardStatus;)V
    .locals 9

    iget-object v6, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v6, p1}, Lcom/android/internal/telephony/RIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v5

    if-eqz v5, :cond_3

    new-instance v2, Lcom/android/internal/telephony/uicc/IccCardStatus;

    invoke-direct {v2}, Lcom/android/internal/telephony/uicc/IccCardStatus;-><init>()V

    :try_start_0
    iget v6, p2, Landroid/hardware/radio/V1_0/CardStatus;->cardState:I

    invoke-virtual {v2, v6}, Lcom/android/internal/telephony/uicc/IccCardStatus;->setCardState(I)V

    iget v6, p2, Landroid/hardware/radio/V1_0/CardStatus;->universalPinState:I

    invoke-virtual {v2, v6}, Lcom/android/internal/telephony/uicc/IccCardStatus;->setUniversalPinState(I)V

    iget v6, p2, Landroid/hardware/radio/V1_0/CardStatus;->gsmUmtsSubscriptionAppIndex:I

    iput v6, v2, Lcom/android/internal/telephony/uicc/IccCardStatus;->mGsmUmtsSubscriptionAppIndex:I

    iget v6, p2, Landroid/hardware/radio/V1_0/CardStatus;->cdmaSubscriptionAppIndex:I

    iput v6, v2, Lcom/android/internal/telephony/uicc/IccCardStatus;->mCdmaSubscriptionAppIndex:I

    iget v6, p2, Landroid/hardware/radio/V1_0/CardStatus;->imsSubscriptionAppIndex:I

    iput v6, v2, Lcom/android/internal/telephony/uicc/IccCardStatus;->mImsSubscriptionAppIndex:I

    iget-object v6, p2, Landroid/hardware/radio/V1_0/CardStatus;->applications:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/16 v6, 0x8

    if-le v3, v6, :cond_0

    const/16 v3, 0x8

    :cond_0
    new-array v6, v3, [Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    iput-object v6, v2, Lcom/android/internal/telephony/uicc/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    iget-object v6, p2, Landroid/hardware/radio/V1_0/CardStatus;->applications:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/radio/V1_0/AppStatus;

    new-instance v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    invoke-direct {v0}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;-><init>()V

    iget v6, v4, Landroid/hardware/radio/V1_0/AppStatus;->appType:I

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->AppTypeFromRILInt(I)Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v6

    iput-object v6, v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_type:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    iget v6, v4, Landroid/hardware/radio/V1_0/AppStatus;->appState:I

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->AppStateFromRILInt(I)Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    move-result-object v6

    iput-object v6, v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_state:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    iget v6, v4, Landroid/hardware/radio/V1_0/AppStatus;->persoSubstate:I

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->PersoSubstateFromRILInt(I)Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    move-result-object v6

    iput-object v6, v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->perso_substate:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    iget-object v6, v4, Landroid/hardware/radio/V1_0/AppStatus;->aidPtr:Ljava/lang/String;

    iput-object v6, v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->aid:Ljava/lang/String;

    iget-object v6, v4, Landroid/hardware/radio/V1_0/AppStatus;->appLabelPtr:Ljava/lang/String;

    iput-object v6, v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_label:Ljava/lang/String;

    iget v6, v4, Landroid/hardware/radio/V1_0/AppStatus;->pin1Replaced:I

    iput v6, v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->pin1_replaced:I

    iget v6, v4, Landroid/hardware/radio/V1_0/AppStatus;->pin1:I

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->PinStateFromRILInt(I)Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    move-result-object v6

    iput-object v6, v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->pin1:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    iget v6, v4, Landroid/hardware/radio/V1_0/AppStatus;->pin2:I

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->PinStateFromRILInt(I)Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    move-result-object v6

    iput-object v6, v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->pin2:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    iget-object v6, v2, Lcom/android/internal/telephony/uicc/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    aput-object v0, v6, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v6, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "responseIccCardStatus: from HIDL: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    iget v6, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v6, :cond_2

    iget-object v6, v5, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v6, v2}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    iget-object v6, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v6, v5, p1, v2}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_3
    return-void

    :catchall_0
    move-exception v6

    iget-object v7, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v7, v5, p1, v2}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    throw v6
.end method

.method private responseIccIo(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/IccIoResult;)V
    .locals 5

    iget-object v2, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/RIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v0, Lcom/android/internal/telephony/uicc/IccIoResult;

    iget v2, p2, Landroid/hardware/radio/V1_0/IccIoResult;->sw1:I

    iget v3, p2, Landroid/hardware/radio/V1_0/IccIoResult;->sw2:I

    iget-object v4, p2, Landroid/hardware/radio/V1_0/IccIoResult;->simResponse:Ljava/lang/String;

    invoke-direct {v0, v2, v3, v4}, Lcom/android/internal/telephony/uicc/IccIoResult;-><init>(IILjava/lang/String;)V

    :try_start_0
    iget v2, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v2, :cond_0

    iget-object v2, v1, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v2, v0}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v2, v1, p1, v0}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_1
    return-void

    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v3, v1, p1, v0}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    throw v2
.end method

.method private responseIntArrayList(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iget-object v3, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v3, p1}, Lcom/android/internal/telephony/RIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v1, v3, [I

    const/4 v0, 0x0

    :goto_0
    :try_start_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v3, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v3, :cond_1

    iget-object v3, v2, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v3, v1}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v3, v2, p1, v1}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_2
    return-void

    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v4, v2, p1, v1}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    throw v3
.end method

.method private varargs responseInts(Landroid/hardware/radio/V1_0/RadioResponseInfo;[I)V
    .locals 3

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_0
    array-length v2, p2

    if-ge v0, v2, :cond_0

    aget v2, p2, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/RadioResponse;->responseIntArrayList(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    return-void
.end method

.method private responseLastCallFailCauseInfo(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/LastCallFailCauseInfo;)V
    .locals 4

    iget-object v2, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/RIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v0, Lcom/android/internal/telephony/LastCallFailCause;

    invoke-direct {v0}, Lcom/android/internal/telephony/LastCallFailCause;-><init>()V

    :try_start_0
    iget v2, p2, Landroid/hardware/radio/V1_0/LastCallFailCauseInfo;->causeCode:I

    iput v2, v0, Lcom/android/internal/telephony/LastCallFailCause;->causeCode:I

    iget-object v2, p2, Landroid/hardware/radio/V1_0/LastCallFailCauseInfo;->vendorCause:Ljava/lang/String;

    iput-object v2, v0, Lcom/android/internal/telephony/LastCallFailCause;->vendorCause:Ljava/lang/String;

    iget v2, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v2, :cond_0

    iget-object v2, v1, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v2, v0}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v2, v1, p1, v0}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_1
    return-void

    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v3, v1, p1, v0}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    throw v2
.end method

.method private responseLceData(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/LceDataInfo;)V
    .locals 4

    iget-object v2, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/RIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-static {p2, v2}, Lcom/android/internal/telephony/RIL;->convertHalLceData(Landroid/hardware/radio/V1_0/LceDataInfo;Lcom/android/internal/telephony/RIL;)Ljava/util/ArrayList;

    move-result-object v0

    :try_start_0
    iget v2, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v2, :cond_0

    iget-object v2, v1, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v2, v0}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v2, v1, p1, v0}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_1
    return-void

    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v3, v1, p1, v0}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    throw v2
.end method

.method private responseLceStatus(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/LceStatusInfo;)V
    .locals 4

    iget-object v2, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/RIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    iget v2, p2, Landroid/hardware/radio/V1_0/LceStatusInfo;->lceStatus:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-byte v2, p2, Landroid/hardware/radio/V1_0/LceStatusInfo;->actualIntervalMs:B

    invoke-static {v2}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v2, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v2, :cond_0

    iget-object v2, v1, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v2, v0}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v2, v1, p1, v0}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_1
    return-void

    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v3, v1, p1, v0}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    throw v2
.end method

.method private responseOperatorInfos(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/radio/V1_0/OperatorInfo;",
            ">;)V"
        }
    .end annotation

    iget-object v3, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v3, p1}, Lcom/android/internal/telephony/RIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v2

    if-eqz v2, :cond_2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_0
    :try_start_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    new-instance v4, Lcom/android/internal/telephony/OperatorInfo;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/radio/V1_0/OperatorInfo;

    iget-object v5, v3, Landroid/hardware/radio/V1_0/OperatorInfo;->alphaLong:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/radio/V1_0/OperatorInfo;

    iget-object v6, v3, Landroid/hardware/radio/V1_0/OperatorInfo;->alphaShort:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/radio/V1_0/OperatorInfo;

    iget-object v7, v3, Landroid/hardware/radio/V1_0/OperatorInfo;->operatorNumeric:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/radio/V1_0/OperatorInfo;

    iget v3, v3, Landroid/hardware/radio/V1_0/OperatorInfo;->status:I

    invoke-static {v3}, Lcom/android/internal/telephony/RadioResponse;->convertOpertatorInfoToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v5, v6, v7, v3}, Lcom/android/internal/telephony/OperatorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v3, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v3, :cond_1

    iget-object v3, v2, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v3, v1}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v3, v2, p1, v1}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_2
    return-void

    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v4, v2, p1, v1}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    throw v3
.end method

.method private responseRadioCapability(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/RadioCapability;)V
    .locals 4

    iget-object v2, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/RIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-static {p2, v2}, Lcom/android/internal/telephony/RIL;->convertHalRadioCapability(Landroid/hardware/radio/V1_0/RadioCapability;Lcom/android/internal/telephony/RIL;)Lcom/android/internal/telephony/RadioCapability;

    move-result-object v0

    :try_start_0
    iget v2, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v2, :cond_0

    iget-object v2, v1, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v2, v0}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v2, v1, p1, v0}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_1
    return-void

    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v3, v1, p1, v0}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    throw v2
.end method

.method private responseSIM_PB(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lcom/android/internal/telephony/hardware/radio/V1_0/OemSimPBResponse;)V
    .locals 13

    iget-object v11, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v11, p1}, Lcom/android/internal/telephony/RIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v10

    if-eqz v10, :cond_3

    const/4 v11, 0x3

    new-array v1, v11, [I

    const/4 v11, 0x3

    new-array v2, v11, [I

    const/4 v11, 0x3

    new-array v3, v11, [Ljava/lang/String;

    const/4 v9, 0x0

    :goto_0
    const/4 v11, 0x3

    if-ge v9, v11, :cond_0

    iget-object v11, p2, Lcom/android/internal/telephony/hardware/radio/V1_0/OemSimPBResponse;->lengthAlphas:Ljava/util/ArrayList;

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    aput v11, v1, v9

    iget-object v11, p2, Lcom/android/internal/telephony/hardware/radio/V1_0/OemSimPBResponse;->dataTypeAlphas:Ljava/util/ArrayList;

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    aput v11, v2, v9

    iget-object v11, p2, Lcom/android/internal/telephony/hardware/radio/V1_0/OemSimPBResponse;->alphaTags:Ljava/util/ArrayList;

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    aput-object v11, v3, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_0
    const/4 v11, 0x5

    new-array v4, v11, [I

    const/4 v11, 0x5

    new-array v5, v11, [I

    const/4 v11, 0x5

    new-array v6, v11, [Ljava/lang/String;

    const/4 v9, 0x0

    :goto_1
    const/4 v11, 0x5

    if-ge v9, v11, :cond_1

    iget-object v11, p2, Lcom/android/internal/telephony/hardware/radio/V1_0/OemSimPBResponse;->lengthNumbers:Ljava/util/ArrayList;

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    aput v11, v4, v9

    iget-object v11, p2, Lcom/android/internal/telephony/hardware/radio/V1_0/OemSimPBResponse;->dataTypeNumbers:Ljava/util/ArrayList;

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    aput v11, v5, v9

    iget-object v11, p2, Lcom/android/internal/telephony/hardware/radio/V1_0/OemSimPBResponse;->numbers:Ljava/util/ArrayList;

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    aput-object v11, v6, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_1
    iget v7, p2, Lcom/android/internal/telephony/hardware/radio/V1_0/OemSimPBResponse;->recordIndex:I

    iget v8, p2, Lcom/android/internal/telephony/hardware/radio/V1_0/OemSimPBResponse;->nextIndex:I

    new-instance v0, Lcom/android/internal/telephony/uicc/SimPBEntryResult;

    invoke-direct/range {v0 .. v8}, Lcom/android/internal/telephony/uicc/SimPBEntryResult;-><init>([I[I[Ljava/lang/String;[I[I[Ljava/lang/String;II)V

    :try_start_0
    iget v11, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v11, :cond_2

    iget-object v11, v10, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v11, v0}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    iget-object v11, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v11, v10, p1, v0}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_3
    return-void

    :catchall_0
    move-exception v11

    iget-object v12, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v12, v10, p1, v0}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    throw v11
.end method

.method private responseSetupDataCall(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SetupDataCallResult;)V
    .locals 4

    iget-object v2, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    const-string/jumbo v3, "!@Boot_SVC : Response setupDataCall"

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/RIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {p2}, Lcom/android/internal/telephony/RIL;->convertDataCallResult(Landroid/hardware/radio/V1_0/SetupDataCallResult;)Lcom/android/internal/telephony/dataconnection/DataCallResponse;

    move-result-object v0

    :try_start_0
    iget v2, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v2, :cond_0

    iget-object v2, v1, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v2, v0}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v2, v1, p1, v0}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_1
    return-void

    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v3, v1, p1, v0}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    throw v2
.end method

.method private responseSignalStrength(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SignalStrength;)V
    .locals 4

    iget-object v2, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/RIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {p2}, Lcom/android/internal/telephony/RIL;->convertHalSignalStrength(Landroid/hardware/radio/V1_0/SignalStrength;)Landroid/telephony/SignalStrength;

    move-result-object v0

    :try_start_0
    iget v2, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v2, :cond_0

    iget-object v2, v1, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v2, v0}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v2, v1, p1, v0}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_1
    return-void

    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v3, v1, p1, v0}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    throw v2
.end method

.method private responseSms(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SendSmsResult;)V
    .locals 5

    iget-object v2, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/RIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v0, Lcom/android/internal/telephony/SmsResponse;

    iget v2, p2, Landroid/hardware/radio/V1_0/SendSmsResult;->messageRef:I

    iget-object v3, p2, Landroid/hardware/radio/V1_0/SendSmsResult;->ackPDU:Ljava/lang/String;

    iget v4, p2, Landroid/hardware/radio/V1_0/SendSmsResult;->errorCode:I

    invoke-direct {v0, v2, v3, v4}, Lcom/android/internal/telephony/SmsResponse;-><init>(ILjava/lang/String;I)V

    :try_start_0
    iget v2, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v2, :cond_0

    iget-object v2, v1, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v2, v0}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v2, v1, p1, v0}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_1
    return-void

    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v3, v1, p1, v0}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    throw v2
.end method

.method private responseString(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V
    .locals 3

    iget-object v1, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/RIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_0
    iget v1, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v1, v0, p1, p2}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v2, v0, p1, p2}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    throw v1
.end method

.method static responseStringArrayList(Lcom/android/internal/telephony/RIL;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/RIL;",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v1, v3, [Ljava/lang/String;

    const/4 v0, 0x0

    :goto_0
    :try_start_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v3, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v3, :cond_1

    iget-object v3, v2, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v3, v1}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    invoke-virtual {p0, v2, p1, v1}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_2
    return-void

    :catchall_0
    move-exception v3

    invoke-virtual {p0, v2, p1, v1}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    throw v3
.end method

.method private varargs responseStrings(Landroid/hardware/radio/V1_0/RadioResponseInfo;[Ljava/lang/String;)V
    .locals 3

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_0
    array-length v2, p2

    if-ge v0, v2, :cond_0

    aget-object v2, p2, v0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-static {v2, p1, v1}, Lcom/android/internal/telephony/RadioResponse;->responseStringArrayList(Lcom/android/internal/telephony/RIL;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    return-void
.end method

.method private responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 4

    iget-object v2, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/RIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    :try_start_0
    iget v2, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v2, :cond_0

    iget-object v2, v1, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v2, v0}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v2, v1, p1, v0}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_1
    return-void

    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v3, v1, p1, v0}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    throw v2
.end method

.method private secResponseCallForwardInfo(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/hardware/radio/V1_0/SecCallForwardInfo;",
            ">;)V"
        }
    .end annotation

    iget-object v3, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v3, p1}, Lcom/android/internal/telephony/RIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v1, v3, [Lcom/android/internal/telephony/CallForwardInfo;

    const/4 v0, 0x0

    :goto_0
    :try_start_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    new-instance v3, Lcom/android/internal/telephony/CallForwardInfo;

    invoke-direct {v3}, Lcom/android/internal/telephony/CallForwardInfo;-><init>()V

    aput-object v3, v1, v0

    aget-object v4, v1, v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/hardware/radio/V1_0/SecCallForwardInfo;

    iget-object v3, v3, Lcom/android/internal/telephony/hardware/radio/V1_0/SecCallForwardInfo;->base:Landroid/hardware/radio/V1_0/CallForwardInfo;

    iget v3, v3, Landroid/hardware/radio/V1_0/CallForwardInfo;->status:I

    iput v3, v4, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    aget-object v4, v1, v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/hardware/radio/V1_0/SecCallForwardInfo;

    iget-object v3, v3, Lcom/android/internal/telephony/hardware/radio/V1_0/SecCallForwardInfo;->base:Landroid/hardware/radio/V1_0/CallForwardInfo;

    iget v3, v3, Landroid/hardware/radio/V1_0/CallForwardInfo;->reason:I

    iput v3, v4, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    aget-object v4, v1, v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/hardware/radio/V1_0/SecCallForwardInfo;

    iget-object v3, v3, Lcom/android/internal/telephony/hardware/radio/V1_0/SecCallForwardInfo;->base:Landroid/hardware/radio/V1_0/CallForwardInfo;

    iget v3, v3, Landroid/hardware/radio/V1_0/CallForwardInfo;->serviceClass:I

    iput v3, v4, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    aget-object v4, v1, v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/hardware/radio/V1_0/SecCallForwardInfo;

    iget-object v3, v3, Lcom/android/internal/telephony/hardware/radio/V1_0/SecCallForwardInfo;->base:Landroid/hardware/radio/V1_0/CallForwardInfo;

    iget v3, v3, Landroid/hardware/radio/V1_0/CallForwardInfo;->toa:I

    iput v3, v4, Lcom/android/internal/telephony/CallForwardInfo;->toa:I

    aget-object v4, v1, v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/hardware/radio/V1_0/SecCallForwardInfo;

    iget-object v3, v3, Lcom/android/internal/telephony/hardware/radio/V1_0/SecCallForwardInfo;->base:Landroid/hardware/radio/V1_0/CallForwardInfo;

    iget-object v3, v3, Landroid/hardware/radio/V1_0/CallForwardInfo;->number:Ljava/lang/String;

    iput-object v3, v4, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    aget-object v4, v1, v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/hardware/radio/V1_0/SecCallForwardInfo;

    iget-object v3, v3, Lcom/android/internal/telephony/hardware/radio/V1_0/SecCallForwardInfo;->base:Landroid/hardware/radio/V1_0/CallForwardInfo;

    iget v3, v3, Landroid/hardware/radio/V1_0/CallForwardInfo;->timeSeconds:I

    iput v3, v4, Lcom/android/internal/telephony/CallForwardInfo;->timeSeconds:I

    aget-object v4, v1, v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/hardware/radio/V1_0/SecCallForwardInfo;

    iget-object v3, v3, Lcom/android/internal/telephony/hardware/radio/V1_0/SecCallForwardInfo;->startTime:Ljava/lang/String;

    iput-object v3, v4, Lcom/android/internal/telephony/CallForwardInfo;->startTime:Ljava/lang/String;

    aget-object v4, v1, v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/hardware/radio/V1_0/SecCallForwardInfo;

    iget-object v3, v3, Lcom/android/internal/telephony/hardware/radio/V1_0/SecCallForwardInfo;->endTime:Ljava/lang/String;

    iput-object v3, v4, Lcom/android/internal/telephony/CallForwardInfo;->endTime:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v3, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v3, :cond_1

    iget-object v3, v2, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v3, v1}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v3, v2, p1, v1}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_2
    return-void

    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v4, v2, p1, v1}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    throw v3
.end method

.method private secResponseCurrentCalls(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/hardware/radio/V1_0/SecCall;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Lcom/android/internal/telephony/RIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v10

    if-eqz v10, :cond_b

    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v8}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v8, :cond_8

    :try_start_0
    new-instance v1, Lcom/android/internal/telephony/DriverCall;

    invoke-direct {v1}, Lcom/android/internal/telephony/DriverCall;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/telephony/hardware/radio/V1_0/SecCall;

    iget-object v13, v13, Lcom/android/internal/telephony/hardware/radio/V1_0/SecCall;->base:Landroid/hardware/radio/V1_0/Call;

    iget v13, v13, Landroid/hardware/radio/V1_0/Call;->state:I

    invoke-static {v13}, Lcom/android/internal/telephony/DriverCall;->stateFromCLCC(I)Lcom/android/internal/telephony/DriverCall$State;

    move-result-object v13

    iput-object v13, v1, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/telephony/hardware/radio/V1_0/SecCall;

    iget-object v13, v13, Lcom/android/internal/telephony/hardware/radio/V1_0/SecCall;->base:Landroid/hardware/radio/V1_0/Call;

    iget v13, v13, Landroid/hardware/radio/V1_0/Call;->index:I

    shr-int/lit8 v13, v13, 0x8

    and-int/lit16 v13, v13, 0xff

    iput v13, v1, Lcom/android/internal/telephony/DriverCall;->id:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/telephony/hardware/radio/V1_0/SecCall;

    iget-object v13, v13, Lcom/android/internal/telephony/hardware/radio/V1_0/SecCall;->base:Landroid/hardware/radio/V1_0/Call;

    iget v13, v13, Landroid/hardware/radio/V1_0/Call;->index:I

    and-int/lit16 v13, v13, 0xff

    iput v13, v1, Lcom/android/internal/telephony/DriverCall;->index:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/telephony/hardware/radio/V1_0/SecCall;

    iget-object v13, v13, Lcom/android/internal/telephony/hardware/radio/V1_0/SecCall;->base:Landroid/hardware/radio/V1_0/Call;

    iget v13, v13, Landroid/hardware/radio/V1_0/Call;->toa:I

    iput v13, v1, Lcom/android/internal/telephony/DriverCall;->TOA:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/telephony/hardware/radio/V1_0/SecCall;

    iget-object v13, v13, Lcom/android/internal/telephony/hardware/radio/V1_0/SecCall;->base:Landroid/hardware/radio/V1_0/Call;

    iget-boolean v13, v13, Landroid/hardware/radio/V1_0/Call;->isMpty:Z

    iput-boolean v13, v1, Lcom/android/internal/telephony/DriverCall;->isMpty:Z

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/telephony/hardware/radio/V1_0/SecCall;

    iget-object v13, v13, Lcom/android/internal/telephony/hardware/radio/V1_0/SecCall;->base:Landroid/hardware/radio/V1_0/Call;

    iget-boolean v13, v13, Landroid/hardware/radio/V1_0/Call;->isMT:Z

    iput-boolean v13, v1, Lcom/android/internal/telephony/DriverCall;->isMT:Z

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/telephony/hardware/radio/V1_0/SecCall;

    iget-object v13, v13, Lcom/android/internal/telephony/hardware/radio/V1_0/SecCall;->base:Landroid/hardware/radio/V1_0/Call;

    iget-byte v13, v13, Landroid/hardware/radio/V1_0/Call;->als:B

    iput v13, v1, Lcom/android/internal/telephony/DriverCall;->als:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/telephony/hardware/radio/V1_0/SecCall;

    iget-object v13, v13, Lcom/android/internal/telephony/hardware/radio/V1_0/SecCall;->base:Landroid/hardware/radio/V1_0/Call;

    iget-boolean v13, v13, Landroid/hardware/radio/V1_0/Call;->isVoice:Z

    iput-boolean v13, v1, Lcom/android/internal/telephony/DriverCall;->isVoice:Z

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/telephony/hardware/radio/V1_0/SecCall;

    iget-object v13, v13, Lcom/android/internal/telephony/hardware/radio/V1_0/SecCall;->base:Landroid/hardware/radio/V1_0/Call;

    iget-boolean v13, v13, Landroid/hardware/radio/V1_0/Call;->isVoicePrivacy:Z

    iput-boolean v13, v1, Lcom/android/internal/telephony/DriverCall;->isVoicePrivacy:Z

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/telephony/hardware/radio/V1_0/SecCall;

    iget-object v13, v13, Lcom/android/internal/telephony/hardware/radio/V1_0/SecCall;->base:Landroid/hardware/radio/V1_0/Call;

    iget-object v13, v13, Landroid/hardware/radio/V1_0/Call;->number:Ljava/lang/String;

    iput-object v13, v1, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/telephony/hardware/radio/V1_0/SecCall;

    iget-object v13, v13, Lcom/android/internal/telephony/hardware/radio/V1_0/SecCall;->base:Landroid/hardware/radio/V1_0/Call;

    iget v13, v13, Landroid/hardware/radio/V1_0/Call;->numberPresentation:I

    invoke-static {v13}, Lcom/android/internal/telephony/DriverCall;->presentationFromCLIP(I)I

    move-result v13

    iput v13, v1, Lcom/android/internal/telephony/DriverCall;->numberPresentation:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/telephony/hardware/radio/V1_0/SecCall;

    iget-object v13, v13, Lcom/android/internal/telephony/hardware/radio/V1_0/SecCall;->callDetails:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_2

    const/4 v9, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/telephony/hardware/radio/V1_0/SecCall;

    iget-object v13, v13, Lcom/android/internal/telephony/hardware/radio/V1_0/SecCall;->callDetails:Ljava/util/ArrayList;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/telephony/hardware/radio/V1_0/OemCallDetails;

    iget-object v13, v13, Lcom/android/internal/telephony/hardware/radio/V1_0/OemCallDetails;->extras:Ljava/util/ArrayList;

    if-eqz v13, :cond_0

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/telephony/hardware/radio/V1_0/SecCall;

    iget-object v13, v13, Lcom/android/internal/telephony/hardware/radio/V1_0/SecCall;->callDetails:Ljava/util/ArrayList;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/telephony/hardware/radio/V1_0/OemCallDetails;

    iget-object v13, v13, Lcom/android/internal/telephony/hardware/radio/V1_0/OemCallDetails;->extras:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v9, v7, [Ljava/lang/String;

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v7, :cond_1

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/telephony/hardware/radio/V1_0/SecCall;

    iget-object v13, v13, Lcom/android/internal/telephony/hardware/radio/V1_0/SecCall;->callDetails:Ljava/util/ArrayList;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/telephony/hardware/radio/V1_0/OemCallDetails;

    iget-object v13, v13, Lcom/android/internal/telephony/hardware/radio/V1_0/OemCallDetails;->extras:Ljava/util/ArrayList;

    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    aput-object v13, v9, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    const-string/jumbo v14, "secResponseCurrentCalls: extras is null"

    invoke-virtual {v13, v14}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    :cond_1
    new-instance v14, Lcom/android/internal/telephony/CallDetails;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/telephony/hardware/radio/V1_0/SecCall;

    iget-object v13, v13, Lcom/android/internal/telephony/hardware/radio/V1_0/SecCall;->callDetails:Ljava/util/ArrayList;

    const/4 v15, 0x0

    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/telephony/hardware/radio/V1_0/OemCallDetails;

    iget v15, v13, Lcom/android/internal/telephony/hardware/radio/V1_0/OemCallDetails;->callType:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/telephony/hardware/radio/V1_0/SecCall;

    iget-object v13, v13, Lcom/android/internal/telephony/hardware/radio/V1_0/SecCall;->callDetails:Ljava/util/ArrayList;

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/telephony/hardware/radio/V1_0/OemCallDetails;

    iget v13, v13, Lcom/android/internal/telephony/hardware/radio/V1_0/OemCallDetails;->callDomain:I

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-direct {v14, v15, v13, v9, v0}, Lcom/android/internal/telephony/CallDetails;-><init>(II[Ljava/lang/String;Z)V

    iput-object v14, v1, Lcom/android/internal/telephony/DriverCall;->callDetails:Lcom/android/internal/telephony/CallDetails;

    :goto_2
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object v14, v14, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    const-string/jumbo v15, "CscFeature_RIL_CallCnapKcs6501"

    invoke-virtual {v13, v14, v15}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(ILjava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_4

    iget-object v13, v1, Lcom/android/internal/telephony/DriverCall;->callDetails:Lcom/android/internal/telephony/CallDetails;

    const-string/jumbo v14, "dcs"

    invoke-virtual {v13, v14}, Lcom/android/internal/telephony/CallDetails;->getExtraValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "dcs "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/android/internal/telephony/RIL;->riljLogv(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/telephony/hardware/radio/V1_0/SecCall;

    iget-object v13, v13, Lcom/android/internal/telephony/hardware/radio/V1_0/SecCall;->base:Landroid/hardware/radio/V1_0/Call;

    iget-object v13, v13, Landroid/hardware/radio/V1_0/Call;->name:Ljava/lang/String;

    invoke-static {v13}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v11

    if-eqz v3, :cond_3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v13

    const/16 v14, 0x94

    if-ne v13, v14, :cond_3

    :try_start_1
    new-instance v13, Ljava/lang/String;

    const-string/jumbo v14, "EUC_KR"

    invoke-direct {v13, v11, v14}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v13, v1, Lcom/android/internal/telephony/DriverCall;->name:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "USSD_DCS_KS5601, dc.name "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v1, Lcom/android/internal/telephony/DriverCall;->name:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    :try_start_2
    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/telephony/hardware/radio/V1_0/SecCall;

    iget-object v13, v13, Lcom/android/internal/telephony/hardware/radio/V1_0/SecCall;->base:Landroid/hardware/radio/V1_0/Call;

    iget v13, v13, Landroid/hardware/radio/V1_0/Call;->namePresentation:I

    invoke-static {v13}, Lcom/android/internal/telephony/DriverCall;->presentationFromCLIP(I)I

    move-result v13

    iput v13, v1, Lcom/android/internal/telephony/DriverCall;->namePresentation:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/telephony/hardware/radio/V1_0/SecCall;

    iget-object v13, v13, Lcom/android/internal/telephony/hardware/radio/V1_0/SecCall;->base:Landroid/hardware/radio/V1_0/Call;

    iget-object v13, v13, Landroid/hardware/radio/V1_0/Call;->uusInfo:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_6

    new-instance v13, Lcom/android/internal/telephony/UUSInfo;

    invoke-direct {v13}, Lcom/android/internal/telephony/UUSInfo;-><init>()V

    iput-object v13, v1, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    iget-object v14, v1, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/telephony/hardware/radio/V1_0/SecCall;

    iget-object v13, v13, Lcom/android/internal/telephony/hardware/radio/V1_0/SecCall;->base:Landroid/hardware/radio/V1_0/Call;

    iget-object v13, v13, Landroid/hardware/radio/V1_0/Call;->uusInfo:Ljava/util/ArrayList;

    const/4 v15, 0x0

    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/hardware/radio/V1_0/UusInfo;

    iget v13, v13, Landroid/hardware/radio/V1_0/UusInfo;->uusType:I

    invoke-virtual {v14, v13}, Lcom/android/internal/telephony/UUSInfo;->setType(I)V

    iget-object v14, v1, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/telephony/hardware/radio/V1_0/SecCall;

    iget-object v13, v13, Lcom/android/internal/telephony/hardware/radio/V1_0/SecCall;->base:Landroid/hardware/radio/V1_0/Call;

    iget-object v13, v13, Landroid/hardware/radio/V1_0/Call;->uusInfo:Ljava/util/ArrayList;

    const/4 v15, 0x0

    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/hardware/radio/V1_0/UusInfo;

    iget v13, v13, Landroid/hardware/radio/V1_0/UusInfo;->uusDcs:I

    invoke-virtual {v14, v13}, Lcom/android/internal/telephony/UUSInfo;->setDcs(I)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/telephony/hardware/radio/V1_0/SecCall;

    iget-object v13, v13, Lcom/android/internal/telephony/hardware/radio/V1_0/SecCall;->base:Landroid/hardware/radio/V1_0/Call;

    iget-object v13, v13, Landroid/hardware/radio/V1_0/Call;->uusInfo:Ljava/util/ArrayList;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/hardware/radio/V1_0/UusInfo;

    iget-object v13, v13, Landroid/hardware/radio/V1_0/UusInfo;->uusData:Ljava/lang/String;

    if-eqz v13, :cond_5

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/telephony/hardware/radio/V1_0/SecCall;

    iget-object v13, v13, Lcom/android/internal/telephony/hardware/radio/V1_0/SecCall;->base:Landroid/hardware/radio/V1_0/Call;

    iget-object v13, v13, Landroid/hardware/radio/V1_0/Call;->uusInfo:Ljava/util/ArrayList;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/hardware/radio/V1_0/UusInfo;

    iget-object v13, v13, Landroid/hardware/radio/V1_0/UusInfo;->uusData:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    iget-object v13, v1, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    invoke-virtual {v13, v12}, Lcom/android/internal/telephony/UUSInfo;->setUserData([B)V

    :goto_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    const-string/jumbo v14, "Incoming UUS : type=%d, dcs=%d, length=%d"

    const/4 v15, 0x3

    new-array v15, v15, [Ljava/lang/Object;

    iget-object v0, v1, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/telephony/UUSInfo;->getType()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    const/16 v17, 0x0

    aput-object v16, v15, v17

    iget-object v0, v1, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/telephony/UUSInfo;->getDcs()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    const/16 v17, 0x1

    aput-object v16, v15, v17

    iget-object v0, v1, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/telephony/UUSInfo;->getUserData()[B

    move-result-object v16

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    const/16 v17, 0x2

    aput-object v16, v15, v17

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/android/internal/telephony/RIL;->riljLogv(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Incoming UUS : data (hex): "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v1, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    invoke-virtual {v15}, Lcom/android/internal/telephony/UUSInfo;->getUserData()[B

    move-result-object v15

    invoke-static {v15}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/android/internal/telephony/RIL;->riljLogv(Ljava/lang/String;)V

    :goto_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "dc.index "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget v15, v1, Lcom/android/internal/telephony/DriverCall;->index:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " dc.id "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget v15, v1, Lcom/android/internal/telephony/DriverCall;->id:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " dc.callDetails "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v1, Lcom/android/internal/telephony/DriverCall;->callDetails:Lcom/android/internal/telephony/CallDetails;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    iget-object v13, v1, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    iget v14, v1, Lcom/android/internal/telephony/DriverCall;->TOA:I

    invoke-static {v13, v14}, Landroid/telephony/PhoneNumberUtils;->stringFromStringAndTOA(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v1, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean v13, v1, Lcom/android/internal/telephony/DriverCall;->isVoicePrivacy:Z

    if-eqz v13, :cond_7

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object v13, v13, Lcom/android/internal/telephony/RIL;->mVoicePrivacyOnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v13}, Landroid/os/RegistrantList;->notifyRegistrants()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    const-string/jumbo v14, "InCall VoicePrivacy is enabled"

    invoke-virtual {v13, v14}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    :goto_6
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_2
    new-instance v13, Lcom/android/internal/telephony/CallDetails;

    invoke-direct {v13}, Lcom/android/internal/telephony/CallDetails;-><init>()V

    iput-object v13, v1, Lcom/android/internal/telephony/DriverCall;->callDetails:Lcom/android/internal/telephony/CallDetails;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    const-string/jumbo v14, "CallDetails : NOT present!"

    invoke-virtual {v13, v14}, Lcom/android/internal/telephony/RIL;->riljLogv(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_2

    :catchall_0
    move-exception v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    move-object/from16 v0, p1

    invoke-virtual {v14, v10, v0, v2}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    throw v13

    :catch_0
    move-exception v4

    :try_start_3
    const-string/jumbo v13, ""

    iput-object v13, v1, Lcom/android/internal/telephony/DriverCall;->name:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "implausible UnsupportedEncodingException "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_3
    new-instance v13, Ljava/lang/String;

    invoke-direct {v13, v11}, Ljava/lang/String;-><init>([B)V

    iput-object v13, v1, Lcom/android/internal/telephony/DriverCall;->name:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "secResponseCurrentCalls dc.name "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v1, Lcom/android/internal/telephony/DriverCall;->name:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_4
    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/telephony/hardware/radio/V1_0/SecCall;

    iget-object v13, v13, Lcom/android/internal/telephony/hardware/radio/V1_0/SecCall;->base:Landroid/hardware/radio/V1_0/Call;

    iget-object v13, v13, Landroid/hardware/radio/V1_0/Call;->name:Ljava/lang/String;

    iput-object v13, v1, Lcom/android/internal/telephony/DriverCall;->name:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "secResponseCurrentCalls dc.name "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v1, Lcom/android/internal/telephony/DriverCall;->name:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    const-string/jumbo v14, "secResponseCurrentCalls: uusInfo data is null"

    invoke-virtual {v13, v14}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    const-string/jumbo v14, "Incoming UUS : NOT present!"

    invoke-virtual {v13, v14}, Lcom/android/internal/telephony/RIL;->riljLogv(Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object v13, v13, Lcom/android/internal/telephony/RIL;->mVoicePrivacyOffRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v13}, Landroid/os/RegistrantList;->notifyRegistrants()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    const-string/jumbo v14, "InCall VoicePrivacy is disabled"

    invoke-virtual {v13, v14}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_8
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    if-nez v8, :cond_9

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object v13, v13, Lcom/android/internal/telephony/RIL;->mTestingEmergencyCall:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v13

    if-eqz v13, :cond_9

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object v13, v13, Lcom/android/internal/telephony/RIL;->mEmergencyCallbackModeRegistrant:Landroid/os/Registrant;

    if-eqz v13, :cond_9

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    const-string/jumbo v14, "secResponseCurrentCalls: call ended, testing emergency call, notify ECM Registrants"

    invoke-virtual {v13, v14}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object v13, v13, Lcom/android/internal/telephony/RIL;->mEmergencyCallbackModeRegistrant:Landroid/os/Registrant;

    invoke-virtual {v13}, Landroid/os/Registrant;->notifyRegistrant()V

    :cond_9
    move-object/from16 v0, p1

    iget v13, v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v13, :cond_a

    iget-object v13, v10, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v13, v2}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    move-object/from16 v0, p1

    invoke-virtual {v13, v10, v0, v2}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_b
    return-void
.end method

.method private secResponseIccCardStatus(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lcom/android/internal/telephony/hardware/radio/V1_0/SecCardStatus;)V
    .locals 9

    iget-object v6, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v6, p1}, Lcom/android/internal/telephony/RIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v5

    if-eqz v5, :cond_3

    new-instance v2, Lcom/android/internal/telephony/uicc/IccCardStatus;

    invoke-direct {v2}, Lcom/android/internal/telephony/uicc/IccCardStatus;-><init>()V

    :try_start_0
    iget v6, p2, Lcom/android/internal/telephony/hardware/radio/V1_0/SecCardStatus;->cardState:I

    invoke-virtual {v2, v6}, Lcom/android/internal/telephony/uicc/IccCardStatus;->setCardState(I)V

    iget v6, p2, Lcom/android/internal/telephony/hardware/radio/V1_0/SecCardStatus;->universalPinState:I

    invoke-virtual {v2, v6}, Lcom/android/internal/telephony/uicc/IccCardStatus;->setUniversalPinState(I)V

    iget v6, p2, Lcom/android/internal/telephony/hardware/radio/V1_0/SecCardStatus;->gsmUmtsSubscriptionAppIndex:I

    iput v6, v2, Lcom/android/internal/telephony/uicc/IccCardStatus;->mGsmUmtsSubscriptionAppIndex:I

    iget v6, p2, Lcom/android/internal/telephony/hardware/radio/V1_0/SecCardStatus;->cdmaSubscriptionAppIndex:I

    iput v6, v2, Lcom/android/internal/telephony/uicc/IccCardStatus;->mCdmaSubscriptionAppIndex:I

    iget v6, p2, Lcom/android/internal/telephony/hardware/radio/V1_0/SecCardStatus;->imsSubscriptionAppIndex:I

    iput v6, v2, Lcom/android/internal/telephony/uicc/IccCardStatus;->mImsSubscriptionAppIndex:I

    iget-object v6, p2, Lcom/android/internal/telephony/hardware/radio/V1_0/SecCardStatus;->applications:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/16 v6, 0x8

    if-le v3, v6, :cond_0

    const/16 v3, 0x8

    :cond_0
    new-array v6, v3, [Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    iput-object v6, v2, Lcom/android/internal/telephony/uicc/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    iget-object v6, p2, Lcom/android/internal/telephony/hardware/radio/V1_0/SecCardStatus;->applications:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/hardware/radio/V1_0/SecAppStatus;

    new-instance v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    invoke-direct {v0}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;-><init>()V

    iget-object v6, v4, Lcom/android/internal/telephony/hardware/radio/V1_0/SecAppStatus;->base:Landroid/hardware/radio/V1_0/AppStatus;

    iget v6, v6, Landroid/hardware/radio/V1_0/AppStatus;->appType:I

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->AppTypeFromRILInt(I)Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v6

    iput-object v6, v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_type:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    iget-object v6, v4, Lcom/android/internal/telephony/hardware/radio/V1_0/SecAppStatus;->base:Landroid/hardware/radio/V1_0/AppStatus;

    iget v6, v6, Landroid/hardware/radio/V1_0/AppStatus;->appState:I

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->AppStateFromRILInt(I)Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    move-result-object v6

    iput-object v6, v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_state:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    iget-object v6, v4, Lcom/android/internal/telephony/hardware/radio/V1_0/SecAppStatus;->base:Landroid/hardware/radio/V1_0/AppStatus;

    iget v6, v6, Landroid/hardware/radio/V1_0/AppStatus;->persoSubstate:I

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->PersoSubstateFromRILInt(I)Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    move-result-object v6

    iput-object v6, v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->perso_substate:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    iget-object v6, v4, Lcom/android/internal/telephony/hardware/radio/V1_0/SecAppStatus;->base:Landroid/hardware/radio/V1_0/AppStatus;

    iget-object v6, v6, Landroid/hardware/radio/V1_0/AppStatus;->aidPtr:Ljava/lang/String;

    iput-object v6, v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->aid:Ljava/lang/String;

    iget-object v6, v4, Lcom/android/internal/telephony/hardware/radio/V1_0/SecAppStatus;->base:Landroid/hardware/radio/V1_0/AppStatus;

    iget-object v6, v6, Landroid/hardware/radio/V1_0/AppStatus;->appLabelPtr:Ljava/lang/String;

    iput-object v6, v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_label:Ljava/lang/String;

    iget-object v6, v4, Lcom/android/internal/telephony/hardware/radio/V1_0/SecAppStatus;->base:Landroid/hardware/radio/V1_0/AppStatus;

    iget v6, v6, Landroid/hardware/radio/V1_0/AppStatus;->pin1Replaced:I

    iput v6, v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->pin1_replaced:I

    iget-object v6, v4, Lcom/android/internal/telephony/hardware/radio/V1_0/SecAppStatus;->base:Landroid/hardware/radio/V1_0/AppStatus;

    iget v6, v6, Landroid/hardware/radio/V1_0/AppStatus;->pin1:I

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->PinStateFromRILInt(I)Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    move-result-object v6

    iput-object v6, v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->pin1:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    iget-object v6, v4, Lcom/android/internal/telephony/hardware/radio/V1_0/SecAppStatus;->base:Landroid/hardware/radio/V1_0/AppStatus;

    iget v6, v6, Landroid/hardware/radio/V1_0/AppStatus;->pin2:I

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->PinStateFromRILInt(I)Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    move-result-object v6

    iput-object v6, v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->pin2:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    iget v6, v4, Lcom/android/internal/telephony/hardware/radio/V1_0/SecAppStatus;->pin1NumRetries:I

    iput v6, v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->pin1_num_retries:I

    iget v6, v4, Lcom/android/internal/telephony/hardware/radio/V1_0/SecAppStatus;->puk1NumRetries:I

    iput v6, v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->puk1_num_retries:I

    iget v6, v4, Lcom/android/internal/telephony/hardware/radio/V1_0/SecAppStatus;->pin2NumRetries:I

    iput v6, v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->pin2_num_retries:I

    iget v6, v4, Lcom/android/internal/telephony/hardware/radio/V1_0/SecAppStatus;->puk2NumRetries:I

    iput v6, v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->puk2_num_retries:I

    iget v6, v4, Lcom/android/internal/telephony/hardware/radio/V1_0/SecAppStatus;->persoUnblockRetries:I

    iput v6, v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->perso_unblock_retries:I

    iget-object v6, v2, Lcom/android/internal/telephony/uicc/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    aput-object v0, v6, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v6, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "responseIccCardStatus: from HIDL: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    iget v6, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v6, :cond_2

    iget-object v6, v5, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v6, v2}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    iget-object v6, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v6, v5, p1, v2}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_3
    return-void

    :catchall_0
    move-exception v6

    iget-object v7, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v7, v5, p1, v2}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    throw v6
.end method

.method private secResponseOperatorInfos(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/hardware/radio/V1_0/SecOperatorInfo;",
            ">;)V"
        }
    .end annotation

    iget-object v3, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v3, p1}, Lcom/android/internal/telephony/RIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v2

    if-eqz v2, :cond_2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_0
    :try_start_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/hardware/radio/V1_0/SecOperatorInfo;

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/RadioResponse;->convertOperatorInfo(Lcom/android/internal/telephony/hardware/radio/V1_0/SecOperatorInfo;)Lcom/android/internal/telephony/OperatorInfo;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v3, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v3, :cond_1

    iget-object v3, v2, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v3, v1}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v3, v2, p1, v1}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_2
    return-void

    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v4, v2, p1, v1}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    throw v3
.end method

.method private secResponseSignalStrength(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lcom/android/internal/telephony/hardware/radio/V1_0/SecSignalStrength;)V
    .locals 4

    iget-object v2, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/RIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {p2}, Lcom/android/internal/telephony/RIL;->secConvertHalSignalStrength(Lcom/android/internal/telephony/hardware/radio/V1_0/SecSignalStrength;)Landroid/telephony/SignalStrength;

    move-result-object v0

    :try_start_0
    iget v2, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v2, :cond_0

    iget-object v2, v1, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v2, v0}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v2, v1, p1, v0}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_1
    return-void

    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v3, v1, p1, v0}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    throw v2
.end method

.method private secResponseSms(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lcom/android/internal/telephony/hardware/radio/V1_0/SecSendSmsResult;)V
    .locals 6

    iget-object v2, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/RIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v0, Lcom/android/internal/telephony/SmsResponse;

    iget v2, p2, Lcom/android/internal/telephony/hardware/radio/V1_0/SecSendSmsResult;->messageRef:I

    iget-object v3, p2, Lcom/android/internal/telephony/hardware/radio/V1_0/SecSendSmsResult;->ackPDU:Ljava/lang/String;

    iget v4, p2, Lcom/android/internal/telephony/hardware/radio/V1_0/SecSendSmsResult;->errorCode:I

    iget v5, p2, Lcom/android/internal/telephony/hardware/radio/V1_0/SecSendSmsResult;->errorClass:I

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/android/internal/telephony/SmsResponse;-><init>(ILjava/lang/String;II)V

    :try_start_0
    iget v2, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v2, :cond_0

    iget-object v2, v1, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v2, v0}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v2, v1, p1, v0}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_1
    return-void

    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v3, v1, p1, v0}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    throw v2
.end method

.method static sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-static {p0, p1, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method


# virtual methods
.method public acceptCallResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public acknowledgeIncomingGsmSmsWithPduResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public acknowledgeLastIncomingCdmaSmsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public acknowledgeLastIncomingGsmSmsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public acknowledgeRequest(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processRequestAck(I)V

    return-void
.end method

.method public cancelPendingUssdResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public changeIccPin2ForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/RadioResponse;->responseInts(Landroid/hardware/radio/V1_0/RadioResponseInfo;[I)V

    return-void
.end method

.method public changeIccPinForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/RadioResponse;->responseInts(Landroid/hardware/radio/V1_0/RadioResponseInfo;[I)V

    return-void
.end method

.method public conferenceResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public deactivateDataCallResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public deleteSmsOnRuimResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public deleteSmsOnSimResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public dialResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public exitEmergencyCallbackModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public explicitCallTransferResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public getAllowedCarriersResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;ZLandroid/hardware/radio/V1_0/CarrierRestrictions;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/RadioResponse;->responseCarrierIdentifiers(Landroid/hardware/radio/V1_0/RadioResponseInfo;ZLandroid/hardware/radio/V1_0/CarrierRestrictions;)V

    return-void
.end method

.method public getAvailableBandModesResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseIntArrayList(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    return-void
.end method

.method public getAvailableNetworksResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/radio/V1_0/OperatorInfo;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseOperatorInfos(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    return-void
.end method

.method public getBasebandVersionResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseString(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    return-void
.end method

.method public getCDMASubscriptionResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 v1, 0x1

    aput-object p3, v0, v1

    const/4 v1, 0x2

    aput-object p4, v0, v1

    const/4 v1, 0x3

    aput-object p5, v0, v1

    const/4 v1, 0x4

    aput-object p6, v0, v1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/RadioResponse;->responseStrings(Landroid/hardware/radio/V1_0/RadioResponseInfo;[Ljava/lang/String;)V

    return-void
.end method

.method public getCallForwardStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/radio/V1_0/CallForwardInfo;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseCallForwardInfo(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    return-void
.end method

.method public getCallWaitingResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;ZI)V
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x2

    new-array v3, v0, [I

    if-eqz p2, :cond_0

    move v0, v1

    :goto_0
    aput v0, v3, v2

    aput p3, v3, v1

    invoke-direct {p0, p1, v3}, Lcom/android/internal/telephony/RadioResponse;->responseInts(Landroid/hardware/radio/V1_0/RadioResponseInfo;[I)V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method public getCdmaBroadcastConfigResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseCdmaBroadcastConfig(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    return-void
.end method

.method public getCdmaRoamingPreferenceResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/RadioResponse;->responseInts(Landroid/hardware/radio/V1_0/RadioResponseInfo;[I)V

    return-void
.end method

.method public getCdmaSubscriptionSourceResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/RadioResponse;->responseInts(Landroid/hardware/radio/V1_0/RadioResponseInfo;[I)V

    return-void
.end method

.method public getCellInfoListResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/radio/V1_0/CellInfo;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseCellInfoList(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    return-void
.end method

.method public getClipResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/RadioResponse;->responseInts(Landroid/hardware/radio/V1_0/RadioResponseInfo;[I)V

    return-void
.end method

.method public getClirResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;II)V
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    const/4 v1, 0x1

    aput p3, v0, v1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/RadioResponse;->responseInts(Landroid/hardware/radio/V1_0/RadioResponseInfo;[I)V

    return-void
.end method

.method public getCurrentCallsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/radio/V1_0/Call;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseCurrentCalls(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    return-void
.end method

.method public getDataCallListResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/radio/V1_0/SetupDataCallResult;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseDataCallList(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    return-void
.end method

.method public getDataRegistrationStateResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/DataRegStateResult;)V
    .locals 3

    iget-object v1, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/RIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_0
    iget v1, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v1, v0, p1, p2}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v2, v0, p1, p2}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    throw v1
.end method

.method public getDeviceIdentityResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 v1, 0x1

    aput-object p3, v0, v1

    const/4 v1, 0x2

    aput-object p4, v0, v1

    const/4 v1, 0x3

    aput-object p5, v0, v1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/RadioResponse;->responseStrings(Landroid/hardware/radio/V1_0/RadioResponseInfo;[Ljava/lang/String;)V

    return-void
.end method

.method public getFacilityLockForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/RadioResponse;->responseInts(Landroid/hardware/radio/V1_0/RadioResponseInfo;[I)V

    return-void
.end method

.method public getGsmBroadcastConfigResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseGmsBroadcastConfig(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    return-void
.end method

.method public getHardwareConfigResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/radio/V1_0/HardwareConfig;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseHardwareConfig(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    return-void
.end method

.method public getIMSIForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseString(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    return-void
.end method

.method public getIccCardStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/CardStatus;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseIccCardStatus(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/CardStatus;)V

    return-void
.end method

.method public getImsRegistrationStateResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;ZI)V
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x2

    new-array v3, v0, [I

    if-eqz p2, :cond_0

    move v0, v1

    :goto_0
    aput v0, v3, v2

    aput p3, v3, v1

    invoke-direct {p0, p1, v3}, Lcom/android/internal/telephony/RadioResponse;->responseInts(Landroid/hardware/radio/V1_0/RadioResponseInfo;[I)V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method public getLastCallFailCauseResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/LastCallFailCauseInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseLastCallFailCauseInfo(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/LastCallFailCauseInfo;)V

    return-void
.end method

.method public getModemActivityInfoResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/ActivityStatsInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseActivityData(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/ActivityStatsInfo;)V

    return-void
.end method

.method public getMuteResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Z)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    new-array v2, v0, [I

    if-eqz p2, :cond_0

    :goto_0
    aput v0, v2, v1

    invoke-direct {p0, p1, v2}, Lcom/android/internal/telephony/RadioResponse;->responseInts(Landroid/hardware/radio/V1_0/RadioResponseInfo;[I)V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public getNeighboringCidsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/radio/V1_0/NeighboringCell;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseCellList(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    return-void
.end method

.method public getNetworkSelectionModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Z)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    new-array v2, v0, [I

    if-eqz p2, :cond_0

    :goto_0
    aput v0, v2, v1

    invoke-direct {p0, p1, v2}, Lcom/android/internal/telephony/RadioResponse;->responseInts(Landroid/hardware/radio/V1_0/RadioResponseInfo;[I)V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public getOperatorResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 v1, 0x1

    aput-object p3, v0, v1

    const/4 v1, 0x2

    aput-object p4, v0, v1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/RadioResponse;->responseStrings(Landroid/hardware/radio/V1_0/RadioResponseInfo;[Ljava/lang/String;)V

    return-void
.end method

.method public getPreferredNetworkTypeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    iput p2, v0, Lcom/android/internal/telephony/RIL;->mPreferredNetworkType:I

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/RadioResponse;->responseInts(Landroid/hardware/radio/V1_0/RadioResponseInfo;[I)V

    return-void
.end method

.method public getPreferredVoicePrivacyResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Z)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    new-array v2, v0, [I

    if-eqz p2, :cond_0

    :goto_0
    aput v0, v2, v1

    invoke-direct {p0, p1, v2}, Lcom/android/internal/telephony/RadioResponse;->responseInts(Landroid/hardware/radio/V1_0/RadioResponseInfo;[I)V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public getRadioCapabilityResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/RadioCapability;)V
    .locals 4

    iget-object v2, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/RIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-static {p2, v2}, Lcom/android/internal/telephony/RIL;->convertHalRadioCapability(Landroid/hardware/radio/V1_0/RadioCapability;Lcom/android/internal/telephony/RIL;)Lcom/android/internal/telephony/RadioCapability;

    move-result-object v0

    :try_start_0
    iget v2, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    const/4 v3, 0x6

    if-eq v2, v3, :cond_0

    iget v2, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v2}, Lcom/android/internal/telephony/RIL;->makeStaticRadioCapability()Lcom/android/internal/telephony/RadioCapability;

    move-result-object v0

    const/4 v2, 0x0

    iput v2, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    :goto_0
    iget v2, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v2, :cond_1

    iget-object v2, v1, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v2, v0}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v2, v1, p1, v0}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_2
    return-void

    :cond_3
    :try_start_1
    iget-object v2, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v2}, Lcom/android/internal/telephony/RIL;->makeStaticRadioCapability()Lcom/android/internal/telephony/RadioCapability;

    move-result-object v0

    const/4 v2, 0x0

    iput v2, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v3, v1, p1, v0}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    throw v2
.end method

.method public getSignalStrengthResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SignalStrength;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseSignalStrength(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SignalStrength;)V

    return-void
.end method

.method public getSmscAddressResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseString(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    return-void
.end method

.method public getTTYModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/RadioResponse;->responseInts(Landroid/hardware/radio/V1_0/RadioResponseInfo;[I)V

    return-void
.end method

.method public getVoiceRadioTechnologyResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/RadioResponse;->responseInts(Landroid/hardware/radio/V1_0/RadioResponseInfo;[I)V

    return-void
.end method

.method public getVoiceRegistrationStateResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/VoiceRegStateResult;)V
    .locals 3

    iget-object v1, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/RIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_0
    iget v1, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v1, v0, p1, p2}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v2, v0, p1, p2}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    throw v1
.end method

.method public handleStkCallSetupRequestFromSimResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public hangupConnectionResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public hangupForegroundResumeBackgroundResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public hangupWaitingOrBackgroundResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public iccCloseLogicalChannelResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public iccIOForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/IccIoResult;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseIccIo(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/IccIoResult;)V

    return-void
.end method

.method public iccOpenLogicalChannelResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;ILjava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Byte;

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/RadioResponse;->responseIntArrayList(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    return-void
.end method

.method public iccTransmitApduBasicChannelResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/IccIoResult;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseIccIo(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/IccIoResult;)V

    return-void
.end method

.method public iccTransmitApduLogicalChannelResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/IccIoResult;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseIccIo(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/IccIoResult;)V

    return-void
.end method

.method public nvReadItemResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseString(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    return-void
.end method

.method public nvResetConfigResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public nvWriteCdmaPrlResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public nvWriteItemResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public oemAccessPhoneBookEntryResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/RadioResponse;->responseInts(Landroid/hardware/radio/V1_0/RadioResponseInfo;[I)V

    return-void
.end method

.method public oemAcknowledgeRilConnectedResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public oemCallDeflectionResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public oemCancelTransferCallResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public oemChangeIccPersoResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public oemDialEmergencyCallResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public oemEmergencyControlResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public oemEmergencySearchResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/RadioResponse;->responseInts(Landroid/hardware/radio/V1_0/RadioResponseInfo;[I)V

    return-void
.end method

.method public oemEnableUnsolResponseResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public oemGetAcbInfoResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseIntArrayList(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    return-void
.end method

.method public oemGetAtrResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseString(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    return-void
.end method

.method public oemGetCellBroadcastConfigResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lcom/android/internal/telephony/hardware/radio/V1_0/OemCbConfigArgs;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->oemResponseGsmBroadcastConfig(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lcom/android/internal/telephony/hardware/radio/V1_0/OemCbConfigArgs;)V

    return-void
.end method

.method public oemGetDisable2gResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/RadioResponse;->responseInts(Landroid/hardware/radio/V1_0/RadioResponseInfo;[I)V

    return-void
.end method

.method public oemGetICBarringResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseString(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    return-void
.end method

.method public oemGetPhoneBookEntryResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lcom/android/internal/telephony/hardware/radio/V1_0/OemSimPBResponse;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseSIM_PB(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lcom/android/internal/telephony/hardware/radio/V1_0/OemSimPBResponse;)V

    return-void
.end method

.method public oemGetPhoneBookStorageInfoResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseIntArrayList(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    return-void
.end method

.method public oemGetPreferredNetworkListResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/hardware/radio/V1_0/OemPreferredNetworkInfo;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->oemResponsePreferredNetworkInfos(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    return-void
.end method

.method public oemGetSimLockInfoResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const/4 v8, 0x0

    iget-object v6, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v6, p1}, Lcom/android/internal/telephony/RIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v5

    if-eqz v5, :cond_2

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    const/4 v3, 0x0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x4

    if-lt v6, v7, :cond_0

    invoke-virtual {p2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v6, 0x1

    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v6, 0x2

    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v6, 0x3

    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v3

    :cond_0
    new-instance v4, Lcom/android/internal/telephony/uicc/SimLockInfoResult;

    invoke-direct {v4, v2, v1, v0, v3}, Lcom/android/internal/telephony/uicc/SimLockInfoResult;-><init>(IIII)V

    :try_start_0
    iget v6, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v6, :cond_1

    iget-object v6, v5, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v6, v4}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    iget-object v6, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v6, v5, p1, v4}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_2
    return-void

    :catchall_0
    move-exception v6

    iget-object v7, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v7, v5, p1, v4}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    throw v6
.end method

.method public oemHoldCallResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public oemModifyCallInitiateResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/LastCallFailCauseInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseLastCallFailCauseInfo(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/LastCallFailCauseInfo;)V

    return-void
.end method

.method public oemQueryCnapResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/RadioResponse;->responseInts(Landroid/hardware/radio/V1_0/RadioResponseInfo;[I)V

    return-void
.end method

.method public oemQueryCsgListResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/hardware/radio/V1_0/OemCsgInfo;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v9

    if-eqz v9, :cond_2

    new-instance v8, Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {v8, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v7, 0x0

    :goto_0
    :try_start_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v7, v0, :cond_0

    new-instance v0, Lcom/android/internal/telephony/CsgInfo;

    invoke-virtual {p2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/hardware/radio/V1_0/OemCsgInfo;

    iget v1, v1, Lcom/android/internal/telephony/hardware/radio/V1_0/OemCsgInfo;->csgId:I

    invoke-virtual {p2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/hardware/radio/V1_0/OemCsgInfo;

    iget-object v2, v2, Lcom/android/internal/telephony/hardware/radio/V1_0/OemCsgInfo;->name:Ljava/lang/String;

    invoke-virtual {p2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/hardware/radio/V1_0/OemCsgInfo;

    iget-object v3, v3, Lcom/android/internal/telephony/hardware/radio/V1_0/OemCsgInfo;->plmn:Ljava/lang/String;

    invoke-virtual {p2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/hardware/radio/V1_0/OemCsgInfo;

    iget v4, v4, Lcom/android/internal/telephony/hardware/radio/V1_0/OemCsgInfo;->rat:I

    invoke-virtual {p2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/hardware/radio/V1_0/OemCsgInfo;

    iget v5, v5, Lcom/android/internal/telephony/hardware/radio/V1_0/OemCsgInfo;->category:I

    invoke-virtual {p2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/hardware/radio/V1_0/OemCsgInfo;

    iget v6, v6, Lcom/android/internal/telephony/hardware/radio/V1_0/OemCsgInfo;->signalStrength:I

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/CsgInfo;-><init>(ILjava/lang/String;Ljava/lang/String;III)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    iget v0, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v0, :cond_1

    iget-object v0, v9, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v0, v8}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, v9, p1, v8}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v1, v9, p1, v8}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    throw v0
.end method

.method public oemRefreshNitzTimeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public oemSelectCsgManualResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public oemSendCdmaSmsExpectMoreResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lcom/android/internal/telephony/hardware/radio/V1_0/SecSendSmsResult;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->secResponseSms(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lcom/android/internal/telephony/hardware/radio/V1_0/SecSendSmsResult;)V

    return-void
.end method

.method public oemSendEncodedUSSDResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public oemSetDisable2gResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public oemSetICBarringResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public oemSetImsCallListResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public oemSetPreferredNetworkListResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public oemSetSimInitEventResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public oemSetSimPowerResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/RadioResponse;->responseInts(Landroid/hardware/radio/V1_0/RadioResponseInfo;[I)V

    return-void
.end method

.method public oemSetTransferCallResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public oemSupplyIccPersoResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public oemUsimPbCapaResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseIntArrayList(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    return-void
.end method

.method public pullLceDataResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/LceDataInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseLceData(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/LceDataInfo;)V

    return-void
.end method

.method public rejectCallResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public reportSmsMemoryStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public reportStkServiceIsRunningResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public requestIccSimAuthenticationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/IccIoResult;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseICC_IOBase64(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/IccIoResult;)V

    return-void
.end method

.method public requestIsimAuthenticationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseString(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    return-void
.end method

.method public requestShutdownResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public secAcceptCallResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public secDialResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public secExplicitCallTransferResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public secGetAvailableNetworksResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/hardware/radio/V1_0/SecOperatorInfo;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->secResponseOperatorInfos(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    return-void
.end method

.method public secGetCallForwardStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/hardware/radio/V1_0/SecCallForwardInfo;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->secResponseCallForwardInfo(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    return-void
.end method

.method public secGetCdmaRoamingPreferenceResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;II)V
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    const/4 v1, 0x1

    aput p3, v0, v1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/RadioResponse;->responseInts(Landroid/hardware/radio/V1_0/RadioResponseInfo;[I)V

    return-void
.end method

.method public secGetCurrentCallsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/hardware/radio/V1_0/SecCall;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->secResponseCurrentCalls(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    return-void
.end method

.method public secGetDataRegistrationStateResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lcom/android/internal/telephony/hardware/radio/V1_0/SecDataRegStateResult;)V
    .locals 3

    iget-object v1, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/RIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_0
    iget v1, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v1, v0, p1, p2}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v2, v0, p1, p2}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    throw v1
.end method

.method public secGetIccCardStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lcom/android/internal/telephony/hardware/radio/V1_0/SecCardStatus;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->secResponseIccCardStatus(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lcom/android/internal/telephony/hardware/radio/V1_0/SecCardStatus;)V

    return-void
.end method

.method public secGetImsRegistrationStateResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseIntArrayList(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    return-void
.end method

.method public secGetOperatorResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 v1, 0x1

    aput-object p3, v0, v1

    const/4 v1, 0x2

    aput-object p4, v0, v1

    const/4 v1, 0x3

    aput-object p5, v0, v1

    const/4 v1, 0x4

    aput-object p6, v0, v1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/RadioResponse;->responseStrings(Landroid/hardware/radio/V1_0/RadioResponseInfo;[Ljava/lang/String;)V

    return-void
.end method

.method public secGetSignalStrengthResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lcom/android/internal/telephony/hardware/radio/V1_0/SecSignalStrength;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->secResponseSignalStrength(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lcom/android/internal/telephony/hardware/radio/V1_0/SecSignalStrength;)V

    return-void
.end method

.method public secGetVoiceRegistrationStateResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lcom/android/internal/telephony/hardware/radio/V1_0/SecVoiceRegStateResult;)V
    .locals 3

    iget-object v1, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/RIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_0
    iget v1, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v1, v0, p1, p2}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v2, v0, p1, p2}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    throw v1
.end method

.method public secSendCdmaSmsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lcom/android/internal/telephony/hardware/radio/V1_0/SecSendSmsResult;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->secResponseSms(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lcom/android/internal/telephony/hardware/radio/V1_0/SecSendSmsResult;)V

    return-void
.end method

.method public secSendDeviceStateResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public secSendImsSmsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lcom/android/internal/telephony/hardware/radio/V1_0/SecSendSmsResult;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->secResponseSms(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lcom/android/internal/telephony/hardware/radio/V1_0/SecSendSmsResult;)V

    return-void
.end method

.method public secSendSMSExpectMoreResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lcom/android/internal/telephony/hardware/radio/V1_0/SecSendSmsResult;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->secResponseSms(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lcom/android/internal/telephony/hardware/radio/V1_0/SecSendSmsResult;)V

    return-void
.end method

.method public secSendSmsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lcom/android/internal/telephony/hardware/radio/V1_0/SecSendSmsResult;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->secResponseSms(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lcom/android/internal/telephony/hardware/radio/V1_0/SecSendSmsResult;)V

    return-void
.end method

.method public secSetBarringPasswordResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public secSetCallForwardResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public secSupplyNetworkDepersonalizationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/RadioResponse;->responseInts(Landroid/hardware/radio/V1_0/RadioResponseInfo;[I)V

    return-void
.end method

.method public sendBurstDtmfResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public sendCDMAFeatureCodeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public sendCdmaSmsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SendSmsResult;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseSms(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SendSmsResult;)V

    return-void
.end method

.method public sendDeviceStateResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public sendDtmfResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public sendEnvelopeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseString(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    return-void
.end method

.method public sendEnvelopeWithStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/IccIoResult;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseIccIo(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/IccIoResult;)V

    return-void
.end method

.method public sendImsSmsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SendSmsResult;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseSms(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SendSmsResult;)V

    return-void
.end method

.method public sendOemRilRequestRawResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public sendSMSExpectMoreResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SendSmsResult;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseSms(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SendSmsResult;)V

    return-void
.end method

.method public sendSmsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SendSmsResult;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseSms(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SendSmsResult;)V

    return-void
.end method

.method public sendTerminalResponseToSimResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public sendUssdResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public separateConnectionResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public setAllowedCarriersResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/RadioResponse;->responseInts(Landroid/hardware/radio/V1_0/RadioResponseInfo;[I)V

    return-void
.end method

.method public setBandModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public setBarringPasswordResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public setCallForwardResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public setCallWaitingResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public setCdmaBroadcastActivationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public setCdmaBroadcastConfigResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public setCdmaRoamingPreferenceResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public setCdmaSubscriptionSourceResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public setCellInfoListRateResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public setClirResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public setDataAllowedResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    const/4 v1, 0x1

    new-array v0, v1, [I

    iget v1, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    const/4 v2, 0x0

    aput v1, v0, v2

    iget-object v1, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object v1, v1, Lcom/android/internal/telephony/RIL;->mDdsChangeRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void
.end method

.method public setDataProfileResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public setFacilityLockForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/RadioResponse;->responseInts(Landroid/hardware/radio/V1_0/RadioResponseInfo;[I)V

    return-void
.end method

.method public setGsmBroadcastActivationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public setGsmBroadcastConfigResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public setIndicationFilterResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public setInitialAttachApnResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public setLocationUpdatesResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public setMuteResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public setNetworkSelectionModeAutomaticResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public setNetworkSelectionModeManualResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public setPreferredNetworkTypeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public setPreferredVoicePrivacyResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public setRadioCapabilityResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/RadioCapability;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseRadioCapability(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/RadioCapability;)V

    return-void
.end method

.method public setRadioPowerResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public setSimCardPowerResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public setSmscAddressResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public setSuppServiceNotificationsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public setTTYModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public setUiccSubscriptionResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public setupDataCallResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SetupDataCallResult;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseSetupDataCall(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SetupDataCallResult;)V

    return-void
.end method

.method public startDtmfResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public startLceServiceResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/LceStatusInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseLceStatus(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/LceStatusInfo;)V

    return-void
.end method

.method public stopDtmfResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public stopLceServiceResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/LceStatusInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseLceStatus(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/LceStatusInfo;)V

    return-void
.end method

.method public supplyIccPin2ForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/RadioResponse;->responseInts(Landroid/hardware/radio/V1_0/RadioResponseInfo;[I)V

    return-void
.end method

.method public supplyIccPinForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/RadioResponse;->responseInts(Landroid/hardware/radio/V1_0/RadioResponseInfo;[I)V

    return-void
.end method

.method public supplyIccPuk2ForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/RadioResponse;->responseInts(Landroid/hardware/radio/V1_0/RadioResponseInfo;[I)V

    return-void
.end method

.method public supplyIccPukForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/RadioResponse;->responseInts(Landroid/hardware/radio/V1_0/RadioResponseInfo;[I)V

    return-void
.end method

.method public supplyNetworkDepersonalizationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/RadioResponse;->responseInts(Landroid/hardware/radio/V1_0/RadioResponseInfo;[I)V

    return-void
.end method

.method public switchWaitingOrHoldingAndActiveResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public writeSmsToRuimResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/RadioResponse;->responseInts(Landroid/hardware/radio/V1_0/RadioResponseInfo;[I)V

    return-void
.end method

.method public writeSmsToSimResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/RadioResponse;->responseInts(Landroid/hardware/radio/V1_0/RadioResponseInfo;[I)V

    return-void
.end method
