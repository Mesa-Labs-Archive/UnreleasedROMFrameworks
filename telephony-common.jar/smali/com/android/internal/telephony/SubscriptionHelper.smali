.class Lcom/android/internal/telephony/SubscriptionHelper;
.super Landroid/os/Handler;
.source "SubscriptionHelper.java"


# static fields
.field private static final synthetic -com-android-internal-telephony-uicc-IccCardApplicationStatus$AppStateSwitchesValues:[I = null

.field private static final APM_SIM_NOT_PWDN_PROPERTY:Ljava/lang/String; = "persist.radio.apm_sim_not_pwdn"

.field private static final EVENT_ICC_CHANGED:I = 0x3

.field private static final EVENT_REFRESH:I = 0x2

.field private static final EVENT_SET_UICC_SUBSCRIPTION_DONE:I = 0x1

.field private static final EVENT_STACK_READY:I = 0x4

.field private static final LOG_TAG:Ljava/lang/String; = "SubHelper"

.field private static final STACK_READY_BOOTUP:I = 0x2

.field public static final SUB_INIT_STATE:I = -0x1

.field public static final SUB_SET_UICC_FAIL:I = -0x64

.field public static final SUB_SIM_NOT_INSERTED:I = -0x63

.field protected static final mCardOffIntent:[Ljava/lang/String;

.field protected static final mCardOnIntent:[Ljava/lang/String;

.field private static final mPhoneOnKey:[Ljava/lang/String;

.field private static final mUiccFamilyName:[Ljava/lang/String;

.field private static final sApmSIMNotPwdn:Z

.field private static sInstance:Lcom/android/internal/telephony/SubscriptionHelper;

.field private static final sIsQcomDsModem:Z

.field private static final sNumPhones:I

.field private static sTriggerDds:Z


# instance fields
.field private mAppState:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

.field private mCi:[Lcom/android/internal/telephony/CommandsInterface;

.field private mContext:Landroid/content/Context;

.field private mDefaultDataSubId:I

.field private mInsertSimState:[I

.field private mPhoneOn:[I

.field private mSetUiccSubCount:[I

.field private mSubActivationUpdated:Z

.field private mSubStatus:[I


# direct methods
.method private static synthetic -getcom-android-internal-telephony-uicc-IccCardApplicationStatus$AppStateSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/internal/telephony/SubscriptionHelper;->-com-android-internal-telephony-uicc-IccCardApplicationStatus$AppStateSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/SubscriptionHelper;->-com-android-internal-telephony-uicc-IccCardApplicationStatus$AppStateSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->values()[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_DETECTED:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_5

    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_PIN:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_4

    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_3

    :goto_2
    :try_start_3
    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_READY:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_2

    :goto_3
    :try_start_4
    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_SUBSCRIPTION_PERSO:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1

    :goto_4
    :try_start_5
    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_UNKNOWN:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_0

    :goto_5
    sput-object v0, Lcom/android/internal/telephony/SubscriptionHelper;->-com-android-internal-telephony-uicc-IccCardApplicationStatus$AppStateSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_5

    :catch_1
    move-exception v1

    goto :goto_4

    :catch_2
    move-exception v1

    goto :goto_3

    :catch_3
    move-exception v1

    goto :goto_2

    :catch_4
    move-exception v1

    goto :goto_1

    :catch_5
    move-exception v1

    goto :goto_0
.end method

.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    sput v0, Lcom/android/internal/telephony/SubscriptionHelper;->sNumPhones:I

    sput-boolean v2, Lcom/android/internal/telephony/SubscriptionHelper;->sTriggerDds:Z

    const-string/jumbo v0, "persist.radio.apm_sim_not_pwdn"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/internal/telephony/SubscriptionHelper;->sApmSIMNotPwdn:Z

    sget v0, Lcom/android/internal/telephony/SubscriptionHelper;->sNumPhones:I

    if-le v0, v1, :cond_1

    const-string/jumbo v0, "QCOM"

    const-string/jumbo v3, "CMC"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_1
    sput-boolean v0, Lcom/android/internal/telephony/SubscriptionHelper;->sIsQcomDsModem:Z

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v3, "phone1_on"

    aput-object v3, v0, v2

    const-string/jumbo v3, "phone2_on"

    aput-object v3, v0, v1

    const-string/jumbo v3, "phone3_on"

    aput-object v3, v0, v4

    const-string/jumbo v3, "phone4_on"

    aput-object v3, v0, v5

    const-string/jumbo v3, "phone5_on"

    aput-object v3, v0, v6

    sput-object v0, Lcom/android/internal/telephony/SubscriptionHelper;->mPhoneOnKey:[Ljava/lang/String;

    new-array v0, v6, [Ljava/lang/String;

    const-string/jumbo v3, "UNKNOWN"

    aput-object v3, v0, v2

    const-string/jumbo v3, "APP_FAM_3GPP"

    aput-object v3, v0, v1

    const-string/jumbo v3, "APP_FAM_3GPP2"

    aput-object v3, v0, v4

    const-string/jumbo v3, "APP_FAM_IMS"

    aput-object v3, v0, v5

    sput-object v0, Lcom/android/internal/telephony/SubscriptionHelper;->mUiccFamilyName:[Ljava/lang/String;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v3, "com.samsung.intent.action.Slot1OnCompleted"

    aput-object v3, v0, v2

    const-string/jumbo v3, "com.samsung.intent.action.Slot2OnCompleted"

    aput-object v3, v0, v1

    const-string/jumbo v3, "com.samsung.intent.action.Slot3OnCompleted"

    aput-object v3, v0, v4

    const-string/jumbo v3, "com.samsung.intent.action.Slot4OnCompleted"

    aput-object v3, v0, v5

    const-string/jumbo v3, "com.samsung.intent.action.Slot5OnCompleted"

    aput-object v3, v0, v6

    sput-object v0, Lcom/android/internal/telephony/SubscriptionHelper;->mCardOnIntent:[Ljava/lang/String;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v3, "com.samsung.intent.action.Slot1OffCompleted"

    aput-object v3, v0, v2

    const-string/jumbo v2, "com.samsung.intent.action.Slot2OffCompleted"

    aput-object v2, v0, v1

    const-string/jumbo v1, "com.samsung.intent.action.Slot3OffCompleted"

    aput-object v1, v0, v4

    const-string/jumbo v1, "com.samsung.intent.action.Slot4OffCompleted"

    aput-object v1, v0, v5

    const-string/jumbo v1, "com.samsung.intent.action.Slot5OffCompleted"

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/internal/telephony/SubscriptionHelper;->mCardOffIntent:[Ljava/lang/String;

    return-void

    :cond_0
    move v0, v2

    goto/16 :goto_0

    :cond_1
    move v0, v2

    goto :goto_1
.end method

.method private constructor <init>(Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, -0x1

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    sget v1, Lcom/android/internal/telephony/SubscriptionHelper;->sNumPhones:I

    new-array v1, v1, [Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    iput-object v1, p0, Lcom/android/internal/telephony/SubscriptionHelper;->mAppState:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    sget v1, Lcom/android/internal/telephony/SubscriptionHelper;->sNumPhones:I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/internal/telephony/SubscriptionHelper;->mPhoneOn:[I

    iput-object v5, p0, Lcom/android/internal/telephony/SubscriptionHelper;->mInsertSimState:[I

    iput v4, p0, Lcom/android/internal/telephony/SubscriptionHelper;->mDefaultDataSubId:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/telephony/SubscriptionHelper;->mSubActivationUpdated:Z

    iput-object p1, p0, Lcom/android/internal/telephony/SubscriptionHelper;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/internal/telephony/SubscriptionHelper;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    sget v1, Lcom/android/internal/telephony/SubscriptionHelper;->sNumPhones:I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/internal/telephony/SubscriptionHelper;->mSubStatus:[I

    sget v1, Lcom/android/internal/telephony/SubscriptionHelper;->sNumPhones:I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/internal/telephony/SubscriptionHelper;->mSetUiccSubCount:[I

    const/4 v0, 0x0

    :goto_0
    sget v1, Lcom/android/internal/telephony/SubscriptionHelper;->sNumPhones:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/SubscriptionHelper;->mSubStatus:[I

    aput v4, v1, v0

    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v1, p0, v3, v2}, Lcom/android/internal/telephony/uicc/UiccController;->registerForIccChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->isCrossMappingSupported()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/internal/telephony/ModemStackController;->getInstance()Lcom/android/internal/telephony/ModemStackController;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, p0, v2, v5}, Lcom/android/internal/telephony/ModemStackController;->registerForStackReady(Landroid/os/Handler;ILjava/lang/Object;)V

    :cond_1
    const/4 v0, 0x0

    :goto_1
    sget v1, Lcom/android/internal/telephony/SubscriptionHelper;->sNumPhones:I

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/telephony/SubscriptionHelper;->mAppState:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    sget-object v2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_UNKNOWN:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    aput-object v2, v1, v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SubscriptionHelper;->syncPhoneOnFromDB(I)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SubscriptionHelper init by Context, num phones = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/internal/telephony/SubscriptionHelper;->sNumPhones:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ApmSIMNotPwdn = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/internal/telephony/SubscriptionHelper;->sApmSIMNotPwdn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/SubscriptionHelper;->logd(Ljava/lang/String;)V

    return-void
.end method

.method private broadcastSetUiccResult(III)V
    .locals 4

    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/SubscriptionController;->getSubId(I)[I

    move-result-object v1

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "org.codeaurora.intent.action.ACTION_SUBSCRIPTION_SET_UICC_RESULT"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x20000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/4 v2, 0x0

    aget v2, v1, v2

    invoke-static {v0, p1, v2}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;II)V

    const-string/jumbo v2, "operationResult"

    invoke-virtual {v0, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v2, "newSubState"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/internal/telephony/SubscriptionHelper;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method private broadcastSetUiccResult(IIII)V
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/SubscriptionHelper;->broadcastSetUiccResult(III)V

    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/SubscriptionController;->getSubId(I)[I

    move-result-object v1

    const/4 v0, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "broadcastSetUiccResult: slotId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", newSubState:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", result:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", uiccFamilyId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/SubscriptionHelper;->mUiccFamilyName:[Ljava/lang/String;

    aget-object v3, v3, p4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/SubscriptionHelper;->logd(Ljava/lang/String;)V

    if-ne p2, v5, :cond_2

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "com.android.settings.subscription_activate"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "slot"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v2, "subscription"

    aget v3, v1, v4

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/internal/telephony/SubscriptionHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "com.android.settings.permission.subscription"

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    const-string/jumbo v2, "CTC"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getSalesCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-nez p1, :cond_1

    if-ne p4, v6, :cond_1

    :goto_0
    const-string/jumbo v2, "gsm.sim.active"

    const-string/jumbo v3, "2"

    invoke-static {p1, v2, v3}, Landroid/telephony/TelephonyManager;->setTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    if-ne p1, v5, :cond_0

    if-ne p4, v5, :cond_0

    goto :goto_0

    :cond_2
    if-nez p2, :cond_4

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "com.android.settings.subscription_deactivate"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "slot"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v2, "subscription"

    aget v3, v1, v4

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/internal/telephony/SubscriptionHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "com.android.settings.permission.subscription"

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    const-string/jumbo v2, "CTC"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getSalesCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-nez p1, :cond_3

    if-ne p4, v6, :cond_3

    :goto_2
    new-instance v0, Landroid/content/Intent;

    sget-object v2, Lcom/android/internal/telephony/SubscriptionHelper;->mCardOffIntent:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/internal/telephony/SubscriptionHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "com.android.settings.permission.subscription"

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    if-ne p1, v5, :cond_0

    if-ne p4, v5, :cond_0

    goto :goto_2

    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "broadcastSetUiccResult: invalid newSubState:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/SubscriptionHelper;->logd(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private checkAllSubReady()V
    .locals 5

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/internal/telephony/SubscriptionHelper;->mInsertSimState:[I

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/internal/telephony/SubscriptionHelper;->mSubActivationUpdated:Z

    if-eqz v2, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x1

    const/4 v1, 0x0

    :goto_0
    sget v2, Lcom/android/internal/telephony/SubscriptionHelper;->sNumPhones:I

    if-ge v1, v2, :cond_4

    iget-object v2, p0, Lcom/android/internal/telephony/SubscriptionHelper;->mInsertSimState:[I

    aget v2, v2, v1

    const/16 v3, -0x63

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/android/internal/telephony/SubscriptionHelper;->mAppState:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    aget-object v2, v2, v1

    sget-object v3, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_DETECTED:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    if-ne v2, v3, :cond_3

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/android/internal/telephony/SubscriptionHelper;->mAppState:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    aget-object v2, v2, v1

    sget-object v3, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_READY:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    if-eq v2, v3, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "checkAllSubReady: allReady "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/SubscriptionHelper;->logd(Ljava/lang/String;)V

    if-eqz v0, :cond_6

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/telephony/SubscriptionHelper;->mSubActivationUpdated:Z

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->isCrossMappingSupported()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/SubscriptionHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/SubscriptionController;->getActiveSubInfoCount(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_5

    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionHelper;->updateNwMode()V

    invoke-static {}, Lcom/android/internal/telephony/ModemStackController;->isStackReady()Z

    move-result v2

    if-nez v2, :cond_5

    return-void

    :cond_5
    iget-object v2, p0, Lcom/android/internal/telephony/SubscriptionHelper;->mInsertSimState:[I

    invoke-virtual {p0, v2, v4}, Lcom/android/internal/telephony/SubscriptionHelper;->updateSubActivation([IZ)V

    :cond_6
    return-void
.end method

.method public static getInstance()Lcom/android/internal/telephony/SubscriptionHelper;
    .locals 2

    sget-object v0, Lcom/android/internal/telephony/SubscriptionHelper;->sInstance:Lcom/android/internal/telephony/SubscriptionHelper;

    if-nez v0, :cond_0

    const-string/jumbo v0, "SubHelper"

    const-string/jumbo v1, "getInstance null"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Lcom/android/internal/telephony/SubscriptionHelper;->sInstance:Lcom/android/internal/telephony/SubscriptionHelper;

    return-object v0
.end method

.method private handleIccChanged(Landroid/os/AsyncResult;)V
    .locals 8

    iget-object v6, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v6, :cond_0

    return-void

    :cond_0
    iget-object v4, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v1

    if-eqz v1, :cond_4

    sget-object v5, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_UNKNOWN:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCard;->getNumApplications()I

    move-result v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_3

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/uicc/UiccCard;->getApplicationIndex(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getState()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_DETECTED:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    if-eq v5, v6, :cond_1

    :cond_3
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {p0, v6, v5}, Lcom/android/internal/telephony/SubscriptionHelper;->updateAppState(ILcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;)V

    :cond_4
    return-void
.end method

.method public static init(Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/SubscriptionHelper;
    .locals 4

    const-class v1, Lcom/android/internal/telephony/SubscriptionHelper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/SubscriptionHelper;->sInstance:Lcom/android/internal/telephony/SubscriptionHelper;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/internal/telephony/SubscriptionHelper;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/telephony/SubscriptionHelper;-><init>(Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)V

    sput-object v0, Lcom/android/internal/telephony/SubscriptionHelper;->sInstance:Lcom/android/internal/telephony/SubscriptionHelper;

    :goto_0
    sget-object v0, Lcom/android/internal/telephony/SubscriptionHelper;->sInstance:Lcom/android/internal/telephony/SubscriptionHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :cond_0
    :try_start_1
    const-string/jumbo v0, "SubHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "init() called multiple times!  sInstance = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/SubscriptionHelper;->sInstance:Lcom/android/internal/telephony/SubscriptionHelper;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private isAllSubsAvailable()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    :goto_0
    sget v2, Lcom/android/internal/telephony/SubscriptionHelper;->sNumPhones:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/telephony/SubscriptionHelper;->mSubStatus:[I

    aget v2, v2, v1

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    const/4 v0, 0x0

    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/SubscriptionHelper;->mSetUiccSubCount:[I

    aget v2, v2, v1

    if-lez v2, :cond_2

    const/4 v0, 0x0

    :cond_1
    return v0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static isEnabled()Z
    .locals 1

    sget-boolean v0, Lcom/android/internal/telephony/SubscriptionHelper;->sIsQcomDsModem:Z

    return v0
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "SubHelper"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "SubHelper"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private logi(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "SubHelper"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private processSetUiccSubscriptionDone(Landroid/os/Message;)V
    .locals 13

    const/4 v12, 0x1

    const/4 v11, 0x0

    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v6

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    iget-object v4, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v4, [I

    aget v5, v4, v11

    aget v2, v4, v12

    const/4 v9, 0x2

    aget v8, v4, v9

    invoke-virtual {v6, v5}, Lcom/android/internal/telephony/SubscriptionController;->getSubId(I)[I

    move-result-object v7

    invoke-static {}, Lcom/android/internal/telephony/ModemStackController;->isStackReady()Z

    move-result v9

    xor-int/lit8 v1, v9, 0x1

    iget-object v9, p0, Lcom/android/internal/telephony/SubscriptionHelper;->mSetUiccSubCount:[I

    aget v10, v9, v5

    add-int/lit8 v10, v10, -0x1

    aput v10, v9, v5

    iget-object v9, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v9, :cond_0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Exception in SET_UICC_SUBSCRIPTION, slotId = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " newSubState "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/SubscriptionHelper;->loge(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/internal/telephony/SubscriptionHelper;->mSubStatus:[I

    const/16 v10, -0x64

    aput v10, v9, v5

    invoke-direct {p0, v5, v2, v12, v8}, Lcom/android/internal/telephony/SubscriptionHelper;->broadcastSetUiccResult(IIII)V

    return-void

    :cond_0
    iget-object v9, p0, Lcom/android/internal/telephony/SubscriptionHelper;->mSetUiccSubCount:[I

    aget v9, v9, v5

    if-lez v9, :cond_1

    const-string/jumbo v9, "CTC"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getSalesCode()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    xor-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_1

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "processSetUiccSubscriptionDone: Skip!! slotId:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", mSetUiccSubCount:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/internal/telephony/SubscriptionHelper;->mSetUiccSubCount:[I

    aget v10, v10, v5

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/internal/telephony/SubscriptionHelper;->logd(Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/SubscriptionHelper;->syncPhoneOnFromDB(I)I

    move-result v3

    if-nez v1, :cond_2

    if-eq v2, v3, :cond_2

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "processSetUiccSubscriptionDone: Update PhoneOn DB, slotId="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", state="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/internal/telephony/SubscriptionHelper;->logd(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/internal/telephony/SubscriptionHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    sget-object v10, Lcom/android/internal/telephony/SubscriptionHelper;->mPhoneOnKey:[Ljava/lang/String;

    aget-object v10, v10, v5

    invoke-static {v9, v10, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_2
    invoke-direct {p0, v5, v2, v11, v8}, Lcom/android/internal/telephony/SubscriptionHelper;->broadcastSetUiccResult(IIII)V

    iget-object v9, p0, Lcom/android/internal/telephony/SubscriptionHelper;->mSubStatus:[I

    aput v2, v9, v5

    invoke-direct {p0}, Lcom/android/internal/telephony/SubscriptionHelper;->isAllSubsAvailable()Z

    move-result v9

    if-eqz v9, :cond_5

    if-eqz v1, :cond_3

    return-void

    :cond_3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Received all subs, slotid = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " newSubState = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " sTriggerDds = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-boolean v10, Lcom/android/internal/telephony/SubscriptionHelper;->sTriggerDds:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/internal/telephony/SubscriptionHelper;->logd(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->isCrossMappingSupported()Z

    move-result v9

    if-eqz v9, :cond_4

    sget-boolean v9, Lcom/android/internal/telephony/SubscriptionHelper;->sTriggerDds:Z

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/SubscriptionHelper;->setDdsIfRequired(Z)V

    :cond_4
    sput-boolean v11, Lcom/android/internal/telephony/SubscriptionHelper;->sTriggerDds:Z

    :cond_5
    return-void
.end method

.method private processSimRefresh(Landroid/os/AsyncResult;)V
    .locals 5

    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_1

    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_1

    new-instance v0, Ljava/lang/Integer;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " Received SIM refresh, reset sub state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " old sub state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/SubscriptionHelper;->mSubStatus:[I

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " refreshResult = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->refreshResult:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/SubscriptionHelper;->logi(Ljava/lang/String;)V

    iget v2, v1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->refreshResult:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/SubscriptionHelper;->mSubStatus:[I

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, -0x1

    aput v4, v2, v3

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v2, "processSimRefresh received without input"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/SubscriptionHelper;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private processStackReady(Landroid/os/AsyncResult;)V
    .locals 5

    iget-object v3, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v1, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "processStackReady: result = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/SubscriptionHelper;->logd(Ljava/lang/String;)V

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    const/4 v3, 0x1

    sput-boolean v3, Lcom/android/internal/telephony/SubscriptionHelper;->sTriggerDds:Z

    const/4 v1, 0x1

    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/SubscriptionHelper;->mDefaultDataSubId:I

    const-string/jumbo v3, "2"

    const-string/jumbo v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x0

    :goto_0
    sget v3, Lcom/android/internal/telephony/SubscriptionHelper;->sNumPhones:I

    if-ge v0, v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/SubscriptionHelper;->mSubStatus:[I

    const/4 v4, -0x1

    aput v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-boolean v3, p0, Lcom/android/internal/telephony/SubscriptionHelper;->mSubActivationUpdated:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/telephony/SubscriptionHelper;->mInsertSimState:[I

    invoke-virtual {p0, v3, v1}, Lcom/android/internal/telephony/SubscriptionHelper;->updateSubActivation([IZ)V

    :goto_1
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/SubscriptionHelper;->checkAllSubReady()V

    goto :goto_1
.end method

.method private setDdsIfRequired(Z)V
    .locals 7

    const/4 v5, -0x1

    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()I

    move-result v0

    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(I)I

    move-result v1

    iget v4, p0, Lcom/android/internal/telephony/SubscriptionHelper;->mDefaultDataSubId:I

    if-ne v4, v0, :cond_1

    const/4 v3, 0x1

    :goto_0
    const-string/jumbo v4, "ril.datacross.slotid"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    if-le v4, v5, :cond_2

    const/4 v2, 0x1

    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setDdsIfRequired: ddsSub = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " ddsPhone = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " force = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " needSetDds = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " isDataCross = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/SubscriptionHelper;->logd(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v4

    if-eqz v4, :cond_0

    if-eqz p1, :cond_0

    if-eqz v3, :cond_0

    xor-int/lit8 v4, v2, 0x1

    if-eqz v4, :cond_0

    const-string/jumbo v4, "ril.dds.force"

    const-string/jumbo v5, "1"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/internal/telephony/SubscriptionHelper;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v4, v4, v1

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Lcom/android/internal/telephony/CommandsInterface;->setDataAllowed(ZLandroid/os/Message;)V

    :cond_0
    return-void

    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private syncPhoneOnFromDB(I)I
    .locals 4

    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionHelper;->mPhoneOn:[I

    iget-object v1, p0, Lcom/android/internal/telephony/SubscriptionHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/SubscriptionHelper;->mPhoneOnKey:[Ljava/lang/String;

    aget-object v2, v2, p1

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    aput v1, v0, p1

    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionHelper;->mPhoneOn:[I

    aget v0, v0, p1

    return v0
.end method

.method private updateAppState(ILcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;)V
    .locals 5

    iget-object v3, p0, Lcom/android/internal/telephony/SubscriptionHelper;->mAppState:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    aget-object v3, v3, p1

    if-ne v3, p2, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iget-object v3, p0, Lcom/android/internal/telephony/SubscriptionHelper;->mAppState:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    aget-object v2, v3, p1

    iget-object v3, p0, Lcom/android/internal/telephony/SubscriptionHelper;->mAppState:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    aput-object p2, v3, p1

    invoke-static {}, Lcom/android/internal/telephony/ModemStackController;->isStackReady()Z

    move-result v3

    if-nez v3, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionHelper;->-getcom-android-internal-telephony-uicc-IccCardApplicationStatus$AppStateSwitchesValues()[I

    move-result-object v3

    invoke-virtual {p2}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    :cond_2
    :goto_0
    new-instance v1, Ljava/lang/StringBuffer;

    const-string/jumbo v3, "updateAppState:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, " Slot["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string/jumbo v4, "] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string/jumbo v4, " -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string/jumbo v3, ", phoneOn: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/SubscriptionHelper;->mPhoneOn:[I

    aget v4, v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string/jumbo v3, ", currentSubState: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string/jumbo v3, ", mSubActivationUpdated: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/internal/telephony/SubscriptionHelper;->mSubActivationUpdated:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/SubscriptionHelper;->logd(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/internal/telephony/SubscriptionHelper;->mSubActivationUpdated:Z

    if-eqz v3, :cond_4

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SubscriptionHelper;->syncPhoneOnFromDB(I)I

    iget-object v3, p0, Lcom/android/internal/telephony/SubscriptionHelper;->mInsertSimState:[I

    aget v3, v3, p1

    const/16 v4, -0x63

    if-eq v3, v4, :cond_3

    iget-object v3, p0, Lcom/android/internal/telephony/SubscriptionHelper;->mPhoneOn:[I

    aget v3, v3, p1

    if-eq v0, v3, :cond_3

    iget-object v3, p0, Lcom/android/internal/telephony/SubscriptionHelper;->mPhoneOn:[I

    aget v3, v3, p1

    invoke-virtual {p0, p1, v3}, Lcom/android/internal/telephony/SubscriptionHelper;->setUiccSubscription(II)V

    :cond_3
    :goto_1
    return-void

    :pswitch_0
    iget-object v3, p0, Lcom/android/internal/telephony/SubscriptionHelper;->mSubStatus:[I

    const/4 v4, -0x1

    aput v4, v3, p1

    return-void

    :pswitch_1
    sget-object v3, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_PIN:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    if-eq v2, v3, :cond_2

    sget-object v3, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    if-eq v2, v3, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/android/internal/telephony/SubscriptionHelper;->checkAllSubReady()V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getSubState(I)I
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionHelper;->mSubStatus:[I

    aget v0, v0, p1

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    new-instance v0, Ljava/lang/Integer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const-string/jumbo v1, "EVENT_SET_UICC_SUBSCRIPTION_DONE"

    invoke-static {v1}, Lcom/android/internal/telephony/SubscriptionHelper;->logd(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SubscriptionHelper;->processSetUiccSubscriptionDone(Landroid/os/Message;)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SubscriptionHelper;->processSimRefresh(Landroid/os/AsyncResult;)V

    goto :goto_0

    :pswitch_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SubscriptionHelper;->processStackReady(Landroid/os/AsyncResult;)V

    goto :goto_0

    :pswitch_3
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SubscriptionHelper;->handleIccChanged(Landroid/os/AsyncResult;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public isRadioAvailable(I)Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionHelper;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v0, v0, p1

    invoke-interface {v0}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isAvailable()Z

    move-result v0

    return v0
.end method

.method public isRadioOn(I)Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionHelper;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v0, v0, p1

    invoke-interface {v0}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v0

    return v0
.end method

.method public proceedToHandleIccEvent()Z
    .locals 7

    const/4 v6, 0x1

    const/4 v5, -0x1

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/internal/telephony/SubscriptionHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "airplane_mode_on"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    sget-boolean v2, Lcom/android/internal/telephony/SubscriptionHelper;->sApmSIMNotPwdn:Z

    if-nez v2, :cond_1

    const/4 v1, 0x0

    :goto_0
    sget v2, Lcom/android/internal/telephony/SubscriptionHelper;->sNumPhones:I

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SubscriptionHelper;->isRadioOn(I)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " proceedToHandleIccEvent, radio off/unavailable, phoneId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/SubscriptionHelper;->logi(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/internal/telephony/SubscriptionHelper;->mSubStatus:[I

    aput v5, v2, v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-ne v0, v6, :cond_2

    sget-boolean v2, Lcom/android/internal/telephony/SubscriptionHelper;->sApmSIMNotPwdn:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " proceedToHandleIccEvent, sApmSIMNotPwdn = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/internal/telephony/SubscriptionHelper;->sApmSIMNotPwdn:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/SubscriptionHelper;->logd(Ljava/lang/String;)V

    return v4

    :cond_2
    const/4 v1, 0x0

    :goto_1
    sget v2, Lcom/android/internal/telephony/SubscriptionHelper;->sNumPhones:I

    if-ge v1, v2, :cond_5

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SubscriptionHelper;->isRadioAvailable(I)Z

    move-result v2

    if-eqz v2, :cond_3

    if-nez v0, :cond_4

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SubscriptionHelper;->isRadioOn(I)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_4

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " proceedToHandleIccEvent, radio not available, phoneId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/SubscriptionHelper;->logi(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/internal/telephony/SubscriptionHelper;->mSubStatus:[I

    aput v5, v2, v1

    return v4

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    return v6
.end method

.method public setUiccSubscription(II)V
    .locals 13

    const/4 v11, 0x0

    const/4 v10, 0x0

    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v12

    if-nez v12, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setUiccSubscription: slotId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " card info not available"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/SubscriptionHelper;->logd(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->isCrossMappingSupported()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "vold.decrypt"

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v0, "trigger_restart_min_framework"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "1"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const-string/jumbo v0, "setUiccSubscription : Encryption Mode"

    invoke-static {v0}, Lcom/android/internal/telephony/SubscriptionHelper;->logd(Ljava/lang/String;)V

    return-void

    :cond_2
    const/4 v0, 0x1

    if-ne p2, v0, :cond_3

    invoke-static {}, Lcom/android/internal/telephony/ModemStackController;->isStackReady()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    const-string/jumbo v0, "setUiccSubscription : Stack is not ready"

    invoke-static {v0}, Lcom/android/internal/telephony/SubscriptionHelper;->logd(Ljava/lang/String;)V

    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionHelper;->mSetUiccSubCount:[I

    const/4 v1, 0x0

    aput v1, v0, p1

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v12}, Lcom/android/internal/telephony/uicc/UiccCard;->getNumApplications()I

    move-result v0

    if-ge v2, v0, :cond_6

    invoke-virtual {v12, v2}, Lcom/android/internal/telephony/uicc/UiccCard;->getApplicationIndex(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->ordinal()I

    move-result v6

    if-nez v11, :cond_8

    const/4 v0, 0x2

    if-eq v6, v0, :cond_4

    const/4 v0, 0x1

    if-ne v6, v0, :cond_8

    :cond_4
    const/4 v0, 0x3

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p2, v0, v1

    const/4 v1, 0x1

    const/4 v3, 0x2

    aput v1, v0, v3

    const/4 v1, 0x1

    invoke-static {p0, v1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionHelper;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v0, v0, p1

    move v1, p1

    move v3, p1

    move v4, p2

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/CommandsInterface;->setUiccSubscription(IIIILandroid/os/Message;)V

    const/4 v11, 0x1

    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionHelper;->mSetUiccSubCount:[I

    aget v1, v0, p1

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, p1

    :cond_5
    :goto_1
    if-eqz v11, :cond_a

    if-eqz v10, :cond_a

    :cond_6
    if-nez v11, :cond_7

    xor-int/lit8 v0, v10, 0x1

    if-eqz v0, :cond_7

    const/4 v0, 0x3

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p2, v0, v1

    const/4 v1, 0x0

    const/4 v3, 0x2

    aput v1, v0, v3

    const/4 v1, 0x1

    invoke-static {p0, v1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v8

    const/4 v0, 0x0

    invoke-static {v9, v0, v8}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/SubscriptionHelper;->processSetUiccSubscriptionDone(Landroid/os/Message;)V

    :cond_7
    return-void

    :cond_8
    if-nez v10, :cond_5

    const/4 v0, 0x4

    if-eq v6, v0, :cond_9

    const/4 v0, 0x3

    if-ne v6, v0, :cond_5

    :cond_9
    const/4 v0, 0x3

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p2, v0, v1

    const/4 v1, 0x2

    const/4 v3, 0x2

    aput v1, v0, v3

    const/4 v1, 0x1

    invoke-static {p0, v1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionHelper;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v0, v0, p1

    move v1, p1

    move v3, p1

    move v4, p2

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/CommandsInterface;->setUiccSubscription(IIIILandroid/os/Message;)V

    const/4 v10, 0x1

    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionHelper;->mSetUiccSubCount:[I

    aget v1, v0, p1

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, p1

    goto :goto_1

    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0
.end method

.method public updateNwMode()V
    .locals 1

    invoke-static {}, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->getInstance()Lcom/android/internal/telephony/ModemBindingPolicyHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->updatePrefNwTypeIfRequired()V

    return-void
.end method

.method public updateSubActivation([I)V
    .locals 3

    const-string/jumbo v1, "updateSubActivation: Start"

    invoke-static {v1}, Lcom/android/internal/telephony/SubscriptionHelper;->logd(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/internal/telephony/SubscriptionHelper;->mInsertSimState:[I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/telephony/SubscriptionHelper;->mSubActivationUpdated:Z

    const/4 v0, 0x0

    :goto_0
    sget v1, Lcom/android/internal/telephony/SubscriptionHelper;->sNumPhones:I

    if-ge v0, v1, :cond_1

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SubscriptionHelper;->syncPhoneOnFromDB(I)I

    iget-object v1, p0, Lcom/android/internal/telephony/SubscriptionHelper;->mInsertSimState:[I

    aget v1, v1, v0

    const/16 v2, -0x63

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/SubscriptionHelper;->mAppState:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    sget-object v2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_UNKNOWN:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    aput-object v2, v1, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/ModemStackController;->isStackReady()Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "updateSubActivation: Stop, Stack is not Ready or simStatus is null"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SubscriptionHelper;->loge(Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-direct {p0}, Lcom/android/internal/telephony/SubscriptionHelper;->checkAllSubReady()V

    return-void
.end method

.method public updateSubActivation([IZ)V
    .locals 9

    const/4 v8, 0x0

    const-string/jumbo v6, "persist.radio.primarycard"

    invoke-static {v6, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v3

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    xor-int/lit8 v6, v0, 0x1

    if-eqz v6, :cond_0

    const/4 v6, 0x1

    sput-boolean v6, Lcom/android/internal/telephony/SubscriptionHelper;->sTriggerDds:Z

    :cond_0
    const/4 v2, 0x0

    :goto_0
    sget v6, Lcom/android/internal/telephony/SubscriptionHelper;->sNumPhones:I

    if-ge v2, v6, :cond_4

    aget v6, p1, v2

    const/16 v7, -0x63

    if-ne v6, v7, :cond_2

    iget-object v6, p0, Lcom/android/internal/telephony/SubscriptionHelper;->mSubStatus:[I

    aget v7, p1, v2

    aput v7, v6, v2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, " Sim not inserted in slot ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "] simStatus= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget v7, p1, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/SubscriptionHelper;->logd(Ljava/lang/String;)V

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v3, v2}, Lcom/android/internal/telephony/SubscriptionController;->getSubId(I)[I

    move-result-object v4

    iget-object v6, p0, Lcom/android/internal/telephony/SubscriptionHelper;->mPhoneOn:[I

    aget v5, v6, v2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setUicc for ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "]= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", subId= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget v7, v4, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", prev subState= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/SubscriptionHelper;->mSubStatus:[I

    aget v7, v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", stackReady "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/SubscriptionHelper;->logd(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/internal/telephony/SubscriptionHelper;->mSubStatus:[I

    aget v6, v6, v2

    if-ne v6, v5, :cond_3

    if-eqz p2, :cond_1

    :cond_3
    invoke-virtual {p0, v2, v5}, Lcom/android/internal/telephony/SubscriptionHelper;->setUiccSubscription(II)V

    const/4 v1, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method
