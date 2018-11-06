.class public Lcom/samsung/android/hqm/HqmExample;
.super Ljava/lang/Object;
.source "HqmExample.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/hqm/HqmExample$1;
    }
.end annotation


# static fields
.field public static final ACTION_HQM_BIGDATA_INTENT:Ljava/lang/String; = "com.samsung.context.hqmbigdata.intent"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field mScrennSteteChangedReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/samsung/android/hqm/HqmExample;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hqm/HqmExample;->TAG:Ljava/lang/String;

    new-instance v0, Lcom/samsung/android/hqm/HqmExample$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/hqm/HqmExample$1;-><init>(Lcom/samsung/android/hqm/HqmExample;)V

    iput-object v0, p0, Lcom/samsung/android/hqm/HqmExample;->mScrennSteteChangedReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/samsung/android/hqm/HqmExample;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/samsung/android/hqm/HqmExample;->setup()V

    return-void
.end method

.method private setup()V
    .locals 6

    const/4 v4, 0x0

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "android.intent.action.TIME_SET"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/hqm/HqmExample;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/hqm/HqmExample;->mScrennSteteChangedReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public exampleIntent()V
    .locals 14

    const/4 v1, 0x0

    iget-object v12, p0, Lcom/samsung/android/hqm/HqmExample;->TAG:Ljava/lang/String;

    const-string/jumbo v13, "exampleIntent - start"

    invoke-static {v12, v13}, Lcom/samsung/android/hqm/Util;->logdbg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "Power-Intent"

    const-string/jumbo v3, "POWE-I"

    const-string/jumbo v4, "sm"

    const-string/jumbo v5, "0.0"

    const-string/jumbo v6, "sec"

    const-string/jumbo v7, "\"key1\":\"value1\",\"key2\":\"value2\""

    const-string/jumbo v8, "\"key3\":\"value3\",\"key4\":\"value4\""

    const-string/jumbo v9, "\"key5\":\"value5\",\"key6\":\"value6\""

    const-string/jumbo v10, ""

    new-instance v0, Landroid/os/HWParamParcel;

    invoke-direct {v0}, Landroid/os/HWParamParcel;-><init>()V

    invoke-virtual/range {v0 .. v10}, Landroid/os/HWParamParcel;->setData(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v11, Landroid/content/Intent;

    const-string/jumbo v12, "com.samsung.context.hqmbigdata.intent"

    invoke-direct {v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v12, "hwparam"

    invoke-virtual {v11, v12, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v12, p0, Lcom/samsung/android/hqm/HqmExample;->mContext:Landroid/content/Context;

    invoke-virtual {v12, v11}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v12, p0, Lcom/samsung/android/hqm/HqmExample;->TAG:Ljava/lang/String;

    const-string/jumbo v13, "exampleIntent - end"

    invoke-static {v12, v13}, Lcom/samsung/android/hqm/Util;->logdbg(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public examplePublicAPI()V
    .locals 12

    iget-object v10, p0, Lcom/samsung/android/hqm/HqmExample;->TAG:Ljava/lang/String;

    const-string/jumbo v11, "examplePublicAPI - start"

    invoke-static {v10, v11}, Lcom/samsung/android/hqm/Util;->logdbg(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iget-object v10, p0, Lcom/samsung/android/hqm/HqmExample;->mContext:Landroid/content/Context;

    const-string/jumbo v11, "HqmManagerService"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/SemHqmManager;

    const/4 v1, 0x0

    const-string/jumbo v2, "Power-API"

    const-string/jumbo v3, "POWE-A"

    const-string/jumbo v4, "sm"

    const-string/jumbo v5, "0.0"

    const-string/jumbo v6, "sec"

    const-string/jumbo v7, "\"key1\":\"value1\",\"key2\":\"value2\""

    const-string/jumbo v8, "\"key3\":\"value3\",\"key4\":\"value4\""

    const-string/jumbo v9, "\"key5\":\"value5\",\"key6\":\"value6\""

    if-eqz v0, :cond_0

    invoke-virtual/range {v0 .. v9}, Landroid/os/SemHqmManager;->sendHWParamToHQM(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_0
    iget-object v10, p0, Lcom/samsung/android/hqm/HqmExample;->TAG:Ljava/lang/String;

    const-string/jumbo v11, "examplePublicAPI - end"

    invoke-static {v10, v11}, Lcom/samsung/android/hqm/Util;->logdbg(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
