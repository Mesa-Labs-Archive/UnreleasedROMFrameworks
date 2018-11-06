.class public Lcom/android/internal/telephony/uicc/UiccStateChangedLauncher;
.super Landroid/os/Handler;
.source "UiccStateChangedLauncher.java"


# static fields
.field private static final EVENT_ICC_CHANGED:I = 0x1

.field private static final TAG:Ljava/lang/String;

.field private static sDeviceProvisioningPackage:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsRestricted:[Z

.field private mUiccController:Lcom/android/internal/telephony/uicc/UiccController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/internal/telephony/uicc/UiccStateChangedLauncher;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/uicc/UiccStateChangedLauncher;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/telephony/uicc/UiccStateChangedLauncher;->sDeviceProvisioningPackage:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/uicc/UiccController;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/uicc/UiccStateChangedLauncher;->mIsRestricted:[Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040201

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/uicc/UiccStateChangedLauncher;->sDeviceProvisioningPackage:Ljava/lang/String;

    sget-object v0, Lcom/android/internal/telephony/uicc/UiccStateChangedLauncher;->sDeviceProvisioningPackage:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/uicc/UiccStateChangedLauncher;->sDeviceProvisioningPackage:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccStateChangedLauncher;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/internal/telephony/uicc/UiccStateChangedLauncher;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccStateChangedLauncher;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/uicc/UiccController;->registerForIccChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private notifyStateChanged()V
    .locals 4

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/android/internal/telephony/uicc/UiccStateChangedLauncher;->sDeviceProvisioningPackage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccStateChangedLauncher;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v2, Lcom/android/internal/telephony/uicc/UiccStateChangedLauncher;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    const/4 v4, 0x1

    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "unexpected event not handled"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    :pswitch_0
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccStateChangedLauncher;->mIsRestricted:[Z

    if-nez v3, :cond_0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v3

    new-array v3, v3, [Z

    iput-object v3, p0, Lcom/android/internal/telephony/uicc/UiccStateChangedLauncher;->mIsRestricted:[Z

    const/4 v2, 0x1

    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccStateChangedLauncher;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCards()[Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    if-eqz v0, :cond_4

    array-length v3, v0

    if-ge v1, v3, :cond_4

    aget-object v3, v0, v1

    if-eqz v3, :cond_2

    aget-object v3, v0, v1

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccCard;->getCardState()Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    move-result-object v3

    sget-object v5, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_RESTRICTED:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-eq v3, v5, :cond_3

    move v3, v4

    :goto_1
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccStateChangedLauncher;->mIsRestricted:[Z

    aget-boolean v5, v5, v1

    if-eq v3, v5, :cond_1

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccStateChangedLauncher;->mIsRestricted:[Z

    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccStateChangedLauncher;->mIsRestricted:[Z

    aget-boolean v5, v5, v1

    xor-int/lit8 v5, v5, 0x1

    aput-boolean v5, v3, v1

    const/4 v2, 0x1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    move v3, v4

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    goto :goto_1

    :cond_4
    if-eqz v2, :cond_5

    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccStateChangedLauncher;->notifyStateChanged()V

    :cond_5
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
