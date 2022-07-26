.class public final Lcom/android/server/EngineeringModeService;
.super Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService$Stub;
.source "EngineeringModeService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/EngineeringModeService$1;,
        Lcom/android/server/EngineeringModeService$EMApplication;,
        Lcom/android/server/EngineeringModeService$EMClient;,
        Lcom/android/server/EngineeringModeService$EMClientList;,
        Lcom/android/server/EngineeringModeService$EMSConnectionTask;,
        Lcom/android/server/EngineeringModeService$EMSystemServer;,
        Lcom/android/server/EngineeringModeService$EngineeringModeClient;,
        Lcom/android/server/EngineeringModeService$GeneralApplication;,
        Lcom/android/server/EngineeringModeService$PlatformApplication;,
        Lcom/android/server/EngineeringModeService$SystemApplication;
    }
.end annotation


# static fields
.field private static final ANDROID_SYSTEM_SERVER:Ljava/lang/String; = "system_server"

.field private static final EM_CHECKED:I = 0x1

.field private static final EM_NOT_CHECKED:I = 0x0

.field private static final EM_STATE_PROP:Ljava/lang/String; = "security.em.tstate"

.field private static final EM_SYNC_SERVER_DATE_ACTION:Ljava/lang/String; = "com.android.server.em.EM_SYNC_SERVER_DATE"

.field private static final EM_SYNC_TOKEN_STATE:Ljava/lang/String; = "com.android.server.em.EM_SYNC_TOKEN_STATE"

.field private static final EM_SYNC_TOKEN_STATE_TIMER:Ljava/lang/String; = "com.android.server.em.EM_SYNC_TOKEN_STATE_TIMER"

.field private static final EM_TOKEN_STATE_DEFAULT_NOTIFY:Z = false

.field private static final EM_TOKEN_STATE_FORCE_NOTIFY:Z = true

.field private static final EM_VERSION10:I = 0xa

.field private static final EM_VERSION11:I = 0xb

.field private static final EM_VERSION20:I = 0x14

.field private static final EM_VERSION_PROP:Ljava/lang/String; = "ro.em.version"

.field private static final MODE_CUST_KERNEL:I = 0x3

.field private static final MODE_DEACTIVATE_REMOTE_LOCK:I = 0x8

.field private static final MODE_DEBUG_LOG:I = 0x2

.field private static final MODE_ENABLE_BIXBY_LOG:I = 0xf

.field private static final MODE_ENG_KERNEL:I = 0x0

.field private static final MODE_KEEP_USB_DEBUG_UNDER_KNOX:I = 0xe

.field private static final MODE_KEY_STRING:I = 0x6

.field private static final MODE_KNOX_TEST:I = 0x4

.field private static final MODE_KS_DISABLE:I = 0x7

.field private static final MODE_RCA_FRAME_BUF_RUN:I = 0x13

.field private static final MODE_ROLLBACK_SUW:I = 0x10

.field private static final MODE_RUN_KEY_STRING_APP:I = 0x9

.field private static final MODE_RUN_WASS_APP:I = 0x11

.field private static final MODE_SKIP_MTP_POPUP:I = 0xd

.field private static final MODE_SKIP_SUW:I = 0xc

.field private static final MODE_TEST_ENV:I = 0x1

.field private static final MODE_USB_DEBUG:I = 0x1

.field private static final TAG:Ljava/lang/String; = "EngineeringModeService"

.field private static mContext:Landroid/content/Context;

.field private static mVersion:I


# instance fields
.field private mBootCompleted:Z

.field private mClient:Lcom/android/server/EngineeringModeService$EngineeringModeClient;

.field private mEMCList:Lcom/android/server/EngineeringModeService$EMClientList;

.field private mEMServerDate:Ljava/lang/String;

.field private mESS:Lcom/samsung/android/service/EngineeringMode/ess/EngineeringModeESS;

.field private mImei:Ljava/lang/String;

.field private final mLock:Ljava/lang/Object;

.field private mModel:Ljava/lang/String;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mTokenState:Ljava/lang/String;


# direct methods
.method static synthetic -get0()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/android/server/EngineeringModeService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/EngineeringModeService;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/EngineeringModeService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get2()I
    .locals 1

    sget v0, Lcom/android/server/EngineeringModeService;->mVersion:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/server/EngineeringModeService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/EngineeringModeService;->mBootCompleted:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/server/EngineeringModeService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/server/EngineeringModeService;->mEMServerDate:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/server/EngineeringModeService;I)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/EngineeringModeService;->getPackageName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/server/EngineeringModeService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/EngineeringModeService;->nativeEM20Init()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/EngineeringModeService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/EngineeringModeService;->notifyTokenStatus()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lcom/android/server/EngineeringModeService;->checkEMVersion()V

    const-string/jumbo v0, "EngineeringModeService"

    const-string/jumbo v1, "load engmode"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "engmode"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    sget v0, Lcom/android/server/EngineeringModeService;->mVersion:I

    const/16 v1, 0x14

    if-gt v1, v0, :cond_0

    const-string/jumbo v0, "EngineeringModeService"

    const-string/jumbo v1, "load engmode2"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "engmode2"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService$Stub;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/EngineeringModeService;->mLock:Ljava/lang/Object;

    iput-boolean v2, p0, Lcom/android/server/EngineeringModeService;->mBootCompleted:Z

    new-instance v0, Lcom/android/server/EngineeringModeService$1;

    invoke-direct {v0, p0}, Lcom/android/server/EngineeringModeService$1;-><init>(Lcom/android/server/EngineeringModeService;)V

    iput-object v0, p0, Lcom/android/server/EngineeringModeService;->mReceiver:Landroid/content/BroadcastReceiver;

    const-string/jumbo v0, "EngineeringModeService"

    const-string/jumbo v1, "EngineeringModeService"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sput-object p1, Lcom/android/server/EngineeringModeService;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/server/EngineeringModeService$EMClientList;

    invoke-direct {v0, p0}, Lcom/android/server/EngineeringModeService$EMClientList;-><init>(Lcom/android/server/EngineeringModeService;)V

    iput-object v0, p0, Lcom/android/server/EngineeringModeService;->mEMCList:Lcom/android/server/EngineeringModeService$EMClientList;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/EngineeringModeService;->mEMServerDate:Ljava/lang/String;

    new-instance v0, Lcom/samsung/android/service/EngineeringMode/ess/EngineeringModeESS;

    invoke-direct {v0}, Lcom/samsung/android/service/EngineeringMode/ess/EngineeringModeESS;-><init>()V

    iput-object v0, p0, Lcom/android/server/EngineeringModeService;->mESS:Lcom/samsung/android/service/EngineeringMode/ess/EngineeringModeESS;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/server/EngineeringModeService;->mTokenState:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/server/EngineeringModeService;->registerClients()V

    invoke-direct {p0}, Lcom/android/server/EngineeringModeService;->registerForBroadcasts()V

    sget v0, Lcom/android/server/EngineeringModeService;->mVersion:I

    const/16 v1, 0x14

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/EngineeringModeService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/EngineeringModeService;->nativeEM20SetTstate()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    invoke-direct {p0, v2}, Lcom/android/server/EngineeringModeService;->updateTokenState(Z)V

    const-string/jumbo v0, "EngineeringModeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "EM Service is started, state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/EngineeringModeService;->mTokenState:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string/jumbo v0, "EngineeringModeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "EM Service is started as version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/server/EngineeringModeService;->mVersion:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private byteArrayToHex([B)Ljava/lang/String;
    .locals 8

    const/4 v3, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    array-length v4, p1

    move v2, v3

    :goto_0
    if-ge v2, v4, :cond_0

    aget-byte v0, p1, v2

    const-string/jumbo v5, "%02x "

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    and-int/lit16 v7, v0, 0xff

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static checkEMVersion()V
    .locals 3

    const-string/jumbo v1, "EngineeringModeService"

    const-string/jumbo v2, "Check EM Version"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "ro.em.version"

    const-string/jumbo v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "20"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x14

    sput v1, Lcom/android/server/EngineeringModeService;->mVersion:I

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v1, "11"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0xb

    sput v1, Lcom/android/server/EngineeringModeService;->mVersion:I

    goto :goto_0

    :cond_1
    const/16 v1, 0xa

    sput v1, Lcom/android/server/EngineeringModeService;->mVersion:I

    goto :goto_0
.end method

.method private checkTokenExist()Z
    .locals 3

    const/4 v2, 0x1

    sget v0, Lcom/android/server/EngineeringModeService;->mVersion:I

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    sget v0, Lcom/android/server/EngineeringModeService;->mVersion:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_1

    :cond_0
    return v2

    :cond_1
    iget-object v0, p0, Lcom/android/server/EngineeringModeService;->mTokenState:Ljava/lang/String;

    const-string/jumbo v1, "NM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/EngineeringModeService;->mTokenState:Ljava/lang/String;

    const-string/jumbo v1, "ES"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    return v2

    :cond_3
    const-string/jumbo v0, "EngineeringModeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mTokenState is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/EngineeringModeService;->mTokenState:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", pass"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method private convertErrorCode(I)I
    .locals 2

    sget v0, Lcom/android/server/EngineeringModeService;->mVersion:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    return p1

    :cond_0
    const/4 v0, 0x1

    if-lt p1, v0, :cond_1

    return p1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private getImei()Ljava/lang/String;
    .locals 5

    const/4 v4, 0x0

    :try_start_0
    sget-object v2, Lcom/android/server/EngineeringModeService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    if-nez v1, :cond_0

    const-string/jumbo v2, "EngineeringModeService"

    const-string/jumbo v3, "Failed to get TelephonyManager"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    :cond_0
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getImei()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v4
.end method

.method private getPackageName(I)Ljava/lang/String;
    .locals 10

    iget-object v8, p0, Lcom/android/server/EngineeringModeService;->mLock:Ljava/lang/Object;

    monitor-enter v8

    :try_start_0
    const-string/jumbo v1, "Unknown"

    const-string/jumbo v3, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    sget v7, Lcom/android/server/EngineeringModeService;->mVersion:I

    const/16 v9, 0x14

    if-ne v7, v9, :cond_1

    invoke-direct {p0, p1}, Lcom/android/server/EngineeringModeService;->nativeEM20GetProcessName(I)Ljava/lang/String;

    move-result-object v3

    :goto_0
    const-string/jumbo v7, "system_server"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const-string/jumbo v1, "system_server"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_1
    monitor-exit v8

    return-object v1

    :cond_1
    :try_start_2
    invoke-direct {p0, p1}, Lcom/android/server/EngineeringModeService;->nativeGetProcessName(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_2
    sget-object v7, Lcom/android/server/EngineeringModeService;->mContext:Landroid/content/Context;

    const-string/jumbo v9, "activity"

    invoke-virtual {v7, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v0, :cond_3

    monitor-exit v8

    return-object v1

    :cond_3
    :try_start_3
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v6

    if-nez v6, :cond_4

    monitor-exit v8

    return-object v1

    :cond_4
    :try_start_4
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningAppProcessInfo;

    if-eqz v4, :cond_5

    iget v7, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v7, p1, :cond_5

    iget-object v1, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v2

    :try_start_5
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v7

    monitor-exit v8

    throw v7
.end method

.method private isEmApplication(II)Z
    .locals 5

    const/4 v1, 0x0

    const-string/jumbo v0, ""

    invoke-direct {p0, p1}, Lcom/android/server/EngineeringModeService;->getPackageName(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/EngineeringModeService;->mEMCList:Lcom/android/server/EngineeringModeService$EMClientList;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v0, p2, v3}, Lcom/android/server/EngineeringModeService$EMClientList;->hasEmApplication(Ljava/lang/String;ILjava/lang/Integer;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "com.sec.android.app.emservice"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const-string/jumbo v2, "EngineeringModeService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "No Permission : PackageName = ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "], "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "UID = ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isEmClient(III)Ljava/lang/String;
    .locals 4

    const-string/jumbo v0, ""

    invoke-direct {p0, p1}, Lcom/android/server/EngineeringModeService;->getPackageName(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/EngineeringModeService;->mEMCList:Lcom/android/server/EngineeringModeService$EMClientList;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, p2, v2}, Lcom/android/server/EngineeringModeService$EMClientList;->hasEmClient(Ljava/lang/String;ILjava/lang/Integer;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "EngineeringModeService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "EMClient : ProcName = [ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v1, "EngineeringModeService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Cannot find client info in I-W : ProcName = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")], "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "UID = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "], "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "MODE = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isEmClient(Ljava/lang/String;III)Ljava/lang/String;
    .locals 5

    const-string/jumbo v1, ""

    const-string/jumbo v0, ""

    invoke-direct {p0, p2}, Lcom/android/server/EngineeringModeService;->getPackageName(I)Ljava/lang/String;

    move-result-object v1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, p1

    :cond_0
    iget-object v2, p0, Lcom/android/server/EngineeringModeService;->mEMCList:Lcom/android/server/EngineeringModeService$EMClientList;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, p3, v3}, Lcom/android/server/EngineeringModeService$EMClientList;->hasEmClient(Ljava/lang/String;ILjava/lang/Integer;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "EngineeringModeService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "EMClient : ProcName = ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v1

    :cond_1
    iget-object v2, p0, Lcom/android/server/EngineeringModeService;->mEMCList:Lcom/android/server/EngineeringModeService$EMClientList;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v0, p3, v3}, Lcom/android/server/EngineeringModeService$EMClientList;->hasEmClient(Ljava/lang/String;ILjava/lang/Integer;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "EngineeringModeService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "EMClient : PacageName = ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v0

    goto :goto_0

    :cond_2
    const-string/jumbo v2, "EngineeringModeService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Cannot find client info in I-W : PackageName = ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "],"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "ProcName = ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")],"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "UID = ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "], MODE = ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto/16 :goto_0
.end method

.method private isEmService(II)Z
    .locals 5

    const/4 v3, 0x1

    const/4 v1, 0x0

    const-string/jumbo v0, ""

    invoke-direct {p0, p1}, Lcom/android/server/EngineeringModeService;->getPackageName(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "com.samsung.security"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v3

    :cond_0
    const-string/jumbo v2, "com.sec.android.app.emservice"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v3

    :cond_1
    iget-object v2, p0, Lcom/android/server/EngineeringModeService;->mEMCList:Lcom/android/server/EngineeringModeService$EMClientList;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v0, p2, v3}, Lcom/android/server/EngineeringModeService$EMClientList;->hasEmService(Ljava/lang/String;ILjava/lang/Integer;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_2
    const-string/jumbo v2, "EngineeringModeService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "No Permission : PackageName = ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "], "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "UID = ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isNetworkConnected()Z
    .locals 7

    const/4 v0, 0x0

    iget-boolean v5, p0, Lcom/android/server/EngineeringModeService;->mBootCompleted:Z

    if-nez v5, :cond_0

    return v0

    :cond_0
    :try_start_0
    sget-object v5, Lcom/android/server/EngineeringModeService;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "connectivity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    if-nez v2, :cond_1

    const-string/jumbo v5, "EngineeringModeService"

    const-string/jumbo v6, "ConnectivityManager is NULL"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v4

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    if-nez v5, :cond_3

    :cond_2
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_3
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_4
    const-string/jumbo v5, "EngineeringModeService"

    const-string/jumbo v6, "isNetworkConnected : false"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v5, "EngineeringModeService"

    const-string/jumbo v6, "Connectivity error occured"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private isOkToUseDevCert(ILjava/lang/String;)Z
    .locals 1

    const v0, -0xffff68

    if-ne p1, v0, :cond_0

    const-string/jumbo v0, "com.sec.android.app.emservice"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private makeTimeReq()[B
    .locals 4

    iget-object v1, p0, Lcom/android/server/EngineeringModeService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    const-string/jumbo v0, "EngineeringModeService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "makeTimeReq() is called EM"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/server/EngineeringModeService;->mVersion:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/android/server/EngineeringModeService;->isEmService(II)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_NO_PERMISSION:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :cond_0
    :try_start_1
    sget v0, Lcom/android/server/EngineeringModeService;->mVersion:I

    const/16 v2, 0x14

    if-eq v0, v2, :cond_1

    const-string/jumbo v0, "EngineeringModeService"

    const-string/jumbo v2, "makeTimeReq is only supported in EM version 2"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_EM_SERVICE:[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-object v0

    :cond_1
    :try_start_2
    invoke-direct {p0}, Lcom/android/server/EngineeringModeService;->nativeEM20MakeTimeReq()[B
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private native nativeEM20GetModes()[B
.end method

.method private native nativeEM20GetProcessName(I)Ljava/lang/String;
.end method

.method private native nativeEM20GetStatus(ILjava/lang/String;ZILjava/lang/String;Ljava/lang/String;II)I
.end method

.method private native nativeEM20GetTUC(I)I
.end method

.method private native nativeEM20Init()V
.end method

.method private native nativeEM20InstallToken([B)I
.end method

.method private native nativeEM20InstallTokenForESS_V1(Ljava/lang/String;Ljava/lang/String;)[B
.end method

.method private native nativeEM20IsTokenInstalled(Ljava/lang/String;)I
.end method

.method private native nativeEM20MakeDelTokenForESS_V1(Ljava/lang/String;[BLjava/lang/String;)[B
.end method

.method private native nativeEM20MakeITLReq(Ljava/lang/String;Ljava/lang/String;)[B
.end method

.method private native nativeEM20MakeTimeReq()[B
.end method

.method private native nativeEM20MakeTokenReq(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)[B
.end method

.method private native nativeEM20MakeTokenReqForESS_V1(Ljava/lang/String;[BLjava/lang/String;)[B
.end method

.method private native nativeEM20ReadToken()[B
.end method

.method private native nativeEM20RecoveryITL([B)I
.end method

.method private native nativeEM20RemoveToken()I
.end method

.method private native nativeEM20SendFuseCmd()I
.end method

.method private native nativeEM20SetPriorityTime([B)I
.end method

.method private native nativeEM20SetTstate()I
.end method

.method private native nativeEM20UpdateTime([B)Ljava/lang/String;
.end method

.method private native nativeGetId()[B
.end method

.method private native nativeGetNumOfModes()I
.end method

.method private native nativeGetProcessName(I)Ljava/lang/String;
.end method

.method private native nativeGetRequestMsg(Ljava/lang/String;Ljava/lang/String;[BILjava/lang/String;Ljava/lang/String;)[B
.end method

.method private native nativeGetStatus(I)I
.end method

.method private native nativeInstallToken([B)I
.end method

.method private native nativeIsTokenInstalled()I
.end method

.method private native nativeRemoveToken()I
.end method

.method private native nativeSendFuseCmd()I
.end method

.method private notifyTokenStatus()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.android.server.em.EM_SYNC_TOKEN_STATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "ts"

    iget-object v2, p0, Lcom/android/server/EngineeringModeService;->mTokenState:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v1, Lcom/android/server/EngineeringModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private registerClients()V
    .locals 25

    :try_start_0
    new-instance v10, Lcom/android/server/EngineeringModeService$EMApplication;

    const-string/jumbo v23, "com.sec.android.app.emservice"

    const/16 v24, 0x3e8

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v10, v0, v1, v2}, Lcom/android/server/EngineeringModeService$EMApplication;-><init>(Lcom/android/server/EngineeringModeService;Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/EngineeringModeService;->mEMCList:Lcom/android/server/EngineeringModeService$EMClientList;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v10}, Lcom/android/server/EngineeringModeService$EMClientList;->add(Lcom/android/server/EngineeringModeService$EMClient;)V

    new-instance v11, Lcom/android/server/EngineeringModeService$EMApplication;

    const-string/jumbo v23, "com.samsung.security"

    const/16 v24, 0x3e8

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v11, v0, v1, v2}, Lcom/android/server/EngineeringModeService$EMApplication;-><init>(Lcom/android/server/EngineeringModeService;Ljava/lang/String;I)V

    const/16 v23, 0x0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v11, v0}, Lcom/android/server/EngineeringModeService$EMApplication;->addMode(Ljava/lang/Integer;)V

    const/16 v23, 0x1

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v11, v0}, Lcom/android/server/EngineeringModeService$EMApplication;->addMode(Ljava/lang/Integer;)V

    const/16 v23, 0x2

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v11, v0}, Lcom/android/server/EngineeringModeService$EMApplication;->addMode(Ljava/lang/Integer;)V

    const/16 v23, 0x3

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v11, v0}, Lcom/android/server/EngineeringModeService$EMApplication;->addMode(Ljava/lang/Integer;)V

    const/16 v23, 0x4

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v11, v0}, Lcom/android/server/EngineeringModeService$EMApplication;->addMode(Ljava/lang/Integer;)V

    const/16 v23, 0x6

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v11, v0}, Lcom/android/server/EngineeringModeService$EMApplication;->addMode(Ljava/lang/Integer;)V

    const/16 v23, 0x7

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v11, v0}, Lcom/android/server/EngineeringModeService$EMApplication;->addMode(Ljava/lang/Integer;)V

    const/16 v23, 0x8

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v11, v0}, Lcom/android/server/EngineeringModeService$EMApplication;->addMode(Ljava/lang/Integer;)V

    const/16 v23, 0x9

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v11, v0}, Lcom/android/server/EngineeringModeService$EMApplication;->addMode(Ljava/lang/Integer;)V

    const/16 v23, 0xc

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v11, v0}, Lcom/android/server/EngineeringModeService$EMApplication;->addMode(Ljava/lang/Integer;)V

    const/16 v23, 0xd

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v11, v0}, Lcom/android/server/EngineeringModeService$EMApplication;->addMode(Ljava/lang/Integer;)V

    const/16 v23, 0xe

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v11, v0}, Lcom/android/server/EngineeringModeService$EMApplication;->addMode(Ljava/lang/Integer;)V

    const/16 v23, 0xf

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v11, v0}, Lcom/android/server/EngineeringModeService$EMApplication;->addMode(Ljava/lang/Integer;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/EngineeringModeService;->mEMCList:Lcom/android/server/EngineeringModeService$EMClientList;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Lcom/android/server/EngineeringModeService$EMClientList;->add(Lcom/android/server/EngineeringModeService$EMClient;)V

    new-instance v21, Lcom/android/server/EngineeringModeService$EMSystemServer;

    const-string/jumbo v23, "system_server"

    const/16 v24, 0x3e8

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object/from16 v2, v23

    move/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/EngineeringModeService$EMSystemServer;-><init>(Lcom/android/server/EngineeringModeService;Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/EngineeringModeService;->mEMCList:Lcom/android/server/EngineeringModeService$EMClientList;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/server/EngineeringModeService$EMClientList;->add(Lcom/android/server/EngineeringModeService$EMClient;)V

    new-instance v5, Lcom/android/server/EngineeringModeService$SystemApplication;

    const-string/jumbo v23, "com.samsung.android.MtpApplication"

    const/16 v24, 0x3e8

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v5, v0, v1, v2}, Lcom/android/server/EngineeringModeService$SystemApplication;-><init>(Lcom/android/server/EngineeringModeService;Ljava/lang/String;I)V

    sget v23, Lcom/android/server/EngineeringModeService;->mVersion:I

    const/16 v24, 0x14

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_0

    const/16 v23, 0xd

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Lcom/android/server/EngineeringModeService$SystemApplication;->addMode(Ljava/lang/Integer;)V

    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/EngineeringModeService;->mEMCList:Lcom/android/server/EngineeringModeService$EMClientList;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Lcom/android/server/EngineeringModeService$EMClientList;->add(Lcom/android/server/EngineeringModeService$EMClient;)V

    new-instance v7, Lcom/android/server/EngineeringModeService$SystemApplication;

    const-string/jumbo v23, "com.sec.bcservice"

    const/16 v24, 0x3e8

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v7, v0, v1, v2}, Lcom/android/server/EngineeringModeService$SystemApplication;-><init>(Lcom/android/server/EngineeringModeService;Ljava/lang/String;I)V

    const/16 v23, 0x1

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Lcom/android/server/EngineeringModeService$SystemApplication;->addMode(Ljava/lang/Integer;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/EngineeringModeService;->mEMCList:Lcom/android/server/EngineeringModeService$EMClientList;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Lcom/android/server/EngineeringModeService$EMClientList;->add(Lcom/android/server/EngineeringModeService$EMClient;)V

    new-instance v14, Lcom/android/server/EngineeringModeService$PlatformApplication;

    const-string/jumbo v23, "com.sec.keystringscreen"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v14, v0, v1}, Lcom/android/server/EngineeringModeService$PlatformApplication;-><init>(Lcom/android/server/EngineeringModeService;Ljava/lang/String;)V

    sget v23, Lcom/android/server/EngineeringModeService;->mVersion:I

    const/16 v24, 0x14

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_1

    const/16 v23, 0x9

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v14, v0}, Lcom/android/server/EngineeringModeService$PlatformApplication;->addMode(Ljava/lang/Integer;)V

    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/EngineeringModeService;->mEMCList:Lcom/android/server/EngineeringModeService$EMClientList;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Lcom/android/server/EngineeringModeService$EMClientList;->add(Lcom/android/server/EngineeringModeService$EMClient;)V

    new-instance v13, Lcom/android/server/EngineeringModeService$SystemApplication;

    const-string/jumbo v23, "com.samsung.toolkit.ga_settingapplication"

    const/16 v24, 0x3e8

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v13, v0, v1, v2}, Lcom/android/server/EngineeringModeService$SystemApplication;-><init>(Lcom/android/server/EngineeringModeService;Ljava/lang/String;I)V

    sget v23, Lcom/android/server/EngineeringModeService;->mVersion:I

    const/16 v24, 0x14

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_2

    const/16 v23, 0xc

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v13, v0}, Lcom/android/server/EngineeringModeService$SystemApplication;->addMode(Ljava/lang/Integer;)V

    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/EngineeringModeService;->mEMCList:Lcom/android/server/EngineeringModeService$EMClientList;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Lcom/android/server/EngineeringModeService$EMClientList;->add(Lcom/android/server/EngineeringModeService$EMClient;)V

    new-instance v19, Lcom/android/server/EngineeringModeService$SystemApplication;

    const-string/jumbo v23, "com.sec.android.app.servicemodeapp"

    const/16 v24, 0x3e8

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v23

    move/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/EngineeringModeService$SystemApplication;-><init>(Lcom/android/server/EngineeringModeService;Ljava/lang/String;I)V

    const/16 v23, 0x2

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/server/EngineeringModeService$SystemApplication;->addMode(Ljava/lang/Integer;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/EngineeringModeService;->mEMCList:Lcom/android/server/EngineeringModeService$EMClientList;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/server/EngineeringModeService$EMClientList;->add(Lcom/android/server/EngineeringModeService$EMClient;)V

    new-instance v12, Lcom/android/server/EngineeringModeService$SystemApplication;

    const-string/jumbo v23, "com.sdet.fotaagent"

    const/16 v24, 0x3e8

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v12, v0, v1, v2}, Lcom/android/server/EngineeringModeService$SystemApplication;-><init>(Lcom/android/server/EngineeringModeService;Ljava/lang/String;I)V

    sget v23, Lcom/android/server/EngineeringModeService;->mVersion:I

    const/16 v24, 0x14

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_3

    const/16 v23, 0xc

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v12, v0}, Lcom/android/server/EngineeringModeService$SystemApplication;->addMode(Ljava/lang/Integer;)V

    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/EngineeringModeService;->mEMCList:Lcom/android/server/EngineeringModeService$EMClientList;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Lcom/android/server/EngineeringModeService$EMClientList;->add(Lcom/android/server/EngineeringModeService$EMClient;)V

    new-instance v15, Lcom/android/server/EngineeringModeService$SystemApplication;

    const-string/jumbo v23, "com.samsung.knox.kss"

    const/16 v24, 0x3e8

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v15, v0, v1, v2}, Lcom/android/server/EngineeringModeService$SystemApplication;-><init>(Lcom/android/server/EngineeringModeService;Ljava/lang/String;I)V

    sget v23, Lcom/android/server/EngineeringModeService;->mVersion:I

    const/16 v24, 0x14

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_4

    const/16 v23, 0xe

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Lcom/android/server/EngineeringModeService$SystemApplication;->addMode(Ljava/lang/Integer;)V

    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/EngineeringModeService;->mEMCList:Lcom/android/server/EngineeringModeService$EMClientList;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Lcom/android/server/EngineeringModeService$EMClientList;->add(Lcom/android/server/EngineeringModeService$EMClient;)V

    new-instance v16, Lcom/android/server/EngineeringModeService$PlatformApplication;

    const-string/jumbo v23, "com.samsung.knox.securefolder"

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/server/EngineeringModeService$PlatformApplication;-><init>(Lcom/android/server/EngineeringModeService;Ljava/lang/String;)V

    sget v23, Lcom/android/server/EngineeringModeService;->mVersion:I

    const/16 v24, 0x14

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_5

    const/16 v23, 0xe

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/server/EngineeringModeService$PlatformApplication;->addMode(Ljava/lang/Integer;)V

    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/EngineeringModeService;->mEMCList:Lcom/android/server/EngineeringModeService$EMClientList;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/server/EngineeringModeService$EMClientList;->add(Lcom/android/server/EngineeringModeService$EMClient;)V

    new-instance v8, Lcom/android/server/EngineeringModeService$PlatformApplication;

    const-string/jumbo v23, "com.samsung.android.bixby.agent"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v8, v0, v1}, Lcom/android/server/EngineeringModeService$PlatformApplication;-><init>(Lcom/android/server/EngineeringModeService;Ljava/lang/String;)V

    sget v23, Lcom/android/server/EngineeringModeService;->mVersion:I

    const/16 v24, 0x14

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_6

    const/16 v23, 0xf

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v8, v0}, Lcom/android/server/EngineeringModeService$PlatformApplication;->addMode(Ljava/lang/Integer;)V

    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/EngineeringModeService;->mEMCList:Lcom/android/server/EngineeringModeService$EMClientList;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Lcom/android/server/EngineeringModeService$EMClientList;->add(Lcom/android/server/EngineeringModeService$EMClient;)V

    new-instance v4, Lcom/android/server/EngineeringModeService$SystemApplication;

    const-string/jumbo v23, "com.sec.factory"

    const/16 v24, 0x3e8

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v4, v0, v1, v2}, Lcom/android/server/EngineeringModeService$SystemApplication;-><init>(Lcom/android/server/EngineeringModeService;Ljava/lang/String;I)V

    const/16 v23, 0x1

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Lcom/android/server/EngineeringModeService$SystemApplication;->addMode(Ljava/lang/Integer;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/EngineeringModeService;->mEMCList:Lcom/android/server/EngineeringModeService$EMClientList;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Lcom/android/server/EngineeringModeService$EMClientList;->add(Lcom/android/server/EngineeringModeService$EMClient;)V

    new-instance v20, Lcom/android/server/EngineeringModeService$SystemApplication;

    const-string/jumbo v23, "com.sec.android.sherlocksetting"

    const/16 v24, 0x3e8

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v23

    move/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/EngineeringModeService$SystemApplication;-><init>(Lcom/android/server/EngineeringModeService;Ljava/lang/String;I)V

    sget v23, Lcom/android/server/EngineeringModeService;->mVersion:I

    const/16 v24, 0x14

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_7

    const/16 v23, 0xc

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/server/EngineeringModeService$SystemApplication;->addMode(Ljava/lang/Integer;)V

    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/EngineeringModeService;->mEMCList:Lcom/android/server/EngineeringModeService$EMClientList;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/server/EngineeringModeService$EMClientList;->add(Lcom/android/server/EngineeringModeService$EMClient;)V

    new-instance v22, Lcom/android/server/EngineeringModeService$PlatformApplication;

    const-string/jumbo v23, "com.sec.veg.wass"

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/server/EngineeringModeService$PlatformApplication;-><init>(Lcom/android/server/EngineeringModeService;Ljava/lang/String;)V

    const/16 v23, 0x11

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lcom/android/server/EngineeringModeService$PlatformApplication;->addMode(Ljava/lang/Integer;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/EngineeringModeService;->mEMCList:Lcom/android/server/EngineeringModeService$EMClientList;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/server/EngineeringModeService$EMClientList;->add(Lcom/android/server/EngineeringModeService$EMClient;)V

    new-instance v6, Lcom/android/server/EngineeringModeService$SystemApplication;

    const-string/jumbo v23, "com.samsung.oobsimulator"

    const/16 v24, 0x3e8

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v6, v0, v1, v2}, Lcom/android/server/EngineeringModeService$SystemApplication;-><init>(Lcom/android/server/EngineeringModeService;Ljava/lang/String;I)V

    const/16 v23, 0x10

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Lcom/android/server/EngineeringModeService$SystemApplication;->addMode(Ljava/lang/Integer;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/EngineeringModeService;->mEMCList:Lcom/android/server/EngineeringModeService$EMClientList;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Lcom/android/server/EngineeringModeService$EMClientList;->add(Lcom/android/server/EngineeringModeService$EMClient;)V

    new-instance v18, Lcom/android/server/EngineeringModeService$SystemApplication;

    const-string/jumbo v23, "com.samsung.android.rlc"

    const/16 v24, 0x3e8

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v23

    move/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/EngineeringModeService$SystemApplication;-><init>(Lcom/android/server/EngineeringModeService;Ljava/lang/String;I)V

    const/16 v23, 0x8

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/server/EngineeringModeService$SystemApplication;->addMode(Ljava/lang/Integer;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/EngineeringModeService;->mEMCList:Lcom/android/server/EngineeringModeService$EMClientList;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/server/EngineeringModeService$EMClientList;->add(Lcom/android/server/EngineeringModeService$EMClient;)V

    new-instance v17, Lcom/android/server/EngineeringModeService$PlatformApplication;

    const-string/jumbo v23, "com.samsung.rcaframebuffer"

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/server/EngineeringModeService$PlatformApplication;-><init>(Lcom/android/server/EngineeringModeService;Ljava/lang/String;)V

    const/16 v23, 0x13

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/server/EngineeringModeService$PlatformApplication;->addMode(Ljava/lang/Integer;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/EngineeringModeService;->mEMCList:Lcom/android/server/EngineeringModeService$EMClientList;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/server/EngineeringModeService$EMClientList;->add(Lcom/android/server/EngineeringModeService$EMClient;)V

    :goto_8
    return-void

    :cond_0
    const/16 v23, 0x1

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Lcom/android/server/EngineeringModeService$SystemApplication;->addMode(Ljava/lang/Integer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v9

    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_8

    :cond_1
    const/16 v23, 0x1

    :try_start_1
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v14, v0}, Lcom/android/server/EngineeringModeService$PlatformApplication;->addMode(Ljava/lang/Integer;)V

    goto/16 :goto_1

    :cond_2
    const/16 v23, 0x1

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v13, v0}, Lcom/android/server/EngineeringModeService$SystemApplication;->addMode(Ljava/lang/Integer;)V

    goto/16 :goto_2

    :cond_3
    const/16 v23, 0x1

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v12, v0}, Lcom/android/server/EngineeringModeService$SystemApplication;->addMode(Ljava/lang/Integer;)V

    goto/16 :goto_3

    :cond_4
    const/16 v23, 0x1

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Lcom/android/server/EngineeringModeService$SystemApplication;->addMode(Ljava/lang/Integer;)V

    goto/16 :goto_4

    :cond_5
    const/16 v23, 0x1

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/server/EngineeringModeService$PlatformApplication;->addMode(Ljava/lang/Integer;)V

    goto/16 :goto_5

    :cond_6
    const/16 v23, 0x1

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v8, v0}, Lcom/android/server/EngineeringModeService$PlatformApplication;->addMode(Ljava/lang/Integer;)V

    goto/16 :goto_6

    :cond_7
    const/16 v23, 0x1

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/server/EngineeringModeService$SystemApplication;->addMode(Ljava/lang/Integer;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_7
.end method

.method private registerForBroadcasts()V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "com.android.server.em.EM_SYNC_SERVER_DATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "com.android.server.em.EM_SYNC_TOKEN_STATE_TIMER"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v1, Lcom/android/server/EngineeringModeService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/EngineeringModeService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private showToast(Ljava/lang/String;I)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    return-void

    :cond_1
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/android/server/EngineeringModeService$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/EngineeringModeService$2;-><init>(Lcom/android/server/EngineeringModeService;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private updateTime([B)Ljava/lang/String;
    .locals 5

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/android/server/EngineeringModeService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    const-string/jumbo v0, "EngineeringModeService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateTimeReq() is called EM"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/server/EngineeringModeService;->mVersion:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/android/server/EngineeringModeService;->isEmService(II)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    monitor-exit v1

    return-object v4

    :cond_0
    :try_start_1
    sget v0, Lcom/android/server/EngineeringModeService;->mVersion:I

    const/16 v2, 0x14

    if-eq v0, v2, :cond_1

    const-string/jumbo v0, "EngineeringModeService"

    const-string/jumbo v2, "updateTime is only supported in EM version 2"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-object v4

    :cond_1
    :try_start_2
    invoke-direct {p0, p1}, Lcom/android/server/EngineeringModeService;->nativeEM20UpdateTime([B)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private updateTokenState(Z)V
    .locals 3

    const-string/jumbo v1, "security.em.tstate"

    const-string/jumbo v2, "ES"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/EngineeringModeService;->mTokenState:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_2

    :cond_0
    iput-object v0, p0, Lcom/android/server/EngineeringModeService;->mTokenState:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/android/server/EngineeringModeService;->mBootCompleted:Z

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/android/server/EngineeringModeService;->notifyTokenStatus()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string/jumbo v1, "EngineeringModeService"

    const-string/jumbo v2, "TokenState isn\'t updated"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public getExpiryDate()Ljava/lang/String;
    .locals 4

    const/4 v3, 0x0

    const-string/jumbo v0, "EngineeringModeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getExpiryDate() is called. EM"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/server/EngineeringModeService;->mVersion:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/EngineeringModeService;->isEmService(II)Z

    move-result v0

    if-nez v0, :cond_0

    return-object v3

    :cond_0
    sget v0, Lcom/android/server/EngineeringModeService;->mVersion:I

    const/16 v1, 0xb

    if-eq v0, v1, :cond_1

    sget v0, Lcom/android/server/EngineeringModeService;->mVersion:I

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    const-string/jumbo v0, "EngineeringModeService"

    const-string/jumbo v1, "getID is only supported in EM version 1"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :cond_1
    const-string/jumbo v0, ""

    return-object v0
.end method

.method public getID()[B
    .locals 4

    iget-object v1, p0, Lcom/android/server/EngineeringModeService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    const-string/jumbo v0, "EngineeringModeService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getID() is called. EM"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/server/EngineeringModeService;->mVersion:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/android/server/EngineeringModeService;->isEmService(II)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_NO_PERMISSION:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :cond_0
    :try_start_1
    sget v0, Lcom/android/server/EngineeringModeService;->mVersion:I

    const/16 v2, 0xb

    if-eq v0, v2, :cond_1

    sget v0, Lcom/android/server/EngineeringModeService;->mVersion:I

    const/16 v2, 0xa

    if-eq v0, v2, :cond_1

    const-string/jumbo v0, "EngineeringModeService"

    const-string/jumbo v2, "getID is only supported in EM version 1"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_EM_SERVICE:[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-object v0

    :cond_1
    :try_start_2
    invoke-direct {p0}, Lcom/android/server/EngineeringModeService;->nativeGetId()[B
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getModes()[I
    .locals 8

    iget-object v5, p0, Lcom/android/server/EngineeringModeService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    const/4 v1, 0x0

    :try_start_0
    const-string/jumbo v4, "EngineeringModeService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getModes() is called. EM"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lcom/android/server/EngineeringModeService;->mVersion:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/EngineeringModeService;->getStringModes()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "ERROR_INTERNAL"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORINTARR_INTERNAL:[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v5

    return-object v4

    :cond_0
    :try_start_1
    const-string/jumbo v4, "ERROR_EM_SERVICE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORINTARR_EM_SERVICE:[I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v5

    return-object v4

    :cond_1
    :try_start_2
    const-string/jumbo v4, "ERROR_NOT_SUPPORTED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v4, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORINTARR_NOT_SUPPORTED:[I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v5

    return-object v4

    :cond_2
    :try_start_3
    const-string/jumbo v4, "ERROR_TOKEN_NOT_INSATLLED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    sget-object v4, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORINTARR_NOT_INSTALLED:[I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v5

    return-object v4

    :cond_3
    :try_start_4
    const-string/jumbo v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v4, v2

    new-array v1, v4, [I

    const/4 v0, 0x0

    :goto_0
    array-length v4, v2

    if-ge v0, v4, :cond_4

    aget-object v4, v2, v0

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aput v4, v1, v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    monitor-exit v5

    return-object v1

    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method public getNumOfModes()I
    .locals 4

    iget-object v1, p0, Lcom/android/server/EngineeringModeService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    const-string/jumbo v0, "EngineeringModeService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getNumOfModes() is called. EM"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/server/EngineeringModeService;->mVersion:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/android/server/EngineeringModeService;->isEmService(II)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, -0x514

    monitor-exit v1

    return v0

    :cond_0
    :try_start_1
    sget v0, Lcom/android/server/EngineeringModeService;->mVersion:I

    const/16 v2, 0xb

    if-eq v0, v2, :cond_1

    sget v0, Lcom/android/server/EngineeringModeService;->mVersion:I

    const/16 v2, 0xa

    if-eq v0, v2, :cond_1

    const-string/jumbo v0, "EngineeringModeService"

    const-string/jumbo v2, "getNumOfModes is only supported in EM version 1"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v0, -0x3e8

    monitor-exit v1

    return v0

    :cond_1
    :try_start_2
    invoke-direct {p0}, Lcom/android/server/EngineeringModeService;->nativeGetNumOfModes()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getRequestMsg(Ljava/lang/String;Ljava/lang/String;[BI)[B
    .locals 8

    iget-object v7, p0, Lcom/android/server/EngineeringModeService;->mLock:Ljava/lang/Object;

    monitor-enter v7

    :try_start_0
    const-string/jumbo v0, "EngineeringModeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getRequestMsg() is called. EM"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/server/EngineeringModeService;->mVersion:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/EngineeringModeService;->isEmService(II)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_NO_PERMISSION:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v7

    return-object v0

    :cond_0
    :try_start_1
    sget v0, Lcom/android/server/EngineeringModeService;->mVersion:I

    const/16 v1, 0xb

    if-eq v0, v1, :cond_1

    sget v0, Lcom/android/server/EngineeringModeService;->mVersion:I

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    const-string/jumbo v0, "EngineeringModeService"

    const-string/jumbo v1, "getRequestMsg(SSBI) is only supported in EM version 1"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_EM_SERVICE:[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v7

    return-object v0

    :cond_1
    :try_start_2
    sget-object v0, Lcom/android/server/EngineeringModeService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/EngineeringModeDeviceInfo;->getInstance(Landroid/content/Context;)Lcom/android/server/EngineeringModeDeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/EngineeringModeDeviceInfo;->getModelName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/EngineeringModeService;->mModel:Ljava/lang/String;

    sget-object v0, Lcom/android/server/EngineeringModeService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/EngineeringModeDeviceInfo;->getInstance(Landroid/content/Context;)Lcom/android/server/EngineeringModeDeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/EngineeringModeDeviceInfo;->getImei()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/EngineeringModeService;->mImei:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/EngineeringModeService;->mModel:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/server/EngineeringModeService;->mImei:Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/EngineeringModeService;->nativeGetRequestMsg(Ljava/lang/String;Ljava/lang/String;[BILjava/lang/String;Ljava/lang/String;)[B
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    monitor-exit v7

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v7

    throw v0
.end method

.method public getServerTime()J
    .locals 20

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/EngineeringModeService;->mLock:Ljava/lang/Object;

    monitor-enter v15

    :try_start_0
    const-string/jumbo v9, ""

    const-string/jumbo v14, "EngineeringModeService"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "getServerTime() is called. EM"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    sget v17, Lcom/android/server/EngineeringModeService;->mVersion:I

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, ""

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget v14, Lcom/android/server/EngineeringModeService;->mVersion:I

    const/16 v16, 0x14

    move/from16 v0, v16

    if-eq v14, v0, :cond_0

    const-string/jumbo v14, "EngineeringModeService"

    const-string/jumbo v16, "getServerTime is only supported in EM version from 2.0"

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v16, -0x3e8

    monitor-exit v15

    return-wide v16

    :cond_0
    :try_start_1
    invoke-direct/range {p0 .. p0}, Lcom/android/server/EngineeringModeService;->isNetworkConnected()Z

    move-result v14

    if-nez v14, :cond_1

    const-string/jumbo v14, "EngineeringModeService"

    const-string/jumbo v16, "Network isn\'t connected, skip getting server time"

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-wide/16 v16, -0x3e8

    monitor-exit v15

    return-wide v16

    :cond_1
    :try_start_2
    sget v14, Lcom/android/server/EngineeringModeService;->mVersion:I

    const/16 v16, 0x14

    move/from16 v0, v16

    if-ne v14, v0, :cond_2

    invoke-direct/range {p0 .. p0}, Lcom/android/server/EngineeringModeService;->checkTokenExist()Z

    move-result v14

    xor-int/lit8 v14, v14, 0x1

    if-eqz v14, :cond_2

    const-string/jumbo v14, "EngineeringModeService"

    const-string/jumbo v16, "skip getting server time"

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-wide/16 v16, -0x3e8

    monitor-exit v15

    return-wide v16

    :cond_2
    :try_start_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/EngineeringModeService;->mEMServerDate:Ljava/lang/String;

    if-nez v14, :cond_7

    const/4 v6, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/android/server/EngineeringModeService;->nativeEM20MakeTimeReq()[B

    move-result-object v6

    new-instance v4, Lcom/android/server/EngineeringModeService$EMSConnectionTask;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v6}, Lcom/android/server/EngineeringModeService$EMSConnectionTask;-><init>(Lcom/android/server/EngineeringModeService;[B)V

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/String;

    invoke-virtual {v4, v14}, Lcom/android/server/EngineeringModeService$EMSConnectionTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    :cond_3
    invoke-virtual {v4}, Lcom/android/server/EngineeringModeService$EMSConnectionTask;->getResponseBody()[B
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v7

    if-nez v7, :cond_4

    const-wide/16 v16, 0x64

    :try_start_4
    invoke-static/range {v16 .. v17}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_0
    :try_start_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    sub-long v16, v16, v12

    const-wide/16 v18, 0x1b58

    cmp-long v14, v16, v18

    if-ltz v14, :cond_3

    :goto_1
    if-nez v7, :cond_5

    const-string/jumbo v14, "EngineeringModeService"

    const-string/jumbo v16, "No valid response from EMS server!"

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const-wide/16 v16, -0x3e8

    monitor-exit v15

    return-wide v16

    :catch_0
    move-exception v3

    goto :goto_0

    :cond_4
    :try_start_6
    const-string/jumbo v14, "EngineeringModeService"

    const-string/jumbo v16, "responseBody isn\'t null"

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v14

    monitor-exit v15

    throw v14

    :cond_5
    :try_start_7
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/server/EngineeringModeService;->nativeEM20UpdateTime([B)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v14

    if-nez v14, :cond_6

    const-string/jumbo v14, "EngineeringModeService"

    const-string/jumbo v16, "Failed to verify server time"

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/server/EngineeringModeService;->mEMServerDate:Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    const-wide/16 v16, -0x3e8

    monitor-exit v15

    return-wide v16

    :cond_6
    :try_start_8
    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/android/server/EngineeringModeService;->mEMServerDate:Ljava/lang/String;

    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/EngineeringModeService;->mEMServerDate:Ljava/lang/String;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-eqz v14, :cond_8

    :try_start_9
    new-instance v8, Ljava/text/SimpleDateFormat;

    const-string/jumbo v14, "yyyyMMdd"

    invoke-direct {v8, v14}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/EngineeringModeService;->mEMServerDate:Ljava/lang/String;

    invoke-virtual {v8, v14}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    const-string/jumbo v14, "EngineeringModeService"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "EM Server time ("

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/EngineeringModeService;->mEMServerDate:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, "/"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, ")"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/text/ParseException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    monitor-exit v15

    return-wide v10

    :catch_1
    move-exception v5

    :try_start_a
    const-string/jumbo v14, "EngineeringModeService"

    const-string/jumbo v16, "Failed to parse server date"

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/server/EngineeringModeService;->mEMServerDate:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/text/ParseException;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :cond_8
    const-wide/16 v16, -0x3e8

    monitor-exit v15

    return-wide v16
.end method

.method public getStatus(I)I
    .locals 12

    const/4 v1, 0x0

    iget-object v11, p0, Lcom/android/server/EngineeringModeService;->mLock:Ljava/lang/Object;

    monitor-enter v11

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/EngineeringModeService;->checkTokenExist()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    monitor-exit v11

    return v1

    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/EngineeringModeService;->isEmClient(III)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v9

    if-nez v9, :cond_1

    const/16 v0, -0x514

    monitor-exit v11

    return v0

    :cond_1
    :try_start_2
    const-string/jumbo v0, "EngineeringModeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getStatus() is called. ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " / mode["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]) EM"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/server/EngineeringModeService;->mVersion:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/EngineeringModeService;->getServerTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    const-string/jumbo v0, "EngineeringModeService"

    const-string/jumbo v1, "getStatus(i) Failed to get EM Server time. Use current value"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    sget v0, Lcom/android/server/EngineeringModeService;->mVersion:I

    const/16 v1, 0xb

    if-eq v0, v1, :cond_3

    sget v0, Lcom/android/server/EngineeringModeService;->mVersion:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_4

    :cond_3
    invoke-direct {p0, p1}, Lcom/android/server/EngineeringModeService;->nativeGetStatus(I)I

    move-result v10

    :goto_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/EngineeringModeService;->updateTokenState(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v11

    return v10

    :cond_4
    :try_start_3
    sget v0, Lcom/android/server/EngineeringModeService;->mVersion:I

    const/16 v1, 0x14

    if-ne v0, v1, :cond_8

    iget-object v2, p0, Lcom/android/server/EngineeringModeService;->mEMServerDate:Ljava/lang/String;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/EngineeringModeService;->isEmApplication(II)Z

    move-result v3

    const-string/jumbo v5, "Unknown"

    const-string/jumbo v6, "Unknown"

    const/4 v4, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v8}, Lcom/android/server/EngineeringModeService;->nativeEM20GetStatus(ILjava/lang/String;ZILjava/lang/String;Ljava/lang/String;II)I

    move-result v10

    if-nez v10, :cond_5

    const/4 v10, 0x1

    goto :goto_0

    :cond_5
    const/16 v0, -0x5dc

    if-ne v10, v0, :cond_6

    const-string/jumbo v0, "Your EM token can\'t be used temporary. Please connect network and try again"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/server/EngineeringModeService;->showToast(Ljava/lang/String;I)V

    const/4 v10, 0x0

    goto :goto_0

    :cond_6
    invoke-direct {p0, v10, v9}, Lcom/android/server/EngineeringModeService;->isOkToUseDevCert(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const v10, -0xffff68

    goto :goto_0

    :cond_7
    const/4 v10, 0x0

    goto :goto_0

    :cond_8
    const-string/jumbo v0, "EngineeringModeService"

    const-string/jumbo v1, "Invalid version"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/16 v10, -0x3e8

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v11

    throw v0
.end method

.method public getStatus(ILjava/lang/String;)I
    .locals 12

    const/16 v5, 0x14

    const/4 v3, 0x0

    iget-object v11, p0, Lcom/android/server/EngineeringModeService;->mLock:Ljava/lang/Object;

    monitor-enter v11

    const/4 v4, 0x0

    const/4 v9, 0x0

    :try_start_0
    const-string/jumbo v0, "EngineeringModeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getStatus() is called. EM"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/server/EngineeringModeService;->mVersion:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/EngineeringModeService;->checkTokenExist()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    monitor-exit v11

    return v3

    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-direct {p0, p2, v0, v1, p1}, Lcom/android/server/EngineeringModeService;->isEmClient(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_1

    sget v0, Lcom/android/server/EngineeringModeService;->mVersion:I

    if-ge v0, v5, :cond_2

    const-string/jumbo v0, "EngineeringModeService"

    const-string/jumbo v1, "No Permission"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v0, -0x514

    monitor-exit v11

    return v0

    :cond_1
    const/4 v4, 0x1

    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/android/server/EngineeringModeService;->mClient:Lcom/android/server/EngineeringModeService$EngineeringModeClient;

    if-nez v0, :cond_5

    new-instance v0, Lcom/android/server/EngineeringModeService$EngineeringModeClient;

    invoke-direct {v0, p0, p2}, Lcom/android/server/EngineeringModeService$EngineeringModeClient;-><init>(Lcom/android/server/EngineeringModeService;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/EngineeringModeService;->mClient:Lcom/android/server/EngineeringModeService$EngineeringModeClient;

    :goto_0
    invoke-virtual {p0}, Lcom/android/server/EngineeringModeService;->getServerTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_3

    const-string/jumbo v0, "EngineeringModeService"

    const-string/jumbo v1, "getStatus(iS) Failed to get EM Server time. Use current value"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    sget v0, Lcom/android/server/EngineeringModeService;->mVersion:I

    const/16 v1, 0xb

    if-eq v0, v1, :cond_4

    sget v0, Lcom/android/server/EngineeringModeService;->mVersion:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_6

    :cond_4
    invoke-direct {p0, p1}, Lcom/android/server/EngineeringModeService;->nativeGetStatus(I)I

    move-result v10

    :goto_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/EngineeringModeService;->updateTokenState(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v11

    return v10

    :cond_5
    :try_start_3
    iget-object v0, p0, Lcom/android/server/EngineeringModeService;->mClient:Lcom/android/server/EngineeringModeService$EngineeringModeClient;

    invoke-virtual {v0, p2}, Lcom/android/server/EngineeringModeService$EngineeringModeClient;->updateClientInfo(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v11

    throw v0

    :cond_6
    :try_start_4
    sget v0, Lcom/android/server/EngineeringModeService;->mVersion:I

    if-ne v0, v5, :cond_a

    iget-object v2, p0, Lcom/android/server/EngineeringModeService;->mEMServerDate:Ljava/lang/String;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/EngineeringModeService;->isEmApplication(II)Z

    move-result v3

    iget-object v0, p0, Lcom/android/server/EngineeringModeService;->mClient:Lcom/android/server/EngineeringModeService$EngineeringModeClient;

    invoke-virtual {v0}, Lcom/android/server/EngineeringModeService$EngineeringModeClient;->getProcName()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/android/server/EngineeringModeService;->mClient:Lcom/android/server/EngineeringModeService$EngineeringModeClient;

    invoke-virtual {v0}, Lcom/android/server/EngineeringModeService$EngineeringModeClient;->getPkgName()Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/android/server/EngineeringModeService;->mClient:Lcom/android/server/EngineeringModeService$EngineeringModeClient;

    invoke-virtual {v0}, Lcom/android/server/EngineeringModeService$EngineeringModeClient;->getUid()I

    move-result v7

    iget-object v0, p0, Lcom/android/server/EngineeringModeService;->mClient:Lcom/android/server/EngineeringModeService$EngineeringModeClient;

    invoke-virtual {v0}, Lcom/android/server/EngineeringModeService$EngineeringModeClient;->getSignature()I

    move-result v8

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v8}, Lcom/android/server/EngineeringModeService;->nativeEM20GetStatus(ILjava/lang/String;ZILjava/lang/String;Ljava/lang/String;II)I

    move-result v10

    if-nez v10, :cond_7

    const-string/jumbo v0, "EngineeringModeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getStatus() Mode#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "is vaild"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v10, 0x1

    goto :goto_1

    :cond_7
    iget-object v0, p0, Lcom/android/server/EngineeringModeService;->mClient:Lcom/android/server/EngineeringModeService$EngineeringModeClient;

    invoke-virtual {v0}, Lcom/android/server/EngineeringModeService$EngineeringModeClient;->getProcName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v10, v0}, Lcom/android/server/EngineeringModeService;->isOkToUseDevCert(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/android/server/EngineeringModeService;->mClient:Lcom/android/server/EngineeringModeService$EngineeringModeClient;

    invoke-virtual {v0}, Lcom/android/server/EngineeringModeService$EngineeringModeClient;->getPkgName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v10, v0}, Lcom/android/server/EngineeringModeService;->isOkToUseDevCert(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_8
    const v10, -0xffff68

    goto :goto_1

    :cond_9
    const/4 v10, 0x0

    goto/16 :goto_1

    :cond_a
    const-string/jumbo v0, "EngineeringModeService"

    const-string/jumbo v1, "Invalid version"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/16 v10, -0x3e8

    goto/16 :goto_1
.end method

.method public getStringModes()Ljava/lang/String;
    .locals 7

    const/16 v6, 0x14

    iget-object v3, p0, Lcom/android/server/EngineeringModeService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    const/4 v1, 0x0

    const/4 v0, 0x0

    :try_start_0
    const-string/jumbo v2, "EngineeringModeService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getStringModes() is called. EM"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/android/server/EngineeringModeService;->mVersion:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/EngineeringModeService;->checkTokenExist()Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "ERROR_TOKEN_NOT_INSATLLED"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    return-object v2

    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-direct {p0, v2, v4}, Lcom/android/server/EngineeringModeService;->isEmService(II)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "ERROR_EM_SERVICE"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v3

    return-object v2

    :cond_1
    :try_start_2
    sget v2, Lcom/android/server/EngineeringModeService;->mVersion:I

    if-ge v2, v6, :cond_2

    const-string/jumbo v2, "EngineeringModeService"

    const-string/jumbo v4, "getModes will be supported in EM version 1. Coming soon"

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "ERROR_NOT_SUPPORTED"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v3

    return-object v2

    :cond_2
    :try_start_3
    sget v2, Lcom/android/server/EngineeringModeService;->mVersion:I

    if-lt v2, v6, :cond_3

    invoke-direct {p0}, Lcom/android/server/EngineeringModeService;->nativeEM20GetModes()[B

    move-result-object v0

    if-nez v0, :cond_4

    const-string/jumbo v2, "EngineeringModeService"

    const-string/jumbo v4, "Return value is null. please check error"

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "ERROR_INTERNAL"
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v3

    return-object v2

    :cond_3
    :try_start_4
    const-string/jumbo v2, "EngineeringModeService"

    const-string/jumbo v4, "Invalid version"

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "ERROR_NOT_SUPPORTED"
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit v3

    return-object v2

    :cond_4
    :try_start_5
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v1

    monitor-exit v3

    return-object v1

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public getTUC(I)I
    .locals 4

    iget-object v1, p0, Lcom/android/server/EngineeringModeService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    const-string/jumbo v0, "EngineeringModeService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getTUC() is called EM"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/server/EngineeringModeService;->mVersion:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/android/server/EngineeringModeService;->isEmService(II)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, -0x514

    monitor-exit v1

    return v0

    :cond_0
    :try_start_1
    sget v0, Lcom/android/server/EngineeringModeService;->mVersion:I

    const/16 v2, 0x14

    if-eq v0, v2, :cond_1

    const-string/jumbo v0, "EngineeringModeService"

    const-string/jumbo v2, "getTUC is only supported in EM version 2"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v0, -0x3e8

    monitor-exit v1

    return v0

    :cond_1
    :try_start_2
    invoke-direct {p0, p1}, Lcom/android/server/EngineeringModeService;->nativeEM20GetTUC(I)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getToken()[B
    .locals 4

    iget-object v1, p0, Lcom/android/server/EngineeringModeService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    const-string/jumbo v0, "EngineeringModeService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getToken() is called EM"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/server/EngineeringModeService;->mVersion:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/android/server/EngineeringModeService;->isEmService(II)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_NO_PERMISSION:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :cond_0
    :try_start_1
    sget v0, Lcom/android/server/EngineeringModeService;->mVersion:I

    const/16 v2, 0x14

    if-eq v0, v2, :cond_1

    const-string/jumbo v0, "EngineeringModeService"

    const-string/jumbo v2, "getToken is only supported in EM version 2"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_EM_SERVICE:[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-object v0

    :cond_1
    :try_start_2
    invoke-direct {p0}, Lcom/android/server/EngineeringModeService;->nativeEM20ReadToken()[B
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getVersion()I
    .locals 1

    sget v0, Lcom/android/server/EngineeringModeService;->mVersion:I

    return v0
.end method

.method public installToken([B)I
    .locals 5

    iget-object v2, p0, Lcom/android/server/EngineeringModeService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    const-string/jumbo v1, "EngineeringModeService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "installToken() is called. EM"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/android/server/EngineeringModeService;->mVersion:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-direct {p0, v1, v3}, Lcom/android/server/EngineeringModeService;->isEmService(II)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, -0x514

    monitor-exit v2

    return v1

    :cond_0
    :try_start_1
    sget v1, Lcom/android/server/EngineeringModeService;->mVersion:I

    const/16 v3, 0xb

    if-eq v1, v3, :cond_1

    sget v1, Lcom/android/server/EngineeringModeService;->mVersion:I

    const/16 v3, 0xa

    if-ne v1, v3, :cond_2

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/EngineeringModeService;->nativeInstallToken([B)I

    move-result v0

    :goto_0
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/server/EngineeringModeService;->updateTokenState(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    return v0

    :cond_2
    :try_start_2
    sget v1, Lcom/android/server/EngineeringModeService;->mVersion:I

    const/16 v3, 0x14

    if-ne v1, v3, :cond_3

    invoke-direct {p0, p1}, Lcom/android/server/EngineeringModeService;->nativeEM20InstallToken([B)I

    move-result v0

    goto :goto_0

    :cond_3
    const-string/jumbo v1, "EngineeringModeService"

    const-string/jumbo v3, "Invalid version"

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/16 v0, -0x3e8

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public installTokenForESS(Ljava/lang/String;)[B
    .locals 4

    const-string/jumbo v1, "EngineeringModeService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "installTokenForESS() is called EM"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/server/EngineeringModeService;->mVersion:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    sget v1, Lcom/android/server/EngineeringModeService;->mVersion:I

    const/16 v2, 0x14

    if-ge v1, v2, :cond_0

    const-string/jumbo v1, "EngineeringModeService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "installTokenForESS is not supported on EM Version:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/server/EngineeringModeService;->mVersion:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_NOT_SUPPORTED:[B

    return-object v1

    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/server/EngineeringModeService;->isEmService(II)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_NO_PERMISSION:[B

    return-object v1

    :cond_1
    if-nez p1, :cond_2

    const-string/jumbo v1, "EngineeringModeService"

    const-string/jumbo v2, "invaild parameter"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_INVAILD_PARAM:[B

    return-object v1

    :cond_2
    iget-object v1, p0, Lcom/android/server/EngineeringModeService;->mESS:Lcom/samsung/android/service/EngineeringMode/ess/EngineeringModeESS;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, p1}, Lcom/samsung/android/service/EngineeringMode/ess/EngineeringModeESS;->init(ILjava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    if-eq v2, v1, :cond_3

    const-string/jumbo v1, "EngineeringModeService"

    const-string/jumbo v2, "Failed to initialize ESS"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_INVAILD_PARAM:[B

    return-object v1

    :cond_3
    iget-object v1, p0, Lcom/android/server/EngineeringModeService;->mESS:Lcom/samsung/android/service/EngineeringMode/ess/EngineeringModeESS;

    invoke-virtual {v1}, Lcom/samsung/android/service/EngineeringMode/ess/EngineeringModeESS;->getmRxIVB64()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/EngineeringModeService;->mESS:Lcom/samsung/android/service/EngineeringMode/ess/EngineeringModeESS;

    invoke-virtual {v2}, Lcom/samsung/android/service/EngineeringMode/ess/EngineeringModeESS;->getmEtokenB64()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/server/EngineeringModeService;->nativeEM20InstallTokenForESS_V1(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    if-nez v0, :cond_4

    const-string/jumbo v1, "EngineeringModeService"

    const-string/jumbo v2, "Error occured in native"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-object v0
.end method

.method public isTokenInstalled()I
    .locals 8

    iget-object v2, p0, Lcom/android/server/EngineeringModeService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    const-string/jumbo v1, "EngineeringModeService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isTokenInstalled() is called. EM"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/android/server/EngineeringModeService;->mVersion:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-direct {p0, v1, v3}, Lcom/android/server/EngineeringModeService;->isEmService(II)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, -0x514

    monitor-exit v2

    return v1

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/EngineeringModeService;->getServerTime()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-gez v1, :cond_1

    const-string/jumbo v1, "EngineeringModeService"

    const-string/jumbo v3, "getStatus(iS) Failed to get EM Server time. Use current value"

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    sget v1, Lcom/android/server/EngineeringModeService;->mVersion:I

    const/16 v3, 0xb

    if-eq v1, v3, :cond_2

    sget v1, Lcom/android/server/EngineeringModeService;->mVersion:I

    const/16 v3, 0xa

    if-ne v1, v3, :cond_3

    :cond_2
    invoke-direct {p0}, Lcom/android/server/EngineeringModeService;->nativeIsTokenInstalled()I

    move-result v0

    :goto_0
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/server/EngineeringModeService;->updateTokenState(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    return v0

    :cond_3
    :try_start_2
    sget v1, Lcom/android/server/EngineeringModeService;->mVersion:I

    const/16 v3, 0x14

    if-ne v1, v3, :cond_4

    iget-object v1, p0, Lcom/android/server/EngineeringModeService;->mEMServerDate:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/server/EngineeringModeService;->nativeEM20IsTokenInstalled(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_4
    const-string/jumbo v1, "EngineeringModeService"

    const-string/jumbo v3, "Invalid version"

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/16 v0, -0x3e8

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public makeDelTokenForESS(Ljava/lang/String;)[B
    .locals 4

    const-string/jumbo v1, "EngineeringModeService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "makeDelTokenForESS() is called EM"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/server/EngineeringModeService;->mVersion:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    sget v1, Lcom/android/server/EngineeringModeService;->mVersion:I

    const/16 v2, 0x14

    if-ge v1, v2, :cond_0

    const-string/jumbo v1, "EngineeringModeService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "makeDelTokenForESS is not supported on EM Version:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/server/EngineeringModeService;->mVersion:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_NOT_SUPPORTED:[B

    return-object v1

    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/server/EngineeringModeService;->isEmService(II)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_NO_PERMISSION:[B

    return-object v1

    :cond_1
    if-nez p1, :cond_2

    const-string/jumbo v1, "EngineeringModeService"

    const-string/jumbo v2, "invaild parameter"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_INVAILD_PARAM:[B

    return-object v1

    :cond_2
    iget-object v1, p0, Lcom/android/server/EngineeringModeService;->mESS:Lcom/samsung/android/service/EngineeringMode/ess/EngineeringModeESS;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p1}, Lcom/samsung/android/service/EngineeringMode/ess/EngineeringModeESS;->init(ILjava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    if-eq v2, v1, :cond_3

    const-string/jumbo v1, "EngineeringModeService"

    const-string/jumbo v2, "Failed to initialize ESS"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_INVAILD_PARAM:[B

    return-object v1

    :cond_3
    iget-object v1, p0, Lcom/android/server/EngineeringModeService;->mESS:Lcom/samsung/android/service/EngineeringMode/ess/EngineeringModeESS;

    invoke-virtual {v1}, Lcom/samsung/android/service/EngineeringMode/ess/EngineeringModeESS;->getmPrefixBody()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/EngineeringModeService;->mESS:Lcom/samsung/android/service/EngineeringMode/ess/EngineeringModeESS;

    invoke-virtual {v2}, Lcom/samsung/android/service/EngineeringMode/ess/EngineeringModeESS;->getmCert()[B

    move-result-object v2

    invoke-direct {p0}, Lcom/android/server/EngineeringModeService;->getImei()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/EngineeringModeService;->nativeEM20MakeDelTokenForESS_V1(Ljava/lang/String;[BLjava/lang/String;)[B

    move-result-object v0

    if-nez v0, :cond_4

    const-string/jumbo v1, "EngineeringModeService"

    const-string/jumbo v2, "Error occured in native"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-object v0
.end method

.method public makeITLReq(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 4

    iget-object v1, p0, Lcom/android/server/EngineeringModeService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    const-string/jumbo v0, "EngineeringModeService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "makeITLReq() is called. EM"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/server/EngineeringModeService;->mVersion:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/android/server/EngineeringModeService;->isEmService(II)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_NO_PERMISSION:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :cond_0
    :try_start_1
    sget v0, Lcom/android/server/EngineeringModeService;->mVersion:I

    const/16 v2, 0x14

    if-eq v0, v2, :cond_1

    const-string/jumbo v0, "EngineeringModeService"

    const-string/jumbo v2, "getID is only supported in EM version 2"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x0

    monitor-exit v1

    return-object v0

    :cond_1
    :try_start_2
    invoke-direct {p0, p1, p2}, Lcom/android/server/EngineeringModeService;->nativeEM20MakeITLReq(Ljava/lang/String;Ljava/lang/String;)[B
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public makeTokenReq(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;)[B
    .locals 7

    iget-object v6, p0, Lcom/android/server/EngineeringModeService;->mLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    const-string/jumbo v0, "EngineeringModeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "makeTokenReq() is called EM"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/server/EngineeringModeService;->mVersion:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/EngineeringModeService;->isEmService(II)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_NO_PERMISSION:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v6

    return-object v0

    :cond_0
    :try_start_1
    sget v0, Lcom/android/server/EngineeringModeService;->mVersion:I

    const/16 v1, 0x14

    if-eq v0, v1, :cond_1

    const-string/jumbo v0, "EngineeringModeService"

    const-string/jumbo v1, "makeTokenReq(SSBS) is only supported in EM version 2"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_EM_SERVICE:[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v6

    return-object v0

    :cond_1
    :try_start_2
    invoke-direct {p0}, Lcom/android/server/EngineeringModeService;->getImei()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/EngineeringModeService;->nativeEM20MakeTokenReq(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)[B
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    monitor-exit v6

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v6

    throw v0
.end method

.method public makeTokenReqForESS(Ljava/lang/String;)[B
    .locals 6

    const/4 v5, 0x1

    const-string/jumbo v2, "EngineeringModeService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "makeTokenReqForESS() is called EM"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/android/server/EngineeringModeService;->mVersion:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v1, 0x0

    sget v2, Lcom/android/server/EngineeringModeService;->mVersion:I

    const/16 v3, 0x14

    if-ge v2, v3, :cond_0

    const-string/jumbo v2, "EngineeringModeService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "makeTokenReqForESS is not supported on EM Version:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/android/server/EngineeringModeService;->mVersion:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_NOT_SUPPORTED:[B

    return-object v2

    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/android/server/EngineeringModeService;->isEmService(II)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_NO_PERMISSION:[B

    return-object v2

    :cond_1
    if-nez p1, :cond_2

    const-string/jumbo v2, "EngineeringModeService"

    const-string/jumbo v3, "invaild parameter"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_INVAILD_PARAM:[B

    return-object v2

    :cond_2
    iget-object v2, p0, Lcom/android/server/EngineeringModeService;->mESS:Lcom/samsung/android/service/EngineeringMode/ess/EngineeringModeESS;

    invoke-virtual {v2, v5, p1}, Lcom/samsung/android/service/EngineeringMode/ess/EngineeringModeESS;->init(ILjava/lang/String;)I

    move-result v2

    if-eq v5, v2, :cond_3

    const-string/jumbo v2, "EngineeringModeService"

    const-string/jumbo v3, "Failed to initialize ESS"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_INVAILD_PARAM:[B

    return-object v2

    :cond_3
    iget-object v2, p0, Lcom/android/server/EngineeringModeService;->mESS:Lcom/samsung/android/service/EngineeringMode/ess/EngineeringModeESS;

    invoke-virtual {v2}, Lcom/samsung/android/service/EngineeringMode/ess/EngineeringModeESS;->getmPrefixBody()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/EngineeringModeService;->mESS:Lcom/samsung/android/service/EngineeringMode/ess/EngineeringModeESS;

    invoke-virtual {v3}, Lcom/samsung/android/service/EngineeringMode/ess/EngineeringModeESS;->getmCert()[B

    move-result-object v3

    invoke-direct {p0}, Lcom/android/server/EngineeringModeService;->getImei()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v2, v3, v4}, Lcom/android/server/EngineeringModeService;->nativeEM20MakeTokenReqForESS_V1(Ljava/lang/String;[BLjava/lang/String;)[B

    move-result-object v0

    if-nez v0, :cond_4

    const-string/jumbo v2, "EngineeringModeService"

    const-string/jumbo v3, "Error occured in native"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-object v0
.end method

.method public recoveryITL([B)I
    .locals 4

    iget-object v1, p0, Lcom/android/server/EngineeringModeService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    const-string/jumbo v0, "EngineeringModeService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "recoveryITL() is called. EM"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/server/EngineeringModeService;->mVersion:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/android/server/EngineeringModeService;->isEmService(II)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, -0x514

    monitor-exit v1

    return v0

    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/EngineeringModeService;->nativeEM20RecoveryITL([B)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public removeToken()I
    .locals 5

    iget-object v2, p0, Lcom/android/server/EngineeringModeService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    const-string/jumbo v1, "EngineeringModeService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "removeToken() is called. EM"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/android/server/EngineeringModeService;->mVersion:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-direct {p0, v1, v3}, Lcom/android/server/EngineeringModeService;->isEmService(II)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, -0x514

    monitor-exit v2

    return v1

    :cond_0
    :try_start_1
    sget v1, Lcom/android/server/EngineeringModeService;->mVersion:I

    const/16 v3, 0xb

    if-eq v1, v3, :cond_1

    sget v1, Lcom/android/server/EngineeringModeService;->mVersion:I

    const/16 v3, 0xa

    if-ne v1, v3, :cond_2

    :cond_1
    invoke-direct {p0}, Lcom/android/server/EngineeringModeService;->nativeRemoveToken()I

    move-result v0

    :goto_0
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/server/EngineeringModeService;->updateTokenState(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    return v0

    :cond_2
    :try_start_2
    sget v1, Lcom/android/server/EngineeringModeService;->mVersion:I

    const/16 v3, 0x14

    if-ne v1, v3, :cond_3

    invoke-direct {p0}, Lcom/android/server/EngineeringModeService;->nativeEM20RemoveToken()I

    move-result v0

    goto :goto_0

    :cond_3
    const-string/jumbo v1, "EngineeringModeService"

    const-string/jumbo v3, "Invalid version"

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/16 v0, -0x3e8

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public sendFuseCmd()I
    .locals 5

    iget-object v2, p0, Lcom/android/server/EngineeringModeService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    const-string/jumbo v1, "EngineeringModeService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sendFuseCmd() is called. EM"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/android/server/EngineeringModeService;->mVersion:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-direct {p0, v1, v3}, Lcom/android/server/EngineeringModeService;->isEmService(II)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, -0x514

    monitor-exit v2

    return v1

    :cond_0
    :try_start_1
    sget v1, Lcom/android/server/EngineeringModeService;->mVersion:I

    const/16 v3, 0xb

    if-eq v1, v3, :cond_1

    sget v1, Lcom/android/server/EngineeringModeService;->mVersion:I

    const/16 v3, 0xa

    if-ne v1, v3, :cond_2

    :cond_1
    invoke-direct {p0}, Lcom/android/server/EngineeringModeService;->nativeSendFuseCmd()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    :goto_0
    monitor-exit v2

    return v0

    :cond_2
    :try_start_2
    sget v1, Lcom/android/server/EngineeringModeService;->mVersion:I

    const/16 v3, 0x14

    if-ne v1, v3, :cond_3

    invoke-direct {p0}, Lcom/android/server/EngineeringModeService;->nativeEM20SendFuseCmd()I

    move-result v0

    goto :goto_0

    :cond_3
    const-string/jumbo v1, "EngineeringModeService"

    const-string/jumbo v3, "Invalid version"

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/16 v0, -0x3e8

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public setPriorityTime(Ljava/lang/String;)I
    .locals 5

    iget-object v2, p0, Lcom/android/server/EngineeringModeService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    const-string/jumbo v1, "EngineeringModeService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setPriorityTime() is called. EM"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/android/server/EngineeringModeService;->mVersion:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-direct {p0, v1, v3}, Lcom/android/server/EngineeringModeService;->isEmService(II)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, -0x514

    monitor-exit v2

    return v1

    :cond_0
    :try_start_1
    sget v1, Lcom/android/server/EngineeringModeService;->mVersion:I

    const/16 v3, 0xb

    if-eq v1, v3, :cond_1

    sget v1, Lcom/android/server/EngineeringModeService;->mVersion:I

    const/16 v3, 0xa

    if-ne v1, v3, :cond_2

    :cond_1
    const-string/jumbo v1, "EngineeringModeService"

    const-string/jumbo v3, "setPriorityTime is only supported in EM version 2"

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, -0x3e8

    :goto_0
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/server/EngineeringModeService;->updateTokenState(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    return v0

    :cond_2
    :try_start_2
    sget v1, Lcom/android/server/EngineeringModeService;->mVersion:I

    const/16 v3, 0x14

    if-ne v1, v3, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/EngineeringModeService;->nativeEM20SetPriorityTime([B)I

    move-result v0

    goto :goto_0

    :cond_3
    const-string/jumbo v1, "EngineeringModeService"

    const-string/jumbo v3, "Invalid version"

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/16 v0, -0x3e8

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public setVersion(I)V
    .locals 0

    sput p1, Lcom/android/server/EngineeringModeService;->mVersion:I

    return-void
.end method
