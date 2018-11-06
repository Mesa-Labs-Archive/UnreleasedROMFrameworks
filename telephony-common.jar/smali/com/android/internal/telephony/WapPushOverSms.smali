.class public Lcom/android/internal/telephony/WapPushOverSms;
.super Ljava/lang/Object;
.source "WapPushOverSms.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/WapPushOverSms$1;,
        Lcom/android/internal/telephony/WapPushOverSms$BindServiceThread;,
        Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final LOCATION_SELECTION:Ljava/lang/String; = "m_type=? AND ct_l =?"

.field private static final TAG:Ljava/lang/String; = "WAP PUSH"

.field private static final THREAD_ID_SELECTION:Ljava/lang/String; = "m_id=? AND m_type=?"


# instance fields
.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private mDeviceIdleController:Landroid/os/IDeviceIdleController;

.field private mPushOrigAddr:Ljava/lang/String;

.field private mPushSafeNoti:Z

.field private mPushTwoPhoneNoti:Z

.field protected mSmsLogger:Lcom/android/internal/telephony/SmsLogger;

.field private mWapPushAddress:Ljava/lang/String;

.field private volatile mWapPushManager:Lcom/android/internal/telephony/IWapPushManager;

.field private mWapPushManagerPackage:Ljava/lang/String;

.field private mWapPushTimeStamp:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Lcom/android/internal/telephony/WapPushOverSms;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/internal/telephony/WapPushOverSms;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/WapPushOverSms;->bindWapPushManagerService(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Lcom/android/internal/telephony/WapPushOverSms;->mPushSafeNoti:Z

    iput-boolean v2, p0, Lcom/android/internal/telephony/WapPushOverSms;->mPushTwoPhoneNoti:Z

    new-instance v2, Lcom/android/internal/telephony/WapPushOverSms$1;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/WapPushOverSms$1;-><init>(Lcom/android/internal/telephony/WapPushOverSms;)V

    iput-object v2, p0, Lcom/android/internal/telephony/WapPushOverSms;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/internal/telephony/TelephonyComponentFactory;->getInstance()Lcom/android/internal/telephony/TelephonyComponentFactory;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/TelephonyComponentFactory;->getIDeviceIdleController()Landroid/os/IDeviceIdleController;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/WapPushOverSms;->mDeviceIdleController:Landroid/os/IDeviceIdleController;

    iget-object v2, p0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "user"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    invoke-virtual {v1}, Landroid/os/UserManager;->isUserUnlocked()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/WapPushOverSms;->bindWapPushManagerService(Landroid/content/Context;)V

    :goto_0
    invoke-static {}, Lcom/android/internal/telephony/SmsLogger;->getInstance()Lcom/android/internal/telephony/SmsLogger;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/WapPushOverSms;->mSmsLogger:Lcom/android/internal/telephony/SmsLogger;

    return-void

    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v2, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/internal/telephony/WapPushOverSms;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private bindWapPushManagerService(Landroid/content/Context;)V
    .locals 4

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/internal/telephony/IWapPushManager;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->resolveSystemService(Landroid/content/pm/PackageManager;I)Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    invoke-virtual {p1, v1, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    :cond_0
    const-string/jumbo v2, "WAP PUSH"

    const-string/jumbo v3, "bindService() for wappush manager failed"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    monitor-enter p0

    :try_start_0
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/WapPushOverSms;->mWapPushManagerPackage:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    const-string/jumbo v2, "WAP PUSH"

    const-string/jumbo v3, "bindService() for wappush manager succeeded"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private decodeWapPdu([BLcom/android/internal/telephony/InboundSmsHandler;)Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;
    .locals 45

    new-instance v39, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;

    const/4 v5, 0x0

    move-object/from16 v0, v39

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v5}, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;-><init>(Lcom/android/internal/telephony/WapPushOverSms;Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;)V

    const-string/jumbo v5, "WAP PUSH"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Rx: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static/range {p1 .. p1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    const-string/jumbo v5, "WAP PUSH"

    const-string/jumbo v6, "Received PDU is null."

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x2

    move-object/from16 v0, v39

    iput v5, v0, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->statusCode:I

    return-object v39

    :cond_0
    const/16 v26, 0x0

    const/4 v5, 0x0

    const/16 v26, 0x1

    :try_start_0
    aget-byte v5, p1, v5
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    and-int/lit16 v0, v5, 0xff

    move/from16 v42, v0

    add-int/lit8 v27, v26, 0x1

    :try_start_1
    aget-byte v5, p1, v26

    and-int/lit16 v0, v5, 0xff

    move/from16 v37, v0

    const/16 v18, 0x0

    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/InboundSmsHandler;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v38

    const/4 v5, 0x6

    move/from16 v0, v37

    if-eq v0, v5, :cond_1

    const/4 v5, 0x7

    move/from16 v0, v37

    if-eq v0, v5, :cond_1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10e00b4

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v26

    const/4 v5, -0x1

    move/from16 v0, v26

    if-eq v0, v5, :cond_3

    add-int/lit8 v27, v26, 0x1

    aget-byte v5, p1, v26
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_3

    and-int/lit16 v0, v5, 0xff

    move/from16 v42, v0

    add-int/lit8 v26, v27, 0x1

    :try_start_2
    aget-byte v5, p1, v27

    and-int/lit16 v0, v5, 0xff

    move/from16 v37, v0

    const-string/jumbo v5, "WAP PUSH"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "index = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v26

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " PDU Type = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v37

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " transactionID = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v42

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x6

    move/from16 v0, v37

    if-eq v0, v5, :cond_2

    const/4 v5, 0x7

    move/from16 v0, v37

    if-eq v0, v5, :cond_2

    const-string/jumbo v5, "WAP PUSH"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Received non-PUSH WAP PDU. Type = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v37

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x1

    move-object/from16 v0, v39

    iput v5, v0, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->statusCode:I

    return-object v39

    :cond_1
    move/from16 v26, v27

    :cond_2
    invoke-static {}, Lcom/android/internal/telephony/TelephonyComponentFactory;->getInstance()Lcom/android/internal/telephony/TelephonyComponentFactory;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Lcom/android/internal/telephony/TelephonyComponentFactory;->makeWspTypeDecoder([B)Lcom/android/internal/telephony/WspTypeDecoder;

    move-result-object v36

    move-object/from16 v0, v36

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeUintvarInteger(I)Z

    move-result v5

    if-nez v5, :cond_4

    const-string/jumbo v5, "WAP PUSH"

    const-string/jumbo v6, "Received PDU. Header Length error."

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x2

    move-object/from16 v0, v39

    iput v5, v0, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->statusCode:I

    return-object v39

    :cond_3
    const-string/jumbo v5, "WAP PUSH"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Received non-PUSH WAP PDU. Type = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v37

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x1

    move-object/from16 v0, v39

    iput v5, v0, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->statusCode:I

    return-object v39

    :cond_4
    invoke-virtual/range {v36 .. v36}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v6

    long-to-int v0, v6

    move/from16 v22, v0

    invoke-virtual/range {v36 .. v36}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I

    move-result v5

    add-int v26, v26, v5

    move/from16 v23, v26

    move-object/from16 v0, v36

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeContentType(I)Z

    move-result v5

    if-nez v5, :cond_5

    const-string/jumbo v5, "WAP PUSH"

    const-string/jumbo v6, "Received PDU. Header Content-Type error."

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x2

    move-object/from16 v0, v39

    iput v5, v0, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->statusCode:I

    return-object v39

    :cond_5
    invoke-virtual/range {v36 .. v36}, Lcom/android/internal/telephony/WspTypeDecoder;->getValueString()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v36 .. v36}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v12

    move/from16 v28, v26

    invoke-virtual/range {v36 .. v36}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v6

    long-to-int v0, v6

    move/from16 v25, v0

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v5

    const-string/jumbo v6, "CscFeature_RIL_SmsWappushManager"

    move/from16 v0, v38

    invoke-virtual {v5, v0, v6}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(ILjava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v5

    const-string/jumbo v6, "CscFeature_RIL_SmsCml"

    move/from16 v0, v38

    invoke-virtual {v5, v0, v6}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(ILjava/lang/String;)Z

    move-result v5

    :goto_0
    if-nez v5, :cond_20

    if-nez v32, :cond_9

    sparse-switch v25, :sswitch_data_0

    const-string/jumbo v5, "WAP PUSH"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Received PDU. Unsupported Content-Type = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x1

    move-object/from16 v0, v39

    iput v5, v0, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->statusCode:I

    return-object v39

    :cond_6
    const/4 v5, 0x1

    goto :goto_0

    :sswitch_0
    const-string/jumbo v32, "application/vnd.oma.drm.rights+xml"
    :try_end_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_1
    :try_start_3
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getPhoneRestrictionPolicy()Landroid/sec/enterprise/PhoneRestrictionPolicy;

    move-result-object v4

    invoke-virtual/range {v20 .. v20}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getDeviceInventory()Landroid/sec/enterprise/DeviceInventory;

    move-result-object v17

    const-string/jumbo v5, "gsm.operator.isroaming"

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual/range {v20 .. v20}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getRoamingPolicy()Landroid/sec/enterprise/RoamingPolicy;

    move-result-object v5

    invoke-virtual {v5}, Landroid/sec/enterprise/RoamingPolicy;->isRoamingPushEnabled()Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-nez v5, :cond_8

    :cond_7
    invoke-virtual {v4}, Landroid/sec/enterprise/PhoneRestrictionPolicy;->isWapPushAllowed()Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_19

    :cond_8
    const-string/jumbo v5, "WAP PUSH"

    const-string/jumbo v6, " MDM RoamingPush or WapPush Disabled "

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x1

    move-object/from16 v0, v39

    iput v5, v0, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->statusCode:I
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_1

    return-object v39

    :sswitch_1
    :try_start_4
    const-string/jumbo v32, "application/vnd.oma.drm.rights+wbxml"

    goto :goto_1

    :sswitch_2
    const-string/jumbo v32, "application/vnd.wap.sic"

    goto :goto_1

    :sswitch_3
    const-string/jumbo v32, "application/vnd.wap.slc"

    goto :goto_1

    :sswitch_4
    const-string/jumbo v32, "application/vnd.wap.coc"

    goto :goto_1

    :sswitch_5
    const-string/jumbo v32, "application/vnd.wap.mms-message"

    goto :goto_1

    :sswitch_6
    const-string/jumbo v32, "application/vnd.omaloc-supl-init"

    goto :goto_1

    :sswitch_7
    const-string/jumbo v32, "application/vnd.docomo.pf"

    goto :goto_1

    :sswitch_8
    const-string/jumbo v32, "application/vnd.syncml.notification"

    goto :goto_1

    :sswitch_9
    const-string/jumbo v32, "application/vnd.syncml.ds.notification"

    goto :goto_1

    :sswitch_a
    const-string/jumbo v32, "application/vnd.wap.connectivity-wbxml"

    goto :goto_1

    :sswitch_b
    const-string/jumbo v32, "application/vnd.syncml.dm+wbxml"

    goto :goto_1

    :sswitch_c
    const-string/jumbo v32, "application/vnd.syncml.dm+xml"

    goto :goto_1

    :sswitch_d
    const-string/jumbo v32, "application/vnd.wap.emn+wbxml"

    goto :goto_1

    :sswitch_e
    const-string/jumbo v32, "application/json"

    goto :goto_1

    :cond_9
    const-string/jumbo v5, "application/vnd.oma.drm.rights+xml"

    move-object/from16 v0, v32

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    const/16 v25, 0x4a

    goto :goto_1

    :cond_a
    const-string/jumbo v5, "application/vnd.oma.drm.rights+wbxml"

    move-object/from16 v0, v32

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    const/16 v25, 0x4b

    goto/16 :goto_1

    :cond_b
    const-string/jumbo v5, "application/vnd.wap.sic"

    move-object/from16 v0, v32

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    const/16 v25, 0x2e

    goto/16 :goto_1

    :cond_c
    const-string/jumbo v5, "application/vnd.wap.slc"

    move-object/from16 v0, v32

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    const/16 v25, 0x30

    goto/16 :goto_1

    :cond_d
    const-string/jumbo v5, "application/vnd.wap.coc"

    move-object/from16 v0, v32

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    const/16 v25, 0x32

    goto/16 :goto_1

    :cond_e
    const-string/jumbo v5, "application/vnd.wap.mms-message"

    move-object/from16 v0, v32

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    const/16 v25, 0x3e

    goto/16 :goto_1

    :cond_f
    const-string/jumbo v5, "application/vnd.omaloc-supl-init"

    move-object/from16 v0, v32

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    const/16 v25, 0x312

    goto/16 :goto_1

    :cond_10
    const-string/jumbo v5, "application/vnd.docomo.pf"

    move-object/from16 v0, v32

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    const/16 v25, 0x310

    goto/16 :goto_1

    :cond_11
    const-string/jumbo v5, "application/vnd.syncml.notification"

    move-object/from16 v0, v32

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    const/16 v25, 0x44

    goto/16 :goto_1

    :cond_12
    const-string/jumbo v5, "application/vnd.syncml.ds.notification"

    move-object/from16 v0, v32

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    const/16 v25, 0x4e

    goto/16 :goto_1

    :cond_13
    const-string/jumbo v5, "application/vnd.wap.connectivity-wbxml"

    move-object/from16 v0, v32

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14

    const/16 v25, 0x36

    goto/16 :goto_1

    :cond_14
    const-string/jumbo v5, "application/vnd.syncml.dm+wbxml"

    move-object/from16 v0, v32

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    const/16 v25, 0x42

    goto/16 :goto_1

    :cond_15
    const-string/jumbo v5, "application/vnd.syncml.dm+xml"

    move-object/from16 v0, v32

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_16

    const/16 v25, 0x43

    goto/16 :goto_1

    :cond_16
    const-string/jumbo v5, "application/vnd.wap.emn+wbxml"

    move-object/from16 v0, v32

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_17

    const/16 v25, 0x30a

    goto/16 :goto_1

    :cond_17
    const-string/jumbo v5, "application/json"

    move-object/from16 v0, v32

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    const/16 v25, 0x5b

    goto/16 :goto_1

    :cond_18
    const-string/jumbo v5, "WAP PUSH"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Received PDU. Unknown Content-Type = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v32

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x1

    move-object/from16 v0, v39

    iput v5, v0, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->statusCode:I
    :try_end_4
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_1

    return-object v39

    :cond_19
    :try_start_5
    const-string/jumbo v5, "ro.multisim.simslotcount"

    const/4 v6, 0x1

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_1a

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    const-string/jumbo v5, "gsm.operator.isroaming"

    const-string/jumbo v6, "false"

    move/from16 v0, v38

    invoke-static {v0, v5, v6}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    const-string/jumbo v5, "true"

    move-object/from16 v0, v31

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1a

    invoke-virtual/range {v20 .. v20}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getRoamingPolicy()Landroid/sec/enterprise/RoamingPolicy;

    move-result-object v5

    invoke-virtual {v5}, Landroid/sec/enterprise/RoamingPolicy;->isRoamingPushEnabled()Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_1a

    const-string/jumbo v5, "WAP PUSH"

    const-string/jumbo v6, " MDM RoamingPush Disabled"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x1

    move-object/from16 v0, v39

    iput v5, v0, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->statusCode:I

    return-object v39

    :cond_1a
    const/16 v5, 0x3e

    move/from16 v0, v25

    if-ne v5, v0, :cond_1d

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/sec/enterprise/PhoneRestrictionPolicy;->getEmergencyCallOnly(Z)Z

    move-result v5

    if-nez v5, :cond_1b

    invoke-virtual {v4}, Landroid/sec/enterprise/PhoneRestrictionPolicy;->isIncomingMmsAllowed()Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_1c

    :cond_1b
    const-string/jumbo v5, "WAP PUSH"

    const-string/jumbo v6, "emergency call only or incoming MMS not allowed"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x1

    move-object/from16 v0, v39

    iput v5, v0, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->statusCode:I

    return-object v39

    :cond_1c
    invoke-virtual {v4}, Landroid/sec/enterprise/PhoneRestrictionPolicy;->isBlockMmsWithStorageEnabled()Z

    move-result v5

    if-eqz v5, :cond_1f

    const-string/jumbo v5, "WAP PUSH"

    const-string/jumbo v6, "blocking mms with storage"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/telephony/WapPushOverSms;->mWapPushAddress:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/telephony/WapPushOverSms;->mWapPushTimeStamp:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v8, -0x1

    move-object/from16 v6, p1

    invoke-virtual/range {v4 .. v9}, Landroid/sec/enterprise/PhoneRestrictionPolicy;->storeBlockedSmsMms(Z[BLjava/lang/String;ILjava/lang/String;)V

    const/4 v5, 0x1

    move-object/from16 v0, v39

    iput v5, v0, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->statusCode:I

    return-object v39

    :cond_1d
    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v24, 0x0

    :goto_2
    move-object/from16 v0, p1

    array-length v5, v0

    move/from16 v0, v24

    if-ge v0, v5, :cond_1e

    aget-byte v5, p1, v24

    int-to-char v5, v5

    move-object/from16 v0, v44

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v24, v24, 0x1

    goto :goto_2

    :cond_1e
    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_1f

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/WapPushOverSms;->mWapPushAddress:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/WapPushOverSms;->mWapPushTimeStamp:Ljava/lang/String;

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/sec/enterprise/DeviceInventory;->storeSMS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_5
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_1

    :cond_1f
    :goto_3
    sparse-switch v25, :sswitch_data_1

    :cond_20
    :goto_4
    if-nez v18, :cond_28

    :try_start_6
    invoke-virtual/range {v36 .. v36}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I

    move-result v5

    add-int v26, v26, v5

    move/from16 v0, v22

    new-array v0, v0, [B

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    array-length v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v23

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2, v6, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    if-eqz v32, :cond_21

    const-string/jumbo v5, "application/vnd.wap.coc"

    move-object/from16 v0, v32

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_21

    move-object/from16 v29, p1

    :goto_5
    invoke-static/range {v38 .. v38}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v41

    if-eqz v41, :cond_22

    move-object/from16 v0, v41

    array-length v5, v0

    if-lez v5, :cond_22

    const/4 v5, 0x0

    aget v40, v41, v5
    :try_end_6
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_6 .. :try_end_6} :catch_1

    :goto_6
    const/16 v35, 0x0

    :try_start_7
    new-instance v5, Lcom/google/android/mms/pdu/PduParser;

    invoke-static/range {v40 .. v40}, Lcom/android/internal/telephony/WapPushOverSms;->shouldParseContentDisposition(I)Z

    move-result v6

    move-object/from16 v0, v29

    invoke-direct {v5, v0, v6}, Lcom/google/android/mms/pdu/PduParser;-><init>([BZ)V

    invoke-virtual {v5}, Lcom/google/android/mms/pdu/PduParser;->parse()Lcom/google/android/mms/pdu/GenericPdu;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_7 .. :try_end_7} :catch_1

    move-result-object v35

    :goto_7
    if-eqz v35, :cond_23

    :try_start_8
    invoke-virtual/range {v35 .. v35}, Lcom/google/android/mms/pdu/GenericPdu;->getMessageType()I

    move-result v5

    const/16 v6, 0x82

    if-ne v5, v6, :cond_23

    move-object/from16 v0, v35

    check-cast v0, Lcom/google/android/mms/pdu/NotificationInd;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/google/android/mms/pdu/NotificationInd;->getFrom()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v5

    if-eqz v5, :cond_23

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    invoke-virtual/range {v33 .. v33}, Lcom/google/android/mms/pdu/NotificationInd;->getFrom()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/internal/telephony/BlockChecker;->isBlocked(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_23

    const/4 v5, 0x1

    move-object/from16 v0, v39

    iput v5, v0, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->statusCode:I

    return-object v39

    :catch_0
    move-exception v34

    const-string/jumbo v5, "WAP PUSH"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "MDM failed to get policy - NullPointerException but this isn\'t issue"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v34

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_8 .. :try_end_8} :catch_1

    goto/16 :goto_3

    :catch_1
    move-exception v10

    :goto_8
    const-string/jumbo v5, "WAP PUSH"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "ignoring dispatchWapPdu() array index exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x2

    move-object/from16 v0, v39

    iput v5, v0, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->statusCode:I

    :goto_9
    return-object v39

    :sswitch_f
    const/16 v18, 0x1

    goto/16 :goto_4

    :cond_21
    add-int v15, v23, v22

    :try_start_9
    move-object/from16 v0, p1

    array-length v5, v0

    sub-int/2addr v5, v15

    new-array v0, v5, [B

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    array-length v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-static {v0, v15, v1, v6, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    goto/16 :goto_5

    :cond_22
    invoke-static {}, Landroid/telephony/SmsManager;->getDefaultSmsSubscriptionId()I

    move-result v40

    goto/16 :goto_6

    :catch_2
    move-exception v19

    const-string/jumbo v5, "WAP PUSH"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Unable to parse PDU: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    :cond_23
    add-int v5, v26, v22

    add-int/lit8 v5, v5, -0x1

    move-object/from16 v0, v36

    move/from16 v1, v26

    invoke-virtual {v0, v1, v5}, Lcom/android/internal/telephony/WspTypeDecoder;->seekXWapApplicationId(II)Z

    move-result v5

    if-eqz v5, :cond_27

    invoke-virtual/range {v36 .. v36}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v6

    long-to-int v0, v6

    move/from16 v26, v0

    move-object/from16 v0, v36

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeXWapApplicationId(I)Z

    invoke-virtual/range {v36 .. v36}, Lcom/android/internal/telephony/WspTypeDecoder;->getValueString()Ljava/lang/String;

    move-result-object v43

    const/16 v30, 0x1

    const/16 v16, 0x21

    if-nez v43, :cond_24

    invoke-virtual/range {v36 .. v36}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v6

    long-to-int v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v43

    const/16 v30, 0x0

    const/16 v16, 0x4

    :cond_24
    move-object/from16 v0, v43

    move-object/from16 v1, v39

    iput-object v0, v1, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->wapAppId:Ljava/lang/String;

    if-nez v32, :cond_25

    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v14

    :goto_a
    move-object/from16 v0, v39

    iput-object v14, v0, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->contentType:Ljava/lang/String;

    const-string/jumbo v5, "WAP PUSH"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "appid found: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v43

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v32, :cond_27

    const-string/jumbo v5, "application/vnd.omaloc-supl-init"

    move-object/from16 v0, v32

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_27

    const-string/jumbo v5, "SBM"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_27

    if-eqz v30, :cond_26

    new-instance v11, Ljava/lang/String;

    const-string/jumbo v5, "x-oma-application:ulp.ua"

    invoke-direct {v11, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v43

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_27

    const-string/jumbo v5, "WAP PUSH"

    const-string/jumbo v6, " InvalidApplicationID-ASCII"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x1

    move-object/from16 v0, v39

    iput v5, v0, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->statusCode:I

    return-object v39

    :cond_25
    move-object/from16 v14, v32

    goto :goto_a

    :cond_26
    add-int v5, v28, v16

    add-int/lit8 v5, v5, 0x1

    aget-byte v5, p1, v5

    const/16 v6, -0x70

    if-eq v5, v6, :cond_27

    const-string/jumbo v5, "WAP PUSH"

    const-string/jumbo v6, " InvalidApplicationID-HEX"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x1

    move-object/from16 v0, v39

    iput v5, v0, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->statusCode:I

    return-object v39

    :cond_27
    move/from16 v0, v40

    move-object/from16 v1, v39

    iput v0, v1, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->subId:I

    move/from16 v0, v38

    move-object/from16 v1, v39

    iput v0, v1, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->phoneId:I

    move-object/from16 v0, v35

    move-object/from16 v1, v39

    iput-object v0, v1, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->parsedPdu:Lcom/google/android/mms/pdu/GenericPdu;

    move-object/from16 v0, v32

    move-object/from16 v1, v39

    iput-object v0, v1, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->mimeType:Ljava/lang/String;

    move/from16 v0, v42

    move-object/from16 v1, v39

    iput v0, v1, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->transactionId:I

    move/from16 v0, v37

    move-object/from16 v1, v39

    iput v0, v1, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->pduType:I

    move-object/from16 v0, v21

    move-object/from16 v1, v39

    iput-object v0, v1, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->header:[B

    move-object/from16 v0, v29

    move-object/from16 v1, v39

    iput-object v0, v1, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->intentData:[B

    invoke-virtual/range {v36 .. v36}, Lcom/android/internal/telephony/WspTypeDecoder;->getContentParameters()Ljava/util/HashMap;

    move-result-object v5

    move-object/from16 v0, v39

    iput-object v5, v0, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->contentTypeParameters:Ljava/util/HashMap;

    const/4 v5, -0x1

    move-object/from16 v0, v39

    iput v5, v0, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->statusCode:I

    goto/16 :goto_9

    :cond_28
    move-object/from16 v0, v32

    move-object/from16 v1, v39

    iput-object v0, v1, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->mimeType:Ljava/lang/String;

    move/from16 v0, v42

    move-object/from16 v1, v39

    iput v0, v1, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->transactionId:I

    move/from16 v0, v37

    move-object/from16 v1, v39

    iput v0, v1, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->pduType:I

    move/from16 v0, v26

    move-object/from16 v1, v39

    iput v0, v1, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->headerStartIndex:I

    move/from16 v0, v22

    move-object/from16 v1, v39

    iput v0, v1, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->headerLength:I

    const/4 v5, -0x1

    move-object/from16 v0, v39

    iput v5, v0, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->statusCode:I
    :try_end_9
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_9 .. :try_end_9} :catch_1

    goto/16 :goto_9

    :catch_3
    move-exception v10

    move/from16 v26, v27

    goto/16 :goto_8

    :sswitch_data_0
    .sparse-switch
        0x2e -> :sswitch_2
        0x30 -> :sswitch_3
        0x32 -> :sswitch_4
        0x36 -> :sswitch_a
        0x3e -> :sswitch_5
        0x42 -> :sswitch_b
        0x43 -> :sswitch_c
        0x44 -> :sswitch_8
        0x4a -> :sswitch_0
        0x4b -> :sswitch_1
        0x4e -> :sswitch_9
        0x5b -> :sswitch_e
        0xce -> :sswitch_9
        0x30a -> :sswitch_d
        0x310 -> :sswitch_7
        0x312 -> :sswitch_6
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x32 -> :sswitch_f
        0x3e -> :sswitch_f
        0x44 -> :sswitch_f
    .end sparse-switch
.end method

.method private dispatchWapPdu_DMNoti([BILandroid/content/BroadcastReceiver;Lcom/android/internal/telephony/InboundSmsHandler;)V
    .locals 9

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v0, "com.samsung.provider.Telephony.WAP_PUSH_DM_NOTI_RECEIVED"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v0, 0x20

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v0, "pdus"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string/jumbo v0, "pushtype"

    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p4}, Lcom/android/internal/telephony/InboundSmsHandler;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v7

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v2, "CscFeature_IMS_ConfigVerUICCMobilitySpec"

    const-string/jumbo v5, "0.0"

    invoke-virtual {v0, v7, v2, v5}, Lcom/samsung/android/feature/SemCscFeature;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v0, "0.0"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v2, "KOO"

    const/4 v5, 0x0

    aput-object v2, v0, v5

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->isMainOperatorSpecific([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "WAP PUSH"

    const-string/jumbo v2, "send DM intent and add extra UICC_MOBILITY_SPEC_VER"

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "IMS_CONFIG_UICC_MOBILITY_SPEC_VER"

    const-string/jumbo v2, "2.0"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    :goto_0
    const/16 v3, 0x13

    const-string/jumbo v0, "WAP PUSH"

    const-string/jumbo v2, "com.samsung.provider.Telephony.WAP_PUSH_DM_NOTI_RECEIVED is sent"

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/WapPushOverSms;->handleSmsWhitelisting(Landroid/content/ComponentName;)Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v2, "android.permission.RECEIVE_WAP_PUSH"

    sget-object v6, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    move-object v0, p4

    move-object v5, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchIntent(Landroid/content/Intent;Ljava/lang/String;ILandroid/os/Bundle;Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;)V

    return-void

    :cond_1
    const-string/jumbo v0, "WAP PUSH"

    const-string/jumbo v2, "KT! send DM intent and add extra"

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "IMS_CONFIG_UICC_MOBILITY_SPEC_VER"

    invoke-virtual {v1, v0, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private dispatchWapPdu_MMS([BIIIILandroid/content/BroadcastReceiver;Lcom/android/internal/telephony/InboundSmsHandler;)V
    .locals 20

    move/from16 v0, p5

    new-array v0, v0, [B

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v4, v0

    const/4 v6, 0x0

    move-object/from16 v0, p1

    move/from16 v1, p4

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2, v6, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    add-int v14, p4, p5

    move-object/from16 v0, p1

    array-length v4, v0

    sub-int/2addr v4, v14

    new-array v13, v4, [B

    array-length v4, v13

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v14, v13, v6, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    invoke-virtual/range {p7 .. p7}, Lcom/android/internal/telephony/InboundSmsHandler;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v19

    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v4, "android.provider.Telephony.WAP_PUSH_DELIVER"

    invoke-direct {v5, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "application/vnd.wap.mms-message"

    invoke-virtual {v5, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v4, "transactionId"

    move/from16 v0, p2

    invoke-virtual {v5, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v4, "pduType"

    move/from16 v0, p3

    invoke-virtual {v5, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v4, "header"

    move-object/from16 v0, v18

    invoke-virtual {v5, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string/jumbo v4, "data"

    invoke-virtual {v5, v4, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    move/from16 v0, v19

    invoke-static {v5, v0}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/telephony/WapPushOverSms;->mPushSafeNoti:Z

    if-eqz v4, :cond_0

    const-string/jumbo v4, "safeNoti"

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/internal/telephony/WapPushOverSms;->mPushSafeNoti:Z

    invoke-virtual {v5, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v4, "WAP PUSH"

    const-string/jumbo v6, "putExtra safeNoti"

    invoke-static {v4, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/telephony/WapPushOverSms;->mPushTwoPhoneNoti:Z

    if-eqz v4, :cond_1

    const-string/jumbo v4, "twoPhoneNoti"

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/internal/telephony/WapPushOverSms;->mPushTwoPhoneNoti:Z

    invoke-virtual {v5, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v4, "WAP PUSH"

    const-string/jumbo v6, "putExtra twoPhoneNoti"

    invoke-static {v4, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    const/4 v6, 0x1

    invoke-static {v4, v6}, Lcom/android/internal/telephony/SmsApplication;->getDefaultMmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    move-result-object v12

    if-eqz v12, :cond_2

    invoke-virtual {v5, v12}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string/jumbo v4, "WAP PUSH"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Delivering MMS to: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v12}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v9, " "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v12}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/WapPushOverSms;->mSmsLogger:Lcom/android/internal/telephony/SmsLogger;

    const-string/jumbo v6, "WAP PUSH"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Delivering MMS to: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v12}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v12}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move/from16 v0, v19

    invoke-virtual {v4, v6, v9, v0}, Lcom/android/internal/telephony/SmsLogger;->add(Ljava/lang/String;Ljava/lang/String;I)V

    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/WapPushOverSms;->mDeviceIdleController:Landroid/os/IDeviceIdleController;

    invoke-virtual {v12}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v9, "mms-app"

    const/4 v10, 0x0

    invoke-interface {v4, v6, v10, v9}, Landroid/os/IDeviceIdleController;->addPowerSaveTempWhitelistAppForMms(Ljava/lang/String;ILjava/lang/String;)J

    move-result-wide v16

    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object v11

    move-wide/from16 v0, v16

    invoke-virtual {v11, v0, v1}, Landroid/app/BroadcastOptions;->setTemporaryAppWhitelistDuration(J)V

    invoke-virtual {v11}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    :cond_2
    :goto_0
    const/16 v7, 0x12

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v4

    const-string/jumbo v6, "CscFeature_Contact_SupportWhitePages"

    move/from16 v0, v19

    invoke-virtual {v4, v0, v6}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(ILjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    invoke-static {v4, v5, v8}, Lcom/whitepages/nameid/NameIDBlockingHelper;->wrapIntent(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v5

    :cond_3
    const-string/jumbo v6, "android.permission.RECEIVE_MMS"

    sget-object v10, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    move-object/from16 v4, p7

    move-object/from16 v9, p6

    invoke-virtual/range {v4 .. v10}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchIntent(Landroid/content/Intent;Ljava/lang/String;ILandroid/os/Bundle;Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;)V

    return-void

    :catch_0
    move-exception v15

    goto :goto_0
.end method

.method private dispatchWapPdu_PushCO([BIIIILandroid/content/BroadcastReceiver;Lcom/android/internal/telephony/InboundSmsHandler;)V
    .locals 8

    const/4 v5, 0x0

    new-array v7, p5, [B

    array-length v0, v7

    const/4 v2, 0x0

    invoke-static {p1, p4, v7, v2, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v0, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "application/vnd.wap.coc"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v0, "transactionId"

    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v0, "pduType"

    invoke-virtual {v1, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v0, "header"

    invoke-virtual {v1, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string/jumbo v0, "data"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    invoke-virtual {p7}, Lcom/android/internal/telephony/InboundSmsHandler;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    invoke-static {v1, v0}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    iget-object v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->mPushOrigAddr:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "origaddr"

    iget-object v2, p0, Lcom/android/internal/telephony/WapPushOverSms;->mPushOrigAddr:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    const/16 v3, 0x13

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/WapPushOverSms;->handleSmsWhitelisting(Landroid/content/ComponentName;)Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v2, "android.permission.RECEIVE_WAP_PUSH"

    sget-object v6, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    move-object v0, p7

    move-object v5, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchIntent(Landroid/content/Intent;Ljava/lang/String;ILandroid/os/Bundle;Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;)V

    return-void
.end method

.method private dispatchWapPdu_PushMsg([BILandroid/content/BroadcastReceiver;Lcom/android/internal/telephony/InboundSmsHandler;)V
    .locals 7

    const/4 v6, 0x0

    const-string/jumbo v0, "WAP PUSH"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "dispatchWapPdu_PushMsg : binaryContentType = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v0, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "pdus"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string/jumbo v0, "pushtype"

    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->mPushOrigAddr:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "origaddr"

    iget-object v2, p0, Lcom/android/internal/telephony/WapPushOverSms;->mPushOrigAddr:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    const/16 v3, 0x13

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/WapPushOverSms;->handleSmsWhitelisting(Landroid/content/ComponentName;)Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v2, "android.permission.RECEIVE_WAP_PUSH"

    sget-object v6, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    move-object v0, p4

    move-object v5, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchIntent(Landroid/content/Intent;Ljava/lang/String;ILandroid/os/Bundle;Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;)V

    return-void
.end method

.method public static getAppOpsPermissionForIntent(Ljava/lang/String;)I
    .locals 2

    const-string/jumbo v1, "application/vnd.wap.mms-message"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x12

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x13

    goto :goto_0
.end method

.method private static getDeliveryOrReadReportThreadId(Landroid/content/Context;Lcom/google/android/mms/pdu/GenericPdu;)J
    .locals 12

    const-wide/16 v10, -0x1

    instance-of v0, p1, Lcom/google/android/mms/pdu/DeliveryInd;

    if-eqz v0, :cond_1

    new-instance v9, Ljava/lang/String;

    check-cast p1, Lcom/google/android/mms/pdu/DeliveryInd;

    invoke-virtual {p1}, Lcom/google/android/mms/pdu/DeliveryInd;->getMessageId()[B

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/lang/String;-><init>([B)V

    :goto_0
    const/4 v7, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    const-string/jumbo v0, "thread_id"

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const-string/jumbo v4, "m_id=? AND m_type=?"

    const/4 v0, 0x2

    new-array v5, v0, [Ljava/lang/String;

    invoke-static {v9}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/16 v0, 0x80

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v6, 0x1

    aput-object v0, v5, v6

    const/4 v6, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_0
    return-wide v0

    :cond_1
    instance-of v0, p1, Lcom/google/android/mms/pdu/ReadOrigInd;

    if-eqz v0, :cond_2

    new-instance v9, Ljava/lang/String;

    check-cast p1, Lcom/google/android/mms/pdu/ReadOrigInd;

    invoke-virtual {p1}, Lcom/google/android/mms/pdu/ReadOrigInd;->getMessageId()[B

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/lang/String;-><init>([B)V

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "WAP PUSH"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "WAP Push data is neither delivery or read report type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/mms/pdu/GenericPdu;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v10

    :cond_3
    if-eqz v7, :cond_4

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_4
    :goto_1
    return-wide v10

    :catch_0
    move-exception v8

    :try_start_1
    const-string/jumbo v0, "WAP PUSH"

    const-string/jumbo v1, "Failed to query delivery or read report thread id"

    invoke-static {v0, v1, v8}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v7, :cond_4

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    if-eqz v7, :cond_5

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0
.end method

.method public static getPermissionForType(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string/jumbo v1, "application/vnd.wap.mms-message"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v0, "android.permission.RECEIVE_MMS"

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "android.permission.RECEIVE_WAP_PUSH"

    goto :goto_0
.end method

.method private static isDuplicateNotification(Landroid/content/Context;Lcom/google/android/mms/pdu/NotificationInd;)Z
    .locals 14

    const/4 v13, 0x1

    const/4 v12, 0x0

    invoke-virtual {p1}, Lcom/google/android/mms/pdu/NotificationInd;->getContentLocation()[B

    move-result-object v10

    if-eqz v10, :cond_2

    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v10}, Ljava/lang/String;-><init>([B)V

    new-array v11, v13, [Ljava/lang/String;

    aput-object v9, v11, v12

    const/4 v7, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    const-string/jumbo v0, "_id"

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const-string/jumbo v4, "m_type=? AND ct_l =?"

    const/4 v0, 0x2

    new-array v5, v0, [Ljava/lang/String;

    const/16 v0, 0x82

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v6, 0x0

    aput-object v0, v5, v6

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v10}, Ljava/lang/String;-><init>([B)V

    const/4 v6, 0x1

    aput-object v0, v5, v6

    const/4 v6, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-lez v0, :cond_1

    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_0
    return v13

    :cond_1
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_0
    return v12

    :catch_0
    move-exception v8

    :try_start_1
    const-string/jumbo v0, "WAP PUSH"

    const-string/jumbo v1, "failed to query existing notification ind"

    invoke-static {v0, v1, v8}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v7, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method private static shouldParseContentDisposition(I)Z
    .locals 3

    invoke-static {p0}, Landroid/telephony/SmsManager;->getSmsManagerForSubscriptionId(I)Landroid/telephony/SmsManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/SmsManager;->getCarrierConfigValues()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "supportMmsContentDisposition"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private writeInboxMessage(ILcom/google/android/mms/pdu/GenericPdu;)V
    .locals 23

    if-nez p2, :cond_0

    const-string/jumbo v3, "WAP PUSH"

    const-string/jumbo v4, "Invalid PUSH PDU"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/mms/pdu/GenericPdu;->getMessageType()I

    move-result v22

    sparse-switch v22, :sswitch_data_0

    :try_start_0
    const-string/jumbo v3, "WAP PUSH"

    const-string/jumbo v4, "Received unrecognized WAP Push PDU."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :sswitch_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    move-object/from16 v0, p2

    invoke-static {v3, v0}, Lcom/android/internal/telephony/WapPushOverSms;->getDeliveryOrReadReportThreadId(Landroid/content/Context;Lcom/google/android/mms/pdu/GenericPdu;)J

    move-result-wide v20

    const-wide/16 v8, -0x1

    cmp-long v3, v20, v8

    if-nez v3, :cond_2

    const-string/jumbo v3, "WAP PUSH"

    const-string/jumbo v4, "Failed to find delivery or read report\'s thread id"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v16

    const-string/jumbo v3, "WAP PUSH"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Failed to save MMS WAP push data: type="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_2
    :try_start_1
    sget-object v4, Landroid/provider/Telephony$Mms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object/from16 v3, p2

    invoke-virtual/range {v2 .. v7}, Lcom/google/android/mms/pdu/PduPersister;->persist(Lcom/google/android/mms/pdu/GenericPdu;Landroid/net/Uri;ZZLjava/util/HashMap;)Landroid/net/Uri;

    move-result-object v5

    if-nez v5, :cond_3

    const-string/jumbo v3, "WAP PUSH"

    const-string/jumbo v4, "Failed to persist delivery or read report"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v17

    const-string/jumbo v3, "WAP PUSH"

    const-string/jumbo v4, "Unexpected RuntimeException in persisting MMS WAP push data"

    move-object/from16 v0, v17

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_3
    :try_start_2
    new-instance v6, Landroid/content/ContentValues;

    const/4 v3, 0x1

    invoke-direct {v6, v3}, Landroid/content/ContentValues;-><init>(I)V

    const-string/jumbo v3, "thread_id"

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v6, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    const-string/jumbo v3, "WAP PUSH"

    const-string/jumbo v4, "Failed to update delivery or read report thread id"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :sswitch_1
    move-object/from16 v0, p2

    check-cast v0, Lcom/google/android/mms/pdu/NotificationInd;

    move-object/from16 v18, v0

    invoke-static/range {p1 .. p1}, Landroid/telephony/SmsManager;->getSmsManagerForSubscriptionId(I)Landroid/telephony/SmsManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/SmsManager;->getCarrierConfigValues()Landroid/os/Bundle;

    move-result-object v13

    if-eqz v13, :cond_4

    const-string/jumbo v3, "enabledTransID"

    const/4 v4, 0x0

    invoke-virtual {v13, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual/range {v18 .. v18}, Lcom/google/android/mms/pdu/NotificationInd;->getContentLocation()[B

    move-result-object v14

    array-length v3, v14

    add-int/lit8 v3, v3, -0x1

    aget-byte v3, v14, v3

    const/16 v4, 0x3d

    if-ne v4, v3, :cond_4

    invoke-virtual/range {v18 .. v18}, Lcom/google/android/mms/pdu/NotificationInd;->getTransactionId()[B

    move-result-object v19

    array-length v3, v14

    move-object/from16 v0, v19

    array-length v4, v0

    add-int/2addr v3, v4

    new-array v15, v3, [B

    array-length v3, v14

    const/4 v4, 0x0

    const/4 v7, 0x0

    invoke-static {v14, v4, v15, v7, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    array-length v3, v14

    move-object/from16 v0, v19

    array-length v4, v0

    const/4 v7, 0x0

    move-object/from16 v0, v19

    invoke-static {v0, v7, v15, v3, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Lcom/google/android/mms/pdu/NotificationInd;->setContentLocation([B)V

    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    move-object/from16 v0, v18

    invoke-static {v3, v0}, Lcom/android/internal/telephony/WapPushOverSms;->isDuplicateNotification(Landroid/content/Context;Lcom/google/android/mms/pdu/NotificationInd;)Z

    move-result v3

    if-nez v3, :cond_5

    sget-object v9, Landroid/provider/Telephony$Mms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 v10, 0x1

    const/4 v11, 0x1

    const/4 v12, 0x0

    move-object v7, v2

    move-object/from16 v8, p2

    invoke-virtual/range {v7 .. v12}, Lcom/google/android/mms/pdu/PduPersister;->persist(Lcom/google/android/mms/pdu/GenericPdu;Landroid/net/Uri;ZZLjava/util/HashMap;)Landroid/net/Uri;

    move-result-object v5

    if-nez v5, :cond_1

    const-string/jumbo v3, "WAP PUSH"

    const-string/jumbo v4, "Failed to save MMS WAP push notification ind"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_5
    const-string/jumbo v3, "WAP PUSH"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Skip storing duplicate MMS WAP push notification ind: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v7, Ljava/lang/String;

    invoke-virtual/range {v18 .. v18}, Lcom/google/android/mms/pdu/NotificationInd;->getContentLocation()[B

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Lcom/google/android/mms/MmsException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x82 -> :sswitch_1
        0x86 -> :sswitch_0
        0x88 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public dispatchWapPdu([BLandroid/content/BroadcastReceiver;Lcom/android/internal/telephony/InboundSmsHandler;)I
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/WapPushOverSms;->decodeWapPdu([BLcom/android/internal/telephony/InboundSmsHandler;)Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;

    move-result-object v19

    move-object/from16 v0, v19

    iget v4, v0, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->statusCode:I

    const/4 v6, -0x1

    if-eq v4, v6, :cond_0

    move-object/from16 v0, v19

    iget v4, v0, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->statusCode:I

    return v4

    :cond_0
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v4

    move-object/from16 v0, v19

    iget v6, v0, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->phoneId:I

    const-string/jumbo v7, "CscFeature_RIL_SmsWappushManager"

    invoke-virtual {v4, v6, v7}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(ILjava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v4

    move-object/from16 v0, v19

    iget v6, v0, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->phoneId:I

    const-string/jumbo v7, "CscFeature_RIL_SmsCml"

    invoke-virtual {v4, v6, v7}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(ILjava/lang/String;)Z

    move-result v4

    :goto_0
    if-nez v4, :cond_4

    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->mimeType:Ljava/lang/String;

    if-eqz v4, :cond_2

    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->mimeType:Ljava/lang/String;

    const-string/jumbo v6, "application/vnd.wap.coc"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object/from16 v0, v19

    iget v6, v0, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->transactionId:I

    move-object/from16 v0, v19

    iget v7, v0, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->pduType:I

    move-object/from16 v0, v19

    iget v8, v0, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->headerStartIndex:I

    move-object/from16 v0, v19

    iget v9, v0, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->headerLength:I

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPdu_PushCO([BIIIILandroid/content/BroadcastReceiver;Lcom/android/internal/telephony/InboundSmsHandler;)V

    const/4 v4, -0x1

    return v4

    :cond_1
    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->mimeType:Ljava/lang/String;

    if-eqz v4, :cond_3

    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->mimeType:Ljava/lang/String;

    const-string/jumbo v6, "application/vnd.wap.mms-message"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    move-object/from16 v0, v19

    iget v6, v0, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->transactionId:I

    move-object/from16 v0, v19

    iget v7, v0, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->pduType:I

    move-object/from16 v0, v19

    iget v8, v0, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->headerStartIndex:I

    move-object/from16 v0, v19

    iget v9, v0, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->headerLength:I

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPdu_MMS([BIIIILandroid/content/BroadcastReceiver;Lcom/android/internal/telephony/InboundSmsHandler;)V

    const/4 v4, -0x1

    return v4

    :cond_3
    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->mimeType:Ljava/lang/String;

    if-eqz v4, :cond_4

    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->mimeType:Ljava/lang/String;

    const-string/jumbo v6, "application/vnd.syncml.notification"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/16 v4, 0x44

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPdu_DMNoti([BILandroid/content/BroadcastReceiver;Lcom/android/internal/telephony/InboundSmsHandler;)V

    const/4 v4, -0x1

    return v4

    :cond_4
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/SmsManager;->getAutoPersisting()Z

    move-result v4

    if-eqz v4, :cond_5

    move-object/from16 v0, v19

    iget v4, v0, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->subId:I

    move-object/from16 v0, v19

    iget-object v6, v0, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->parsedPdu:Lcom/google/android/mms/pdu/GenericPdu;

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v6}, Lcom/android/internal/telephony/WapPushOverSms;->writeInboxMessage(ILcom/google/android/mms/pdu/GenericPdu;)V

    :cond_5
    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->wapAppId:Ljava/lang/String;

    if-eqz v4, :cond_8

    const/16 v18, 0x1

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->mWapPushManager:Lcom/android/internal/telephony/IWapPushManager;

    move-object/from16 v20, v0

    if-nez v20, :cond_7

    const-string/jumbo v4, "WAP PUSH"

    const-string/jumbo v6, "wap push manager not found!"

    invoke-static {v4, v6}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_1
    if-nez v18, :cond_8

    const/4 v4, 0x1

    return v4

    :cond_7
    monitor-enter p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/WapPushOverSms;->mDeviceIdleController:Landroid/os/IDeviceIdleController;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/WapPushOverSms;->mWapPushManagerPackage:Ljava/lang/String;

    const-string/jumbo v7, "mms-mgr"

    const/4 v9, 0x0

    invoke-interface {v4, v6, v9, v7}, Landroid/os/IDeviceIdleController;->addPowerSaveTempWhitelistAppForMms(Ljava/lang/String;ILjava/lang/String;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit p0

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v4, "transactionId"

    move-object/from16 v0, v19

    iget v6, v0, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->transactionId:I

    invoke-virtual {v5, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v4, "pduType"

    move-object/from16 v0, v19

    iget v6, v0, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->pduType:I

    invoke-virtual {v5, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v4, "header"

    move-object/from16 v0, v19

    iget-object v6, v0, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->header:[B

    invoke-virtual {v5, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string/jumbo v4, "data"

    move-object/from16 v0, v19

    iget-object v6, v0, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->intentData:[B

    invoke-virtual {v5, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string/jumbo v4, "contentTypeParameters"

    move-object/from16 v0, v19

    iget-object v6, v0, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->contentTypeParameters:Ljava/util/HashMap;

    invoke-virtual {v5, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-object/from16 v0, v19

    iget v4, v0, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->phoneId:I

    invoke-static {v5, v4}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->wapAppId:Ljava/lang/String;

    move-object/from16 v0, v19

    iget-object v6, v0, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->contentType:Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-interface {v0, v4, v6, v5}, Lcom/android/internal/telephony/IWapPushManager;->processMessage(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)I

    move-result v17

    const-string/jumbo v4, "WAP PUSH"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "procRet:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    and-int/lit8 v4, v17, 0x1

    if-lez v4, :cond_6

    const v4, 0x8000

    and-int v4, v4, v17

    if-nez v4, :cond_6

    const/16 v18, 0x0

    goto/16 :goto_1

    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v16

    const-string/jumbo v4, "WAP PUSH"

    const-string/jumbo v6, "remote func failed..."

    invoke-static {v4, v6}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    const-string/jumbo v4, "WAP PUSH"

    const-string/jumbo v6, "fall back to existing handler"

    invoke-static {v4, v6}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->mimeType:Ljava/lang/String;

    if-nez v4, :cond_9

    const-string/jumbo v4, "WAP PUSH"

    const-string/jumbo v6, "Header Content-Type error."

    invoke-static {v4, v6}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x2

    return v4

    :cond_9
    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v4, "android.provider.Telephony.WAP_PUSH_DELIVER"

    invoke-direct {v5, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->mimeType:Ljava/lang/String;

    invoke-virtual {v5, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v4, "transactionId"

    move-object/from16 v0, v19

    iget v6, v0, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->transactionId:I

    invoke-virtual {v5, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v4, "pduType"

    move-object/from16 v0, v19

    iget v6, v0, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->pduType:I

    invoke-virtual {v5, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v4, "header"

    move-object/from16 v0, v19

    iget-object v6, v0, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->header:[B

    invoke-virtual {v5, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string/jumbo v4, "data"

    move-object/from16 v0, v19

    iget-object v6, v0, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->intentData:[B

    invoke-virtual {v5, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string/jumbo v4, "contentTypeParameters"

    move-object/from16 v0, v19

    iget-object v6, v0, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->contentTypeParameters:Ljava/util/HashMap;

    invoke-virtual {v5, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/WapPushOverSms;->mPushOrigAddr:Ljava/lang/String;

    if-eqz v4, :cond_a

    const-string/jumbo v4, "origaddr"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/WapPushOverSms;->mPushOrigAddr:Ljava/lang/String;

    invoke-virtual {v5, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_a
    move-object/from16 v0, v19

    iget v4, v0, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->phoneId:I

    invoke-static {v5, v4}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    const/4 v6, 0x1

    invoke-static {v4, v6}, Lcom/android/internal/telephony/SmsApplication;->getDefaultMmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    move-result-object v13

    const/4 v8, 0x0

    if-eqz v13, :cond_b

    invoke-virtual {v5, v13}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string/jumbo v4, "WAP PUSH"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Delivering MMS to: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v13}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v13}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/WapPushOverSms;->mSmsLogger:Lcom/android/internal/telephony/SmsLogger;

    const-string/jumbo v6, "WAP PUSH"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Delivering MMS to: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v13}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v9, " "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v13}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v19

    iget v9, v0, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->phoneId:I

    invoke-virtual {v4, v6, v7, v9}, Lcom/android/internal/telephony/SmsLogger;->add(Ljava/lang/String;Ljava/lang/String;I)V

    :try_start_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/WapPushOverSms;->mDeviceIdleController:Landroid/os/IDeviceIdleController;

    invoke-virtual {v13}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "mms-app"

    const/4 v9, 0x0

    invoke-interface {v4, v6, v9, v7}, Landroid/os/IDeviceIdleController;->addPowerSaveTempWhitelistAppForMms(Ljava/lang/String;ILjava/lang/String;)J

    move-result-wide v14

    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object v12

    invoke-virtual {v12, v14, v15}, Landroid/app/BroadcastOptions;->setTemporaryAppWhitelistDuration(J)V

    invoke-virtual {v12}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v8

    :cond_b
    :goto_2
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v4

    move-object/from16 v0, v19

    iget v6, v0, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->phoneId:I

    const-string/jumbo v7, "CscFeature_Contact_SupportWhitePages"

    invoke-virtual {v4, v6, v7}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(ILjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    invoke-static {v4, v5, v8}, Lcom/whitepages/nameid/NameIDBlockingHelper;->wrapIntent(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v5

    :cond_c
    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->mimeType:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/internal/telephony/WapPushOverSms;->getPermissionForType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->mimeType:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/internal/telephony/WapPushOverSms;->getAppOpsPermissionForIntent(Ljava/lang/String;)I

    move-result v7

    sget-object v10, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    move-object/from16 v4, p3

    move-object/from16 v9, p2

    invoke-virtual/range {v4 .. v10}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchIntent(Landroid/content/Intent;Ljava/lang/String;ILandroid/os/Bundle;Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;)V

    const/4 v4, -0x1

    return v4

    :catch_1
    move-exception v16

    goto :goto_2
.end method

.method public dispatchWapPushAddress(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/android/internal/telephony/WapPushOverSms;->mPushOrigAddr:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    iput-object v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->mPushOrigAddr:Ljava/lang/String;

    goto :goto_0
.end method

.method public dispatchWapPushSafeNoti(Z)V
    .locals 3

    iput-boolean p1, p0, Lcom/android/internal/telephony/WapPushOverSms;->mPushSafeNoti:Z

    const-string/jumbo v0, "WAP PUSH"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "dispatchWapPushSafeNoti SafeNoti = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/WapPushOverSms;->mPushSafeNoti:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public dispatchWapPushTwoPhoneNoti(Z)V
    .locals 3

    iput-boolean p1, p0, Lcom/android/internal/telephony/WapPushOverSms;->mPushTwoPhoneNoti:Z

    const-string/jumbo v0, "WAP PUSH"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "dispatchWapPushTwoPhoneNoti TwoPhoneNoti = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/WapPushOverSms;->mPushTwoPhoneNoti:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public dispose()V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->mWapPushManager:Lcom/android/internal/telephony/IWapPushManager;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "WAP PUSH"

    const-string/jumbo v1, "dispose: unbind wappush manager"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "WAP PUSH"

    const-string/jumbo v1, "dispose: not bound to a wappush manager"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method handleSmsWhitelisting(Landroid/content/ComponentName;)Landroid/os/Bundle;
    .locals 9

    const/4 v8, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "sms-app"

    :goto_0
    :try_start_0
    iget-object v6, p0, Lcom/android/internal/telephony/WapPushOverSms;->mDeviceIdleController:Landroid/os/IDeviceIdleController;

    const/4 v7, 0x0

    invoke-interface {v6, v4, v7, v5}, Landroid/os/IDeviceIdleController;->addPowerSaveTempWhitelistAppForSms(Ljava/lang/String;ILjava/lang/String;)J

    move-result-wide v2

    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/app/BroadcastOptions;->setTemporaryAppWhitelistDuration(J)V

    invoke-virtual {v0}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    return-object v6

    :cond_0
    iget-object v6, p0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "sms-broadcast"

    goto :goto_0

    :catch_0
    move-exception v1

    return-object v8
.end method

.method public isWapPushForMms([BLcom/android/internal/telephony/InboundSmsHandler;)Z
    .locals 3

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/WapPushOverSms;->decodeWapPdu([BLcom/android/internal/telephony/InboundSmsHandler;)Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;

    move-result-object v0

    iget v1, v0, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->statusCode:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    const-string/jumbo v1, "application/vnd.wap.mms-message"

    iget-object v2, v0, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->mimeType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    invoke-static {p2}, Lcom/android/internal/telephony/IWapPushManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IWapPushManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->mWapPushManager:Lcom/android/internal/telephony/IWapPushManager;

    const-string/jumbo v0, "WAP PUSH"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "wappush manager connected to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/WapPushOverSms;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->mWapPushManager:Lcom/android/internal/telephony/IWapPushManager;

    const-string/jumbo v0, "WAP PUSH"

    const-string/jumbo v1, "wappush manager disconnected."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setWpaPushAddressTimeStamp(Ljava/lang/String;J)V
    .locals 2

    iput-object p1, p0, Lcom/android/internal/telephony/WapPushOverSms;->mWapPushAddress:Ljava/lang/String;

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->mWapPushTimeStamp:Ljava/lang/String;

    return-void
.end method
