.class public Lcom/samsung/accessory/manager/SAccessoryManager;
.super Lcom/samsung/accessory/manager/ISAccessoryManager$Stub;
.source "SAccessoryManager.java"

# interfaces
.implements Lcom/android/server/input/InputManagerService$SecAccessoryManagerCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/accessory/manager/SAccessoryManager$1;,
        Lcom/samsung/accessory/manager/SAccessoryManager$2;,
        Lcom/samsung/accessory/manager/SAccessoryManager$3;,
        Lcom/samsung/accessory/manager/SAccessoryManager$4;,
        Lcom/samsung/accessory/manager/SAccessoryManager$AuthHandler;,
        Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationResultCallback;,
        Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationTask;
    }
.end annotation


# static fields
.field private static final AUTH_STATE_FRONT_AUTHENTICATED:I = 0x3

.field private static final AUTH_STATE_NORMAL:I = 0x0

.field private static final AUTH_STATE_PROGRESS:I = 0x1

.field private static final AUTH_STATE_REAR_AUTHENTICATED:I = 0x2

.field private static final CCIC_DOCK_STATE_PATH:Ljava/lang/String; = "/sys/class/sec/ccic/usbpd_type"

.field private static final CCIC_DOCK_UEVENT_MATCH:Ljava/lang/String; = "DEVPATH=/devices/virtual/sec/ccic"

.field private static final CCIC_DOCK_USBPD_IDS_PATH:Ljava/lang/String; = "/sys/class/sec/ccic/usbpd_ids"

.field private static final DBG:Z

.field private static final FRONT_HALL_IC:I = 0x1

.field private static final MSG_AUTH_RESTART:I = 0x3

.field private static final MSG_AUTH_SESSION_COMPLETE:I = 0xc

.field private static final MSG_AUTH_SESSION_STARTED:I = 0xb

.field private static final MSG_AUTH_SESSION_STARTING:I = 0xa

.field private static final MSG_AUTH_SESSION_STOPPED:I = 0xd

.field private static final MSG_AUTH_START_REQUEST:I = 0x1

.field private static final MSG_AUTH_START_REQUEST_INTERNAL:I = 0x2

.field private static final MSG_AUTH_STOP_REQUEST:I = 0x4

.field private static final REAR_HALL_IC:I = 0x0

.field private static final SUPPORT_ALL:I = 0x0

.field private static final SUPPORT_DEX:Z = false

.field private static final SUPPORT_NFC_ONLY:I = 0x1

.field private static final SUPPORT_USB_ONLY:I = 0x2

.field private static final TAG:Ljava/lang/String;

.field private static final USB_ATTACHED:I = 0xc8

.field private static final USB_DETACHED:I = 0x0

.field private static final VDBG:Z = true


# instance fields
.field private auth_state:I

.field private authenticatedHall:I

.field private mAuthHandler:Landroid/os/Handler;

.field private final mAuthenticationRequsetReceiver:Landroid/content/BroadcastReceiver;

.field final mAuthenticationTask:Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationTask;

.field private mContext:Landroid/content/Context;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mInputManager:Lcom/android/server/input/InputManagerService;

.field private mIsFactory:Z

.field private mLocalAuthenticator:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/accessory/manager/authentication/LocalAuthenticator;",
            ">;"
        }
    .end annotation
.end field

.field final mSessionEventListener:Lcom/samsung/accessory/manager/authentication/AuthenticationSession$SessionEventListener;

.field private mSessions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/samsung/accessory/manager/authentication/AuthenticationSession;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mUEventObserver:Landroid/os/UEventObserver;

.field private mUsbpdIds:Ljava/lang/String;

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private support_connectivity:I

.field private usbState:Z


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/accessory/manager/SAccessoryManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/accessory/manager/SAccessoryManager;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mAuthHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/accessory/manager/SAccessoryManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mIsFactory:Z

    return v0
.end method

.method static synthetic -get3(Lcom/samsung/accessory/manager/SAccessoryManager;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mSessions:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic -set0(Lcom/samsung/accessory/manager/SAccessoryManager;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->auth_state:I

    return p1
.end method

.method static synthetic -set1(Lcom/samsung/accessory/manager/SAccessoryManager;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->authenticatedHall:I

    return p1
.end method

.method static synthetic -wrap0(Ljava/lang/String;)[B
    .locals 1

    invoke-static {p0}, Lcom/samsung/accessory/manager/SAccessoryManager;->stringToByte(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/samsung/accessory/manager/SAccessoryManager;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/accessory/manager/SAccessoryManager;->attachUsbTypeC(I)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/samsung/accessory/manager/SAccessoryManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/accessory/manager/SAccessoryManager;->initUsbState()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/samsung/accessory/manager/SAccessoryManager;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/accessory/manager/SAccessoryManager;->processAuthMessage(Landroid/os/Message;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/accessory/manager/SAccessoryManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/accessory/manager/SAccessoryManager;->TAG:Ljava/lang/String;

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/accessory/manager/SAccessoryManager;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;)V
    .locals 10

    const/4 v9, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-direct {p0}, Lcom/samsung/accessory/manager/ISAccessoryManager$Stub;-><init>()V

    iput v6, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->support_connectivity:I

    iput v6, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->auth_state:I

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mSessions:Ljava/util/HashMap;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mLocalAuthenticator:Ljava/util/ArrayList;

    iput-boolean v6, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mIsFactory:Z

    const/4 v4, -0x1

    iput v4, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->authenticatedHall:I

    iput-boolean v6, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->usbState:Z

    new-instance v4, Lcom/samsung/accessory/manager/SAccessoryManager$1;

    invoke-direct {v4, p0}, Lcom/samsung/accessory/manager/SAccessoryManager$1;-><init>(Lcom/samsung/accessory/manager/SAccessoryManager;)V

    iput-object v4, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mAuthenticationTask:Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationTask;

    new-instance v4, Lcom/samsung/accessory/manager/SAccessoryManager$2;

    invoke-direct {v4, p0}, Lcom/samsung/accessory/manager/SAccessoryManager$2;-><init>(Lcom/samsung/accessory/manager/SAccessoryManager;)V

    iput-object v4, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mSessionEventListener:Lcom/samsung/accessory/manager/authentication/AuthenticationSession$SessionEventListener;

    new-instance v4, Lcom/samsung/accessory/manager/SAccessoryManager$3;

    invoke-direct {v4, p0}, Lcom/samsung/accessory/manager/SAccessoryManager$3;-><init>(Lcom/samsung/accessory/manager/SAccessoryManager;)V

    iput-object v4, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mUEventObserver:Landroid/os/UEventObserver;

    new-instance v4, Lcom/samsung/accessory/manager/SAccessoryManager$4;

    invoke-direct {v4, p0}, Lcom/samsung/accessory/manager/SAccessoryManager$4;-><init>(Lcom/samsung/accessory/manager/SAccessoryManager;)V

    iput-object v4, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mAuthenticationRequsetReceiver:Landroid/content/BroadcastReceiver;

    sget-object v4, Lcom/samsung/accessory/manager/SAccessoryManager;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "SAccessoryManager starting up"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mInputManager:Lcom/android/server/input/InputManagerService;

    const-string/jumbo v4, "power"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    sget-object v4, Lcom/samsung/accessory/manager/SAccessoryManager;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v7, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v4, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4, v6}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    new-instance v4, Landroid/os/HandlerThread;

    sget-object v5, Lcom/samsung/accessory/manager/SAccessoryManager;->TAG:Ljava/lang/String;

    invoke-direct {v4, v5}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mHandlerThread:Landroid/os/HandlerThread;

    iget-object v4, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->start()V

    new-instance v4, Lcom/samsung/accessory/manager/SAccessoryManager$AuthHandler;

    iget-object v5, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v5}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lcom/samsung/accessory/manager/SAccessoryManager$AuthHandler;-><init>(Lcom/samsung/accessory/manager/SAccessoryManager;Landroid/os/Looper;)V

    iput-object v4, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mAuthHandler:Landroid/os/Handler;

    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v4

    iput-boolean v4, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mIsFactory:Z

    sget-boolean v4, Lcom/samsung/accessory/manager/SAccessoryManager;->DBG:Z

    if-eqz v4, :cond_0

    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v4, "com.samsung.accessory.authentication.action.TEST_AUTHENTICATION_REQUEST"

    invoke-direct {v0, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mAuthenticationRequsetReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    iput v6, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->support_connectivity:I

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string/jumbo v4, "com.sec.feature.nfc_authentication"

    invoke-virtual {v2, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7

    const-string/jumbo v4, "com.sec.feature.usb_authentication"

    invoke-virtual {v2, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    const/4 v4, 0x2

    iput v4, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->support_connectivity:I

    :cond_1
    :goto_0
    sget-object v4, Lcom/samsung/accessory/manager/SAccessoryManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "feature check nfc: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "com.sec.feature.nfc_authentication"

    invoke-virtual {v2, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", usb: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "com.sec.feature.usb_authentication"

    invoke-virtual {v2, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", flag = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->support_connectivity:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    iget v4, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->support_connectivity:I

    if-eqz v4, :cond_3

    iget v4, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->support_connectivity:I

    if-ne v4, v7, :cond_4

    :cond_3
    iget-object v4, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mLocalAuthenticator:Ljava/util/ArrayList;

    new-instance v5, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    iget-object v6, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v7}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mAuthenticationTask:Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationTask;

    invoke-direct {v5, v6, p2, v7, v8}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;-><init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;Landroid/os/Looper;Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationTask;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    iget v4, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->support_connectivity:I

    if-eqz v4, :cond_5

    iget v4, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->support_connectivity:I

    if-ne v4, v9, :cond_6

    :cond_5
    iget-object v4, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mLocalAuthenticator:Ljava/util/ArrayList;

    new-instance v5, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;

    iget-object v6, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v7}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mAuthenticationTask:Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationTask;

    invoke-direct {v5, v6, v7, v8}, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationTask;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    iget-object v4, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mUEventObserver:Landroid/os/UEventObserver;

    const-string/jumbo v5, "DEVPATH=/devices/virtual/sec/ccic"

    invoke-virtual {v4, v5}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    return-void

    :cond_7
    :try_start_1
    const-string/jumbo v4, "com.sec.feature.nfc_authentication"

    invoke-virtual {v2, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string/jumbo v4, "com.sec.feature.usb_authentication"

    invoke-virtual {v2, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    iput v4, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->support_connectivity:I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v1

    sget-object v4, Lcom/samsung/accessory/manager/SAccessoryManager;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "package manager error for check feature"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private attachUsbTypeC(I)V
    .locals 10

    const-wide/16 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v3, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mLocalAuthenticator:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/accessory/manager/authentication/LocalAuthenticator;

    instance-of v3, v0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;

    if-eqz v3, :cond_0

    sget-boolean v3, Lcom/samsung/accessory/manager/SAccessoryManager;->DBG:Z

    if-eqz v3, :cond_1

    sget-object v3, Lcom/samsung/accessory/manager/SAccessoryManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "USB Type C attached, attached = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    sget-boolean v3, Lcom/samsung/accessory/manager/SAccessoryManager;->DBG:Z

    if-eqz v3, :cond_2

    sget-object v3, Lcom/samsung/accessory/manager/SAccessoryManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "USB State "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->usbState:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move-object v2, v0

    check-cast v2, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;

    const/16 v3, 0xc8

    if-ne p1, v3, :cond_3

    iget-boolean v3, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->usbState:Z

    if-nez v3, :cond_0

    iput-boolean v7, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->usbState:Z

    invoke-virtual {v2, v8, v9, v7}, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->onUsbAttached(JZ)V

    goto :goto_0

    :cond_3
    if-nez p1, :cond_0

    iput-boolean v6, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->usbState:Z

    invoke-virtual {v2, v8, v9, v6}, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->onUsbAttached(JZ)V

    goto :goto_0

    :cond_4
    return-void
.end method

.method private getRunningSessionsLocked(I)I
    .locals 4

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mSessions:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, p1, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method private handleAuthReStartRequest(Landroid/os/Message;)V
    .locals 4

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    iget-object v2, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mSessions:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mSessions:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->startSession()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v2

    return-void

    :cond_0
    :try_start_1
    sget-object v1, Lcom/samsung/accessory/manager/SAccessoryManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "The session does not exist! so can\'t restart the session!"

    invoke-static {v1, v3}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private handleAuthResponse(Landroid/os/Message;)V
    .locals 3

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    invoke-virtual {v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->getAuthenticationCallback()Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationResultCallback;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-direct {p0, v0}, Lcom/samsung/accessory/manager/SAccessoryManager;->sendIntentToReceiver(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->getAuthenticationCallback()Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationResultCallback;

    move-result-object v1

    invoke-virtual {v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->getAuthenticationResult()Lcom/samsung/accessory/manager/authentication/AuthenticationResult;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationResultCallback;->onAuthenticationComplted(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;)V

    goto :goto_0
.end method

.method private handleAuthStartRequest(Landroid/os/Message;Z)V
    .locals 10

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    iget-object v8, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mSessions:Ljava/util/HashMap;

    monitor-enter v8

    :try_start_0
    const-string/jumbo v7, "package_name"

    const-string/jumbo v9, ""

    invoke-virtual {v1, v7, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v7, "connectivity_type"

    const/4 v9, -0x1

    invoke-virtual {v1, v7, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Lcom/samsung/accessory/manager/connectivity/Connectivity;->getMaxConnection(I)I

    move-result v2

    invoke-direct {p0, v6}, Lcom/samsung/accessory/manager/SAccessoryManager;->getRunningSessionsLocked(I)I

    move-result v7

    if-ge v7, v2, :cond_1

    iget-object v7, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v7}, Landroid/os/PowerManager$WakeLock;->acquire()V

    iget-object v7, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mContext:Landroid/content/Context;

    invoke-static {v7, v3, v6}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->createNewSession(Landroid/content/Context;Ljava/lang/String;I)Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    move-result-object v5

    if-eqz p2, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationResultCallback;

    invoke-virtual {v5, v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->setAuthenticationResultCallback(Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationResultCallback;)V

    :cond_0
    iget-object v7, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mSessionEventListener:Lcom/samsung/accessory/manager/authentication/AuthenticationSession$SessionEventListener;

    invoke-virtual {v5, v7}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->setSessionCallback(Lcom/samsung/accessory/manager/authentication/AuthenticationSession$SessionEventListener;)V

    invoke-virtual {v5}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->startSession()V

    iget-object v7, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mSessions:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v5, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v8

    return-void

    :cond_1
    :try_start_1
    new-instance v4, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;

    invoke-direct {v4}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;-><init>()V

    const/16 v7, 0xb

    invoke-virtual {v4, v7}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    if-eqz p2, :cond_2

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationResultCallback;

    if-eqz v0, :cond_3

    invoke-interface {v0, v4}, Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationResultCallback;->onAuthenticationComplted(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    :goto_0
    monitor-exit v8

    return-void

    :cond_3
    :try_start_2
    sget-object v7, Lcom/samsung/accessory/manager/SAccessoryManager;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "handleAuthStartRequest, callback is null!"

    invoke-static {v7, v9}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v7

    monitor-exit v8

    throw v7
.end method

.method private handleAuthStopRequest(Landroid/os/Message;)V
    .locals 4

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    iget-object v2, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mSessions:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mSessions:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->stopSession()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v2

    return-void

    :cond_0
    :try_start_1
    sget-object v1, Lcom/samsung/accessory/manager/SAccessoryManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "The session does not exist! so can\'t stop the session!"

    invoke-static {v1, v3}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private initUsbState()V
    .locals 15

    const/4 v11, 0x0

    const/16 v12, 0x400

    :try_start_0
    new-array v1, v12, [C

    new-instance v5, Ljava/io/FileReader;

    const-string/jumbo v12, "/sys/class/sec/ccic/usbpd_ids"

    invoke-direct {v5, v12}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v12, 0x0

    const/16 v13, 0x400

    :try_start_1
    invoke-virtual {v5, v1, v12, v13}, Ljava/io/FileReader;->read([CII)I

    move-result v8

    new-instance v12, Ljava/lang/String;

    const/4 v13, 0x0

    invoke-direct {v12, v1, v13, v8}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    iput-object v12, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mUsbpdIds:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V

    sget-object v12, Lcom/samsung/accessory/manager/SAccessoryManager;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Service start and check pdids: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mUsbpdIds:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v12, 0x400

    new-array v0, v12, [C

    new-instance v4, Ljava/io/FileReader;

    const-string/jumbo v12, "/sys/class/sec/ccic/usbpd_type"

    invoke-direct {v4, v12}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    const/4 v12, 0x0

    const/16 v13, 0x400

    :try_start_3
    invoke-virtual {v4, v0, v12, v13}, Ljava/io/FileReader;->read([CII)I

    move-result v7

    new-instance v12, Ljava/lang/String;

    const/4 v13, 0x0

    invoke-direct {v12, v0, v13, v7}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v11

    sget-object v12, Lcom/samsung/accessory/manager/SAccessoryManager;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "init dock state = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :goto_0
    const/4 v6, 0x0

    iget-object v12, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mUsbpdIds:Ljava/lang/String;

    if-eqz v12, :cond_0

    iget-object v12, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mUsbpdIds:Ljava/lang/String;

    const-string/jumbo v13, ":"

    invoke-virtual {v12, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    :cond_0
    const-string/jumbo v12, "b001b7ff"

    invoke-static {v12}, Lcom/samsung/accessory/manager/SAccessoryManager;->stringToByte(Ljava/lang/String;)[B

    move-result-object v10

    if-eqz v6, :cond_1

    array-length v12, v6

    const/4 v13, 0x2

    if-ne v12, v13, :cond_1

    const/4 v12, 0x0

    aget-object v12, v6, v12

    const-string/jumbo v13, "04e8"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    const/4 v12, 0x1

    aget-object v12, v6, v12

    invoke-static {v12}, Lcom/samsung/accessory/manager/SAccessoryManager;->stringToByte(Ljava/lang/String;)[B

    move-result-object v9

    array-length v12, v9

    const/4 v13, 0x4

    if-ne v12, v13, :cond_2

    const/4 v12, 0x0

    aget-byte v12, v9, v12

    const/4 v13, 0x0

    aget-byte v13, v10, v13

    if-ne v12, v13, :cond_2

    const/4 v12, 0x1

    aget-byte v12, v9, v12

    const/4 v13, 0x1

    aget-byte v13, v10, v13

    if-lt v12, v13, :cond_2

    const/4 v12, 0x1

    aget-byte v12, v9, v12

    const/4 v13, 0x5

    aget-byte v13, v10, v13

    if-gt v12, v13, :cond_2

    invoke-direct {p0, v11}, Lcom/samsung/accessory/manager/SAccessoryManager;->attachUsbTypeC(I)V

    :cond_1
    :goto_1
    return-void

    :catchall_0
    move-exception v12

    :try_start_5
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V

    throw v12
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    :catch_0
    move-exception v2

    sget-object v12, Lcom/samsung/accessory/manager/SAccessoryManager;->TAG:Ljava/lang/String;

    const-string/jumbo v13, "This kernel does not have ccic dock support"

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_1
    move-exception v12

    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V

    throw v12
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    :catch_1
    move-exception v3

    goto :goto_0

    :cond_2
    sget-object v12, Lcom/samsung/accessory/manager/SAccessoryManager;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "This device is not support usb authentication usb_pdids: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mUsbpdIds:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private processAuthMessage(Landroid/os/Message;)V
    .locals 5

    const/4 v4, 0x0

    sget-object v1, Lcom/samsung/accessory/manager/SAccessoryManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "processAuthMessage = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-direct {p0, p1, v4}, Lcom/samsung/accessory/manager/SAccessoryManager;->handleAuthStartRequest(Landroid/os/Message;Z)V

    goto :goto_0

    :pswitch_2
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/samsung/accessory/manager/SAccessoryManager;->handleAuthStartRequest(Landroid/os/Message;Z)V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0, p1}, Lcom/samsung/accessory/manager/SAccessoryManager;->handleAuthReStartRequest(Landroid/os/Message;)V

    goto :goto_0

    :pswitch_4
    invoke-direct {p0, p1}, Lcom/samsung/accessory/manager/SAccessoryManager;->handleAuthStopRequest(Landroid/os/Message;)V

    goto :goto_0

    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    invoke-virtual {v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->getAuthenticationCallback()Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationResultCallback;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->getAuthenticationCallback()Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationResultCallback;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationResultCallback;->onAuthenticationStarting(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)V

    goto :goto_0

    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    invoke-virtual {v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->getAuthenticationCallback()Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationResultCallback;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->getAuthenticationCallback()Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationResultCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationResultCallback;->onAuthenticationStarted()V

    goto :goto_0

    :pswitch_7
    invoke-direct {p0, p1}, Lcom/samsung/accessory/manager/SAccessoryManager;->handleAuthResponse(Landroid/os/Message;)V

    goto :goto_0

    :pswitch_8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    iget-object v2, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mSessions:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mSessions:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/samsung/accessory/manager/SAccessoryManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "session removed"

    invoke-static {v1, v3}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v1, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mSessions:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_2
    invoke-virtual {v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->getAuthenticationCallback()Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationResultCallback;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->getAuthenticationCallback()Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationResultCallback;

    move-result-object v1

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationResultCallback;->onAuthenticationStopped(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private sendIntentToReceiver(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)V
    .locals 4

    sget-object v2, Lcom/samsung/accessory/manager/SAccessoryManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "sendIntentToReceiver"

    invoke-static {v2, v3}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->getAuthenticationResult()Lcom/samsung/accessory/manager/authentication/AuthenticationResult;

    move-result-object v1

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.accessory.authentication.action.TEST_AUTHENTICATION_REPLY"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->getResultBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {v1}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->getRequestPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method private static stringToByte(Ljava/lang/String;)[B
    .locals 2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    new-array v0, v1, [B

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6

    iget-object v4, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "android.permission.DUMP"

    invoke-virtual {v4, v5}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Permission Denial: can\'t dump SAccessoryManager from from pid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " without permission "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "android.permission.DUMP"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v4, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mLocalAuthenticator:Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/accessory/manager/authentication/LocalAuthenticator;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/accessory/manager/authentication/LocalAuthenticator;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v5, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mSessions:Ljava/util/HashMap;

    monitor-enter v5

    :try_start_0
    iget-object v4, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mSessions:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    invoke-virtual {v2, p1, p2, p3}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    :cond_2
    monitor-exit v5

    return-void
.end method

.method public getSupportedServices()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string/jumbo v0, "SAccessoryManager"

    return-object v0
.end method

.method public notifyCoverSwitchStateChanged(JZ)V
    .locals 0

    return-void
.end method

.method public notifyUnverifiedCoverAttachChanged(JZ)V
    .locals 7

    iget-object v3, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mLocalAuthenticator:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/accessory/manager/authentication/LocalAuthenticator;

    instance-of v3, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    if-eqz v3, :cond_0

    sget-boolean v3, Lcom/samsung/accessory/manager/SAccessoryManager;->DBG:Z

    if-eqz v3, :cond_1

    sget-object v3, Lcom/samsung/accessory/manager/SAccessoryManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "notifyUnverifiedCoverAttachChanged whenNanos = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", attached = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move-object v2, v0

    check-cast v2, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, p2, p3, v3}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->onCoverAttached(JZI)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public systemReady()V
    .locals 3

    iget-object v2, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mLocalAuthenticator:Ljava/util/ArrayList;

    if-nez v2, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mLocalAuthenticator:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/accessory/manager/authentication/LocalAuthenticator;

    invoke-virtual {v0}, Lcom/samsung/accessory/manager/authentication/LocalAuthenticator;->systemReady()V

    goto :goto_0

    :cond_1
    return-void
.end method
