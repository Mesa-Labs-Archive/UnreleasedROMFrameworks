.class public Lcom/android/internal/telephony/CarrierServiceBindHelper;
.super Ljava/lang/Object;
.source "CarrierServiceBindHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/CarrierServiceBindHelper$1;,
        Lcom/android/internal/telephony/CarrierServiceBindHelper$2;,
        Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;,
        Lcom/android/internal/telephony/CarrierServiceBindHelper$CarrierServiceConnection;,
        Lcom/android/internal/telephony/CarrierServiceBindHelper$CarrierServicePackageMonitor;
    }
.end annotation


# static fields
.field private static final EVENT_PERFORM_IMMEDIATE_UNBIND:I = 0x1

.field private static final EVENT_REBIND:I = 0x0

.field private static final LOG_TAG:Ljava/lang/String; = "CarrierSvcBindHelper"

.field private static final UNBIND_DELAY_MILLIS:I = 0x7530


# instance fields
.field private mBindings:[Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mLastSimState:[Ljava/lang/String;

.field private final mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

.field private mUserUnlockedReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static synthetic -get0(Lcom/android/internal/telephony/CarrierServiceBindHelper;)[Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper;->mBindings:[Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/internal/telephony/CarrierServiceBindHelper;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/internal/telephony/CarrierServiceBindHelper;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -wrap0(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/android/internal/telephony/CarrierServiceBindHelper;->log(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/internal/telephony/CarrierServiceBindHelper$CarrierServicePackageMonitor;

    invoke-direct {v0, p0, v4}, Lcom/android/internal/telephony/CarrierServiceBindHelper$CarrierServicePackageMonitor;-><init>(Lcom/android/internal/telephony/CarrierServiceBindHelper;Lcom/android/internal/telephony/CarrierServiceBindHelper$CarrierServicePackageMonitor;)V

    iput-object v0, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    new-instance v0, Lcom/android/internal/telephony/CarrierServiceBindHelper$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/CarrierServiceBindHelper$1;-><init>(Lcom/android/internal/telephony/CarrierServiceBindHelper;)V

    iput-object v0, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper;->mUserUnlockedReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/internal/telephony/CarrierServiceBindHelper$2;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/CarrierServiceBindHelper$2;-><init>(Lcom/android/internal/telephony/CarrierServiceBindHelper;)V

    iput-object v0, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v6

    new-array v0, v6, [Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;

    iput-object v0, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper;->mBindings:[Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;

    new-array v0, v6, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper;->mLastSimState:[Ljava/lang/String;

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v6, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper;->mBindings:[Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;

    new-instance v1, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;

    invoke-direct {v1, p0, v7}, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;-><init>(Lcom/android/internal/telephony/CarrierServiceBindHelper;I)V

    aput-object v1, v0, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    iget-object v1, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper;->mUserUnlockedReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    new-instance v3, Landroid/content/IntentFilter;

    const-string/jumbo v5, "android.intent.action.USER_UNLOCKED"

    invoke-direct {v3, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper;->mHandler:Landroid/os/Handler;

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "CarrierSvcBindHelper"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4

    const-string/jumbo v1, "CarrierServiceBindHelper:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper;->mBindings:[Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;

    const/4 v1, 0x0

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method updateForPhoneId(ILjava/lang/String;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "update binding for phoneId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " simState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/CarrierServiceBindHelper;->log(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper;->mLastSimState:[Ljava/lang/String;

    aget-object v0, v0, p1

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper;->mLastSimState:[Ljava/lang/String;

    aput-object p2, v0, p1

    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper;->mBindings:[Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;

    aget-object v2, v2, p1

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
