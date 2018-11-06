.class public final Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;
.super Lcom/android/internal/telephony/WakeLockStateMachine;
.source "CdmaServiceCategoryProgramHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler$1;
    }
.end annotation


# instance fields
.field final mCi:Lcom/android/internal/telephony/CommandsInterface;

.field private final mScpResultsReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static synthetic -wrap0(Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 2

    const-string/jumbo v0, "CdmaServiceCategoryProgramHandler"

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/android/internal/telephony/WakeLockStateMachine;-><init>(Ljava/lang/String;Landroid/content/Context;Lcom/android/internal/telephony/Phone;)V

    new-instance v0, Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler$1;-><init>(Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;->mScpResultsReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    return-void
.end method

.method private handleServiceCategoryProgramData(Lcom/android/internal/telephony/cdma/SmsMessage;)Z
    .locals 11

    const/4 v7, 0x0

    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSmsCbProgramData()Ljava/util/ArrayList;

    move-result-object v10

    if-nez v10, :cond_0

    const-string/jumbo v0, "handleServiceCategoryProgramData: program data list is null!"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;->loge(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v0, "android.provider.Telephony.SMS_SERVICE_CATEGORY_PROGRAM_DATA_RECEIVED"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v2, "CscFeature_RIL_ConfigCellBroadcastReceiverPkg"

    invoke-virtual {v0, v2}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x10401f9

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    :cond_1
    invoke-virtual {v1, v9}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v0, "sender"

    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v0, "program_data"

    invoke-virtual {v1, v0, v10}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    invoke-static {v1, v0}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.RECEIVE_SMS"

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;->mScpResultsReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;->getHandler()Landroid/os/Handler;

    move-result-object v5

    const/16 v3, 0x10

    const/4 v6, -0x1

    move-object v8, v7

    invoke-virtual/range {v0 .. v8}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    const/4 v0, 0x1

    return v0
.end method

.method static makeScpHandler(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;
    .locals 1

    new-instance v0, Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;->start()V

    return-object v0
.end method


# virtual methods
.method protected handleSmsMessage(Landroid/os/Message;)Z
    .locals 2

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/android/internal/telephony/cdma/SmsMessage;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/cdma/SmsMessage;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;->handleServiceCategoryProgramData(Lcom/android/internal/telephony/cdma/SmsMessage;)Z

    move-result v0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "handleMessage got object of type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;->loge(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method
