.class public Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;
.super Landroid/net/NetworkFactory;
.source "TelephonyNetworkFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory$InternalHandler;
    }
.end annotation


# static fields
.field protected static final DBG:Z = true

.field private static final EVENT_ACTIVE_PHONE_SWITCH:I = 0x1

.field private static final EVENT_DEFAULT_SUBSCRIPTION_CHANGED:I = 0x3

.field private static final EVENT_NETWORK_RELEASE:I = 0x5

.field private static final EVENT_NETWORK_REQUEST:I = 0x4

.field private static final EVENT_SUBSCRIPTION_CHANGED:I = 0x2

.field private static final RELEASE:Z = false

.field private static final REQUEST:Z = true

.field private static final REQUEST_LOG_SIZE:I = 0x64

.field private static final TELEPHONY_NETWORK_SCORE:I = 0x32


# instance fields
.field public final LOG_TAG:Ljava/lang/String;

.field public final LOG_TAG_DDS:Ljava/lang/String;

.field private final mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTracker;

.field private mDdsTriggerEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mDefaultRequests:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/net/NetworkRequest;",
            "Landroid/util/LocalLog;",
            ">;"
        }
    .end annotation
.end field

.field private final mInternalHandler:Landroid/os/Handler;

.field private mIsActive:Z

.field private mIsDefault:Z

.field private final mPendingRequests:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/net/NetworkRequest;",
            "Landroid/util/LocalLog;",
            ">;"
        }
    .end annotation
.end field

.field private mPhoneId:I

.field private final mPhoneSwitcher:Lcom/android/internal/telephony/PhoneSwitcher;

.field private final mSpecificRequests:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/net/NetworkRequest;",
            "Landroid/util/LocalLog;",
            ">;"
        }
    .end annotation
.end field

.field private final mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

.field private mSubscriptionId:I

.field private final mSubscriptionMonitor:Lcom/android/internal/telephony/SubscriptionMonitor;


# direct methods
.method static synthetic -wrap0(Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->onActivePhoneSwitch()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->onDefaultChange()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->onNeedNetworkFor(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->onReleaseNetworkFor(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->onSubIdChange()V

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/PhoneSwitcher;Lcom/android/internal/telephony/SubscriptionController;Lcom/android/internal/telephony/SubscriptionMonitor;Landroid/os/Looper;Landroid/content/Context;ILcom/android/internal/telephony/dataconnection/DcTracker;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "TelephonyNetworkFactory["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p4, p5, v0, v4}, Landroid/net/NetworkFactory;-><init>(Landroid/os/Looper;Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkCapabilities;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mDefaultRequests:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mSpecificRequests:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mPendingRequests:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mDdsTriggerEvents:Ljava/util/List;

    new-instance v0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory$InternalHandler;

    invoke-direct {v0, p0, p4}, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory$InternalHandler;-><init>(Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mInternalHandler:Landroid/os/Handler;

    invoke-direct {p0, p2, p6}, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->makeNetworkFilter(Lcom/android/internal/telephony/SubscriptionController;I)Landroid/net/NetworkCapabilities;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->setCapabilityFilter(Landroid/net/NetworkCapabilities;)V

    const/16 v0, 0x32

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->setScoreFilter(I)V

    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mPhoneSwitcher:Lcom/android/internal/telephony/PhoneSwitcher;

    iput-object p2, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    iput-object p3, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mSubscriptionMonitor:Lcom/android/internal/telephony/SubscriptionMonitor;

    iput p6, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mPhoneId:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "TelephonyNetworkFactory["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->LOG_TAG:Ljava/lang/String;

    iput-object p7, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iput-boolean v5, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mIsActive:Z

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mPhoneSwitcher:Lcom/android/internal/telephony/PhoneSwitcher;

    iget v1, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mPhoneId:I

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mInternalHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/PhoneSwitcher;->registerForActivePhoneSwitch(ILandroid/os/Handler;ILjava/lang/Object;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mSubscriptionId:I

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mSubscriptionMonitor:Lcom/android/internal/telephony/SubscriptionMonitor;

    iget v1, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mPhoneId:I

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mInternalHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/SubscriptionMonitor;->registerForSubscriptionChanged(ILandroid/os/Handler;ILjava/lang/Object;)V

    iput-boolean v5, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mIsDefault:Z

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mSubscriptionMonitor:Lcom/android/internal/telephony/SubscriptionMonitor;

    iget v1, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mPhoneId:I

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mInternalHandler:Landroid/os/Handler;

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/SubscriptionMonitor;->registerForDefaultDataSubscriptionChanged(ILandroid/os/Handler;ILjava/lang/Object;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "DDS-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->LOG_TAG_DDS:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mPhoneSwitcher:Lcom/android/internal/telephony/PhoneSwitcher;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSwitcher;->supportSyncDdsAndStartNi()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mDdsTriggerEvents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mPhoneSwitcher:Lcom/android/internal/telephony/PhoneSwitcher;

    iget v1, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mPhoneId:I

    invoke-virtual {v0, v1, p0}, Lcom/android/internal/telephony/PhoneSwitcher;->registerTNF(ILcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->register()V

    return-void
.end method

.method private addRequestInPendingRequests(Landroid/net/NetworkRequest;Landroid/util/LocalLog;)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mPendingRequests:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "addRequestInPendingRequests : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mPendingRequests:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->logDds(Ljava/lang/String;)V

    return-void
.end method

.method private addRequestInPendingRequests(Ljava/util/HashMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Landroid/net/NetworkRequest;",
            "Landroid/util/LocalLog;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkRequest;

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/LocalLog;

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->addRequestInPendingRequests(Landroid/net/NetworkRequest;Landroid/util/LocalLog;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private applyRequests(Ljava/util/HashMap;ZLjava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Landroid/net/NetworkRequest;",
            "Landroid/util/LocalLog;",
            ">;Z",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkRequest;

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/LocalLog;

    invoke-virtual {v0, p3}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-virtual {v3, v1, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->requestNetwork(Landroid/net/NetworkRequest;Landroid/util/LocalLog;)V

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-virtual {v3, v1, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->releaseNetwork(Landroid/net/NetworkRequest;Landroid/util/LocalLog;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private makeNetworkFilter(I)Landroid/net/NetworkCapabilities;
    .locals 3

    const/4 v1, 0x0

    new-instance v0, Landroid/net/NetworkCapabilities;

    invoke-direct {v0}, Landroid/net/NetworkCapabilities;-><init>()V

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addTransportType(I)Landroid/net/NetworkCapabilities;

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    const/16 v1, 0x16

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    new-instance v1, Landroid/net/StringNetworkSpecifier;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/net/StringNetworkSpecifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->setNetworkSpecifier(Landroid/net/NetworkSpecifier;)Landroid/net/NetworkCapabilities;

    return-object v0
.end method

.method private makeNetworkFilter(Lcom/android/internal/telephony/SubscriptionController;I)Landroid/net/NetworkCapabilities;
    .locals 2

    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/SubscriptionController;->getSubIdUsingPhoneId(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->makeNetworkFilter(I)Landroid/net/NetworkCapabilities;

    move-result-object v1

    return-object v1
.end method

.method private onActivePhoneSwitch()V
    .locals 7

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mPhoneSwitcher:Lcom/android/internal/telephony/PhoneSwitcher;

    iget v6, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mPhoneId:I

    invoke-virtual {v3, v6}, Lcom/android/internal/telephony/PhoneSwitcher;->isPhoneActive(I)Z

    move-result v2

    const-string/jumbo v3, "ril.datacross.slotid"

    const/4 v6, -0x1

    invoke-static {v3, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    iget-boolean v3, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mIsActive:Z

    if-ne v3, v2, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->supportDualLte()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v3, "QCOM"

    const-string/jumbo v6, "CMC"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_2

    if-eqz v2, :cond_2

    iget v3, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mPhoneId:I

    if-ne v0, v3, :cond_2

    :cond_0
    iput-boolean v2, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mIsActive:Z

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onActivePhoneSwitch("

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v6, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mIsActive:Z

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, ", "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v6, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mIsDefault:Z

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, ", "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, ")"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->logDds(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mIsDefault:Z

    if-eqz v3, :cond_1

    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mDefaultRequests:Ljava/util/HashMap;

    iget-boolean v3, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mIsActive:Z

    if-eqz v3, :cond_3

    move v3, v4

    :goto_0
    invoke-direct {p0, v6, v3, v1}, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->applyRequests(Ljava/util/HashMap;ZLjava/lang/String;)V

    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mSpecificRequests:Ljava/util/HashMap;

    iget-boolean v6, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mIsActive:Z

    if-eqz v6, :cond_4

    :goto_1
    invoke-direct {p0, v3, v4, v1}, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->applyRequests(Ljava/util/HashMap;ZLjava/lang/String;)V

    :cond_2
    return-void

    :cond_3
    move v3, v5

    goto :goto_0

    :cond_4
    move v4, v5

    goto :goto_1
.end method

.method private onDefaultChange()V
    .locals 7

    const/4 v3, 0x1

    const/16 v6, -0x3e8

    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v4}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()I

    move-result v1

    iget v4, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mSubscriptionId:I

    if-ne v1, v4, :cond_0

    const/4 v2, 0x1

    :goto_0
    iget-boolean v4, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mIsDefault:Z

    if-eq v2, v4, :cond_3

    iput-boolean v2, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mIsDefault:Z

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onDefaultChange("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mIsActive:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mIsDefault:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->logDds(Ljava/lang/String;)V

    iget-boolean v4, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mIsActive:Z

    if-nez v4, :cond_1

    return-void

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mPhoneSwitcher:Lcom/android/internal/telephony/PhoneSwitcher;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneSwitcher;->supportSyncDdsAndStartNi()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-boolean v4, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mIsDefault:Z

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mDdsTriggerEvents:Ljava/util/List;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mDdsTriggerEvents:Ljava/util/List;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mDefaultRequests:Ljava/util/HashMap;

    iget-boolean v5, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mIsDefault:Z

    if-eqz v5, :cond_6

    :goto_2
    invoke-direct {p0, v4, v3, v0}, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->applyRequests(Ljava/util/HashMap;ZLjava/lang/String;)V

    :cond_3
    return-void

    :cond_4
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mDefaultRequests:Ljava/util/HashMap;

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->addRequestInPendingRequests(Ljava/util/HashMap;)V

    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mPhoneSwitcher:Lcom/android/internal/telephony/PhoneSwitcher;

    invoke-virtual {v4, v3}, Lcom/android/internal/telephony/PhoneSwitcher;->notifyRequestPending(I)V

    return-void

    :cond_5
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mDefaultRequests:Ljava/util/HashMap;

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->removeRequestInPendingRequests(Ljava/util/HashMap;)V

    goto :goto_1

    :cond_6
    const/4 v3, 0x0

    goto :goto_2
.end method

.method private onNeedNetworkFor(Landroid/os/Message;)V
    .locals 12

    const/16 v10, 0x64

    const/4 v11, -0x1

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/net/NetworkRequest;

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v9, v6, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v9}, Landroid/net/NetworkCapabilities;->getNetworkSpecifier()Landroid/net/NetworkSpecifier;

    move-result-object v9

    if-nez v9, :cond_3

    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mDefaultRequests:Ljava/util/HashMap;

    invoke-virtual {v9, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/LocalLog;

    if-nez v5, :cond_0

    new-instance v5, Landroid/util/LocalLog;

    invoke-direct {v5, v10}, Landroid/util/LocalLog;-><init>(I)V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "created for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mDefaultRequests:Ljava/util/HashMap;

    invoke-virtual {v9, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v4, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mIsDefault:Z

    :cond_0
    :goto_0
    invoke-static {v6}, Lcom/android/internal/telephony/dataconnection/ApnContext;->apnIdForNetworkRequest(Landroid/net/NetworkRequest;)I

    move-result v0

    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v9}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()I

    move-result v3

    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v9, v3}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(I)I

    move-result v2

    const-string/jumbo v9, "ril.datacross.slotid"

    invoke-static {v9, v11}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->supportDualLte()Z

    move-result v9

    if-eqz v9, :cond_1

    const-string/jumbo v9, "QCOM"

    const-string/jumbo v10, "CMC"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    xor-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_1

    if-ne v1, v11, :cond_1

    iget v9, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mPhoneId:I

    if-eq v9, v2, :cond_1

    const/4 v9, 0x5

    if-eq v0, v9, :cond_1

    const/16 v9, 0x9

    if-eq v0, v9, :cond_1

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "onNeedNetworkFor: DataCrossPhoneId isn\'t set. apnId : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", wait onActivePhoneSwitch"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->logDds(Ljava/lang/String;)V

    const/4 v4, 0x0

    :cond_1
    iget-boolean v9, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mIsActive:Z

    if-eqz v9, :cond_5

    if-eqz v4, :cond_5

    const-string/jumbo v7, "onNeedNetworkFor"

    invoke-virtual {v5, v7}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->logDds(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mPhoneSwitcher:Lcom/android/internal/telephony/PhoneSwitcher;

    invoke-virtual {v9}, Lcom/android/internal/telephony/PhoneSwitcher;->supportSyncDdsAndStartNi()Z

    move-result v9

    if-eqz v9, :cond_4

    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mDdsTriggerEvents:Ljava/util/List;

    iget v10, v6, Landroid/net/NetworkRequest;->requestId:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    xor-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_4

    invoke-direct {p0, v6, v5}, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->addRequestInPendingRequests(Landroid/net/NetworkRequest;Landroid/util/LocalLog;)V

    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mPhoneSwitcher:Lcom/android/internal/telephony/PhoneSwitcher;

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Lcom/android/internal/telephony/PhoneSwitcher;->notifyRequestPending(I)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mSpecificRequests:Ljava/util/HashMap;

    invoke-virtual {v9, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/LocalLog;

    if-nez v5, :cond_0

    new-instance v5, Landroid/util/LocalLog;

    invoke-direct {v5, v10}, Landroid/util/LocalLog;-><init>(I)V

    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mSpecificRequests:Ljava/util/HashMap;

    invoke-virtual {v9, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_4
    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-virtual {v9, v6, v5}, Lcom/android/internal/telephony/dataconnection/DcTracker;->requestNetwork(Landroid/net/NetworkRequest;Landroid/util/LocalLog;)V

    goto :goto_1

    :cond_5
    iget-object v9, v6, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    const/16 v10, 0xa

    invoke-virtual {v9, v10}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v9

    if-eqz v9, :cond_a

    const/4 v8, 0x0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v9

    const/4 v10, 0x1

    if-le v9, v10, :cond_9

    if-eq v3, v11, :cond_6

    if-ne v2, v11, :cond_8

    :cond_6
    iget v9, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mPhoneId:I

    if-nez v9, :cond_7

    const/4 v8, 0x1

    const-string/jumbo v9, "onNeedNetworkFor: ddsSubId is Invalid or ddsPhoneId is invalid, Epdn will be setup only 1 phone."

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->logDds(Ljava/lang/String;)V

    :cond_7
    :goto_2
    if-eqz v8, :cond_2

    const-string/jumbo v7, "onNeedNetworkFor for Emergency PDN"

    invoke-virtual {v5, v7}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->logDds(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-virtual {v9, v6, v5}, Lcom/android/internal/telephony/dataconnection/DcTracker;->requestNetwork(Landroid/net/NetworkRequest;Landroid/util/LocalLog;)V

    goto :goto_1

    :cond_8
    iget v9, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mPhoneId:I

    if-ne v2, v9, :cond_7

    const/4 v8, 0x1

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "onNeedNetworkFor: Epdn will be setup with phoneId("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mPhoneId:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->logDds(Ljava/lang/String;)V

    goto :goto_2

    :cond_9
    const/4 v8, 0x1

    goto :goto_2

    :cond_a
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "not acting - isApp="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", isAct="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mIsActive:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->log(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method private onReleaseNetworkFor(Landroid/os/Message;)V
    .locals 6

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/net/NetworkRequest;

    const/4 v1, 0x0

    const/4 v0, 0x0

    iget-object v4, v2, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v4}, Landroid/net/NetworkCapabilities;->getNetworkSpecifier()Landroid/net/NetworkSpecifier;

    move-result-object v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mDefaultRequests:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/LocalLog;

    if-eqz v1, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mIsDefault:Z

    :goto_0
    iget-boolean v4, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mIsActive:Z

    if-eqz v4, :cond_4

    if-eqz v0, :cond_4

    const-string/jumbo v3, "onReleaseNetworkFor"

    invoke-virtual {v1, v3}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->logDds(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-virtual {v4, v2, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->releaseNetwork(Landroid/net/NetworkRequest;Landroid/util/LocalLog;)V

    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mPhoneSwitcher:Lcom/android/internal/telephony/PhoneSwitcher;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneSwitcher;->supportSyncDdsAndStartNi()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->removeRequestInPendingRequests(Landroid/net/NetworkRequest;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mSpecificRequests:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/LocalLog;

    if-eqz v1, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    iget-object v4, v2, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string/jumbo v3, "onReleaseNetworkFor for Emergency PDN"

    invoke-virtual {v1, v3}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->logDds(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-virtual {v4, v2, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->releaseNetwork(Landroid/net/NetworkRequest;Landroid/util/LocalLog;)V

    goto :goto_1

    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "not releasing - isApp="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", isAct="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mIsActive:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->log(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method private onSubIdChange()V
    .locals 3

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    iget v2, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mPhoneId:I

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/SubscriptionController;->getSubIdUsingPhoneId(I)I

    move-result v0

    iget v1, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mSubscriptionId:I

    if-eq v1, v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSubIdChange "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mSubscriptionId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->logDds(Ljava/lang/String;)V

    iput v0, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mSubscriptionId:I

    iget v1, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mSubscriptionId:I

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->makeNetworkFilter(I)Landroid/net/NetworkCapabilities;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->setCapabilityFilter(Landroid/net/NetworkCapabilities;)V

    :cond_0
    return-void
.end method

.method private removeRequestInPendingRequests(Landroid/net/NetworkRequest;)V
    .locals 3

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mPendingRequests:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mPendingRequests:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeRequestInPendingRequests : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mPendingRequests:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->logDds(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private removeRequestInPendingRequests(Ljava/util/HashMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Landroid/net/NetworkRequest;",
            "Landroid/util/LocalLog;",
            ">;)V"
        }
    .end annotation

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mPendingRequests:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkRequest;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->removeRequestInPendingRequests(Landroid/net/NetworkRequest;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public ddsChanged(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mDdsTriggerEvents:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_0

    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mDdsTriggerEvents:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    iget v6, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mPhoneId:I

    if-nez v6, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mDdsTriggerEvents:Ljava/util/List;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "ddsChanged() : event = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->logDds(Ljava/lang/String;)V

    :cond_2
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mPendingRequests:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v6

    if-lez v6, :cond_4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "ddsChanged() : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mPendingRequests:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->logDds(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mPendingRequests:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkRequest;

    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mPendingRequests:Ljava/util/HashMap;

    invoke-virtual {v6, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/LocalLog;

    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-virtual {v6, v3, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->requestNetwork(Landroid/net/NetworkRequest;Landroid/util/LocalLog;)V

    goto :goto_1

    :cond_3
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mPendingRequests:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    :cond_4
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5

    new-instance v2, Lcom/android/internal/util/IndentingPrintWriter;

    const-string/jumbo v3, "  "

    invoke-direct {v2, p2, v3}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->LOG_TAG_DDS:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " mSubId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mSubscriptionId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " mIsActive="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mIsActive:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " mIsDefault="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mIsDefault:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v3, "Default Requests:"

    invoke-virtual {v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mDefaultRequests:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkRequest;

    invoke-virtual {v2, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mDefaultRequests:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/LocalLog;

    invoke-virtual {v3, p1, v2, p3}, Landroid/util/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    return-void
.end method

.method protected log(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected logDds(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->LOG_TAG_DDS:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public needNetworkFor(Landroid/net/NetworkRequest;I)V
    .locals 3

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mInternalHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public releaseNetworkFor(Landroid/net/NetworkRequest;)V
    .locals 3

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mInternalHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
