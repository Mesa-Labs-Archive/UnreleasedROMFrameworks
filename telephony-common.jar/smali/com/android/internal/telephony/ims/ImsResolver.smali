.class public Lcom/android/internal/telephony/ims/ImsResolver;
.super Ljava/lang/Object;
.source "ImsResolver.java"

# interfaces
.implements Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceControllerCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/ims/ImsResolver$1;,
        Lcom/android/internal/telephony/ims/ImsResolver$2;,
        Lcom/android/internal/telephony/ims/ImsResolver$3;,
        Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceControllerFactory;,
        Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;,
        Lcom/android/internal/telephony/ims/ImsResolver$SubscriptionManagerProxy;
    }
.end annotation


# static fields
.field private static final HANDLER_ADD_PACKAGE:I = 0x0

.field private static final HANDLER_CONFIG_CHANGED:I = 0x2

.field private static final HANDLER_REMOVE_PACKAGE:I = 0x1

.field public static final METADATA_EMERGENCY_MMTEL_FEATURE:Ljava/lang/String; = "android.telephony.ims.EMERGENCY_MMTEL_FEATURE"

.field public static final METADATA_MMTEL_FEATURE:Ljava/lang/String; = "android.telephony.ims.MMTEL_FEATURE"

.field public static final METADATA_RCS_FEATURE:Ljava/lang/String; = "android.telephony.ims.RCS_FEATURE"

.field public static final SERVICE_INTERFACE:Ljava/lang/String; = "android.telephony.ims.ImsService"

.field private static final TAG:Ljava/lang/String; = "ImsResolver"


# instance fields
.field private mActiveControllers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/internal/telephony/ims/ImsServiceController;",
            ">;"
        }
    .end annotation
.end field

.field private mAppChangedReceiver:Landroid/content/BroadcastReceiver;

.field private mBoundImsServicesByFeature:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/internal/telephony/ims/ImsServiceController;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mBoundServicesLock:Ljava/lang/Object;

.field private final mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

.field private mCarrierServices:[Ljava/lang/String;

.field private mConfigChangedReceiver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private mDeviceService:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mImsServiceControllerFactory:Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceControllerFactory;

.field private mInstalledServicesCache:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mNumSlots:I

.field private mSubscriptionManagerProxy:Lcom/android/internal/telephony/ims/ImsResolver$SubscriptionManagerProxy;


# direct methods
.method static synthetic -com_android_internal_telephony_ims_ImsResolver-mthref-0()Landroid/util/SparseArray;
    .locals 1

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    return-object v0
.end method

.method static synthetic -get0(Lcom/android/internal/telephony/ims/ImsResolver;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 8

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/internal/telephony/ims/ImsResolver$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/ims/ImsResolver$1;-><init>(Lcom/android/internal/telephony/ims/ImsResolver;)V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mAppChangedReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/internal/telephony/ims/ImsResolver$2;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/ims/ImsResolver$2;-><init>(Lcom/android/internal/telephony/ims/ImsResolver;)V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mConfigChangedReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/internal/telephony/ims/ImsResolver$3;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/ims/ImsResolver$3;-><init>(Lcom/android/internal/telephony/ims/ImsResolver;)V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mSubscriptionManagerProxy:Lcom/android/internal/telephony/ims/ImsResolver$SubscriptionManagerProxy;

    new-instance v0, Lcom/android/internal/telephony/ims/-$Lambda$6hDwuvYxqWrzW_Ex5wc53XnUOpg$2;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/ims/-$Lambda$6hDwuvYxqWrzW_Ex5wc53XnUOpg$2;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mImsServiceControllerFactory:Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceControllerFactory;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mBoundServicesLock:Ljava/lang/Object;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/android/internal/telephony/ims/-$Lambda$6hDwuvYxqWrzW_Ex5wc53XnUOpg$1;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/ims/-$Lambda$6hDwuvYxqWrzW_Ex5wc53XnUOpg$1;-><init>(Ljava/lang/Object;)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mHandler:Landroid/os/Handler;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mInstalledServicesCache:Ljava/util/Set;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mActiveControllers:Ljava/util/Set;

    iput-object p1, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mDeviceService:Ljava/lang/String;

    iput p3, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mNumSlots:I

    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "carrier_config"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    iput-object v0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    new-array v0, p3, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mCarrierServices:[Ljava/lang/String;

    new-instance v0, Lcom/android/internal/telephony/ims/-$Lambda$6hDwuvYxqWrzW_Ex5wc53XnUOpg;

    invoke-direct {v0}, Lcom/android/internal/telephony/ims/-$Lambda$6hDwuvYxqWrzW_Ex5wc53XnUOpg;-><init>()V

    invoke-static {v0}, Ljava/util/stream/Stream;->generate(Ljava/util/function/Supplier;)Ljava/util/stream/Stream;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mNumSlots:I

    int-to-long v6, v1

    invoke-interface {v0, v6, v7}, Ljava/util/stream/Stream;->limit(J)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mBoundImsServicesByFeature:Ljava/util/List;

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v0, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "package"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mAppChangedReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v0, p1

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mConfigChangedReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v2, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private bindNewImsService(Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mImsServiceControllerFactory:Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceControllerFactory;

    iget-object v3, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mContext:Landroid/content/Context;

    iget-object v4, p1, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->name:Landroid/content/ComponentName;

    invoke-interface {v2, v3, v4}, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceControllerFactory;->get(Landroid/content/Context;Landroid/content/ComponentName;)Lcom/android/internal/telephony/ims/ImsServiceController;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ims/ImsResolver;->calculateFeaturesToCreate(Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;)Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v2

    if-lez v2, :cond_1

    const-string/jumbo v2, "ImsResolver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Binding ImsService: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/internal/telephony/ims/ImsServiceController;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " with features: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ims/ImsServiceController;->bind(Ljava/util/HashSet;)Z

    iget-object v2, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mActiveControllers:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method private calculateFeaturesToCreate(Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;)Ljava/util/HashSet;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;",
            ")",
            "Ljava/util/HashSet",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ims/ImsResolver;->getSlotForActiveCarrierService(Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    iget-object v6, p1, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->supportedFeatures:Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v6

    new-instance v7, Lcom/android/internal/telephony/ims/-$Lambda$6hDwuvYxqWrzW_Ex5wc53XnUOpg$6;

    invoke-direct {v7, v5}, Lcom/android/internal/telephony/ims/-$Lambda$6hDwuvYxqWrzW_Ex5wc53XnUOpg$6;-><init>(I)V

    invoke-interface {v6, v7}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v6

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Collection;

    invoke-virtual {v4, v6}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-object v4

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ims/ImsResolver;->isDeviceService(Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v3, 0x0

    :goto_0
    iget v6, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mNumSlots:I

    if-ge v3, v6, :cond_0

    move v1, v3

    iget-object v6, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mCarrierServices:[Ljava/lang/String;

    aget-object v6, v6, v3

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/ims/ImsResolver;->getImsServiceInfoFromCache(Ljava/lang/String;)Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v6, p1, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->supportedFeatures:Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v6

    new-instance v7, Lcom/android/internal/telephony/ims/-$Lambda$6hDwuvYxqWrzW_Ex5wc53XnUOpg$7;

    invoke-direct {v7, v1}, Lcom/android/internal/telephony/ims/-$Lambda$6hDwuvYxqWrzW_Ex5wc53XnUOpg$7;-><init>(I)V

    invoke-interface {v6, v7}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v6

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Collection;

    invoke-virtual {v4, v6}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    new-instance v2, Ljava/util/HashSet;

    iget-object v6, p1, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->supportedFeatures:Ljava/util/Set;

    invoke-direct {v2, v6}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iget-object v6, v0, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->supportedFeatures:Ljava/util/Set;

    invoke-interface {v2, v6}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    invoke-interface {v2}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v6

    new-instance v7, Lcom/android/internal/telephony/ims/-$Lambda$6hDwuvYxqWrzW_Ex5wc53XnUOpg$8;

    invoke-direct {v7, v1}, Lcom/android/internal/telephony/ims/-$Lambda$6hDwuvYxqWrzW_Ex5wc53XnUOpg$8;-><init>(I)V

    invoke-interface {v6, v7}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v6

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Collection;

    invoke-virtual {v4, v6}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    goto :goto_1
.end method

.method private getControllerByServiceInfo(Ljava/util/Set;Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;)Ljava/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/android/internal/telephony/ims/ImsServiceController;",
            ">;",
            "Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;",
            ")",
            "Ljava/util/Optional",
            "<",
            "Lcom/android/internal/telephony/ims/ImsServiceController;",
            ">;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/ims/-$Lambda$6hDwuvYxqWrzW_Ex5wc53XnUOpg$3;

    invoke-direct {v1, p2}, Lcom/android/internal/telephony/ims/-$Lambda$6hDwuvYxqWrzW_Ex5wc53XnUOpg$3;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method private getImsServiceInfo(Ljava/lang/String;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;",
            ">;"
        }
    .end annotation

    const/4 v10, 0x0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Landroid/content/Intent;

    const-string/jumbo v7, "android.telephony.ims.ImsService"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v7, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iget-object v7, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getUserId()I

    move-result v7

    const/16 v8, 0x80

    invoke-virtual {v4, v6, v8, v7}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v5, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v5, :cond_0

    new-instance v2, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;

    invoke-direct {v2}, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;-><init>()V

    new-instance v7, Landroid/content/ComponentName;

    iget-object v8, v5, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v9, v5, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v7, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v7, v2, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->name:Landroid/content/ComponentName;

    new-instance v7, Ljava/util/HashSet;

    const/4 v8, 0x3

    invoke-direct {v7, v8}, Ljava/util/HashSet;-><init>(I)V

    iput-object v7, v2, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->supportedFeatures:Ljava/util/Set;

    iget-object v7, v5, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    if-eqz v7, :cond_3

    iget-object v7, v5, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v8, "android.telephony.ims.EMERGENCY_MMTEL_FEATURE"

    invoke-virtual {v7, v8, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, v2, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->supportedFeatures:Ljava/util/Set;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v7, v5, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v8, "android.telephony.ims.MMTEL_FEATURE"

    invoke-virtual {v7, v8, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, v2, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->supportedFeatures:Ljava/util/Set;

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object v7, v5, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v8, "android.telephony.ims.RCS_FEATURE"

    invoke-virtual {v7, v8, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, v2, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->supportedFeatures:Ljava/util/Set;

    const/4 v8, 0x2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_3
    iget-object v7, v5, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    const-string/jumbo v8, "android.permission.BIND_IMS_SERVICE"

    invoke-static {v7, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    const-string/jumbo v7, "ImsResolver"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "ImsService added to cache: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v2, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->name:Landroid/content/ComponentName;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " with features: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v2, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->supportedFeatures:Ljava/util/Set;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_4
    const-string/jumbo v7, "ImsResolver"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "ImsService does not have BIND_IMS_SERVICE permission: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v2, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->name:Landroid/content/ComponentName;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_5
    return-object v3
.end method

.method private getInfoByComponentName(Ljava/util/Set;Landroid/content/ComponentName;)Ljava/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;",
            ">;",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/Optional",
            "<",
            "Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;",
            ">;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/ims/-$Lambda$6hDwuvYxqWrzW_Ex5wc53XnUOpg$4;

    invoke-direct {v1, p2}, Lcom/android/internal/telephony/ims/-$Lambda$6hDwuvYxqWrzW_Ex5wc53XnUOpg$4;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method private getInfoByPackageName(Ljava/util/Set;Ljava/lang/String;)Ljava/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Optional",
            "<",
            "Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;",
            ">;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/ims/-$Lambda$6hDwuvYxqWrzW_Ex5wc53XnUOpg$5;

    invoke-direct {v1, p2}, Lcom/android/internal/telephony/ims/-$Lambda$6hDwuvYxqWrzW_Ex5wc53XnUOpg$5;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method private getSlotForActiveCarrierService(Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;)I
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mNumSlots:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mCarrierServices:[Ljava/lang/String;

    aget-object v1, v1, v0

    iget-object v2, p1, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->name:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method private isActiveCarrierService(Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;)Z
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mNumSlots:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mCarrierServices:[Ljava/lang/String;

    aget-object v1, v1, v0

    iget-object v2, p1, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->name:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private isDeviceService(Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mDeviceService:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->name:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$-com_android_internal_telephony_ims_ImsResolver_19119(Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;Lcom/android/internal/telephony/ims/ImsServiceController;)Z
    .locals 2

    invoke-virtual {p1}, Lcom/android/internal/telephony/ims/ImsServiceController;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->name:Landroid/content/ComponentName;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$-com_android_internal_telephony_ims_ImsResolver_19379(Ljava/lang/String;Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;)Z
    .locals 1

    iget-object v0, p1, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->name:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$-com_android_internal_telephony_ims_ImsResolver_19648(Landroid/content/ComponentName;Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;)Z
    .locals 1

    iget-object v0, p1, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->name:Landroid/content/ComponentName;

    invoke-static {v0, p0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$-com_android_internal_telephony_ims_ImsResolver_23735(ILjava/lang/Integer;)Landroid/util/Pair;
    .locals 2

    new-instance v0, Landroid/util/Pair;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method static synthetic lambda$-com_android_internal_telephony_ims_ImsResolver_24395(ILjava/lang/Integer;)Landroid/util/Pair;
    .locals 2

    new-instance v0, Landroid/util/Pair;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method static synthetic lambda$-com_android_internal_telephony_ims_ImsResolver_24938(ILjava/lang/Integer;)Landroid/util/Pair;
    .locals 2

    new-instance v0, Landroid/util/Pair;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method private maybeAddedImsService(Ljava/lang/String;)V
    .locals 8

    const-string/jumbo v5, "ImsResolver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "maybeAddedImsService, packageName: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ims/ImsResolver;->getImsServiceInfo(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;

    iget-object v5, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mInstalledServicesCache:Ljava/util/Set;

    iget-object v6, v0, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->name:Landroid/content/ComponentName;

    invoke-direct {p0, v5, v6}, Lcom/android/internal/telephony/ims/ImsResolver;->getInfoByComponentName(Ljava/util/Set;Landroid/content/ComponentName;)Ljava/util/Optional;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Optional;->isPresent()Z

    move-result v5

    if-eqz v5, :cond_0

    const-string/jumbo v5, "ImsResolver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Updating features in cached ImsService: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->name:Landroid/content/ComponentName;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v6, "ImsResolver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Updating features - Old features: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;

    iget-object v5, v5, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->supportedFeatures:Ljava/util/Set;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, " new features: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, v0, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->supportedFeatures:Ljava/util/Set;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;

    iget-object v6, v0, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->supportedFeatures:Ljava/util/Set;

    iput-object v6, v5, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->supportedFeatures:Ljava/util/Set;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsResolver;->updateImsServiceFeatures(Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;)V

    goto :goto_0

    :cond_0
    const-string/jumbo v5, "ImsResolver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Adding newly added ImsService to cache: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->name:Landroid/content/ComponentName;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mInstalledServicesCache:Ljava/util/Set;

    invoke-interface {v5, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_1
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsResolver;->isActiveCarrierService(Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsResolver;->bindNewImsService(Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;)V

    iget-object v5, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mDeviceService:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/ims/ImsResolver;->getImsServiceInfoFromCache(Ljava/lang/String;)Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/ims/ImsResolver;->updateImsServiceFeatures(Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;)V

    goto :goto_1

    :cond_3
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsResolver;->isDeviceService(Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsResolver;->bindNewImsService(Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;)V

    goto :goto_1

    :cond_4
    return-void
.end method

.method private maybeRebindService(I)V
    .locals 2

    const/4 v1, -0x1

    if-gt p1, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mNumSlots:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mSubscriptionManagerProxy:Lcom/android/internal/telephony/ims/ImsResolver$SubscriptionManagerProxy;

    invoke-interface {v1, v0}, Lcom/android/internal/telephony/ims/ImsResolver$SubscriptionManagerProxy;->getSubId(I)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ims/ImsResolver;->updateBoundCarrierServices(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ims/ImsResolver;->updateBoundCarrierServices(I)V

    :cond_1
    return-void
.end method

.method private maybeRemovedImsService(Ljava/lang/String;)Z
    .locals 4

    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mInstalledServicesCache:Ljava/util/Set;

    invoke-direct {p0, v1, p1}, Lcom/android/internal/telephony/ims/ImsResolver;->getInfoByPackageName(Ljava/util/Set;Ljava/lang/String;)Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mInstalledServicesCache:Ljava/util/Set;

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    const-string/jumbo v2, "ImsResolver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Removing ImsService: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;

    iget-object v1, v1, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->name:Landroid/content/ComponentName;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/ims/ImsResolver;->unbindImsService(Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;)V

    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mDeviceService:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ims/ImsResolver;->getImsServiceInfoFromCache(Ljava/lang/String;)Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/ims/ImsResolver;->updateImsServiceFeatures(Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;)V

    const/4 v1, 0x1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private putImsController(IILcom/android/internal/telephony/ims/ImsServiceController;)V
    .locals 5

    if-ltz p1, :cond_0

    iget v1, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mNumSlots:I

    if-lt p1, v1, :cond_1

    :cond_0
    const-string/jumbo v1, "ImsResolver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "putImsController received invalid parameters - slot: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", feature: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 v1, -0x1

    if-le p2, v1, :cond_0

    const/4 v1, 0x3

    if-ge p2, v1, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mBoundServicesLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mBoundImsServicesByFeature:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    if-nez v0, :cond_2

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mBoundImsServicesByFeature:Ljava/util/List;

    invoke-interface {v1, p1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_2
    const-string/jumbo v1, "ImsResolver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ImsServiceController added on slot: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " with feature: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " using package: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p3}, Lcom/android/internal/telephony/ims/ImsServiceController;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, p2, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private removeImsController(II)Lcom/android/internal/telephony/ims/ImsServiceController;
    .locals 6

    const/4 v5, 0x0

    if-ltz p1, :cond_0

    iget v2, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mNumSlots:I

    if-lt p1, v2, :cond_1

    :cond_0
    const-string/jumbo v2, "ImsResolver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "removeImsController received invalid parameters - slot: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", feature: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v5

    :cond_1
    const/4 v2, -0x1

    if-le p2, v2, :cond_0

    const/4 v2, 0x3

    if-ge p2, v2, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mBoundServicesLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mBoundImsServicesByFeature:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_2

    monitor-exit v3

    return-object v5

    :cond_2
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v1, p2, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ims/ImsServiceController;

    if-eqz v0, :cond_3

    const-string/jumbo v2, "ImsResolver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ImsServiceController removed on slot: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " with feature: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " using package: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/internal/telephony/ims/ImsServiceController;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->remove(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    monitor-exit v3

    return-object v0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private unbindImsService(Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mActiveControllers:Ljava/util/Set;

    invoke-direct {p0, v2, p1}, Lcom/android/internal/telephony/ims/ImsResolver;->getControllerByServiceInfo(Ljava/util/Set;Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;)Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v2

    if-eqz v2, :cond_1

    :try_start_0
    const-string/jumbo v3, "ImsResolver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unbinding ImsService: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/ims/ImsServiceController;

    invoke-virtual {v2}, Lcom/android/internal/telephony/ims/ImsServiceController;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/ims/ImsServiceController;

    invoke-virtual {v2}, Lcom/android/internal/telephony/ims/ImsServiceController;->unbind()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mActiveControllers:Ljava/util/Set;

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_1
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "ImsResolver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unbindImsService: Remote Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateBoundCarrierServices(I)V
    .locals 6

    iget-object v3, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mSubscriptionManagerProxy:Lcom/android/internal/telephony/ims/ImsResolver$SubscriptionManagerProxy;

    invoke-interface {v3, p1}, Lcom/android/internal/telephony/ims/ImsResolver$SubscriptionManagerProxy;->getSlotIndex(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    invoke-virtual {v3, p1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v3

    const-string/jumbo v4, "config_ims_package_override_string"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    iget v3, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mNumSlots:I

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mCarrierServices:[Ljava/lang/String;

    aget-object v1, v3, v2

    iget-object v3, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mCarrierServices:[Ljava/lang/String;

    aput-object v0, v3, v2

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "ImsResolver"

    const-string/jumbo v4, "Carrier Config updated, binding new ImsService"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ims/ImsResolver;->getImsServiceInfoFromCache(Ljava/lang/String;)Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/ims/ImsResolver;->unbindImsService(Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;)V

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ims/ImsResolver;->getImsServiceInfoFromCache(Ljava/lang/String;)Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/ims/ImsResolver;->bindNewImsService(Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;)V

    iget-object v3, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mDeviceService:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/ims/ImsResolver;->getImsServiceInfoFromCache(Ljava/lang/String;)Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/ims/ImsResolver;->updateImsServiceFeatures(Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;)V

    :cond_0
    return-void
.end method

.method private updateImsServiceFeatures(Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mActiveControllers:Ljava/util/Set;

    invoke-direct {p0, v3, p1}, Lcom/android/internal/telephony/ims/ImsResolver;->getControllerByServiceInfo(Ljava/util/Set;Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;)Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Optional;->isPresent()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v4, "ImsResolver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Updating features for ImsService: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/ims/ImsServiceController;

    invoke-virtual {v3}, Lcom/android/internal/telephony/ims/ImsServiceController;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ims/ImsResolver;->calculateFeaturesToCreate(Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;)Ljava/util/HashSet;

    move-result-object v1

    :try_start_0
    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v3

    if-lez v3, :cond_2

    const-string/jumbo v3, "ImsResolver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Updating Features - New Features: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/ims/ImsServiceController;

    invoke-virtual {v3, v1}, Lcom/android/internal/telephony/ims/ImsServiceController;->changeImsServiceFeatures(Ljava/util/HashSet;)V

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ims/ImsResolver;->isActiveCarrierService(Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p1, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->name:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mDeviceService:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_1

    const-string/jumbo v3, "ImsResolver"

    const-string/jumbo v4, "Updating device default"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mDeviceService:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/ims/ImsResolver;->getImsServiceInfoFromCache(Ljava/lang/String;)Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/ims/ImsResolver;->updateImsServiceFeatures(Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string/jumbo v4, "ImsResolver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unbinding: features = 0 for ImsService: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/ims/ImsServiceController;

    invoke-virtual {v3}, Lcom/android/internal/telephony/ims/ImsServiceController;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/ims/ImsServiceController;

    invoke-virtual {v3}, Lcom/android/internal/telephony/ims/ImsServiceController;->unbind()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v3, "ImsResolver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateImsServiceFeatures: Remote Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public getHandler()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getImsServiceControllerAndListen(IILcom/android/ims/internal/IImsServiceFeatureListener;)Lcom/android/ims/internal/IImsServiceController;
    .locals 5

    const/4 v4, 0x0

    if-ltz p1, :cond_0

    iget v2, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mNumSlots:I

    if-lt p1, v2, :cond_1

    :cond_0
    return-object v4

    :cond_1
    const/4 v2, -0x1

    if-le p2, v2, :cond_0

    const/4 v2, 0x3

    if-ge p2, v2, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mBoundServicesLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mBoundImsServicesByFeature:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_2

    monitor-exit v3

    return-object v4

    :cond_2
    :try_start_1
    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ims/ImsServiceController;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v3

    if-eqz v0, :cond_3

    invoke-virtual {v0, p3}, Lcom/android/internal/telephony/ims/ImsServiceController;->addImsServiceFeatureListener(Lcom/android/ims/internal/IImsServiceFeatureListener;)V

    invoke-virtual {v0}, Lcom/android/internal/telephony/ims/ImsServiceController;->getImsServiceController()Lcom/android/ims/internal/IImsServiceController;

    move-result-object v2

    return-object v2

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_3
    return-object v4
.end method

.method public getImsServiceInfoFromCache(Ljava/lang/String;)Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;
    .locals 3

    const/4 v2, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v2

    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mInstalledServicesCache:Ljava/util/Set;

    invoke-direct {p0, v1, p1}, Lcom/android/internal/telephony/ims/ImsResolver;->getInfoByPackageName(Ljava/util/Set;Ljava/lang/String;)Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;

    return-object v1

    :cond_1
    return-object v2
.end method

.method public imsServiceFeatureCreated(IILcom/android/internal/telephony/ims/ImsServiceController;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/ims/ImsResolver;->putImsController(IILcom/android/internal/telephony/ims/ImsServiceController;)V

    return-void
.end method

.method public imsServiceFeatureRemoved(IILcom/android/internal/telephony/ims/ImsServiceController;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/ims/ImsResolver;->removeImsController(II)Lcom/android/internal/telephony/ims/ImsServiceController;

    return-void
.end method

.method synthetic lambda$-com_android_internal_telephony_ims_ImsResolver_7707(Landroid/content/Context;Landroid/content/ComponentName;)Lcom/android/internal/telephony/ims/ImsServiceController;
    .locals 1

    new-instance v0, Lcom/android/internal/telephony/ims/ImsServiceController;

    invoke-direct {v0, p1, p2, p0}, Lcom/android/internal/telephony/ims/ImsServiceController;-><init>(Landroid/content/Context;Landroid/content/ComponentName;Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceControllerCallbacks;)V

    return-object v0
.end method

.method synthetic lambda$-com_android_internal_telephony_ims_ImsResolver_8323(Landroid/os/Message;)Z
    .locals 3

    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    const/4 v2, 0x0

    return v2

    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsResolver;->maybeAddedImsService(Ljava/lang/String;)V

    :goto_0
    const/4 v2, 0x1

    return v2

    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsResolver;->maybeRemovedImsService(Ljava/lang/String;)Z

    goto :goto_0

    :pswitch_2
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/ims/ImsResolver;->maybeRebindService(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public populateCacheAndStartBind()V
    .locals 3

    const-string/jumbo v0, "ImsResolver"

    const-string/jumbo v1, "Initializing cache and binding."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mHandler:Landroid/os/Handler;

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public setImsServiceControllerFactory(Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceControllerFactory;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mImsServiceControllerFactory:Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceControllerFactory;

    return-void
.end method

.method public setSubscriptionManagerProxy(Lcom/android/internal/telephony/ims/ImsResolver$SubscriptionManagerProxy;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mSubscriptionManagerProxy:Lcom/android/internal/telephony/ims/ImsResolver$SubscriptionManagerProxy;

    return-void
.end method
