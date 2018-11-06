.class public Lcom/tmobile/echolocate/DataMetrics;
.super Ljava/lang/Object;
.source "DataMetrics.java"


# static fields
.field private static final CALLING_PKG_PREFIX:Ljava/lang/String; = "com.tmobile"

.field private static final CP_VALUE_SEPARATOR:Ljava/lang/String; = "\\|"

.field private static final CSC_SUPPORT_ELP2:Ljava/lang/String; = "CscFeature_Common_SupportEchoLocatePhase2"

.field private static final CSC_SUPPORT_RTT:Ljava/lang/String; = "CscFeature_VoiceCall_SupportRTT"

.field private static final CURRENT_API_VERSION:I = 0x1

.field private static final DBG:Z

.field private static final DEBUG_STRING_NOT_SUPPORTED:Ljava/lang/String; = "NOT SUPPORTED"

.field private static final DEVICE_REPORTING_PERMISSION:Ljava/lang/String; = "diagandroid.phone.receiveDetailedCallState"

.field private static final FILE_SIZE:I = 0x5

.field private static final MAX_STRING_RETURN_SIZE:I = 0x200

.field private static final MSG_TYPE_BEARER_CONFIG:I = 0x8

.field private static final MSG_TYPE_COMMON_RF_CONFIG:I = 0x3

.field private static final MSG_TYPE_DL_CARRIER_INFO:I = 0x4

.field private static final MSG_TYPE_DL_RF_CONFIG:I = 0x6

.field private static final MSG_TYPE_NETWORK_IDENTITY:I = 0x1

.field private static final MSG_TYPE_SIGNAL_CONDITION:I = 0x2

.field private static final MSG_TYPE_UL_CARRIER_INFO:I = 0x5

.field private static final MSG_TYPE_UL_RF_CONFIG:I = 0x7

.field private static final NETWORK_LTE:Ljava/lang/String; = "1"

.field private static final NETWORK_SEARCHING:Ljava/lang/String; = "0"

.field private static final NUM_CP_FIELDS_BEARER_CONFIG:I = 0x9

.field private static final NUM_CP_FIELDS_COMMON_RF_CONFIG:I = 0x6

.field private static final NUM_CP_FIELDS_DL_CARRIER_INFO:I = 0xa

.field private static final NUM_CP_FIELDS_DL_RF_CONFIG:I = 0x6

.field private static final NUM_CP_FIELDS_NETWORK_IDENTITY:I = 0x3

.field private static final NUM_CP_FIELDS_SIGNAL_CONDITION:I = 0x19

.field private static final NUM_CP_FIELDS_UL_CARRIER_INFO:I = 0x7

.field private static final NUM_CP_FIELDS_UL_RF_CONFIG:I = 0x2

.field private static final OEM_FUNCTION_ID_MISC:I = 0x11

.field private static final OEM_MISC_GET_LTE_QUALITY_INFO:I = 0x92

.field private static final RET_FAILED_TO_CHECK_TARGET:I = -0x2

.field private static final RET_STRING_FAILED_TO_CHECK_TARGET:Ljava/lang/String; = "-2"

.field private static final RET_STRING_NOT_LTE:Ljava/lang/String; = "-999"

.field private static final RET_STRING_RACH_POWER_NOT_AVAILABLE:Ljava/lang/String; = "-150"

.field private static final RET_STRING_RSRP_NOT_AVAILABLE:Ljava/lang/String; = "-150"

.field private static final RET_STRING_RSRQ_NOT_AVAILABLE:Ljava/lang/String; = "-50"

.field private static final RET_STRING_RSSI_NOT_AVAILABLE:Ljava/lang/String; = "-150"

.field private static final RET_STRING_SINR_NOT_AVAILABLE:Ljava/lang/String; = "-50"

.field private static final RET_STRING_TARGET_DOES_NOT_EXIST:Ljava/lang/String; = "-1"

.field private static final RET_TARGET_DOES_NOT_EXIST:I = -0x1

.field private static final RTT_MODE_OFF:I = 0x0

.field private static final RTT_MODE_ON:I = 0x4

.field private static final RTT_PREF_MODE:Ljava/lang/String; = "preferred_rtt_mode"

.field private static final RTT_VISIBLE_AUTOMATIC:I = 0x1

.field private static final RTT_VISIBLE_MANUAL:I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mShouldReport:Z

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string/jumbo v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/tmobile/echolocate/DataMetrics;->DBG:Z

    const-class v0, Lcom/tmobile/echolocate/DataMetrics;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tmobile/echolocate/DataMetrics;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    const/4 v5, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v5, p0, Lcom/tmobile/echolocate/DataMetrics;->mShouldReport:Z

    iput-object p1, p0, Lcom/tmobile/echolocate/DataMetrics;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/tmobile/echolocate/DataMetrics;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "diagandroid.phone.receiveDetailedCallState"

    const-string/jumbo v7, "DataMetrics()"

    invoke-virtual {v4, v6, v7}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/tmobile/echolocate/DataMetrics;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/internal/telephony/DeviceReportingSecurityChecker;->enable(Landroid/content/Context;)V

    iget-object v4, p0, Lcom/tmobile/echolocate/DataMetrics;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "phone"

    invoke-virtual {v4, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    iput-object v4, p0, Lcom/tmobile/echolocate/DataMetrics;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v4

    const-string/jumbo v6, "CscFeature_Common_SupportEchoLocatePhase2"

    invoke-virtual {v4, v6}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-direct {p0}, Lcom/tmobile/echolocate/DataMetrics;->isTmoSim()Z

    move-result v3

    const-string/jumbo v4, "TMB"

    sget-object v6, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iget-object v4, p0, Lcom/tmobile/echolocate/DataMetrics;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v6, "com.tmobile"

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "DataMetrics(): isCscFeatureSupported="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, ", isTmoSim="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, ", isTmoSalesCode="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, ", isCalledFromTmo="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tmobile/echolocate/DataMetrics;->logD(Ljava/lang/String;)V

    if-eqz v1, :cond_0

    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/tmobile/echolocate/DataMetrics;->mShouldReport:Z

    return-void

    :cond_0
    move v0, v5

    goto :goto_0
.end method

.method private getCommandsToCp(I)[B
    .locals 6

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/16 v4, 0x11

    :try_start_0
    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/16 v4, 0x92

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/4 v4, 0x5

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeShort(I)V

    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :try_start_1
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    return-object v4

    :catch_0
    move-exception v3

    const-string/jumbo v4, "getCommandToCp(): failed to close dos "

    invoke-static {v4, v3}, Lcom/tmobile/echolocate/DataMetrics;->logE(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v2

    :try_start_2
    const-string/jumbo v4, "getCommandToCp(): "

    invoke-static {v4, v2}, Lcom/tmobile/echolocate/DataMetrics;->logE(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_0

    :try_start_3
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    :catch_2
    move-exception v3

    const-string/jumbo v4, "getCommandToCp(): failed to close dos "

    invoke-static {v4, v3}, Lcom/tmobile/echolocate/DataMetrics;->logE(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catchall_0
    move-exception v4

    if-eqz v1, :cond_1

    :try_start_4
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :cond_1
    :goto_1
    throw v4

    :catch_3
    move-exception v3

    const-string/jumbo v5, "getCommandToCp(): failed to close dos "

    invoke-static {v5, v3}, Lcom/tmobile/echolocate/DataMetrics;->logE(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private getCommonDataSettings(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v1, -0x2

    iget-object v2, p0, Lcom/tmobile/echolocate/DataMetrics;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, -0x1

    invoke-static {v2, p1, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getCommonDataSettings(): default on dataSetting="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tmobile/echolocate/DataMetrics;->logD(Ljava/lang/String;)V

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getCommonDataSettings(): ret="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " for setting value="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tmobile/echolocate/DataMetrics;->logD(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :pswitch_0
    const/4 v1, -0x1

    goto :goto_0

    :pswitch_1
    add-int/lit8 v1, v0, 0x1

    goto :goto_0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private getCurrentNetworkType()Ljava/lang/String;
    .locals 5

    const/4 v2, -0x2

    iget-object v3, p0, Lcom/tmobile/echolocate/DataMetrics;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v3, p0, Lcom/tmobile/echolocate/DataMetrics;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getDataNetworkType()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getCurrentNetworkType(): default on currNetwork="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tmobile/echolocate/DataMetrics;->logD(Ljava/lang/String;)V

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getCurrentNetworkType(): ret="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tmobile/echolocate/DataMetrics;->logD(Ljava/lang/String;)V

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    return-object v3

    :sswitch_0
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_1
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_2
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_3
    const/4 v2, 0x4

    goto :goto_0

    :cond_0
    const/4 v2, -0x1

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x2 -> :sswitch_2
        0x3 -> :sswitch_1
        0xd -> :sswitch_0
    .end sparse-switch
.end method

.method private static getCurrentTime()Ljava/lang/String;
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getMccMnc()Ljava/lang/String;
    .locals 3

    iget-object v1, p0, Lcom/tmobile/echolocate/DataMetrics;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getMccMnc(): ret="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tmobile/echolocate/DataMetrics;->logD(Ljava/lang/String;)V

    return-object v0
.end method

.method private getNetworkModeSetting()Ljava/lang/String;
    .locals 4

    const/4 v1, -0x2

    iget-object v2, p0, Lcom/tmobile/echolocate/DataMetrics;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/telephony/TelephonyManager;->getPreferredNetworkType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getNetworkModeSetting(): default on networkModeSetting="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tmobile/echolocate/DataMetrics;->logD(Ljava/lang/String;)V

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getNetworkModeSetting(): ret= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tmobile/echolocate/DataMetrics;->logD(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :pswitch_1
    const/4 v1, 0x1

    goto :goto_0

    :pswitch_2
    const/4 v1, 0x2

    goto :goto_0

    :pswitch_3
    const/4 v1, 0x3

    goto :goto_0

    :pswitch_4
    const/4 v1, 0x4

    goto :goto_0

    :pswitch_5
    const/4 v1, 0x5

    goto :goto_0

    :pswitch_6
    const/4 v1, 0x6

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_5
        :pswitch_1
    .end packed-switch
.end method

.method private getResultsFromBytes(I[B)[Ljava/lang/String;
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    if-gtz p1, :cond_0

    const-string/jumbo v4, "getResultsFromBytes(): length is less than or equal to zero!"

    invoke-static {v4}, Lcom/tmobile/echolocate/DataMetrics;->logE(Ljava/lang/String;)V

    return-object v5

    :cond_0
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, p2, v4, p1}, Ljava/lang/String;-><init>([BII)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getResultsFromBytes(): resultString="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tmobile/echolocate/DataMetrics;->logD(Ljava/lang/String;)V

    const-string/jumbo v4, "\\|"

    const/4 v5, -0x1

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x0

    :goto_0
    array-length v4, v2

    if-ge v1, v4, :cond_3

    aget-object v0, v2, v1

    if-eqz v0, :cond_1

    const-string/jumbo v4, ""

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    const-string/jumbo v4, "-2"

    aput-object v4, v2, v1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-object v2
.end method

.method private getRttSetting()Ljava/lang/String;
    .locals 6

    const/4 v5, -0x1

    const/4 v0, -0x2

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v3

    const-string/jumbo v4, "CscFeature_VoiceCall_SupportRTT"

    invoke-virtual {v3, v4}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "getRttSetting(): feature not supported"

    invoke-static {v3}, Lcom/tmobile/echolocate/DataMetrics;->logD(Ljava/lang/String;)V

    const-string/jumbo v3, "-1"

    return-object v3

    :cond_0
    iget-object v3, p0, Lcom/tmobile/echolocate/DataMetrics;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "preferred_rtt_mode"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getRttSetting(): default on rttSetting="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tmobile/echolocate/DataMetrics;->logD(Ljava/lang/String;)V

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getRttSetting(): ret="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tmobile/echolocate/DataMetrics;->logD(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    return-object v3

    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_1
    iget-object v3, p0, Lcom/tmobile/echolocate/DataMetrics;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "preferred_rtt_automatic_mode"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x3

    goto :goto_0

    :cond_1
    const/4 v3, 0x1

    if-ne v1, v3, :cond_2

    const/4 v0, 0x4

    goto :goto_0

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getRttSetting(): default on rttAutomaticMode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tmobile/echolocate/DataMetrics;->logD(Ljava/lang/String;)V

    const/4 v0, -0x1

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x4 -> :sswitch_1
    .end sparse-switch
.end method

.method private getRttTranscriptSetting()Ljava/lang/String;
    .locals 3

    const/4 v0, -0x2

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string/jumbo v2, "CscFeature_VoiceCall_SupportRTT"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "getRttTranscriptSetting(): feature not supported"

    invoke-static {v1}, Lcom/tmobile/echolocate/DataMetrics;->logD(Ljava/lang/String;)V

    const-string/jumbo v1, "-1"

    return-object v1

    :cond_0
    const-string/jumbo v1, "getRttTranscriptSetting(): currently not supported"

    invoke-static {v1}, Lcom/tmobile/echolocate/DataMetrics;->logD(Ljava/lang/String;)V

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getVolteSetting()Ljava/lang/String;
    .locals 5

    const/4 v0, -0x2

    iget-object v2, p0, Lcom/tmobile/echolocate/DataMetrics;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "voicecall_type"

    const/4 v4, -0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getVolteSetting(): default on volteEnabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tmobile/echolocate/DataMetrics;->logD(Ljava/lang/String;)V

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getVolteSetting(): ret="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tmobile/echolocate/DataMetrics;->logD(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :pswitch_0
    const/4 v0, -0x1

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getWfcSetting()Ljava/lang/String;
    .locals 2

    const/4 v0, -0x2

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private isTmoSim()Z
    .locals 4

    iget-object v2, p0, Lcom/tmobile/echolocate/DataMetrics;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xe

    new-array v1, v2, [Ljava/lang/String;

    const-string/jumbo v2, "310160"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string/jumbo v2, "310200"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string/jumbo v2, "310210"

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const-string/jumbo v2, "310220"

    const/4 v3, 0x3

    aput-object v2, v1, v3

    const-string/jumbo v2, "310230"

    const/4 v3, 0x4

    aput-object v2, v1, v3

    const-string/jumbo v2, "310240"

    const/4 v3, 0x5

    aput-object v2, v1, v3

    const-string/jumbo v2, "310250"

    const/4 v3, 0x6

    aput-object v2, v1, v3

    const-string/jumbo v2, "310260"

    const/4 v3, 0x7

    aput-object v2, v1, v3

    const-string/jumbo v2, "310270"

    const/16 v3, 0x8

    aput-object v2, v1, v3

    const-string/jumbo v2, "310310"

    const/16 v3, 0x9

    aput-object v2, v1, v3

    const-string/jumbo v2, "310490"

    const/16 v3, 0xa

    aput-object v2, v1, v3

    const-string/jumbo v2, "310660"

    const/16 v3, 0xb

    aput-object v2, v1, v3

    const-string/jumbo v2, "310800"

    const/16 v3, 0xc

    aput-object v2, v1, v3

    const-string/jumbo v2, "00101"

    const/16 v3, 0xd

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method

.method private static logD(Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/tmobile/echolocate/DataMetrics;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tmobile/echolocate/DataMetrics;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private static logE(Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/tmobile/echolocate/DataMetrics;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tmobile/echolocate/DataMetrics;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private static logE(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    sget-boolean v0, Lcom/tmobile/echolocate/DataMetrics;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tmobile/echolocate/DataMetrics;->TAG:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method


# virtual methods
.method public getAPIversion()I
    .locals 4

    iget-object v1, p0, Lcom/tmobile/echolocate/DataMetrics;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "diagandroid.phone.receiveDetailedCallState"

    const-string/jumbo v3, "getAPIversion()"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/internal/telephony/DeviceReportingSecurityChecker;->isSysScopeOk()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/internal/telephony/DeviceReportingSecurityChecker;->isMyAccountSigPresent()Z

    move-result v0

    :goto_0
    iget-boolean v1, p0, Lcom/tmobile/echolocate/DataMetrics;->mShouldReport:Z

    if-eqz v1, :cond_0

    xor-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_2

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getAPIversion(): mShouldReport="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/tmobile/echolocate/DataMetrics;->mShouldReport:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", deviceReportingShouldReport="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tmobile/echolocate/DataMetrics;->logE(Ljava/lang/String;)V

    const/4 v1, -0x2

    return v1

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const-string/jumbo v1, "getAPIversion(): CURRENT_API_VERSION=1"

    invoke-static {v1}, Lcom/tmobile/echolocate/DataMetrics;->logD(Ljava/lang/String;)V

    const/4 v1, 0x1

    return v1
.end method

.method public getBearerConfiguration()Ljava/util/List;
    .locals 19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tmobile/echolocate/DataMetrics;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    const-string/jumbo v17, "diagandroid.phone.receiveDetailedCallState"

    const-string/jumbo v18, "getBearerConfiguration()"

    invoke-virtual/range {v16 .. v18}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/internal/telephony/DeviceReportingSecurityChecker;->isSysScopeOk()Z

    move-result v16

    if-eqz v16, :cond_1

    invoke-static {}, Lcom/android/internal/telephony/DeviceReportingSecurityChecker;->isMyAccountSigPresent()Z

    move-result v8

    :goto_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/tmobile/echolocate/DataMetrics;->mShouldReport:Z

    move/from16 v16, v0

    if-eqz v16, :cond_0

    xor-int/lit8 v16, v8, 0x1

    if-eqz v16, :cond_2

    :cond_0
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "getBearerConfiguration(): mShouldReport="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/tmobile/echolocate/DataMetrics;->mShouldReport:Z

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, ", deviceReportingShouldReport="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/tmobile/echolocate/DataMetrics;->logE(Ljava/lang/String;)V

    const/16 v16, 0x0

    return-object v16

    :cond_1
    const/4 v8, 0x0

    goto :goto_0

    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/tmobile/echolocate/DataMetrics;->getCurrentNetworkType()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v16, "1"

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_3

    const-string/jumbo v16, "getBearerConfiguration(): not in LTE"

    invoke-static/range {v16 .. v16}, Lcom/tmobile/echolocate/DataMetrics;->logD(Ljava/lang/String;)V

    const/16 v16, 0xb

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-static {}, Lcom/tmobile/echolocate/DataMetrics;->getCurrentTime()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    aput-object v17, v16, v18

    const/16 v17, 0x1

    aput-object v7, v16, v17

    const-string/jumbo v17, "-999"

    const/16 v18, 0x2

    aput-object v17, v16, v18

    const-string/jumbo v17, "-999"

    const/16 v18, 0x3

    aput-object v17, v16, v18

    const-string/jumbo v17, "-999"

    const/16 v18, 0x4

    aput-object v17, v16, v18

    const-string/jumbo v17, "-999"

    const/16 v18, 0x5

    aput-object v17, v16, v18

    const-string/jumbo v17, "-999"

    const/16 v18, 0x6

    aput-object v17, v16, v18

    const-string/jumbo v17, "-999"

    const/16 v18, 0x7

    aput-object v17, v16, v18

    const-string/jumbo v17, "-999"

    const/16 v18, 0x8

    aput-object v17, v16, v18

    const-string/jumbo v17, "-999"

    const/16 v18, 0x9

    aput-object v17, v16, v18

    const-string/jumbo v17, "-999"

    const/16 v18, 0xa

    aput-object v17, v16, v18

    invoke-static/range {v16 .. v16}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v16

    return-object v16

    :cond_3
    const-string/jumbo v9, "-2"

    const-string/jumbo v10, "-2"

    const-string/jumbo v2, "-2"

    const-string/jumbo v11, "-2"

    const-string/jumbo v3, "-2"

    const-string/jumbo v12, "-2"

    const-string/jumbo v4, "-2"

    const-string/jumbo v13, "-2"

    const-string/jumbo v5, "-2"

    const/16 v16, 0x200

    move/from16 v0, v16

    new-array v6, v0, [B

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tmobile/echolocate/DataMetrics;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    move-object/from16 v16, v0

    const/16 v17, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/tmobile/echolocate/DataMetrics;->getCommandsToCp(I)[B

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v6}, Landroid/telephony/TelephonyManager;->invokeOemRilRequestRaw([B[B)I

    move-result v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v6}, Lcom/tmobile/echolocate/DataMetrics;->getResultsFromBytes(I[B)[Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_4

    array-length v0, v15

    move/from16 v16, v0

    const/16 v17, 0x9

    move/from16 v0, v16

    move/from16 v1, v17

    if-lt v0, v1, :cond_4

    const/16 v16, 0x0

    aget-object v9, v15, v16

    const/16 v16, 0x1

    aget-object v10, v15, v16

    const/16 v16, 0x2

    aget-object v2, v15, v16

    const/16 v16, 0x3

    aget-object v11, v15, v16

    const/16 v16, 0x4

    aget-object v3, v15, v16

    const/16 v16, 0x5

    aget-object v12, v15, v16

    const/16 v16, 0x6

    aget-object v4, v15, v16

    const/16 v16, 0x7

    aget-object v13, v15, v16

    const/16 v16, 0x8

    aget-object v5, v15, v16

    :cond_4
    sget-boolean v16, Lcom/tmobile/echolocate/DataMetrics;->DBG:Z

    if-eqz v16, :cond_5

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "getUplinkRFConfiguration(): Time="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-static {}, Lcom/tmobile/echolocate/DataMetrics;->getCurrentTime()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, ", Network="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, ", Number of active bearers="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, ", Bearer 1 Type of QCI="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, ", Bearer 1 APN name="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, ", Bearer 2 Type of QCI="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, ", Bearer 2 APN name="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, ", Bearer 3 Type of QCI="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, ", Bearer 3 APN name="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, ", Bearer 4 Type of QCI="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, ", Bearer 4 APN name="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/tmobile/echolocate/DataMetrics;->logD(Ljava/lang/String;)V

    :cond_5
    const/16 v16, 0xb

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-static {}, Lcom/tmobile/echolocate/DataMetrics;->getCurrentTime()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    aput-object v17, v16, v18

    const/16 v17, 0x1

    aput-object v7, v16, v17

    const/16 v17, 0x2

    aput-object v9, v16, v17

    const/16 v17, 0x3

    aput-object v10, v16, v17

    const/16 v17, 0x4

    aput-object v2, v16, v17

    const/16 v17, 0x5

    aput-object v11, v16, v17

    const/16 v17, 0x6

    aput-object v3, v16, v17

    const/16 v17, 0x7

    aput-object v12, v16, v17

    const/16 v17, 0x8

    aput-object v4, v16, v17

    const/16 v17, 0x9

    aput-object v13, v16, v17

    const/16 v17, 0xa

    aput-object v5, v16, v17

    invoke-static/range {v16 .. v16}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v16

    return-object v16
.end method

.method public getCommonRFConfiguration()Ljava/util/List;
    .locals 14

    iget-object v11, p0, Lcom/tmobile/echolocate/DataMetrics;->mContext:Landroid/content/Context;

    const-string/jumbo v12, "diagandroid.phone.receiveDetailedCallState"

    const-string/jumbo v13, "getCommonRFConfiguration()"

    invoke-virtual {v11, v12, v13}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/internal/telephony/DeviceReportingSecurityChecker;->isSysScopeOk()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-static {}, Lcom/android/internal/telephony/DeviceReportingSecurityChecker;->isMyAccountSigPresent()Z

    move-result v4

    :goto_0
    iget-boolean v11, p0, Lcom/tmobile/echolocate/DataMetrics;->mShouldReport:Z

    if-eqz v11, :cond_0

    xor-int/lit8 v11, v4, 0x1

    if-eqz v11, :cond_2

    :cond_0
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "getCommonRFConfiguration(): mShouldReport="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-boolean v12, p0, Lcom/tmobile/echolocate/DataMetrics;->mShouldReport:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ", deviceReportingShouldReport="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/tmobile/echolocate/DataMetrics;->logE(Ljava/lang/String;)V

    const/4 v11, 0x0

    return-object v11

    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/tmobile/echolocate/DataMetrics;->getCurrentNetworkType()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v11, "1"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3

    const-string/jumbo v11, "getCommonRFConfiguration(): not in LTE"

    invoke-static {v11}, Lcom/tmobile/echolocate/DataMetrics;->logD(Ljava/lang/String;)V

    const/16 v11, 0x8

    new-array v11, v11, [Ljava/lang/String;

    invoke-static {}, Lcom/tmobile/echolocate/DataMetrics;->getCurrentTime()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    aput-object v12, v11, v13

    const/4 v12, 0x1

    aput-object v3, v11, v12

    const-string/jumbo v12, "-999"

    const/4 v13, 0x2

    aput-object v12, v11, v13

    const-string/jumbo v12, "-999"

    const/4 v13, 0x3

    aput-object v12, v11, v13

    const-string/jumbo v12, "-999"

    const/4 v13, 0x4

    aput-object v12, v11, v13

    const-string/jumbo v12, "-999"

    const/4 v13, 0x5

    aput-object v12, v11, v13

    const-string/jumbo v12, "-999"

    const/4 v13, 0x6

    aput-object v12, v11, v13

    const-string/jumbo v12, "-999"

    const/4 v13, 0x7

    aput-object v12, v11, v13

    invoke-static {v11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    return-object v11

    :cond_3
    const-string/jumbo v10, "-2"

    const-string/jumbo v0, "-2"

    const-string/jumbo v1, "-2"

    const-string/jumbo v9, "-2"

    const-string/jumbo v6, "-2"

    const-string/jumbo v5, "-2"

    const/16 v11, 0x200

    new-array v2, v11, [B

    iget-object v11, p0, Lcom/tmobile/echolocate/DataMetrics;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const/4 v12, 0x3

    invoke-direct {p0, v12}, Lcom/tmobile/echolocate/DataMetrics;->getCommandsToCp(I)[B

    move-result-object v12

    invoke-virtual {v11, v12, v2}, Landroid/telephony/TelephonyManager;->invokeOemRilRequestRaw([B[B)I

    move-result v7

    invoke-direct {p0, v7, v2}, Lcom/tmobile/echolocate/DataMetrics;->getResultsFromBytes(I[B)[Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_4

    array-length v11, v8

    const/4 v12, 0x6

    if-lt v11, v12, :cond_4

    const/4 v11, 0x0

    aget-object v10, v8, v11

    const/4 v11, 0x1

    aget-object v0, v8, v11

    const/4 v11, 0x2

    aget-object v1, v8, v11

    const/4 v11, 0x3

    aget-object v9, v8, v11

    const/4 v11, 0x4

    aget-object v6, v8, v11

    const/4 v11, 0x5

    aget-object v5, v8, v11

    :cond_4
    sget-boolean v11, Lcom/tmobile/echolocate/DataMetrics;->DBG:Z

    if-eqz v11, :cond_5

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "getCommonRFConfiguration(): Time="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {}, Lcom/tmobile/echolocate/DataMetrics;->getCurrentTime()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ", Network="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ", Transmission Mode="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ", Antenna RX="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ", Antenna TX="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ", Receiver Diversity="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ", RRC State="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ", LTE-U/LAA="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/tmobile/echolocate/DataMetrics;->logD(Ljava/lang/String;)V

    :cond_5
    const/16 v11, 0x8

    new-array v11, v11, [Ljava/lang/String;

    invoke-static {}, Lcom/tmobile/echolocate/DataMetrics;->getCurrentTime()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    aput-object v12, v11, v13

    const/4 v12, 0x1

    aput-object v3, v11, v12

    const/4 v12, 0x2

    aput-object v10, v11, v12

    const/4 v12, 0x3

    aput-object v0, v11, v12

    const/4 v12, 0x4

    aput-object v1, v11, v12

    const/4 v12, 0x5

    aput-object v6, v11, v12

    const/4 v12, 0x6

    aput-object v9, v11, v12

    const/4 v12, 0x7

    aput-object v5, v11, v12

    invoke-static {v11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    return-object v11
.end method

.method public getDataSetting()Ljava/util/List;
    .locals 12

    iget-object v9, p0, Lcom/tmobile/echolocate/DataMetrics;->mContext:Landroid/content/Context;

    const-string/jumbo v10, "diagandroid.phone.receiveDetailedCallState"

    const-string/jumbo v11, "getDataSetting()"

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/internal/telephony/DeviceReportingSecurityChecker;->isSysScopeOk()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-static {}, Lcom/android/internal/telephony/DeviceReportingSecurityChecker;->isMyAccountSigPresent()Z

    move-result v1

    :goto_0
    iget-boolean v9, p0, Lcom/tmobile/echolocate/DataMetrics;->mShouldReport:Z

    if-eqz v9, :cond_0

    xor-int/lit8 v9, v1, 0x1

    if-eqz v9, :cond_2

    :cond_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "getDataSetting(): mShouldReport="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, p0, Lcom/tmobile/echolocate/DataMetrics;->mShouldReport:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", deviceReportingShouldReport="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/tmobile/echolocate/DataMetrics;->logE(Ljava/lang/String;)V

    const/4 v9, 0x0

    return-object v9

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    const-string/jumbo v9, "mobile_data"

    invoke-direct {p0, v9}, Lcom/tmobile/echolocate/DataMetrics;->getCommonDataSettings(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lcom/tmobile/echolocate/DataMetrics;->getNetworkModeSetting()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v9, "wifi_on"

    invoke-direct {p0, v9}, Lcom/tmobile/echolocate/DataMetrics;->getCommonDataSettings(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0}, Lcom/tmobile/echolocate/DataMetrics;->getWfcSetting()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "data_roaming"

    invoke-direct {p0, v9}, Lcom/tmobile/echolocate/DataMetrics;->getCommonDataSettings(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/tmobile/echolocate/DataMetrics;->getVolteSetting()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0}, Lcom/tmobile/echolocate/DataMetrics;->getRttSetting()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0}, Lcom/tmobile/echolocate/DataMetrics;->getRttTranscriptSetting()Ljava/lang/String;

    move-result-object v5

    sget-boolean v9, Lcom/tmobile/echolocate/DataMetrics;->DBG:Z

    if-eqz v9, :cond_3

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "getDataSetting(): Time="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Lcom/tmobile/echolocate/DataMetrics;->getCurrentTime()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", MobileData="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", NetworkMode="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", WiFi="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", WiFiCalling="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", DataRoaming="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", VoLte="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", RttSetting="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", RttTranscript="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/tmobile/echolocate/DataMetrics;->logD(Ljava/lang/String;)V

    :cond_3
    const/16 v9, 0x9

    new-array v9, v9, [Ljava/lang/String;

    invoke-static {}, Lcom/tmobile/echolocate/DataMetrics;->getCurrentTime()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    const/4 v10, 0x1

    aput-object v2, v9, v10

    const/4 v10, 0x2

    aput-object v3, v9, v10

    const/4 v10, 0x3

    aput-object v7, v9, v10

    const/4 v10, 0x4

    aput-object v8, v9, v10

    const/4 v10, 0x5

    aput-object v0, v9, v10

    const/4 v10, 0x6

    aput-object v6, v9, v10

    const/4 v10, 0x7

    aput-object v4, v9, v10

    const/16 v10, 0x8

    aput-object v5, v9, v10

    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    return-object v9
.end method

.method public getDownlinkCarrierInfo()Ljava/util/List;
    .locals 20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tmobile/echolocate/DataMetrics;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const-string/jumbo v18, "diagandroid.phone.receiveDetailedCallState"

    const-string/jumbo v19, "getDownlinkCarrierInfo()"

    invoke-virtual/range {v17 .. v19}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/internal/telephony/DeviceReportingSecurityChecker;->isSysScopeOk()Z

    move-result v17

    if-eqz v17, :cond_1

    invoke-static {}, Lcom/android/internal/telephony/DeviceReportingSecurityChecker;->isMyAccountSigPresent()Z

    move-result v4

    :goto_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/tmobile/echolocate/DataMetrics;->mShouldReport:Z

    move/from16 v17, v0

    if-eqz v17, :cond_0

    xor-int/lit8 v17, v4, 0x1

    if-eqz v17, :cond_2

    :cond_0
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "getDownlinkCarrierInfo(): mShouldReport="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/tmobile/echolocate/DataMetrics;->mShouldReport:Z

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, ", deviceReportingShouldReport="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/tmobile/echolocate/DataMetrics;->logE(Ljava/lang/String;)V

    const/16 v17, 0x0

    return-object v17

    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/tmobile/echolocate/DataMetrics;->getCurrentNetworkType()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v17, "1"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_3

    const-string/jumbo v17, "getDownlinkCarrierInfo(): not in LTE"

    invoke-static/range {v17 .. v17}, Lcom/tmobile/echolocate/DataMetrics;->logD(Ljava/lang/String;)V

    const/16 v17, 0xc

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-static {}, Lcom/tmobile/echolocate/DataMetrics;->getCurrentTime()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    aput-object v18, v17, v19

    const/16 v18, 0x1

    aput-object v3, v17, v18

    const-string/jumbo v18, "-999"

    const/16 v19, 0x2

    aput-object v18, v17, v19

    const-string/jumbo v18, "-999"

    const/16 v19, 0x3

    aput-object v18, v17, v19

    const-string/jumbo v18, "-999"

    const/16 v19, 0x4

    aput-object v18, v17, v19

    const-string/jumbo v18, "-999"

    const/16 v19, 0x5

    aput-object v18, v17, v19

    const-string/jumbo v18, "-999"

    const/16 v19, 0x6

    aput-object v18, v17, v19

    const-string/jumbo v18, "-999"

    const/16 v19, 0x7

    aput-object v18, v17, v19

    const-string/jumbo v18, "-999"

    const/16 v19, 0x8

    aput-object v18, v17, v19

    const-string/jumbo v18, "-999"

    const/16 v19, 0x9

    aput-object v18, v17, v19

    const-string/jumbo v18, "-999"

    const/16 v19, 0xa

    aput-object v18, v17, v19

    const-string/jumbo v18, "-999"

    const/16 v19, 0xb

    aput-object v18, v17, v19

    invoke-static/range {v17 .. v17}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v17

    return-object v17

    :cond_3
    const-string/jumbo v5, "-2"

    const-string/jumbo v8, "-2"

    const-string/jumbo v7, "-2"

    const-string/jumbo v6, "-2"

    const-string/jumbo v13, "-2"

    const-string/jumbo v12, "-2"

    const-string/jumbo v11, "-2"

    const-string/jumbo v16, "-2"

    const-string/jumbo v15, "-2"

    const-string/jumbo v14, "-2"

    const/16 v17, 0x200

    move/from16 v0, v17

    new-array v2, v0, [B

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tmobile/echolocate/DataMetrics;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    move-object/from16 v17, v0

    const/16 v18, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/tmobile/echolocate/DataMetrics;->getCommandsToCp(I)[B

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->invokeOemRilRequestRaw([B[B)I

    move-result v9

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v2}, Lcom/tmobile/echolocate/DataMetrics;->getResultsFromBytes(I[B)[Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_4

    array-length v0, v10

    move/from16 v17, v0

    const/16 v18, 0xa

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_4

    const/16 v17, 0x0

    aget-object v5, v10, v17

    const/16 v17, 0x1

    aget-object v8, v10, v17

    const/16 v17, 0x2

    aget-object v7, v10, v17

    const/16 v17, 0x3

    aget-object v6, v10, v17

    const-string/jumbo v17, "1"

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_6

    const-string/jumbo v14, "-1"

    move-object v15, v14

    move-object/from16 v16, v14

    move-object v11, v14

    move-object v12, v14

    move-object v13, v14

    :cond_4
    :goto_1
    sget-boolean v17, Lcom/tmobile/echolocate/DataMetrics;->DBG:Z

    if-eqz v17, :cond_5

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "getDownlinkCarrierInfo(): Time="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-static {}, Lcom/tmobile/echolocate/DataMetrics;->getCurrentTime()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, ", Network="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, ", Num Channels="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, ", Primary EARFCN="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, ", Primary Bandwidth="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, ", Primary Band Number="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, ", Second EARFCN="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, ", Second Bandwidth="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, ", Second Band Number="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, ", Third EARFCN="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, ", Third Bandwidth="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, ", Third Band Number="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/tmobile/echolocate/DataMetrics;->logD(Ljava/lang/String;)V

    :cond_5
    const/16 v17, 0xc

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-static {}, Lcom/tmobile/echolocate/DataMetrics;->getCurrentTime()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    aput-object v18, v17, v19

    const/16 v18, 0x1

    aput-object v3, v17, v18

    const/16 v18, 0x2

    aput-object v5, v17, v18

    const/16 v18, 0x3

    aput-object v8, v17, v18

    const/16 v18, 0x4

    aput-object v7, v17, v18

    const/16 v18, 0x5

    aput-object v6, v17, v18

    const/16 v18, 0x6

    aput-object v13, v17, v18

    const/16 v18, 0x7

    aput-object v12, v17, v18

    const/16 v18, 0x8

    aput-object v11, v17, v18

    const/16 v18, 0x9

    aput-object v16, v17, v18

    const/16 v18, 0xa

    aput-object v15, v17, v18

    const/16 v18, 0xb

    aput-object v14, v17, v18

    invoke-static/range {v17 .. v17}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v17

    return-object v17

    :cond_6
    const-string/jumbo v17, "2"

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_7

    const/16 v17, 0x4

    aget-object v13, v10, v17

    const/16 v17, 0x5

    aget-object v12, v10, v17

    const/16 v17, 0x6

    aget-object v11, v10, v17

    const-string/jumbo v14, "-1"

    move-object v15, v14

    move-object/from16 v16, v14

    goto/16 :goto_1

    :cond_7
    const-string/jumbo v17, "3"

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_4

    const/16 v17, 0x4

    aget-object v13, v10, v17

    const/16 v17, 0x5

    aget-object v12, v10, v17

    const/16 v17, 0x6

    aget-object v11, v10, v17

    const/16 v17, 0x7

    aget-object v16, v10, v17

    const/16 v17, 0x8

    aget-object v15, v10, v17

    const/16 v17, 0x9

    aget-object v14, v10, v17

    goto/16 :goto_1
.end method

.method public getDownlinkRFConfiguration()Ljava/util/List;
    .locals 14

    iget-object v11, p0, Lcom/tmobile/echolocate/DataMetrics;->mContext:Landroid/content/Context;

    const-string/jumbo v12, "diagandroid.phone.receiveDetailedCallState"

    const-string/jumbo v13, "getDownlinkRFConfiguration()"

    invoke-virtual {v11, v12, v13}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/internal/telephony/DeviceReportingSecurityChecker;->isSysScopeOk()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-static {}, Lcom/android/internal/telephony/DeviceReportingSecurityChecker;->isMyAccountSigPresent()Z

    move-result v2

    :goto_0
    iget-boolean v11, p0, Lcom/tmobile/echolocate/DataMetrics;->mShouldReport:Z

    if-eqz v11, :cond_0

    xor-int/lit8 v11, v2, 0x1

    if-eqz v11, :cond_2

    :cond_0
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "getDownlinkRFConfiguration(): mShouldReport="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-boolean v12, p0, Lcom/tmobile/echolocate/DataMetrics;->mShouldReport:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ", deviceReportingShouldReport="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/tmobile/echolocate/DataMetrics;->logE(Ljava/lang/String;)V

    const/4 v11, 0x0

    return-object v11

    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/tmobile/echolocate/DataMetrics;->getCurrentNetworkType()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v11, "1"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3

    const-string/jumbo v11, "getDownlinkRFConfiguration(): not in LTE"

    invoke-static {v11}, Lcom/tmobile/echolocate/DataMetrics;->logD(Ljava/lang/String;)V

    const/16 v11, 0x8

    new-array v11, v11, [Ljava/lang/String;

    invoke-static {}, Lcom/tmobile/echolocate/DataMetrics;->getCurrentTime()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    aput-object v12, v11, v13

    const/4 v12, 0x1

    aput-object v1, v11, v12

    const-string/jumbo v12, "-999"

    const/4 v13, 0x2

    aput-object v12, v11, v13

    const-string/jumbo v12, "-999"

    const/4 v13, 0x3

    aput-object v12, v11, v13

    const-string/jumbo v12, "-999"

    const/4 v13, 0x4

    aput-object v12, v11, v13

    const-string/jumbo v12, "-999"

    const/4 v13, 0x5

    aput-object v12, v11, v13

    const-string/jumbo v12, "-999"

    const/4 v13, 0x6

    aput-object v12, v11, v13

    const-string/jumbo v12, "-999"

    const/4 v13, 0x7

    aput-object v12, v11, v13

    invoke-static {v11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    return-object v11

    :cond_3
    const-string/jumbo v3, "-2"

    const-string/jumbo v4, "-2"

    const-string/jumbo v7, "-2"

    const-string/jumbo v8, "-2"

    const-string/jumbo v9, "-2"

    const-string/jumbo v10, "-2"

    const/16 v11, 0x200

    new-array v0, v11, [B

    iget-object v11, p0, Lcom/tmobile/echolocate/DataMetrics;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const/4 v12, 0x6

    invoke-direct {p0, v12}, Lcom/tmobile/echolocate/DataMetrics;->getCommandsToCp(I)[B

    move-result-object v12

    invoke-virtual {v11, v12, v0}, Landroid/telephony/TelephonyManager;->invokeOemRilRequestRaw([B[B)I

    move-result v5

    invoke-direct {p0, v5, v0}, Lcom/tmobile/echolocate/DataMetrics;->getResultsFromBytes(I[B)[Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_4

    array-length v11, v6

    const/4 v12, 0x6

    if-lt v11, v12, :cond_4

    const/4 v11, 0x0

    aget-object v3, v6, v11

    const/4 v11, 0x1

    aget-object v4, v6, v11

    const/4 v11, 0x2

    aget-object v7, v6, v11

    const/4 v11, 0x3

    aget-object v8, v6, v11

    const/4 v11, 0x4

    aget-object v9, v6, v11

    const/4 v11, 0x5

    aget-object v10, v6, v11

    :cond_4
    sget-boolean v11, Lcom/tmobile/echolocate/DataMetrics;->DBG:Z

    if-eqz v11, :cond_5

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "getDownlinkRFConfiguration(): Time="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {}, Lcom/tmobile/echolocate/DataMetrics;->getCurrentTime()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ", Network="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ", Primary Modulation Scheme="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ", Primary Num Layers="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ", Second Modulation Scheme="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ", Second Num Layers="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ", Third Modulation Scheme="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ", Third Num Layers="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/tmobile/echolocate/DataMetrics;->logD(Ljava/lang/String;)V

    :cond_5
    const/16 v11, 0x8

    new-array v11, v11, [Ljava/lang/String;

    invoke-static {}, Lcom/tmobile/echolocate/DataMetrics;->getCurrentTime()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    aput-object v12, v11, v13

    const/4 v12, 0x1

    aput-object v1, v11, v12

    const/4 v12, 0x2

    aput-object v3, v11, v12

    const/4 v12, 0x3

    aput-object v4, v11, v12

    const/4 v12, 0x4

    aput-object v7, v11, v12

    const/4 v12, 0x5

    aput-object v8, v11, v12

    const/4 v12, 0x6

    aput-object v9, v11, v12

    const/4 v12, 0x7

    aput-object v10, v11, v12

    invoke-static {v11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    return-object v11
.end method

.method public getNetworkIdentity()Ljava/util/List;
    .locals 25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tmobile/echolocate/DataMetrics;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    const-string/jumbo v23, "diagandroid.phone.receiveDetailedCallState"

    const-string/jumbo v24, "getNetworkIdentity()"

    invoke-virtual/range {v22 .. v24}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/internal/telephony/DeviceReportingSecurityChecker;->isSysScopeOk()Z

    move-result v22

    if-eqz v22, :cond_1

    invoke-static {}, Lcom/android/internal/telephony/DeviceReportingSecurityChecker;->isMyAccountSigPresent()Z

    move-result v10

    :goto_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/tmobile/echolocate/DataMetrics;->mShouldReport:Z

    move/from16 v22, v0

    if-eqz v22, :cond_0

    xor-int/lit8 v22, v10, 0x1

    if-eqz v22, :cond_2

    :cond_0
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "getNetworkIdentity(): mShouldReport="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/tmobile/echolocate/DataMetrics;->mShouldReport:Z

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, ", deviceReportingShouldReport="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/tmobile/echolocate/DataMetrics;->logE(Ljava/lang/String;)V

    const/16 v22, 0x0

    return-object v22

    :cond_1
    const/4 v10, 0x0

    goto :goto_0

    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/tmobile/echolocate/DataMetrics;->getCurrentNetworkType()Ljava/lang/String;

    move-result-object v9

    invoke-direct/range {p0 .. p0}, Lcom/tmobile/echolocate/DataMetrics;->getMccMnc()Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v13, "-2"

    const-string/jumbo v15, "-2"

    if-eqz v14, :cond_3

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v22

    const/16 v23, 0x3

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_3

    const/16 v22, 0x0

    const/16 v23, 0x3

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v14, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v22

    const/16 v23, 0x3

    move/from16 v0, v23

    move/from16 v1, v22

    invoke-virtual {v14, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    :cond_3
    const-string/jumbo v21, "-2"

    const-string/jumbo v12, "-2"

    const-string/jumbo v8, "-2"

    const-string/jumbo v22, "0"

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_8

    const-string/jumbo v22, "-2"

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    xor-int/lit8 v22, v22, 0x1

    if-eqz v22, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tmobile/echolocate/DataMetrics;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/telephony/TelephonyManager;->getAllCellInfo()Ljava/util/List;

    move-result-object v11

    if-eqz v11, :cond_9

    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/CellInfo;

    invoke-virtual {v6}, Landroid/telephony/CellInfo;->isRegistered()Z

    move-result v22

    if-eqz v22, :cond_7

    instance-of v0, v6, Landroid/telephony/CellInfoGsm;

    move/from16 v22, v0

    if-eqz v22, :cond_4

    check-cast v6, Landroid/telephony/CellInfoGsm;

    invoke-virtual {v6}, Landroid/telephony/CellInfoGsm;->getCellIdentity()Landroid/telephony/CellIdentityGsm;

    move-result-object v3

    const-string/jumbo v21, "-1"

    invoke-virtual {v3}, Landroid/telephony/CellIdentityGsm;->getLac()I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3}, Landroid/telephony/CellIdentityGsm;->getCid()I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    :cond_4
    instance-of v0, v6, Landroid/telephony/CellInfoLte;

    move/from16 v22, v0

    if-eqz v22, :cond_5

    check-cast v6, Landroid/telephony/CellInfoLte;

    invoke-virtual {v6}, Landroid/telephony/CellInfoLte;->getCellIdentity()Landroid/telephony/CellIdentityLte;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/CellIdentityLte;->getTac()I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v21

    const-string/jumbo v12, "-1"

    invoke-virtual {v4}, Landroid/telephony/CellIdentityLte;->getCi()I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    :cond_5
    instance-of v0, v6, Landroid/telephony/CellInfoWcdma;

    move/from16 v22, v0

    if-eqz v22, :cond_6

    check-cast v6, Landroid/telephony/CellInfoWcdma;

    invoke-virtual {v6}, Landroid/telephony/CellInfoWcdma;->getCellIdentity()Landroid/telephony/CellIdentityWcdma;

    move-result-object v5

    const-string/jumbo v21, "-1"

    invoke-virtual {v5}, Landroid/telephony/CellIdentityWcdma;->getLac()I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5}, Landroid/telephony/CellIdentityWcdma;->getCid()I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    :cond_6
    const-string/jumbo v22, "getNetworkIdentity(): CellInfo is not one of GSM/LTE/WCDMA"

    invoke-static/range {v22 .. v22}, Lcom/tmobile/echolocate/DataMetrics;->logD(Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    const-string/jumbo v22, "getNetworkIdentity(): CellInfo.isRegistered()=false"

    invoke-static/range {v22 .. v22}, Lcom/tmobile/echolocate/DataMetrics;->logD(Ljava/lang/String;)V

    goto :goto_1

    :cond_8
    const-string/jumbo v22, "getNetworkIdentity(): current network is not available"

    invoke-static/range {v22 .. v22}, Lcom/tmobile/echolocate/DataMetrics;->logD(Ljava/lang/String;)V

    :cond_9
    const-string/jumbo v16, "-2"

    const-string/jumbo v17, "-2"

    const-string/jumbo v18, "-2"

    const/16 v22, 0x200

    move/from16 v0, v22

    new-array v2, v0, [B

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tmobile/echolocate/DataMetrics;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/tmobile/echolocate/DataMetrics;->getCommandsToCp(I)[B

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->invokeOemRilRequestRaw([B[B)I

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1, v2}, Lcom/tmobile/echolocate/DataMetrics;->getResultsFromBytes(I[B)[Ljava/lang/String;

    move-result-object v20

    if-eqz v20, :cond_a

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v22, v0

    const/16 v23, 0x3

    move/from16 v0, v22

    move/from16 v1, v23

    if-lt v0, v1, :cond_a

    const/16 v22, 0x0

    aget-object v16, v20, v22

    const/16 v22, 0x1

    aget-object v17, v20, v22

    const/16 v22, 0x2

    aget-object v18, v20, v22

    :cond_a
    sget-boolean v22, Lcom/tmobile/echolocate/DataMetrics;->DBG:Z

    if-eqz v22, :cond_b

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "getNetworkIdentity(): Time="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-static {}, Lcom/tmobile/echolocate/DataMetrics;->getCurrentTime()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, ", Network="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, ", MCC="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, ", MNC="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, ", TAC="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, ", LAC for PCell="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, ", CID for PCell="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, ", PCI for PCell="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, ", PCI for SCell="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, ", CID for SCell2="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, "NOT SUPPORTED"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, ", PCI for SCell2="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/tmobile/echolocate/DataMetrics;->logD(Ljava/lang/String;)V

    :cond_b
    const/16 v22, 0xb

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-static {}, Lcom/tmobile/echolocate/DataMetrics;->getCurrentTime()Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x0

    aput-object v23, v22, v24

    const/16 v23, 0x1

    aput-object v9, v22, v23

    const/16 v23, 0x2

    aput-object v13, v22, v23

    const/16 v23, 0x3

    aput-object v15, v22, v23

    const/16 v23, 0x4

    aput-object v21, v22, v23

    const/16 v23, 0x5

    aput-object v12, v22, v23

    const/16 v23, 0x6

    aput-object v8, v22, v23

    const/16 v23, 0x7

    aput-object v16, v22, v23

    const/16 v23, 0x8

    aput-object v17, v22, v23

    const-string/jumbo v23, "-2"

    const/16 v24, 0x9

    aput-object v23, v22, v24

    const/16 v23, 0xa

    aput-object v18, v22, v23

    invoke-static/range {v22 .. v22}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v22

    return-object v22
.end method

.method public getSignalCondition()Ljava/util/List;
    .locals 23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tmobile/echolocate/DataMetrics;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const-string/jumbo v21, "diagandroid.phone.receiveDetailedCallState"

    const-string/jumbo v22, "getSignalCondition()"

    invoke-virtual/range {v20 .. v22}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/internal/telephony/DeviceReportingSecurityChecker;->isSysScopeOk()Z

    move-result v20

    if-eqz v20, :cond_1

    invoke-static {}, Lcom/android/internal/telephony/DeviceReportingSecurityChecker;->isMyAccountSigPresent()Z

    move-result v4

    :goto_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/tmobile/echolocate/DataMetrics;->mShouldReport:Z

    move/from16 v20, v0

    if-eqz v20, :cond_0

    xor-int/lit8 v20, v4, 0x1

    if-eqz v20, :cond_2

    :cond_0
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "getSignalCondition(): mShouldReport="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/tmobile/echolocate/DataMetrics;->mShouldReport:Z

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, ", deviceReportingShouldReport="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/tmobile/echolocate/DataMetrics;->logE(Ljava/lang/String;)V

    const/16 v20, 0x0

    return-object v20

    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/tmobile/echolocate/DataMetrics;->getCurrentNetworkType()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v20, "1"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_3

    const-string/jumbo v20, "getSignalCondition(): not in LTE"

    invoke-static/range {v20 .. v20}, Lcom/tmobile/echolocate/DataMetrics;->logD(Ljava/lang/String;)V

    const/16 v20, 0x10

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-static {}, Lcom/tmobile/echolocate/DataMetrics;->getCurrentTime()Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x0

    aput-object v21, v20, v22

    const/16 v21, 0x1

    aput-object v3, v20, v21

    const-string/jumbo v21, "-999"

    const/16 v22, 0x2

    aput-object v21, v20, v22

    const-string/jumbo v21, "-999"

    const/16 v22, 0x3

    aput-object v21, v20, v22

    const-string/jumbo v21, "-999"

    const/16 v22, 0x4

    aput-object v21, v20, v22

    const-string/jumbo v21, "-999"

    const/16 v22, 0x5

    aput-object v21, v20, v22

    const-string/jumbo v21, "-999"

    const/16 v22, 0x6

    aput-object v21, v20, v22

    const-string/jumbo v21, "-999"

    const/16 v22, 0x7

    aput-object v21, v20, v22

    const-string/jumbo v21, "-999"

    const/16 v22, 0x8

    aput-object v21, v20, v22

    const-string/jumbo v21, "-999"

    const/16 v22, 0x9

    aput-object v21, v20, v22

    const-string/jumbo v21, "-999"

    const/16 v22, 0xa

    aput-object v21, v20, v22

    const-string/jumbo v21, "-999"

    const/16 v22, 0xb

    aput-object v21, v20, v22

    const-string/jumbo v21, "-999"

    const/16 v22, 0xc

    aput-object v21, v20, v22

    const-string/jumbo v21, "-999"

    const/16 v22, 0xd

    aput-object v21, v20, v22

    const-string/jumbo v21, "-999"

    const/16 v22, 0xe

    aput-object v21, v20, v22

    const-string/jumbo v21, "-999"

    const/16 v22, 0xf

    aput-object v21, v20, v22

    invoke-static/range {v20 .. v20}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v20

    return-object v20

    :cond_3
    const-string/jumbo v8, "-150"

    const-string/jumbo v11, "-50"

    const-string/jumbo v17, "-50"

    const-string/jumbo v14, "-150"

    const-string/jumbo v9, "-150"

    const-string/jumbo v12, "-50"

    const-string/jumbo v18, "-50"

    const-string/jumbo v15, "-150"

    const-string/jumbo v10, "-150"

    const-string/jumbo v13, "-50"

    const-string/jumbo v19, "-50"

    const-string/jumbo v16, "-150"

    const-string/jumbo v5, "-150"

    const/16 v20, 0x200

    move/from16 v0, v20

    new-array v2, v0, [B

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tmobile/echolocate/DataMetrics;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    move-object/from16 v20, v0

    const/16 v21, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/tmobile/echolocate/DataMetrics;->getCommandsToCp(I)[B

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->invokeOemRilRequestRaw([B[B)I

    move-result v6

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v2}, Lcom/tmobile/echolocate/DataMetrics;->getResultsFromBytes(I[B)[Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_4

    array-length v0, v7

    move/from16 v20, v0

    const/16 v21, 0x19

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_4

    const/16 v20, 0x0

    aget-object v8, v7, v20

    const/16 v20, 0x1

    aget-object v11, v7, v20

    const/16 v20, 0x2

    aget-object v17, v7, v20

    const/16 v20, 0x3

    aget-object v14, v7, v20

    const/16 v20, 0x4

    aget-object v9, v7, v20

    const/16 v20, 0x5

    aget-object v12, v7, v20

    const/16 v20, 0x6

    aget-object v18, v7, v20

    const/16 v20, 0x7

    aget-object v15, v7, v20

    const/16 v20, 0x8

    aget-object v10, v7, v20

    const/16 v20, 0x9

    aget-object v13, v7, v20

    const/16 v20, 0xa

    aget-object v19, v7, v20

    const/16 v20, 0xb

    aget-object v16, v7, v20

    const/16 v20, 0x18

    aget-object v5, v7, v20

    :cond_4
    sget-boolean v20, Lcom/tmobile/echolocate/DataMetrics;->DBG:Z

    if-eqz v20, :cond_5

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "getSignalStrength(): Time="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-static {}, Lcom/tmobile/echolocate/DataMetrics;->getCurrentTime()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, ", Network="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, ", RSRP="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, ", RSRQ="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, ", SINR="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, ", RSSI="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, ", RACH Power="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, ", LTE UL headroom="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, "NOT SUPPORTED"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, ", RSRP of SCell="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, ", RSRQ of SCell="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, ", SINR of SCell="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, ", RSSI of SCell="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, ", RSRP of SCell2="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, ", RSRQ of SCell2="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, ", SINR of SCell2="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, ", RSSI of SCell2="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/tmobile/echolocate/DataMetrics;->logD(Ljava/lang/String;)V

    :cond_5
    const/16 v20, 0x10

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-static {}, Lcom/tmobile/echolocate/DataMetrics;->getCurrentTime()Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x0

    aput-object v21, v20, v22

    const/16 v21, 0x1

    aput-object v3, v20, v21

    const/16 v21, 0x2

    aput-object v8, v20, v21

    const/16 v21, 0x3

    aput-object v11, v20, v21

    const/16 v21, 0x4

    aput-object v17, v20, v21

    const/16 v21, 0x5

    aput-object v14, v20, v21

    const/16 v21, 0x6

    aput-object v5, v20, v21

    const-string/jumbo v21, "-2"

    const/16 v22, 0x7

    aput-object v21, v20, v22

    const/16 v21, 0x8

    aput-object v9, v20, v21

    const/16 v21, 0x9

    aput-object v12, v20, v21

    const/16 v21, 0xa

    aput-object v18, v20, v21

    const/16 v21, 0xb

    aput-object v15, v20, v21

    const/16 v21, 0xc

    aput-object v10, v20, v21

    const/16 v21, 0xd

    aput-object v13, v20, v21

    const/16 v21, 0xe

    aput-object v19, v20, v21

    const/16 v21, 0xf

    aput-object v16, v20, v21

    invoke-static/range {v20 .. v20}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v20

    return-object v20
.end method

.method public getUplinkCarrierInfo()Ljava/util/List;
    .locals 15

    iget-object v12, p0, Lcom/tmobile/echolocate/DataMetrics;->mContext:Landroid/content/Context;

    const-string/jumbo v13, "diagandroid.phone.receiveDetailedCallState"

    const-string/jumbo v14, "getUplinkCarrierInfo()"

    invoke-virtual {v12, v13, v14}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/internal/telephony/DeviceReportingSecurityChecker;->isSysScopeOk()Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-static {}, Lcom/android/internal/telephony/DeviceReportingSecurityChecker;->isMyAccountSigPresent()Z

    move-result v2

    :goto_0
    iget-boolean v12, p0, Lcom/tmobile/echolocate/DataMetrics;->mShouldReport:Z

    if-eqz v12, :cond_0

    xor-int/lit8 v12, v2, 0x1

    if-eqz v12, :cond_2

    :cond_0
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "getUplinkCarrierInfo(): mShouldReport="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-boolean v13, p0, Lcom/tmobile/echolocate/DataMetrics;->mShouldReport:Z

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ", deviceReportingShouldReport="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/tmobile/echolocate/DataMetrics;->logE(Ljava/lang/String;)V

    const/4 v12, 0x0

    return-object v12

    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/tmobile/echolocate/DataMetrics;->getCurrentNetworkType()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v12, "1"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_3

    const-string/jumbo v12, "getUplinkCarrierInfo(): not in LTE"

    invoke-static {v12}, Lcom/tmobile/echolocate/DataMetrics;->logD(Ljava/lang/String;)V

    const/16 v12, 0x9

    new-array v12, v12, [Ljava/lang/String;

    invoke-static {}, Lcom/tmobile/echolocate/DataMetrics;->getCurrentTime()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    aput-object v13, v12, v14

    const/4 v13, 0x1

    aput-object v1, v12, v13

    const-string/jumbo v13, "-999"

    const/4 v14, 0x2

    aput-object v13, v12, v14

    const-string/jumbo v13, "-999"

    const/4 v14, 0x3

    aput-object v13, v12, v14

    const-string/jumbo v13, "-999"

    const/4 v14, 0x4

    aput-object v13, v12, v14

    const-string/jumbo v13, "-999"

    const/4 v14, 0x5

    aput-object v13, v12, v14

    const-string/jumbo v13, "-999"

    const/4 v14, 0x6

    aput-object v13, v12, v14

    const-string/jumbo v13, "-999"

    const/4 v14, 0x7

    aput-object v13, v12, v14

    const-string/jumbo v13, "-999"

    const/16 v14, 0x8

    aput-object v13, v12, v14

    invoke-static {v12}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    return-object v12

    :cond_3
    const-string/jumbo v3, "-2"

    const-string/jumbo v6, "-2"

    const-string/jumbo v5, "-2"

    const-string/jumbo v4, "-2"

    const-string/jumbo v11, "-2"

    const-string/jumbo v10, "-2"

    const-string/jumbo v9, "-2"

    const/16 v12, 0x200

    new-array v0, v12, [B

    iget-object v12, p0, Lcom/tmobile/echolocate/DataMetrics;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const/4 v13, 0x5

    invoke-direct {p0, v13}, Lcom/tmobile/echolocate/DataMetrics;->getCommandsToCp(I)[B

    move-result-object v13

    invoke-virtual {v12, v13, v0}, Landroid/telephony/TelephonyManager;->invokeOemRilRequestRaw([B[B)I

    move-result v7

    invoke-direct {p0, v7, v0}, Lcom/tmobile/echolocate/DataMetrics;->getResultsFromBytes(I[B)[Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_4

    array-length v12, v8

    const/4 v13, 0x7

    if-lt v12, v13, :cond_4

    const/4 v12, 0x0

    aget-object v3, v8, v12

    const/4 v12, 0x1

    aget-object v6, v8, v12

    const/4 v12, 0x2

    aget-object v5, v8, v12

    const/4 v12, 0x3

    aget-object v4, v8, v12

    const/4 v12, 0x4

    aget-object v11, v8, v12

    const/4 v12, 0x5

    aget-object v10, v8, v12

    const/4 v12, 0x6

    aget-object v9, v8, v12

    :cond_4
    sget-boolean v12, Lcom/tmobile/echolocate/DataMetrics;->DBG:Z

    if-eqz v12, :cond_5

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "getUplinkCarrierInfo(): Time="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {}, Lcom/tmobile/echolocate/DataMetrics;->getCurrentTime()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ", Network="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ", Num Channels="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ", Primary EARFCN="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ", Primary Bandwidth="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ", Primary Band Number="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ", Second EARFCN="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ", Second Bandwidth="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ", Second Band Number="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/tmobile/echolocate/DataMetrics;->logD(Ljava/lang/String;)V

    :cond_5
    const/16 v12, 0x9

    new-array v12, v12, [Ljava/lang/String;

    invoke-static {}, Lcom/tmobile/echolocate/DataMetrics;->getCurrentTime()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    aput-object v13, v12, v14

    const/4 v13, 0x1

    aput-object v1, v12, v13

    const/4 v13, 0x2

    aput-object v3, v12, v13

    const/4 v13, 0x3

    aput-object v6, v12, v13

    const/4 v13, 0x4

    aput-object v5, v12, v13

    const/4 v13, 0x5

    aput-object v4, v12, v13

    const/4 v13, 0x6

    aput-object v11, v12, v13

    const/4 v13, 0x7

    aput-object v10, v12, v13

    const/16 v13, 0x8

    aput-object v9, v12, v13

    invoke-static {v12}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    return-object v12
.end method

.method public getUplinkRFConfiguration()Ljava/util/List;
    .locals 15

    const/4 v14, 0x4

    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    iget-object v7, p0, Lcom/tmobile/echolocate/DataMetrics;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "diagandroid.phone.receiveDetailedCallState"

    const-string/jumbo v9, "getUplinkRFConfiguration()"

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/internal/telephony/DeviceReportingSecurityChecker;->isSysScopeOk()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-static {}, Lcom/android/internal/telephony/DeviceReportingSecurityChecker;->isMyAccountSigPresent()Z

    move-result v2

    :goto_0
    iget-boolean v7, p0, Lcom/tmobile/echolocate/DataMetrics;->mShouldReport:Z

    if-eqz v7, :cond_0

    xor-int/lit8 v7, v2, 0x1

    if-eqz v7, :cond_2

    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getUplinkRFConfiguration(): mShouldReport="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/tmobile/echolocate/DataMetrics;->mShouldReport:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", deviceReportingShouldReport="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/tmobile/echolocate/DataMetrics;->logE(Ljava/lang/String;)V

    const/4 v7, 0x0

    return-object v7

    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/tmobile/echolocate/DataMetrics;->getCurrentNetworkType()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v7, "1"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    const-string/jumbo v7, "getUplinkRFConfiguration(): not in LTE"

    invoke-static {v7}, Lcom/tmobile/echolocate/DataMetrics;->logD(Ljava/lang/String;)V

    new-array v7, v14, [Ljava/lang/String;

    invoke-static {}, Lcom/tmobile/echolocate/DataMetrics;->getCurrentTime()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    aput-object v1, v7, v11

    const-string/jumbo v8, "-999"

    aput-object v8, v7, v12

    const-string/jumbo v8, "-999"

    aput-object v8, v7, v13

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    return-object v7

    :cond_3
    const-string/jumbo v3, "-2"

    const-string/jumbo v6, "-2"

    const/16 v7, 0x200

    new-array v0, v7, [B

    iget-object v7, p0, Lcom/tmobile/echolocate/DataMetrics;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const/4 v8, 0x7

    invoke-direct {p0, v8}, Lcom/tmobile/echolocate/DataMetrics;->getCommandsToCp(I)[B

    move-result-object v8

    invoke-virtual {v7, v8, v0}, Landroid/telephony/TelephonyManager;->invokeOemRilRequestRaw([B[B)I

    move-result v4

    invoke-direct {p0, v4, v0}, Lcom/tmobile/echolocate/DataMetrics;->getResultsFromBytes(I[B)[Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4

    array-length v7, v5

    if-lt v7, v12, :cond_4

    aget-object v3, v5, v10

    aget-object v6, v5, v11

    :cond_4
    sget-boolean v7, Lcom/tmobile/echolocate/DataMetrics;->DBG:Z

    if-eqz v7, :cond_5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getUplinkRFConfiguration(): Time="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Lcom/tmobile/echolocate/DataMetrics;->getCurrentTime()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", Network="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", Primary Modulation Scheme="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", Second Modulation Scheme="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/tmobile/echolocate/DataMetrics;->logD(Ljava/lang/String;)V

    :cond_5
    new-array v7, v14, [Ljava/lang/String;

    invoke-static {}, Lcom/tmobile/echolocate/DataMetrics;->getCurrentTime()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    aput-object v1, v7, v11

    aput-object v3, v7, v12

    aput-object v6, v7, v13

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    return-object v7
.end method
