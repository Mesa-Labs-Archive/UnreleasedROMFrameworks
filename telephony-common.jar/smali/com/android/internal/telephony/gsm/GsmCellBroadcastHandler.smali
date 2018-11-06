.class public Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;
.super Lcom/android/internal/telephony/CellBroadcastHandler;
.source "GsmCellBroadcastHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbConcatInfo;,
        Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbDuplicateInfo;
    }
.end annotation


# static fields
.field private static final ALLRECEIVE_MODE:B = 0x3t

.field private static final COMMERCIAL_MODE:B = 0x0t

.field private static final KDDITEST_MODE:B = 0x2t

.field private static final MANUFACTURETEST_MODE:B = 0x1t

.field private static final TAG:Ljava/lang/String; = "GsmCellBroadcastHandler"

.field private static final VDBG:Z

.field private static mCid:I

.field private static mFlagDupCB:Z

.field private static mLac:I

.field private static mPlmn:Ljava/lang/String;

.field private static mSavedPdu:[B

.field private static mSmsCbDuplicateMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbDuplicateInfo;",
            "Lcom/android/internal/telephony/gsm/SmsCbHeader;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mSmsCbPageMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbConcatInfo;",
            "[[B>;"
        }
    .end annotation
.end field

.field private pre_location:Landroid/telephony/SmsCbLocation;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mFlagDupCB:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mPlmn:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mSmsCbDuplicateMap:Ljava/util/HashMap;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/Phone;)V
    .locals 4

    const/4 v2, -0x1

    const-string/jumbo v0, "GsmCellBroadcastHandler"

    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/telephony/CellBroadcastHandler;-><init>(Ljava/lang/String;Landroid/content/Context;Lcom/android/internal/telephony/Phone;)V

    new-instance v0, Landroid/telephony/SmsCbLocation;

    const-string/jumbo v1, " "

    invoke-direct {v0, v1, v2, v2}, Landroid/telephony/SmsCbLocation;-><init>(Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->pre_location:Landroid/telephony/SmsCbLocation;

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mSmsCbPageMap:Ljava/util/HashMap;

    iget-object v0, p2, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->setOnNewGsmBroadcastSms(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method private handleGsmBroadcastSms([BZ)Landroid/telephony/SmsCbMessage;
    .locals 23

    :try_start_0
    new-instance v9, Lcom/android/internal/telephony/gsm/SmsCbHeader;

    move-object/from16 v0, p1

    invoke-direct {v9, v0}, Lcom/android/internal/telephony/gsm/SmsCbHeader;-><init>([B)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mSmsLogger:Lcom/android/internal/telephony/SmsLogger;

    move-object/from16 v19, v0

    const-string/jumbo v20, "GsmCellBroadcastHandler"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "handleBroadcastSms mFlagDupCB ="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    sget-boolean v22, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mFlagDupCB:Z

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, ", SavedMsg= "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v22

    invoke-virtual/range {v19 .. v22}, Lcom/android/internal/telephony/SmsLogger;->logAndAdd(Ljava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const-string/jumbo v20, "power"

    invoke-virtual/range {v19 .. v20}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/os/PowerManager;

    invoke-virtual/range {v18 .. v18}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v19

    if-nez v19, :cond_0

    xor-int/lit8 v19, p2, 0x1

    if-eqz v19, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v19, v0

    const/16 v20, 0x5

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v20

    invoke-interface/range {v19 .. v20}, Lcom/android/internal/telephony/CommandsInterface;->getVoiceRegistrationState(Landroid/os/Message;)V

    :cond_0
    const/4 v12, -0x1

    const/4 v4, -0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Landroid/telephony/TelephonyManager;->getNetworkOperatorForPhone(I)Ljava/lang/String;

    move-result-object v17

    if-nez p2, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/Phone;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v5

    instance-of v0, v5, Landroid/telephony/gsm/GsmCellLocation;

    move/from16 v19, v0

    if-eqz v19, :cond_1

    move-object v0, v5

    check-cast v0, Landroid/telephony/gsm/GsmCellLocation;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v12

    invoke-virtual {v3}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v4

    :cond_1
    :goto_0
    invoke-virtual {v9}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getGeographicalScope()I

    move-result v19

    packed-switch v19, :pswitch_data_0

    :pswitch_0
    new-instance v13, Landroid/telephony/SmsCbLocation;

    move-object/from16 v0, v17

    invoke-direct {v13, v0}, Landroid/telephony/SmsCbLocation;-><init>(Ljava/lang/String;)V

    :goto_1
    const-string/jumbo v19, "GsmCellBroadcastHandler"

    const-string/jumbo v20, "[CB] DuplicatedCbMessage: checking if location is changed"

    invoke-static/range {v19 .. v20}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v19, "GsmCellBroadcastHandler"

    invoke-virtual {v13}, Landroid/telephony/SmsCbLocation;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->pre_location:Landroid/telephony/SmsCbLocation;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/telephony/SmsCbLocation;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->clearDuplicatedCbMessages()V

    :cond_2
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->pre_location:Landroid/telephony/SmsCbLocation;

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->isDuplicatedCbMessage(Lcom/android/internal/telephony/gsm/SmsCbHeader;)Z

    move-result v19

    if-eqz v19, :cond_5

    const-string/jumbo v19, "AreaMail"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v21

    const-string/jumbo v22, "CscFeature_RIL_ConfigSmsBroadcastType"

    invoke-virtual/range {v20 .. v22}, Lcom/samsung/android/feature/SemCscFeature;->getString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    xor-int/lit8 v19, v19, 0x1

    if-eqz v19, :cond_5

    const-string/jumbo v19, "CBM"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v21

    const-string/jumbo v22, "CscFeature_RIL_ConfigSmsBroadcastType"

    invoke-virtual/range {v20 .. v22}, Lcom/samsung/android/feature/SemCscFeature;->getString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    xor-int/lit8 v19, v19, 0x1

    if-eqz v19, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mSmsLogger:Lcom/android/internal/telephony/SmsLogger;

    move-object/from16 v19, v0

    const-string/jumbo v20, "GsmCellBroadcastHandler"

    const-string/jumbo v21, "[CB] DuplicatedCbMessage: Duplicated CB message exist."

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v22

    invoke-virtual/range {v19 .. v22}, Lcom/android/internal/telephony/SmsLogger;->logAndAdd(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual/range {v18 .. v18}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v19

    if-nez v19, :cond_3

    xor-int/lit8 v19, p2, 0x1

    if-eqz v19, :cond_3

    sput-object p1, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mSavedPdu:[B

    const/16 v19, 0x1

    sput-boolean v19, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mFlagDupCB:Z

    sput v12, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mLac:I

    sput v4, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mCid:I

    :cond_3
    const/16 v19, 0x0

    return-object v19

    :cond_4
    sget v12, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mLac:I

    sget v4, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mCid:I

    sget-object v19, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mPlmn:Ljava/lang/String;

    if-eqz v19, :cond_1

    sget-object v19, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mPlmn:Ljava/lang/String;

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    xor-int/lit8 v19, v19, 0x1

    if-eqz v19, :cond_1

    sget-object v17, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mPlmn:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_1
    new-instance v13, Landroid/telephony/SmsCbLocation;

    const/16 v19, -0x1

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-direct {v13, v0, v12, v1}, Landroid/telephony/SmsCbLocation;-><init>(Ljava/lang/String;II)V

    goto/16 :goto_1

    :pswitch_2
    new-instance v13, Landroid/telephony/SmsCbLocation;

    move-object/from16 v0, v17

    invoke-direct {v13, v0, v12, v4}, Landroid/telephony/SmsCbLocation;-><init>(Ljava/lang/String;II)V

    goto/16 :goto_1

    :cond_5
    invoke-virtual {v9}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getNumberOfPages()I

    move-result v14

    const/16 v19, 0x1

    move/from16 v0, v19

    if-le v14, v0, :cond_a

    new-instance v6, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbConcatInfo;

    invoke-direct {v6, v9, v13}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbConcatInfo;-><init>(Lcom/android/internal/telephony/gsm/SmsCbHeader;Landroid/telephony/SmsCbLocation;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mSmsCbPageMap:Ljava/util/HashMap;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, [[B

    if-nez v16, :cond_6

    new-array v0, v14, [[B

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mSmsCbPageMap:Ljava/util/HashMap;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    invoke-virtual {v9}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getPageIndex()I

    move-result v19

    add-int/lit8 v19, v19, -0x1

    aput-object p1, v16, v19

    const/16 v19, 0x0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v20, v0

    :goto_2
    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_8

    aget-object v15, v16, v19

    if-nez v15, :cond_7

    const/16 v19, 0x0

    return-object v19

    :cond_7
    add-int/lit8 v19, v19, 0x1

    goto :goto_2

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mSmsCbPageMap:Ljava/util/HashMap;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mSmsCbPageMap:Ljava/util/HashMap;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_9
    :goto_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_b

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbConcatInfo;

    move-object/from16 v0, v17

    invoke-virtual {v10, v0, v12, v4}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbConcatInfo;->matchesLocation(Ljava/lang/String;II)Z

    move-result v19

    if-nez v19, :cond_9

    invoke-interface {v11}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v7

    const-string/jumbo v19, "Error in decoding SMS CB pdu"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v7}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/16 v19, 0x0

    return-object v19

    :cond_a
    const/16 v19, 0x1

    :try_start_1
    move/from16 v0, v19

    new-array v0, v0, [[B

    move-object/from16 v16, v0

    const/16 v19, 0x0

    aput-object p1, v16, v19

    goto :goto_3

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/emergencymode/SemEmergencyManager;

    move-result-object v8

    if-eqz v8, :cond_d

    invoke-virtual {v8}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode()Z

    move-result v19

    if-eqz v19, :cond_d

    invoke-virtual/range {v18 .. v18}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v19

    if-nez v19, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v8, v0, v1}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->setUserPackageBlocked(ZLandroid/content/Context;)V

    :cond_c
    :goto_5
    const-string/jumbo v19, "Disaster"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v21

    const-string/jumbo v22, "CscFeature_RIL_ConfigSmsBroadcastType"

    invoke-virtual/range {v20 .. v22}, Lcom/samsung/android/feature/SemCscFeature;->getString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_f

    invoke-virtual {v9}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getServiceCategory()I

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->kddiJudgeDeliveryFromMessageID(I)Z

    move-result v19

    if-nez v19, :cond_e

    const/16 v19, 0x0

    return-object v19

    :cond_d
    invoke-virtual {v9}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getServiceCategory()I

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->ETWSJudgeDeliveryFromMessageID(I)Z

    move-result v19

    if-eqz v19, :cond_c

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->setNotification()V

    goto :goto_5

    :cond_e
    invoke-virtual {v9}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getServiceCategory()I

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->kddiJudgeDeliveryFromMessageIDForWIFI(I)Z

    move-result v19

    if-eqz v19, :cond_f

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->KddiNotifiyGsmSmsToWIFI([[B)V

    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-static {v0, v9, v13, v1}, Lcom/android/internal/telephony/gsm/GsmSmsCbMessage;->createSmsCbMessage(Landroid/content/Context;Lcom/android/internal/telephony/gsm/SmsCbHeader;Landroid/telephony/SmsCbLocation;[[B)Landroid/telephony/SmsCbMessage;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v19

    return-object v19

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private isDuplicatedCbMessage(Lcom/android/internal/telephony/gsm/SmsCbHeader;)Z
    .locals 7

    const/4 v6, 0x0

    new-instance v0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbDuplicateInfo;

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v3

    invoke-direct {v0, p1, v3}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbDuplicateInfo;-><init>(Lcom/android/internal/telephony/gsm/SmsCbHeader;I)V

    const-string/jumbo v3, "GsmCellBroadcastHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[CB] DuplicatedCbMessage: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbDuplicateInfo;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mSmsCbDuplicateMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbDuplicateInfo;

    const-string/jumbo v3, "GsmCellBroadcastHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[CB] DuplicatedCbMessage: list of duplicated Map. key value = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbDuplicateInfo;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbDuplicateInfo;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mSmsCbDuplicateMap:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mSmsCbDuplicateMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbDuplicateInfo;->-wrap0(Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbDuplicateInfo;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v3, "GsmCellBroadcastHandler"

    const-string/jumbo v4, "[CB] DuplicatedCbMessage: Duplicated CB exists but it\'s over 24 hours."

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_1
    const/4 v3, 0x1

    return v3

    :cond_2
    sget-object v3, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mSmsCbDuplicateMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v6
.end method

.method public static makeGsmCellBroadcastHandler(Landroid/content/Context;Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;
    .locals 1

    new-instance v0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/Phone;)V

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->start()V

    return-object v0
.end method

.method private setNotification()V
    .locals 10

    const v9, 0x1040301

    const/4 v8, 0x0

    const-string/jumbo v6, "GsmCellBroadcastHandler"

    const-string/jumbo v7, "setNotification: create notification "

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v6, "com.samsung.intent.action.EMERGENCY_START_SERVICE_BY_ORDER"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v6, "enabled"

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v6, "flag"

    const/16 v7, 0x10

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mContext:Landroid/content/Context;

    invoke-static {v6, v8, v2, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v9}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mContext:Landroid/content/Context;

    const v7, 0x1040300

    invoke-virtual {v6, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    const-string/jumbo v6, "GsmCellBroadcastHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setNotification: put notification "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " / "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v6, Landroid/app/Notification$Builder;

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v7, 0x108008a

    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v6

    new-instance v7, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v7}, Landroid/app/Notification$BigTextStyle;-><init>()V

    invoke-virtual {v7, v1}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "notification"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    invoke-virtual {v4}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v6

    invoke-virtual {v3, v9, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method


# virtual methods
.method protected ETWSJudgeDeliveryFromMessageID(I)Z
    .locals 6

    const/16 v5, 0x1100

    const/4 v4, 0x1

    const-string/jumbo v0, "Disaster"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    const-string/jumbo v3, "CscFeature_RIL_ConfigSmsBroadcastType"

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/feature/SemCscFeature;->getString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eq p1, v5, :cond_0

    const v0, 0xa003

    if-ne p1, v0, :cond_2

    :cond_0
    return v4

    :cond_1
    const-string/jumbo v0, "AreaMail"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    const-string/jumbo v3, "CscFeature_RIL_ConfigSmsBroadcastType"

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/feature/SemCscFeature;->getString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-lt p1, v5, :cond_2

    const/16 v0, 0x1102

    if-gt p1, v0, :cond_2

    return v4

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method protected KddiNotifiyGsmSmsToWIFI([[B)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.provider.Telephony.SMS_CB_WIFI_RECEIVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "pdus"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public clearDuplicatedCbMessages()V
    .locals 1

    const-string/jumbo v0, "[CB] DuplicatedCbMessage: Clear duplicated CB Messages from hash map."

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->log(Ljava/lang/String;)V

    sget-object v0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mSmsCbDuplicateMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method protected handleLocationInfo(Landroid/os/AsyncResult;)V
    .locals 13

    const/4 v12, 0x0

    const/4 v11, 0x0

    const/4 v10, 0x1

    if-eqz p1, :cond_0

    sget-boolean v9, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mFlagDupCB:Z

    xor-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v9, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v9, :cond_4

    const/4 v4, -0x1

    const/4 v5, -0x1

    iget-object v7, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v7, Lcom/android/internal/telephony/hardware/radio/V1_0/SecVoiceRegStateResult;

    iget-object v8, v7, Lcom/android/internal/telephony/hardware/radio/V1_0/SecVoiceRegStateResult;->base:Landroid/hardware/radio/V1_0/VoiceRegStateResult;

    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mContext:Landroid/content/Context;

    invoke-static {v9}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v6

    if-ne v6, v10, :cond_5

    iget-object v9, v8, Landroid/hardware/radio/V1_0/VoiceRegStateResult;->cellIdentity:Landroid/hardware/radio/V1_0/CellIdentity;

    iget v9, v9, Landroid/hardware/radio/V1_0/CellIdentity;->cellInfoType:I

    packed-switch v9, :pswitch_data_0

    :cond_2
    :goto_0
    :pswitch_0
    sget v9, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mLac:I

    if-ne v9, v5, :cond_3

    sget v9, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mCid:I

    if-eq v9, v4, :cond_4

    :cond_3
    const-string/jumbo v9, "GsmCellBroadcastHandler"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Location is changed during LCD off. Before Lac= "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget v11, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mLac:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", Cid= "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget v11, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mCid:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ". After Lac= "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", Cid= "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput v5, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mLac:I

    sput v4, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mCid:I

    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v9, v9, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v10, 0x6

    invoke-virtual {p0, v10, v12}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    invoke-interface {v9, v10}, Lcom/android/internal/telephony/CommandsInterface;->getOperator(Landroid/os/Message;)V

    :cond_4
    return-void

    :pswitch_1
    iget-object v9, v8, Landroid/hardware/radio/V1_0/VoiceRegStateResult;->cellIdentity:Landroid/hardware/radio/V1_0/CellIdentity;

    iget-object v9, v9, Landroid/hardware/radio/V1_0/CellIdentity;->cellIdentityGsm:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ne v9, v10, :cond_2

    iget-object v9, v8, Landroid/hardware/radio/V1_0/VoiceRegStateResult;->cellIdentity:Landroid/hardware/radio/V1_0/CellIdentity;

    iget-object v9, v9, Landroid/hardware/radio/V1_0/CellIdentity;->cellIdentityGsm:Ljava/util/ArrayList;

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/radio/V1_0/CellIdentityGsm;

    iget v4, v0, Landroid/hardware/radio/V1_0/CellIdentityGsm;->cid:I

    iget v5, v0, Landroid/hardware/radio/V1_0/CellIdentityGsm;->lac:I

    goto :goto_0

    :pswitch_2
    iget-object v9, v8, Landroid/hardware/radio/V1_0/VoiceRegStateResult;->cellIdentity:Landroid/hardware/radio/V1_0/CellIdentity;

    iget-object v9, v9, Landroid/hardware/radio/V1_0/CellIdentity;->cellIdentityWcdma:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ne v9, v10, :cond_2

    iget-object v9, v8, Landroid/hardware/radio/V1_0/VoiceRegStateResult;->cellIdentity:Landroid/hardware/radio/V1_0/CellIdentity;

    iget-object v9, v9, Landroid/hardware/radio/V1_0/CellIdentity;->cellIdentityWcdma:Ljava/util/ArrayList;

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/radio/V1_0/CellIdentityWcdma;

    iget v4, v3, Landroid/hardware/radio/V1_0/CellIdentityWcdma;->cid:I

    iget v5, v3, Landroid/hardware/radio/V1_0/CellIdentityWcdma;->lac:I

    goto/16 :goto_0

    :pswitch_3
    iget-object v9, v8, Landroid/hardware/radio/V1_0/VoiceRegStateResult;->cellIdentity:Landroid/hardware/radio/V1_0/CellIdentity;

    iget-object v9, v9, Landroid/hardware/radio/V1_0/CellIdentity;->cellIdentityTdscdma:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ne v9, v10, :cond_2

    iget-object v9, v8, Landroid/hardware/radio/V1_0/VoiceRegStateResult;->cellIdentity:Landroid/hardware/radio/V1_0/CellIdentity;

    iget-object v9, v9, Landroid/hardware/radio/V1_0/CellIdentity;->cellIdentityTdscdma:Ljava/util/ArrayList;

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/V1_0/CellIdentityTdscdma;

    iget v4, v2, Landroid/hardware/radio/V1_0/CellIdentityTdscdma;->cid:I

    iget v5, v2, Landroid/hardware/radio/V1_0/CellIdentityTdscdma;->lac:I

    goto/16 :goto_0

    :pswitch_4
    iget-object v9, v8, Landroid/hardware/radio/V1_0/VoiceRegStateResult;->cellIdentity:Landroid/hardware/radio/V1_0/CellIdentity;

    iget-object v9, v9, Landroid/hardware/radio/V1_0/CellIdentity;->cellIdentityLte:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ne v9, v10, :cond_2

    iget-object v9, v8, Landroid/hardware/radio/V1_0/VoiceRegStateResult;->cellIdentity:Landroid/hardware/radio/V1_0/CellIdentity;

    iget-object v9, v9, Landroid/hardware/radio/V1_0/CellIdentity;->cellIdentityLte:Ljava/util/ArrayList;

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/V1_0/CellIdentityLte;

    iget v4, v1, Landroid/hardware/radio/V1_0/CellIdentityLte;->ci:I

    iget v5, v1, Landroid/hardware/radio/V1_0/CellIdentityLte;->tac:I

    goto/16 :goto_0

    :cond_5
    iget v5, v7, Lcom/android/internal/telephony/hardware/radio/V1_0/SecVoiceRegStateResult;->lac:I

    iget v4, v7, Lcom/android/internal/telephony/hardware/radio/V1_0/SecVoiceRegStateResult;->cid:I

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected handleOperatorInfo(Landroid/os/AsyncResult;)V
    .locals 4

    if-eqz p1, :cond_0

    sget-boolean v2, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mFlagDupCB:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_2

    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/String;

    if-eqz v1, :cond_2

    array-length v2, v1

    const/4 v3, 0x3

    if-lt v2, v3, :cond_2

    const/4 v2, 0x2

    aget-object v2, v1, v2

    sput-object v2, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mPlmn:Ljava/lang/String;

    :cond_2
    sget-object v2, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mSavedPdu:[B

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->handleGsmBroadcastSms([BZ)Landroid/telephony/SmsCbMessage;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->handleBroadcastSms(Landroid/telephony/SmsCbMessage;)V

    :cond_3
    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mFlagDupCB:Z

    return-void
.end method

.method protected handleSmsMessage(Landroid/os/Message;)Z
    .locals 8

    const/4 v7, 0x0

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v3, v3, Landroid/os/AsyncResult;

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->checkEcmMode()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mSmsLogger:Lcom/android/internal/telephony/SmsLogger;

    const-string/jumbo v4, "GsmCellBroadcastHandler"

    const-string/jumbo v5, "Disacrd CMAS message in ECM mode"

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v6}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/internal/telephony/SmsLogger;->logAndAdd(Ljava/lang/String;Ljava/lang/String;I)V

    return v7

    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    invoke-direct {p0, v2, v7}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->handleGsmBroadcastSms([BZ)Landroid/telephony/SmsCbMessage;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->handleBroadcastSms(Landroid/telephony/SmsCbMessage;)V

    const/4 v3, 0x1

    return v3

    :cond_1
    invoke-super {p0, p1}, Lcom/android/internal/telephony/CellBroadcastHandler;->handleSmsMessage(Landroid/os/Message;)Z

    move-result v3

    return v3
.end method

.method protected kddiJudgeDeliveryFromMessageID(I)Z
    .locals 14

    const/16 v13, 0x1107

    const/16 v12, 0x1104

    const/16 v11, 0x1103

    const/16 v10, 0x1101

    const/16 v9, 0x1100

    const/4 v3, 0x0

    const-string/jumbo v5, "Disaster"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v7}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v7

    const-string/jumbo v8, "CscFeature_RIL_ConfigSmsBroadcastType"

    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/feature/SemCscFeature;->getString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    :try_start_0
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "com.kddi.maintenanceMode"

    const/4 v7, 0x2

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v5, "pref"

    const/4 v6, 0x4

    invoke-virtual {v0, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string/jumbo v5, "maintenanceMode"

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    :cond_0
    :goto_0
    const/4 v2, 0x0

    packed-switch v3, :pswitch_data_0

    :cond_1
    :goto_1
    const-string/jumbo v5, "GsmCellBroadcastHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "kddiJudgeDeliveryFromMessageID maintenanceMode : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " isDelivery: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :catch_0
    move-exception v1

    const-string/jumbo v5, "GsmCellBroadcastHandler"

    const-string/jumbo v6, "maintenanceMode app not found"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_0
    if-eq p1, v9, :cond_2

    if-ne p1, v10, :cond_3

    :cond_2
    :goto_2
    const/4 v2, 0x1

    goto :goto_1

    :cond_3
    if-lt p1, v12, :cond_4

    if-le p1, v13, :cond_2

    :cond_4
    const v5, 0xa003

    if-eq p1, v5, :cond_2

    const v5, 0xa801

    if-lt p1, v5, :cond_1

    const v5, 0xa8ff

    if-gt p1, v5, :cond_1

    goto :goto_2

    :pswitch_1
    if-eq p1, v11, :cond_5

    const v5, 0xaa01

    if-lt p1, v5, :cond_1

    const v5, 0xaaff

    if-gt p1, v5, :cond_1

    :cond_5
    const/4 v2, 0x1

    goto :goto_1

    :pswitch_2
    const v5, 0xab00

    if-lt p1, v5, :cond_1

    const v5, 0xabff

    if-gt p1, v5, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :pswitch_3
    if-eq p1, v9, :cond_6

    if-ne p1, v10, :cond_7

    :cond_6
    :goto_3
    const/4 v2, 0x1

    goto :goto_1

    :cond_7
    if-lt p1, v12, :cond_8

    if-le p1, v13, :cond_6

    :cond_8
    const v5, 0xa003

    if-eq p1, v5, :cond_6

    const v5, 0xa801

    if-lt p1, v5, :cond_9

    const v5, 0xa8ff

    if-le p1, v5, :cond_6

    :cond_9
    if-eq p1, v11, :cond_6

    const v5, 0xaa01

    if-lt p1, v5, :cond_a

    const v5, 0xaaff

    if-le p1, v5, :cond_6

    :cond_a
    const v5, 0xab00

    if-lt p1, v5, :cond_1

    const v5, 0xabff

    if-gt p1, v5, :cond_1

    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected kddiJudgeDeliveryFromMessageIDForWIFI(I)Z
    .locals 9

    const/4 v3, 0x0

    const/4 v2, 0x0

    const-string/jumbo v5, "Disaster"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v7}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v7

    const-string/jumbo v8, "CscFeature_RIL_ConfigSmsBroadcastType"

    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/feature/SemCscFeature;->getString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    :try_start_0
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "com.kddi.maintenanceMode"

    const/4 v7, 0x2

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v5, "pref"

    const/4 v6, 0x4

    invoke-virtual {v0, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string/jumbo v5, "maintenanceMode"

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    :cond_0
    :goto_0
    packed-switch v3, :pswitch_data_0

    const/16 v5, 0x1103

    if-eq p1, v5, :cond_1

    const v5, 0xaa03

    if-ne p1, v5, :cond_2

    :cond_1
    const/4 v2, 0x1

    :cond_2
    :goto_1
    const-string/jumbo v5, "GsmCellBroadcastHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "kddiJudgeDeliveryFromMessageIDForWIFI messageIdentifier : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " isDelivery: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :catch_0
    move-exception v1

    const-string/jumbo v5, "GsmCellBroadcastHandler"

    const-string/jumbo v6, "maintenanceMode app not found"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_0
    const/16 v5, 0x1100

    if-eq p1, v5, :cond_3

    const v5, 0xa003

    if-ne p1, v5, :cond_2

    :cond_3
    const/4 v2, 0x1

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected onQuitting()V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v0, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnNewGsmBroadcastSms(Landroid/os/Handler;)V

    invoke-super {p0}, Lcom/android/internal/telephony/CellBroadcastHandler;->onQuitting()V

    return-void
.end method
