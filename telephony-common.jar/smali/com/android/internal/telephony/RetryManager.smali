.class public Lcom/android/internal/telephony/RetryManager;
.super Ljava/lang/Object;
.source "RetryManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/RetryManager$RetryRec;
    }
.end annotation


# static fields
.field public static final DBG:Z = true

.field private static final DEFAULT_DATA_RETRY_CONFIG:Ljava/lang/String; = "max_retries=3, 5000, 5000, 5000"

.field private static final DEFAULT_INTER_APN_DELAY:J = 0xbb8L

.field private static final DEFAULT_INTER_APN_DELAY_FOR_PROVISIONING:J = 0xbb8L

.field public static final LOG_TAG:Ljava/lang/String; = "RetryManager"

.field private static final MAX_SAME_APN_RETRY:I = 0xa

.field public static final NO_RETRY:J = -0x1L

.field public static final NO_SUGGESTED_RETRY_DELAY:J = -0x2L

.field private static final OTHERS_APN_TYPE:Ljava/lang/String; = "others"

.field public static final VDBG:Z = true


# instance fields
.field private mApnType:Ljava/lang/String;

.field private mConfig:Ljava/lang/String;

.field private mCurrentApnIndex:I

.field private mFailFastInterApnDelay:J

.field private mInterApnDelay:J

.field private mMaxRetryCount:I

.field private mModemSuggestedDelay:J

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mRetryArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/RetryManager$RetryRec;",
            ">;"
        }
    .end annotation
.end field

.field private mRetryCount:I

.field private mRetryForever:Z

.field private mRng:Ljava/util/Random;

.field private mSameApnRetryCount:I

.field private mWaitingApns:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/dataconnection/ApnSetting;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/Phone;Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x2

    iput-wide v0, p0, Lcom/android/internal/telephony/RetryManager;->mModemSuggestedDelay:J

    iput v2, p0, Lcom/android/internal/telephony/RetryManager;->mSameApnRetryCount:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/RetryManager;->mRetryArray:Ljava/util/ArrayList;

    iput-boolean v2, p0, Lcom/android/internal/telephony/RetryManager;->mRetryForever:Z

    iput v2, p0, Lcom/android/internal/telephony/RetryManager;->mRetryCount:I

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/RetryManager;->mRng:Ljava/util/Random;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/RetryManager;->mWaitingApns:Ljava/util/ArrayList;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/RetryManager;->mCurrentApnIndex:I

    iput-object p1, p0, Lcom/android/internal/telephony/RetryManager;->mPhone:Lcom/android/internal/telephony/Phone;

    iput-object p2, p0, Lcom/android/internal/telephony/RetryManager;->mApnType:Ljava/lang/String;

    return-void
.end method

.method private configure(Ljava/lang/String;)Z
    .locals 11

    const/4 v10, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    const-string/jumbo v6, "\""

    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string/jumbo v6, "\""

    invoke-virtual {p1, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {p1, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/RetryManager;->reset()V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "configure: \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/RetryManager;->log(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/internal/telephony/RetryManager;->mConfig:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_c

    const/4 v0, 0x0

    const-string/jumbo v6, "configure: not empty"

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/RetryManager;->log(Ljava/lang/String;)V

    const-string/jumbo v6, ","

    invoke-virtual {p1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v1, 0x0

    :goto_0
    array-length v6, v4

    if-ge v1, v6, :cond_a

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "configure: strArray["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "]=\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v4, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/RetryManager;->log(Ljava/lang/String;)V

    aget-object v6, v4, v1

    const-string/jumbo v7, "="

    invoke-virtual {v6, v7, v10}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    aget-object v6, v3, v9

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v9

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "configure: splitStr[0]=\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v3, v9

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/RetryManager;->log(Ljava/lang/String;)V

    array-length v6, v3

    if-le v6, v8, :cond_6

    aget-object v6, v3, v8

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v8

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "configure: splitStr[1]=\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v3, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/RetryManager;->log(Ljava/lang/String;)V

    aget-object v6, v3, v9

    const-string/jumbo v7, "default_randomization"

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    aget-object v6, v3, v9

    aget-object v7, v3, v8

    invoke-direct {p0, v6, v7}, Lcom/android/internal/telephony/RetryManager;->parseNonNegativeInt(Ljava/lang/String;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v5

    iget-object v6, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_1

    return v9

    :cond_1
    iget-object v6, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_2
    aget-object v6, v3, v9

    const-string/jumbo v7, "max_retries"

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    const-string/jumbo v6, "infinite"

    aget-object v7, v3, v8

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    iput-boolean v8, p0, Lcom/android/internal/telephony/RetryManager;->mRetryForever:Z

    goto :goto_1

    :cond_3
    aget-object v6, v3, v9

    aget-object v7, v3, v8

    invoke-direct {p0, v6, v7}, Lcom/android/internal/telephony/RetryManager;->parseNonNegativeInt(Ljava/lang/String;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v5

    iget-object v6, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_4

    return v9

    :cond_4
    iget-object v6, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iput v6, p0, Lcom/android/internal/telephony/RetryManager;->mMaxRetryCount:I

    goto :goto_1

    :cond_5
    const-string/jumbo v6, "RetryManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Unrecognized configuration name value pair: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v4, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v9

    :cond_6
    aget-object v6, v4, v1

    const-string/jumbo v7, ":"

    invoke-virtual {v6, v7, v10}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    aget-object v6, v3, v9

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v9

    new-instance v2, Lcom/android/internal/telephony/RetryManager$RetryRec;

    invoke-direct {v2, v9, v9}, Lcom/android/internal/telephony/RetryManager$RetryRec;-><init>(II)V

    const-string/jumbo v6, "delayTime"

    aget-object v7, v3, v9

    invoke-direct {p0, v6, v7}, Lcom/android/internal/telephony/RetryManager;->parseNonNegativeInt(Ljava/lang/String;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v5

    iget-object v6, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_7

    return v9

    :cond_7
    iget-object v6, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iput v6, v2, Lcom/android/internal/telephony/RetryManager$RetryRec;->mDelayTime:I

    array-length v6, v3

    if-le v6, v8, :cond_9

    aget-object v6, v3, v8

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v8

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "configure: splitStr[1]=\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v3, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/RetryManager;->log(Ljava/lang/String;)V

    const-string/jumbo v6, "randomizationTime"

    aget-object v7, v3, v8

    invoke-direct {p0, v6, v7}, Lcom/android/internal/telephony/RetryManager;->parseNonNegativeInt(Ljava/lang/String;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v5

    iget-object v6, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_8

    return v9

    :cond_8
    iget-object v6, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iput v6, v2, Lcom/android/internal/telephony/RetryManager$RetryRec;->mRandomizationTime:I

    :goto_2
    iget-object v6, p0, Lcom/android/internal/telephony/RetryManager;->mRetryArray:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_9
    iput v0, v2, Lcom/android/internal/telephony/RetryManager$RetryRec;->mRandomizationTime:I

    goto :goto_2

    :cond_a
    iget-object v6, p0, Lcom/android/internal/telephony/RetryManager;->mRetryArray:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    iget v7, p0, Lcom/android/internal/telephony/RetryManager;->mMaxRetryCount:I

    if-le v6, v7, :cond_b

    iget-object v6, p0, Lcom/android/internal/telephony/RetryManager;->mRetryArray:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    iput v6, p0, Lcom/android/internal/telephony/RetryManager;->mMaxRetryCount:I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "configure: setting mMaxRetryCount="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/internal/telephony/RetryManager;->mMaxRetryCount:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/RetryManager;->log(Ljava/lang/String;)V

    :cond_b
    :goto_3
    const-string/jumbo v6, "configure: true"

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/RetryManager;->log(Ljava/lang/String;)V

    return v8

    :cond_c
    const-string/jumbo v6, "configure: cleared"

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/RetryManager;->log(Ljava/lang/String;)V

    goto :goto_3
.end method

.method private configureRetry()V
    .locals 14

    const/4 v5, 0x0

    const/4 v7, 0x0

    :try_start_0
    sget-boolean v10, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v10, :cond_0

    const-string/jumbo v10, "test.data_retry_config"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/RetryManager;->configure(Ljava/lang/String;)Z

    return-void

    :cond_0
    iget-object v10, p0, Lcom/android/internal/telephony/RetryManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v10}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v10

    const-string/jumbo v11, "carrier_config"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/CarrierConfigManager;

    iget-object v10, p0, Lcom/android/internal/telephony/RetryManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v10}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v10

    invoke-virtual {v4, v10}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v2

    const-string/jumbo v10, "carrier_data_call_apn_delay_default_long"

    const-wide/16 v12, 0xbb8

    invoke-virtual {v2, v10, v12, v13}, Landroid/os/PersistableBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v10

    iput-wide v10, p0, Lcom/android/internal/telephony/RetryManager;->mInterApnDelay:J

    const-string/jumbo v10, "carrier_data_call_apn_delay_faster_long"

    const-wide/16 v12, 0xbb8

    invoke-virtual {v2, v10, v12, v13}, Landroid/os/PersistableBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v10

    iput-wide v10, p0, Lcom/android/internal/telephony/RetryManager;->mFailFastInterApnDelay:J

    const-string/jumbo v10, "carrier_data_call_retry_config_strings"

    invoke-virtual {v2, v10}, Landroid/os/PersistableBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v10, 0x0

    array-length v11, v0

    :goto_0
    if-ge v10, v11, :cond_1

    aget-object v8, v0, v10

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_4

    const-string/jumbo v12, ":"

    const/4 v13, 0x2

    invoke-virtual {v8, v12, v13}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v9

    array-length v12, v9

    const/4 v13, 0x2

    if-ne v12, v13, :cond_4

    const/4 v12, 0x0

    aget-object v12, v9, v12

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iget-object v12, p0, Lcom/android/internal/telephony/RetryManager;->mApnType:Ljava/lang/String;

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    const/4 v10, 0x1

    aget-object v5, v9, v10
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    if-nez v5, :cond_2

    if-eqz v7, :cond_5

    move-object v5, v7

    :cond_2
    :goto_1
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "mInterApnDelay = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-wide v12, p0, Lcom/android/internal/telephony/RetryManager;->mInterApnDelay:J

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", mFailFastInterApnDelay = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-wide v12, p0, Lcom/android/internal/telephony/RetryManager;->mFailFastInterApnDelay:J

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/RetryManager;->log(Ljava/lang/String;)V

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/RetryManager;->configure(Ljava/lang/String;)Z

    return-void

    :cond_3
    :try_start_1
    const-string/jumbo v12, "others"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    const/4 v12, 0x1

    aget-object v7, v9, v12

    :cond_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_5
    const-string/jumbo v10, "Invalid APN retry configuration!. Use the default one now."

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/RetryManager;->log(Ljava/lang/String;)V

    const-string/jumbo v5, "max_retries=3, 5000, 5000, 5000"
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v6

    const-string/jumbo v10, "Failed to read configuration! Use the hardcoded default value."

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/RetryManager;->log(Ljava/lang/String;)V

    const-wide/16 v10, 0xbb8

    iput-wide v10, p0, Lcom/android/internal/telephony/RetryManager;->mInterApnDelay:J

    const-wide/16 v10, 0xbb8

    iput-wide v10, p0, Lcom/android/internal/telephony/RetryManager;->mFailFastInterApnDelay:J

    const-string/jumbo v5, "max_retries=3, 5000, 5000, 5000"

    goto :goto_1
.end method

.method private getRetryTimer()I
    .locals 4

    iget v2, p0, Lcom/android/internal/telephony/RetryManager;->mRetryCount:I

    iget-object v3, p0, Lcom/android/internal/telephony/RetryManager;->mRetryArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/RetryManager;->mRetryCount:I

    :goto_0
    if-ltz v0, :cond_1

    iget-object v2, p0, Lcom/android/internal/telephony/RetryManager;->mRetryArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/telephony/RetryManager;->mRetryArray:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/RetryManager$RetryRec;

    iget v2, v2, Lcom/android/internal/telephony/RetryManager$RetryRec;->mDelayTime:I

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RetryManager;->nextRandomizationTime(I)I

    move-result v3

    add-int v1, v2, v3

    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getRetryTimer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/RetryManager;->log(Ljava/lang/String;)V

    return v1

    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/RetryManager;->mRetryArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private log(Ljava/lang/String;)V
    .locals 3

    const-string/jumbo v0, "RetryManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/RetryManager;->mApnType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private nextRandomizationTime(I)I
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/internal/telephony/RetryManager;->mRetryArray:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/RetryManager$RetryRec;

    iget v0, v1, Lcom/android/internal/telephony/RetryManager$RetryRec;->mRandomizationTime:I

    if-nez v0, :cond_0

    return v2

    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/RetryManager;->mRng:Ljava/util/Random;

    invoke-virtual {v1, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    return v1
.end method

.method private parseNonNegativeInt(Ljava/lang/String;Ljava/lang/String;)Landroid/util/Pair;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v6, 0x0

    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    new-instance v1, Landroid/util/Pair;

    invoke-direct {p0, p1, v2}, Lcom/android/internal/telephony/RetryManager;->validateNonNegativeInt(Ljava/lang/String;I)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "parseNonNetativeInt: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/RetryManager;->log(Ljava/lang/String;)V

    return-object v1

    :catch_0
    move-exception v0

    const-string/jumbo v3, "RetryManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " bad value: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v1, Landroid/util/Pair;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private reset()V
    .locals 2

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/telephony/RetryManager;->mMaxRetryCount:I

    iput v1, p0, Lcom/android/internal/telephony/RetryManager;->mRetryCount:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/RetryManager;->mCurrentApnIndex:I

    iput v1, p0, Lcom/android/internal/telephony/RetryManager;->mSameApnRetryCount:I

    const-wide/16 v0, -0x2

    iput-wide v0, p0, Lcom/android/internal/telephony/RetryManager;->mModemSuggestedDelay:J

    iget-object v0, p0, Lcom/android/internal/telephony/RetryManager;->mRetryArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private validateNonNegativeInt(Ljava/lang/String;I)Z
    .locals 4

    if-gez p2, :cond_0

    const-string/jumbo v1, "RetryManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " bad value: is < 0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "validateNonNegative: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RetryManager;->log(Ljava/lang/String;)V

    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4

    const-string/jumbo v1, "  RetryManager"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v1, "***************************************"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "    config = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/RetryManager;->mConfig:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "    mApnType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/RetryManager;->mApnType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "    mCurrentApnIndex = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/RetryManager;->mCurrentApnIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "    mRetryCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/RetryManager;->mRetryCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "    mMaxRetryCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/RetryManager;->mMaxRetryCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "    mSameApnRetryCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/RetryManager;->mSameApnRetryCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "    mModemSuggestedDelay = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/internal/telephony/RetryManager;->mModemSuggestedDelay:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "    mInterApnDelay = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/internal/telephony/RetryManager;->mInterApnDelay:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "    mFailFastInterApnDelay = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/internal/telephony/RetryManager;->mFailFastInterApnDelay:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/RetryManager;->mWaitingApns:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    const-string/jumbo v1, "    APN list: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/RetryManager;->mWaitingApns:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "      ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/RetryManager;->mWaitingApns:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "***************************************"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    return-void
.end method

.method public getDelayForNextApn(Z)J
    .locals 10

    const-wide/16 v8, -0x1

    iget-object v3, p0, Lcom/android/internal/telephony/RetryManager;->mWaitingApns:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/RetryManager;->mWaitingApns:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    const-string/jumbo v3, "Waiting APN list is null or empty."

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/RetryManager;->log(Ljava/lang/String;)V

    return-wide v8

    :cond_1
    iget-wide v4, p0, Lcom/android/internal/telephony/RetryManager;->mModemSuggestedDelay:J

    cmp-long v3, v4, v8

    if-nez v3, :cond_2

    const-string/jumbo v3, "Modem suggested not retrying."

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/RetryManager;->log(Ljava/lang/String;)V

    return-wide v8

    :cond_2
    iget-wide v4, p0, Lcom/android/internal/telephony/RetryManager;->mModemSuggestedDelay:J

    const-wide/16 v6, -0x2

    cmp-long v3, v4, v6

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/android/internal/telephony/RetryManager;->mSameApnRetryCount:I

    const/16 v4, 0xa

    if-ge v3, v4, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Modem suggested retry in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/internal/telephony/RetryManager;->mModemSuggestedDelay:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " ms."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/RetryManager;->log(Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/android/internal/telephony/RetryManager;->mModemSuggestedDelay:J

    return-wide v4

    :cond_3
    iget v2, p0, Lcom/android/internal/telephony/RetryManager;->mCurrentApnIndex:I

    :cond_4
    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lcom/android/internal/telephony/RetryManager;->mWaitingApns:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v2, v3, :cond_5

    const/4 v2, 0x0

    :cond_5
    iget-object v3, p0, Lcom/android/internal/telephony/RetryManager;->mWaitingApns:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/dataconnection/ApnSetting;

    iget-boolean v3, v3, Lcom/android/internal/telephony/dataconnection/ApnSetting;->permanentFailed:Z

    if-nez v3, :cond_6

    iget v3, p0, Lcom/android/internal/telephony/RetryManager;->mCurrentApnIndex:I

    if-gt v2, v3, :cond_9

    iget-boolean v3, p0, Lcom/android/internal/telephony/RetryManager;->mRetryForever:Z

    if-nez v3, :cond_7

    iget v3, p0, Lcom/android/internal/telephony/RetryManager;->mRetryCount:I

    add-int/lit8 v3, v3, 0x1

    iget v4, p0, Lcom/android/internal/telephony/RetryManager;->mMaxRetryCount:I

    if-le v3, v4, :cond_7

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Reached maximum retry count "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/RetryManager;->mMaxRetryCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/RetryManager;->log(Ljava/lang/String;)V

    return-wide v8

    :cond_6
    iget v3, p0, Lcom/android/internal/telephony/RetryManager;->mCurrentApnIndex:I

    if-ne v2, v3, :cond_4

    const-string/jumbo v3, "All APNs have permanently failed."

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/RetryManager;->log(Ljava/lang/String;)V

    return-wide v8

    :cond_7
    invoke-direct {p0}, Lcom/android/internal/telephony/RetryManager;->getRetryTimer()I

    move-result v3

    int-to-long v0, v3

    iget v3, p0, Lcom/android/internal/telephony/RetryManager;->mRetryCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/internal/telephony/RetryManager;->mRetryCount:I

    :goto_0
    if-eqz p1, :cond_8

    iget-wide v4, p0, Lcom/android/internal/telephony/RetryManager;->mFailFastInterApnDelay:J

    cmp-long v3, v0, v4

    if-lez v3, :cond_8

    iget-wide v0, p0, Lcom/android/internal/telephony/RetryManager;->mFailFastInterApnDelay:J

    :cond_8
    return-wide v0

    :cond_9
    iget-wide v0, p0, Lcom/android/internal/telephony/RetryManager;->mInterApnDelay:J

    goto :goto_0
.end method

.method public getInterApnDelay(Z)J
    .locals 2

    if-eqz p1, :cond_0

    iget-wide v0, p0, Lcom/android/internal/telephony/RetryManager;->mFailFastInterApnDelay:J

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/android/internal/telephony/RetryManager;->mInterApnDelay:J

    goto :goto_0
.end method

.method public getNextApnSetting()Lcom/android/internal/telephony/dataconnection/ApnSetting;
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x0

    iget-object v1, p0, Lcom/android/internal/telephony/RetryManager;->mWaitingApns:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/RetryManager;->mWaitingApns:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const-string/jumbo v1, "Waiting APN list is null or empty."

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RetryManager;->log(Ljava/lang/String;)V

    return-object v6

    :cond_1
    iget-wide v2, p0, Lcom/android/internal/telephony/RetryManager;->mModemSuggestedDelay:J

    const-wide/16 v4, -0x2

    cmp-long v1, v2, v4

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/android/internal/telephony/RetryManager;->mSameApnRetryCount:I

    const/16 v2, 0xa

    if-ge v1, v2, :cond_2

    iget v1, p0, Lcom/android/internal/telephony/RetryManager;->mSameApnRetryCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/RetryManager;->mSameApnRetryCount:I

    iget-object v1, p0, Lcom/android/internal/telephony/RetryManager;->mWaitingApns:Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/internal/telephony/RetryManager;->mCurrentApnIndex:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/dataconnection/ApnSetting;

    return-object v1

    :cond_2
    iput v7, p0, Lcom/android/internal/telephony/RetryManager;->mSameApnRetryCount:I

    iget v0, p0, Lcom/android/internal/telephony/RetryManager;->mCurrentApnIndex:I

    :cond_3
    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/android/internal/telephony/RetryManager;->mWaitingApns:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_4

    const/4 v0, 0x0

    :cond_4
    iget-object v1, p0, Lcom/android/internal/telephony/RetryManager;->mWaitingApns:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/dataconnection/ApnSetting;

    iget-boolean v1, v1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->permanentFailed:Z

    if-nez v1, :cond_5

    iput v0, p0, Lcom/android/internal/telephony/RetryManager;->mCurrentApnIndex:I

    iget-object v1, p0, Lcom/android/internal/telephony/RetryManager;->mWaitingApns:Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/internal/telephony/RetryManager;->mCurrentApnIndex:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/dataconnection/ApnSetting;

    return-object v1

    :cond_5
    iget v1, p0, Lcom/android/internal/telephony/RetryManager;->mCurrentApnIndex:I

    if-ne v0, v1, :cond_3

    return-object v6
.end method

.method public getRetryCount()I
    .locals 1

    iget v0, p0, Lcom/android/internal/telephony/RetryManager;->mRetryCount:I

    return v0
.end method

.method public getWaitingApns()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/dataconnection/ApnSetting;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/telephony/RetryManager;->mWaitingApns:Ljava/util/ArrayList;

    return-object v0
.end method

.method public markApnPermanentFailed(Lcom/android/internal/telephony/dataconnection/ApnSetting;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->permanentFailed:Z

    :cond_0
    return-void
.end method

.method public setModemSuggestedDelay(J)V
    .locals 1

    iput-wide p1, p0, Lcom/android/internal/telephony/RetryManager;->mModemSuggestedDelay:J

    return-void
.end method

.method public setWaitingApns(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/dataconnection/ApnSetting;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    const-string/jumbo v3, "No waiting APNs provided"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/RetryManager;->log(Ljava/lang/String;)V

    return-void

    :cond_0
    iput-object p1, p0, Lcom/android/internal/telephony/RetryManager;->mWaitingApns:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/android/internal/telephony/RetryManager;->configureRetry()V

    iget-object v3, p0, Lcom/android/internal/telephony/RetryManager;->mWaitingApns:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;

    const/4 v3, 0x0

    iput-boolean v3, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->permanentFailed:Z

    goto :goto_0

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Setting "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/RetryManager;->mWaitingApns:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " waiting APNs."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/RetryManager;->log(Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_1
    iget-object v3, p0, Lcom/android/internal/telephony/RetryManager;->mWaitingApns:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "  ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "]:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/RetryManager;->mWaitingApns:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/RetryManager;->log(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mApnType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/RetryManager;->mApnType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " mRetryCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/RetryManager;->mRetryCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " mMaxRetryCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/RetryManager;->mMaxRetryCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " mCurrentApnIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/RetryManager;->mCurrentApnIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " mSameApnRtryCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/RetryManager;->mSameApnRetryCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " mModemSuggestedDelay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/internal/telephony/RetryManager;->mModemSuggestedDelay:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " mRetryForever="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/RetryManager;->mRetryForever:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " mConfig={"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/RetryManager;->mConfig:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
