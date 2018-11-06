.class public Lcom/android/internal/telephony/ims/ImsServiceController;
.super Ljava/lang/Object;
.source "ImsServiceController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/ims/ImsServiceController$1;,
        Lcom/android/internal/telephony/ims/ImsServiceController$ImsDeathRecipient;,
        Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureStatusCallback;,
        Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;,
        Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceControllerCallbacks;,
        Lcom/android/internal/telephony/ims/ImsServiceController$RebindRetry;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ImsServiceController"

.field private static final REBIND_RETRY_TIME:I = 0x1388


# instance fields
.field private mCallbacks:Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceControllerCallbacks;

.field private final mComponentName:Landroid/content/ComponentName;

.field private final mContext:Landroid/content/Context;

.field private mFeatureStatusCallbacks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureStatusCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private final mHandlerThread:Landroid/os/HandlerThread;

.field private mIImsServiceController:Lcom/android/ims/internal/IImsServiceController;

.field private mImsDeathRecipient:Lcom/android/internal/telephony/ims/ImsServiceController$ImsDeathRecipient;

.field private mImsFeatures:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mImsServiceConnection:Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;

.field private mImsServiceControllerBinder:Landroid/os/IBinder;

.field private mImsStatusCallbacks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/ims/internal/IImsServiceFeatureListener;",
            ">;"
        }
    .end annotation
.end field

.field private mIsBinding:Z

.field private mIsBound:Z

.field private final mLock:Ljava/lang/Object;

.field private final mPackageManager:Landroid/content/pm/IPackageManager;

.field private mRebindRetry:Lcom/android/internal/telephony/ims/ImsServiceController$RebindRetry;

.field private mRestartImsServiceRunnable:Ljava/lang/Runnable;


# direct methods
.method static synthetic -get0(Lcom/android/internal/telephony/ims/ImsServiceController;)Lcom/android/ims/internal/IImsServiceController;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mIImsServiceController:Lcom/android/ims/internal/IImsServiceController;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/internal/telephony/ims/ImsServiceController;)Lcom/android/internal/telephony/ims/ImsServiceController$ImsDeathRecipient;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mImsDeathRecipient:Lcom/android/internal/telephony/ims/ImsServiceController$ImsDeathRecipient;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/internal/telephony/ims/ImsServiceController;)Ljava/util/HashSet;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mImsFeatures:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/internal/telephony/ims/ImsServiceController;)Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mImsServiceControllerBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/internal/telephony/ims/ImsServiceController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mIsBound:Z

    return v0
.end method

.method static synthetic -get5(Lcom/android/internal/telephony/ims/ImsServiceController;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/internal/telephony/ims/ImsServiceController;Lcom/android/ims/internal/IImsServiceController;)Lcom/android/ims/internal/IImsServiceController;
    .locals 0

    iput-object p1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mIImsServiceController:Lcom/android/ims/internal/IImsServiceController;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/internal/telephony/ims/ImsServiceController;Lcom/android/internal/telephony/ims/ImsServiceController$ImsDeathRecipient;)Lcom/android/internal/telephony/ims/ImsServiceController$ImsDeathRecipient;
    .locals 0

    iput-object p1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mImsDeathRecipient:Lcom/android/internal/telephony/ims/ImsServiceController$ImsDeathRecipient;

    return-object p1
.end method

.method static synthetic -set2(Lcom/android/internal/telephony/ims/ImsServiceController;Landroid/os/IBinder;)Landroid/os/IBinder;
    .locals 0

    iput-object p1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mImsServiceControllerBinder:Landroid/os/IBinder;

    return-object p1
.end method

.method static synthetic -set3(Lcom/android/internal/telephony/ims/ImsServiceController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mIsBinding:Z

    return p1
.end method

.method static synthetic -set4(Lcom/android/internal/telephony/ims/ImsServiceController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mIsBound:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/internal/telephony/ims/ImsServiceController;Landroid/util/Pair;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ims/ImsServiceController;->addImsServiceFeature(Landroid/util/Pair;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/internal/telephony/ims/ImsServiceController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/telephony/ims/ImsServiceController;->cleanUpService()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/internal/telephony/ims/ImsServiceController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/telephony/ims/ImsServiceController;->grantPermissionsToService()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/internal/telephony/ims/ImsServiceController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/telephony/ims/ImsServiceController;->notifyAllFeaturesRemoved()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/internal/telephony/ims/ImsServiceController;III)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/ims/ImsServiceController;->sendImsFeatureStatusChanged(III)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/internal/telephony/ims/ImsServiceController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/telephony/ims/ImsServiceController;->startDelayedRebindToService()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceControllerCallbacks;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mLock:Ljava/lang/Object;

    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "ImsServiceControllerHandler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mHandlerThread:Landroid/os/HandlerThread;

    iput-boolean v2, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mIsBound:Z

    iput-boolean v2, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mIsBinding:Z

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mImsStatusCallbacks:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mFeatureStatusCallbacks:Ljava/util/Set;

    new-instance v0, Lcom/android/internal/telephony/ims/ImsServiceController$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/ims/ImsServiceController$1;-><init>(Lcom/android/internal/telephony/ims/ImsServiceController;)V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mRestartImsServiceRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/internal/telephony/ims/-$Lambda$Dp0MKpTfGctn5WSf-VZIVicYMbM;

    invoke-direct {v0}, Lcom/android/internal/telephony/ims/-$Lambda$Dp0MKpTfGctn5WSf-VZIVicYMbM;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mRebindRetry:Lcom/android/internal/telephony/ims/ImsServiceController$RebindRetry;

    iput-object p1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mComponentName:Landroid/content/ComponentName;

    iput-object p3, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mCallbacks:Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceControllerCallbacks;

    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mHandler:Landroid/os/Handler;

    const-string/jumbo v0, "package"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mPackageManager:Landroid/content/pm/IPackageManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceControllerCallbacks;Landroid/os/Handler;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mLock:Ljava/lang/Object;

    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "ImsServiceControllerHandler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mHandlerThread:Landroid/os/HandlerThread;

    iput-boolean v2, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mIsBound:Z

    iput-boolean v2, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mIsBinding:Z

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mImsStatusCallbacks:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mFeatureStatusCallbacks:Ljava/util/Set;

    new-instance v0, Lcom/android/internal/telephony/ims/ImsServiceController$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/ims/ImsServiceController$1;-><init>(Lcom/android/internal/telephony/ims/ImsServiceController;)V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mRestartImsServiceRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/internal/telephony/ims/-$Lambda$Dp0MKpTfGctn5WSf-VZIVicYMbM$1;

    invoke-direct {v0}, Lcom/android/internal/telephony/ims/-$Lambda$Dp0MKpTfGctn5WSf-VZIVicYMbM$1;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mRebindRetry:Lcom/android/internal/telephony/ims/ImsServiceController$RebindRetry;

    iput-object p1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mComponentName:Landroid/content/ComponentName;

    iput-object p3, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mCallbacks:Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceControllerCallbacks;

    iput-object p4, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mPackageManager:Landroid/content/pm/IPackageManager;

    return-void
.end method

.method private addImsServiceFeature(Landroid/util/Pair;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mIImsServiceController:Lcom/android/ims/internal/IImsServiceController;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mCallbacks:Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceControllerCallbacks;

    if-nez v1, :cond_1

    :cond_0
    const-string/jumbo v1, "ImsServiceController"

    const-string/jumbo v2, "addImsServiceFeature called with null values."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    new-instance v0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureStatusCallback;

    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {v0, p0, v2, v1}, Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureStatusCallback;-><init>(Lcom/android/internal/telephony/ims/ImsServiceController;II)V

    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mFeatureStatusCallbacks:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mIImsServiceController:Lcom/android/ims/internal/IImsServiceController;

    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0}, Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureStatusCallback;->getCallback()Lcom/android/ims/internal/IImsFeatureStatusCallback;

    move-result-object v4

    invoke-interface {v2, v3, v1, v4}, Lcom/android/ims/internal/IImsServiceController;->createImsFeature(IILcom/android/ims/internal/IImsFeatureStatusCallback;)V

    iget-object v2, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mCallbacks:Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceControllerCallbacks;

    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v2, v3, v1, p0}, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceControllerCallbacks;->imsServiceFeatureCreated(IILcom/android/internal/telephony/ims/ImsServiceController;)V

    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v2, v1}, Lcom/android/internal/telephony/ims/ImsServiceController;->sendImsFeatureCreatedCallback(II)V

    return-void
.end method

.method private cleanUpService()V
    .locals 2

    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mImsDeathRecipient:Lcom/android/internal/telephony/ims/ImsServiceController$ImsDeathRecipient;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mImsServiceConnection:Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mImsServiceControllerBinder:Landroid/os/IBinder;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mIImsServiceController:Lcom/android/ims/internal/IImsServiceController;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mIsBound:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private grantPermissionsToService()V
    .locals 5

    const-string/jumbo v2, "ImsServiceController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Granting Runtime permissions to:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/ImsServiceController;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    new-array v1, v2, [Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mPackageManager:Landroid/content/pm/IPackageManager;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mPackageManager:Landroid/content/pm/IPackageManager;

    iget-object v3, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    move-result v3

    invoke-interface {v2, v1, v3}, Landroid/content/pm/IPackageManager;->grantDefaultPermissionsToEnabledImsServices([Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "ImsServiceController"

    const-string/jumbo v3, "Unable to grant permissions, binder died."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic lambda$-com_android_internal_telephony_ims_ImsServiceController_18817(Landroid/util/Pair;Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureStatusCallback;)Z
    .locals 3

    const/4 v1, 0x0

    invoke-static {p1}, Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureStatusCallback;->-get1(Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureStatusCallback;)I

    move-result v2

    iget-object v0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v2, v0, :cond_0

    invoke-static {p1}, Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureStatusCallback;->-get0(Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureStatusCallback;)I

    move-result v2

    iget-object v0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method static synthetic lambda$-com_android_internal_telephony_ims_ImsServiceController_8377()J
    .locals 2

    const-wide/16 v0, 0x1388

    return-wide v0
.end method

.method private notifyAllFeaturesRemoved()V
    .locals 6

    iget-object v2, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mCallbacks:Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceControllerCallbacks;

    if-nez v2, :cond_0

    const-string/jumbo v2, "ImsServiceController"

    const-string/jumbo v3, "notifyAllFeaturesRemoved called with invalid callbacks."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mImsFeatures:Ljava/util/HashSet;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v4, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mCallbacks:Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceControllerCallbacks;

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v4, v5, v2, p0}, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceControllerCallbacks;->imsServiceFeatureRemoved(IILcom/android/internal/telephony/ims/ImsServiceController;)V

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v4, v2}, Lcom/android/internal/telephony/ims/ImsServiceController;->sendImsFeatureRemovedCallback(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_1
    monitor-exit v3

    return-void
.end method

.method private removeImsServiceFeature(Landroid/util/Pair;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mIImsServiceController:Lcom/android/ims/internal/IImsServiceController;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mCallbacks:Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceControllerCallbacks;

    if-nez v1, :cond_1

    :cond_0
    const-string/jumbo v1, "ImsServiceController"

    const-string/jumbo v2, "removeImsServiceFeature called with null values."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mFeatureStatusCallbacks:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v3, Lcom/android/internal/telephony/ims/-$Lambda$Dp0MKpTfGctn5WSf-VZIVicYMbM$2;

    invoke-direct {v3, p1}, Lcom/android/internal/telephony/ims/-$Lambda$Dp0MKpTfGctn5WSf-VZIVicYMbM$2;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureStatusCallback;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mFeatureStatusCallbacks:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mIImsServiceController:Lcom/android/ims/internal/IImsServiceController;

    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureStatusCallback;->getCallback()Lcom/android/ims/internal/IImsFeatureStatusCallback;

    move-result-object v1

    :goto_0
    invoke-interface {v3, v4, v5, v1}, Lcom/android/ims/internal/IImsServiceController;->removeImsFeature(IILcom/android/ims/internal/IImsFeatureStatusCallback;)V

    iget-object v2, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mCallbacks:Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceControllerCallbacks;

    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v2, v3, v1, p0}, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceControllerCallbacks;->imsServiceFeatureRemoved(IILcom/android/internal/telephony/ims/ImsServiceController;)V

    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v2, v1}, Lcom/android/internal/telephony/ims/ImsServiceController;->sendImsFeatureRemovedCallback(II)V

    return-void

    :cond_3
    move-object v1, v2

    goto :goto_0
.end method

.method private removeImsServiceFeatureListener()V
    .locals 2

    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mImsStatusCallbacks:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private sendImsFeatureCreatedCallback(II)V
    .locals 7

    iget-object v4, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mImsStatusCallbacks:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ims/internal/IImsServiceFeatureListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {v0, p1, p2}, Lcom/android/ims/internal/IImsServiceFeatureListener;->imsFeatureCreated(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    const-string/jumbo v3, "ImsServiceController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "sendImsFeatureCreatedCallback: Binder died, removing callback. Exception:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    :cond_0
    monitor-exit v4

    return-void
.end method

.method private sendImsFeatureRemovedCallback(II)V
    .locals 7

    iget-object v4, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mImsStatusCallbacks:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ims/internal/IImsServiceFeatureListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {v0, p1, p2}, Lcom/android/ims/internal/IImsServiceFeatureListener;->imsFeatureRemoved(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    const-string/jumbo v3, "ImsServiceController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "sendImsFeatureRemovedCallback: Binder died, removing callback. Exception:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    :cond_0
    monitor-exit v4

    return-void
.end method

.method private sendImsFeatureStatusChanged(III)V
    .locals 7

    iget-object v4, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mImsStatusCallbacks:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ims/internal/IImsServiceFeatureListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {v0, p1, p2, p3}, Lcom/android/ims/internal/IImsServiceFeatureListener;->imsStatusChanged(III)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    const-string/jumbo v3, "ImsServiceController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "sendImsFeatureStatusChanged: Binder died, removing callback. Exception:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    :cond_0
    monitor-exit v4

    return-void
.end method

.method private startDelayedRebindToService()V
    .locals 4

    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mRestartImsServiceRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mRestartImsServiceRunnable:Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mRebindRetry:Lcom/android/internal/telephony/ims/ImsServiceController$RebindRetry;

    invoke-interface {v2}, Lcom/android/internal/telephony/ims/ImsServiceController$RebindRetry;->getRetryTimeout()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public addImsServiceFeatureListener(Lcom/android/ims/internal/IImsServiceFeatureListener;)V
    .locals 2

    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mImsStatusCallbacks:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public bind(Ljava/util/HashSet;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;)Z"
        }
    .end annotation

    const/4 v7, 0x0

    iget-object v4, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mRestartImsServiceRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-boolean v3, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mIsBound:Z

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mIsBinding:Z

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mIsBinding:Z

    iput-object p1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mImsFeatures:Ljava/util/HashSet;

    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v5, "android.telephony.ims.ImsService"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v1

    new-instance v3, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;

    invoke-direct {v3, p0}, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;-><init>(Lcom/android/internal/telephony/ims/ImsServiceController;)V

    iput-object v3, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mImsServiceConnection:Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;

    const v2, 0x4000041

    const-string/jumbo v3, "ImsServiceController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Binding ImsService:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v3, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mImsServiceConnection:Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;

    invoke-virtual {v3, v1, v5, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    monitor-exit v4

    return v3

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v3, "ImsServiceController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Error binding ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ") with exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v4

    return v7

    :cond_0
    monitor-exit v4

    return v7

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public changeImsServiceFeatures(Ljava/util/HashSet;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v5, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    iget-boolean v4, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mIsBound:Z

    if-eqz v4, :cond_1

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iget-object v4, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mImsFeatures:Ljava/util/HashSet;

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsServiceController;->addImsServiceFeature(Landroid/util/Pair;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    :cond_0
    :try_start_1
    new-instance v3, Ljava/util/HashSet;

    iget-object v4, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mImsFeatures:Ljava/util/HashSet;

    invoke-direct {v3, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v3, p1}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsServiceController;->removeImsServiceFeature(Landroid/util/Pair;)V

    goto :goto_1

    :cond_1
    const-string/jumbo v4, "ImsServiceController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Features changed ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mImsFeatures:Ljava/util/HashSet;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "->"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ") for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "ImsService: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mImsFeatures:Ljava/util/HashSet;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v5

    return-void
.end method

.method public getComponentName()Landroid/content/ComponentName;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mComponentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getImsServiceController()Lcom/android/ims/internal/IImsServiceController;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mIImsServiceController:Lcom/android/ims/internal/IImsServiceController;

    return-object v0
.end method

.method public getImsServiceControllerBinder()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mImsServiceControllerBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public setRebindRetryTime(Lcom/android/internal/telephony/ims/ImsServiceController$RebindRetry;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mRebindRetry:Lcom/android/internal/telephony/ims/ImsServiceController$RebindRetry;

    return-void
.end method

.method public unbind()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mRestartImsServiceRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mImsServiceConnection:Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mImsDeathRecipient:Lcom/android/internal/telephony/ims/ImsServiceController$ImsDeathRecipient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    :cond_0
    monitor-exit v1

    return-void

    :cond_1
    :try_start_1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ims/ImsServiceController;->changeImsServiceFeatures(Ljava/util/HashSet;)V

    invoke-direct {p0}, Lcom/android/internal/telephony/ims/ImsServiceController;->removeImsServiceFeatureListener()V

    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mImsServiceControllerBinder:Landroid/os/IBinder;

    iget-object v2, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mImsDeathRecipient:Lcom/android/internal/telephony/ims/ImsServiceController$ImsDeathRecipient;

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    const-string/jumbo v0, "ImsServiceController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unbinding ImsService: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mImsServiceConnection:Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    invoke-direct {p0}, Lcom/android/internal/telephony/ims/ImsServiceController;->cleanUpService()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
