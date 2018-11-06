.class public final Lcom/android/server/VaultKeeperService;
.super Lcom/samsung/android/service/vaultkeeper/IVaultKeeperService$Stub;
.source "VaultKeeperService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/VaultKeeperService$1;
    }
.end annotation


# static fields
.field private static final ANDROID_SYSTEM_SERVER:Ljava/lang/String; = "system_server"

.field private static final ANDROID_UID_SYSTEM:I = 0x3e8

.field private static final MESSAGE_ACQUIRE_WAKELOCK:I = 0x1

.field private static final MESSAGE_RELEASE_WAKELOCK:I = 0x2

.field private static final RSA2048_SIGNATURE_LEN:I = 0x100

.field private static final SERVICE_NOT_SUPPORT:I = 0x0

.field private static final SERVICE_SUPPORT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "VaultKeeperService"

.field private static final TYPE_EMT:I = 0x3

.field private static final TYPE_MAX:I = 0x3

.field private static final TYPE_MIN:I = 0x1

.field private static final TYPE_NONCE:I = 0x1

.field private static final TYPE_VAULT_DATA_MAX:I = 0x3

.field private static final TYPE_VAULT_DATA_MIN:I = 0x1

.field private static final TYPE_VAULT_DATA_PRIVATED:I = 0x3

.field private static final TYPE_VAULT_DATA_SHELTERED:I = 0x2

.field private static final TYPE_VAULT_DATA_UNSHELTERED:I = 0x1

.field private static final TYPE_WB:I = 0x2

.field private static final VAULT_DATA_PRIVATED_LEN:I = 0x20

.field private static mContext:Landroid/content/Context;


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mLock:Ljava/lang/Object;

.field private mServiceSupport:I

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static synthetic -get0(Lcom/android/server/VaultKeeperService;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/VaultKeeperService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/VaultKeeperService;)Landroid/os/PowerManager$WakeLock;
    .locals 1

    iget-object v0, p0, Lcom/android/server/VaultKeeperService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "vkjni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/service/vaultkeeper/IVaultKeeperService$Stub;-><init>()V

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/lang/Object;

    new-instance v1, Lcom/android/server/VaultKeeperService$1;

    invoke-direct {v1, p0}, Lcom/android/server/VaultKeeperService$1;-><init>(Lcom/android/server/VaultKeeperService;)V

    iput-object v1, p0, Lcom/android/server/VaultKeeperService;->mHandler:Landroid/os/Handler;

    sput-object p1, Lcom/android/server/VaultKeeperService;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/server/VaultKeeperService;->nativeGetSystemSolution()I

    move-result v1

    iput v1, p0, Lcom/android/server/VaultKeeperService;->mServiceSupport:I

    sget-object v1, Lcom/android/server/VaultKeeperService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const-string/jumbo v1, "VK_WakeLock"

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/VaultKeeperService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-void
.end method

.method private native nativeDestroy(Ljava/lang/String;Ljava/lang/String;[B[B[B)I
.end method

.method private native nativeEncryptMessage(Ljava/lang/String;Ljava/lang/String;[B)[B
.end method

.method private native nativeGetProcessName(I)Ljava/lang/String;
.end method

.method private native nativeGetSystemSolution()I
.end method

.method private native nativeInitialize(Ljava/lang/String;Ljava/lang/String;[B[B[B[B[B)[B
.end method

.method private native nativeIsInitialized(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method private native nativeIsRegistered(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method private native nativeMigrationStorage(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method private native nativeRead(Ljava/lang/String;Ljava/lang/String;I[B)[B
.end method

.method private native nativeSensitiveBox(Ljava/lang/String;Ljava/lang/String;I[B)[B
.end method

.method private native nativeVerifyCertificate(Ljava/lang/String;Ljava/lang/String;[B)Z
.end method

.method private native nativeWrite(Ljava/lang/String;Ljava/lang/String;I[B[B[B)[B
.end method

.method private validateParameter(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    const/4 v2, 0x0

    if-nez p1, :cond_0

    const-string/jumbo v0, "VaultKeeperService"

    const-string/jumbo v1, "clientPkgName is null."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "VaultKeeperService"

    const-string/jumbo v1, "clientPkgName is empty."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    if-nez p2, :cond_2

    const-string/jumbo v0, "VaultKeeperService"

    const-string/jumbo v1, "vaultName is null."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "VaultKeeperService"

    const-string/jumbo v1, "vaultName is empty."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_3
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public destroy(Ljava/lang/String;Ljava/lang/String;[B[B[B)I
    .locals 4

    const/4 v3, -0x2

    const-string/jumbo v0, "VaultKeeperService"

    const-string/jumbo v1, "destroy"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/server/VaultKeeperService;->mServiceSupport:I

    if-nez v0, :cond_0

    const-string/jumbo v0, "VaultKeeperService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "VaultKeeper not support("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/VaultKeeperService;->mServiceSupport:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x4

    return v0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/VaultKeeperService;->validateParameter(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    return v3

    :cond_1
    if-eqz p3, :cond_2

    array-length v0, p3

    const/16 v1, 0x20

    if-eq v0, v1, :cond_7

    const-string/jumbo v0, "VaultKeeperService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "destroy : if hmac is exist, it should be 32 Bytes. but now("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_2
    if-eqz p4, :cond_4

    if-eqz p5, :cond_4

    array-length v0, p4

    if-nez v0, :cond_3

    const-string/jumbo v0, "VaultKeeperService"

    const-string/jumbo v1, "destroy : if cert is exist, it should contain value."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_3
    array-length v0, p5

    const/16 v1, 0x100

    if-eq v0, v1, :cond_7

    const-string/jumbo v0, "VaultKeeperService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "destroy : if signature is exist, it should be 256, but "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p5

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_4
    if-nez p4, :cond_5

    const-string/jumbo v0, "VaultKeeperService"

    const-string/jumbo v1, "destroy : cert is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    if-nez p5, :cond_6

    const-string/jumbo v0, "VaultKeeperService"

    const-string/jumbo v1, "destroy : sig is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    return v3

    :cond_7
    iget-object v1, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/VaultKeeperService;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/VaultKeeperService;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    invoke-direct/range {p0 .. p5}, Lcom/android/server/VaultKeeperService;->nativeDestroy(Ljava/lang/String;Ljava/lang/String;[B[B[B)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public encryptMessage(Ljava/lang/String;Ljava/lang/String;[B)[B
    .locals 4

    const/4 v3, 0x0

    const-string/jumbo v0, "VaultKeeperService"

    const-string/jumbo v1, "encryptMessage"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/server/VaultKeeperService;->mServiceSupport:I

    if-nez v0, :cond_0

    const-string/jumbo v0, "VaultKeeperService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "VaultKeeper not support("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/VaultKeeperService;->mServiceSupport:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/VaultKeeperService;->validateParameter(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    return-object v3

    :cond_1
    if-eqz p3, :cond_2

    array-length v0, p3

    if-nez v0, :cond_2

    const-string/jumbo v0, "VaultKeeperService"

    const-string/jumbo v1, "encryptMessage : if msg is exist, it should contain value."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :cond_2
    iget-object v1, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/VaultKeeperService;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/VaultKeeperService;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/VaultKeeperService;->nativeEncryptMessage(Ljava/lang/String;Ljava/lang/String;[B)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getPackageName(Ljava/lang/String;)Ljava/lang/String;
    .locals 12

    const/4 v11, 0x0

    iget v7, p0, Lcom/android/server/VaultKeeperService;->mServiceSupport:I

    if-nez v7, :cond_0

    const-string/jumbo v7, "VaultKeeperService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "VaultKeeper not support("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/server/VaultKeeperService;->mServiceSupport:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v11

    :cond_0
    const/4 v1, 0x0

    iget-object v8, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/lang/Object;

    monitor-enter v8

    :try_start_0
    iget-object v7, p0, Lcom/android/server/VaultKeeperService;->mHandler:Landroid/os/Handler;

    iget-object v9, p0, Lcom/android/server/VaultKeeperService;->mHandler:Landroid/os/Handler;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    invoke-direct {p0, v7}, Lcom/android/server/VaultKeeperService;->nativeGetProcessName(I)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v9, "system_server"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    const/16 v9, 0x3e8

    if-ne v7, v9, :cond_1

    const-string/jumbo v1, "system_server"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v8

    return-object v1

    :cond_1
    :try_start_1
    sget-object v7, Lcom/android/server/VaultKeeperService;->mContext:Landroid/content/Context;

    const-string/jumbo v9, "activity"

    invoke-virtual {v7, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    if-nez v0, :cond_2

    const-string/jumbo v7, "VaultKeeperService"

    const-string/jumbo v9, "ActivityManager is null, something wrong in framework"

    invoke-static {v7, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v8

    return-object v11

    :cond_2
    :try_start_2
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v7

    if-nez v7, :cond_3

    const-string/jumbo v7, "VaultKeeperService"

    const-string/jumbo v9, "getRunningAppProcesses return null List. Cannot check permision"

    invoke-static {v7, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v8

    return-object v11

    :cond_3
    :try_start_3
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v7, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v9

    if-ne v7, v9, :cond_4

    iget-object v1, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    const-string/jumbo v7, "VaultKeeperService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Matched clientPkgName : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    sget-object v7, Lcom/android/server/VaultKeeperService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v4

    const/16 v7, 0x40

    :try_start_4
    invoke-virtual {v4, v1, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget-object v7, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    if-eq v7, v9, :cond_6

    const-string/jumbo v7, "VaultKeeperService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "NOT Allowed : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " does not match uid("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_0
    monitor-exit v8

    return-object v11

    :cond_6
    :try_start_5
    const-string/jumbo v7, "android"

    invoke-virtual {v4, v7, v1}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_7

    const-string/jumbo v7, "VaultKeeperService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "NOT Allowed : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " isn\'t signed with platform key."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit v8

    return-object v11

    :cond_7
    :try_start_6
    invoke-direct {p0, v1, p1}, Lcom/android/server/VaultKeeperService;->nativeIsRegistered(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    const-string/jumbo v7, "VaultKeeperService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Allowed : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit v8

    return-object v1

    :cond_8
    :try_start_7
    const-string/jumbo v7, "VaultKeeperService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "NOT Allowed : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " is signed with platform key. but, itn\'t registered."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    monitor-exit v8

    return-object v11

    :catch_0
    move-exception v2

    :try_start_8
    const-string/jumbo v7, "VaultKeeperService"

    const-string/jumbo v9, "Fail to check permission(Exception)"

    invoke-static {v7, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v7

    monitor-exit v8

    throw v7
.end method

.method public initialize(Ljava/lang/String;Ljava/lang/String;[B[B[B[B[B[B)[B
    .locals 10

    const-string/jumbo v1, "VaultKeeperService"

    const-string/jumbo v2, "initialize"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/android/server/VaultKeeperService;->mServiceSupport:I

    if-nez v1, :cond_0

    const-string/jumbo v1, "VaultKeeperService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "VaultKeeper not support("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/VaultKeeperService;->mServiceSupport:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return-object v1

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/VaultKeeperService;->validateParameter(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    return-object v1

    :cond_1
    if-eqz p3, :cond_2

    array-length v1, p3

    const/16 v2, 0x20

    if-eq v1, v2, :cond_2

    const-string/jumbo v1, "VaultKeeperService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "initialize : if key is exist, it should be 32 Bytes. but now("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return-object v1

    :cond_2
    if-eqz p4, :cond_3

    array-length v1, p4

    if-nez v1, :cond_3

    const-string/jumbo v1, "VaultKeeperService"

    const-string/jumbo v2, "initialize : if msg is exist, it should contain value."

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return-object v1

    :cond_3
    if-eqz p5, :cond_4

    array-length v1, p5

    if-nez v1, :cond_4

    const-string/jumbo v1, "VaultKeeperService"

    const-string/jumbo v2, "initialize : if initUnsheltered is exist, it should contain value."

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return-object v1

    :cond_4
    if-eqz p6, :cond_5

    move-object/from16 v0, p6

    array-length v1, v0

    if-nez v1, :cond_5

    const-string/jumbo v1, "VaultKeeperService"

    const-string/jumbo v2, "initialize : if initSheltered is exist, it should contain value."

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return-object v1

    :cond_5
    if-eqz p7, :cond_6

    move-object/from16 v0, p7

    array-length v1, v0

    if-nez v1, :cond_6

    const-string/jumbo v1, "VaultKeeperService"

    const-string/jumbo v2, "initialize : if cert is exist, it should contain value."

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return-object v1

    :cond_6
    if-eqz p8, :cond_7

    move-object/from16 v0, p8

    array-length v1, v0

    const/16 v2, 0x100

    if-eq v1, v2, :cond_7

    const-string/jumbo v1, "VaultKeeperService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "initialize :  if signature is exist, it should be 256, but "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p8

    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return-object v1

    :cond_7
    const/4 v8, 0x0

    if-eqz p7, :cond_8

    if-eqz p8, :cond_8

    move-object/from16 v0, p8

    array-length v1, v0

    move-object/from16 v0, p7

    array-length v2, v0

    add-int/2addr v1, v2

    new-array v8, v1, [B

    move-object/from16 v0, p8

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p8

    invoke-static {v0, v2, v8, v3, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    move-object/from16 v0, p8

    array-length v1, v0

    move-object/from16 v0, p7

    array-length v2, v0

    const/4 v3, 0x0

    move-object/from16 v0, p7

    invoke-static {v0, v3, v8, v1, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    :cond_8
    if-nez p4, :cond_9

    if-nez p7, :cond_9

    if-nez p8, :cond_9

    const-string/jumbo v1, "VaultKeeperService"

    const-string/jumbo v2, "initialize : All of input param is empty."

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return-object v1

    :cond_9
    iget-object v9, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/lang/Object;

    monitor-enter v9

    :try_start_0
    iget-object v1, p0, Lcom/android/server/VaultKeeperService;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/VaultKeeperService;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v1 .. v8}, Lcom/android/server/VaultKeeperService;->nativeInitialize(Ljava/lang/String;Ljava/lang/String;[B[B[B[B[B)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v9

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v9

    throw v1
.end method

.method public isInitialized(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    const/4 v3, 0x0

    const-string/jumbo v0, "VaultKeeperService"

    const-string/jumbo v1, "isInitialized"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/server/VaultKeeperService;->mServiceSupport:I

    if-nez v0, :cond_0

    const-string/jumbo v0, "VaultKeeperService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "VaultKeeper not support("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/VaultKeeperService;->mServiceSupport:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/VaultKeeperService;->validateParameter(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    return v3

    :cond_1
    iget-object v1, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/VaultKeeperService;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/VaultKeeperService;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    invoke-direct {p0, p1, p2}, Lcom/android/server/VaultKeeperService;->nativeIsInitialized(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public migrationStorage(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    const/4 v3, 0x0

    const-string/jumbo v0, "VaultKeeperService"

    const-string/jumbo v1, "migrationStorage"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/server/VaultKeeperService;->mServiceSupport:I

    if-nez v0, :cond_0

    const-string/jumbo v0, "VaultKeeperService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "VaultKeeper not support("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/VaultKeeperService;->mServiceSupport:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/VaultKeeperService;->validateParameter(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    return v3

    :cond_1
    iget-object v1, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/VaultKeeperService;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/VaultKeeperService;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    invoke-direct {p0, p1, p2}, Lcom/android/server/VaultKeeperService;->nativeMigrationStorage(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public read(Ljava/lang/String;Ljava/lang/String;I[B)[B
    .locals 4

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string/jumbo v0, "VaultKeeperService"

    const-string/jumbo v1, "read"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/server/VaultKeeperService;->mServiceSupport:I

    if-nez v0, :cond_0

    const-string/jumbo v0, "VaultKeeperService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "VaultKeeper not support("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/VaultKeeperService;->mServiceSupport:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/VaultKeeperService;->validateParameter(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    return-object v3

    :cond_1
    if-lt p3, v2, :cond_2

    const/4 v0, 0x3

    if-le p3, v0, :cond_3

    :cond_2
    const-string/jumbo v0, "VaultKeeperService"

    const-string/jumbo v1, "read : Invalid type value."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :cond_3
    if-eqz p4, :cond_4

    array-length v0, p4

    if-nez v0, :cond_4

    const-string/jumbo v0, "VaultKeeperService"

    const-string/jumbo v1, "read : if msg is exist, it should contain value."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :cond_4
    iget-object v1, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/VaultKeeperService;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/VaultKeeperService;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/VaultKeeperService;->nativeRead(Ljava/lang/String;Ljava/lang/String;I[B)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public sensitiveBox(Ljava/lang/String;Ljava/lang/String;I[B)[B
    .locals 4

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string/jumbo v0, "VaultKeeperService"

    const-string/jumbo v1, "sensitiveBox"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/server/VaultKeeperService;->mServiceSupport:I

    if-nez v0, :cond_0

    const-string/jumbo v0, "VaultKeeperService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "VaultKeeper not support("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/VaultKeeperService;->mServiceSupport:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/VaultKeeperService;->validateParameter(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    return-object v3

    :cond_1
    if-eqz p3, :cond_3

    if-lt p3, v2, :cond_2

    const/4 v0, 0x3

    if-le p3, v0, :cond_3

    :cond_2
    const-string/jumbo v0, "VaultKeeperService"

    const-string/jumbo v1, "sensitiveBox : Invalid type vaule."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :cond_3
    if-nez p3, :cond_4

    if-nez p4, :cond_4

    const-string/jumbo v0, "VaultKeeperService"

    const-string/jumbo v1, "sensitiveBox : Invalid msg value."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :cond_4
    iget-object v1, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/VaultKeeperService;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/VaultKeeperService;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/VaultKeeperService;->nativeSensitiveBox(Ljava/lang/String;Ljava/lang/String;I[B)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public verifyCertificate(Ljava/lang/String;Ljava/lang/String;[B)Z
    .locals 4

    const/4 v3, 0x0

    const-string/jumbo v0, "VaultKeeperService"

    const-string/jumbo v1, "verifyCertificate"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/server/VaultKeeperService;->mServiceSupport:I

    if-nez v0, :cond_0

    const-string/jumbo v0, "VaultKeeperService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "VaultKeeper not support("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/VaultKeeperService;->mServiceSupport:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/VaultKeeperService;->validateParameter(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    return v3

    :cond_1
    if-nez p3, :cond_2

    const-string/jumbo v0, "VaultKeeperService"

    const-string/jumbo v1, "verifyCertificate : cert is null."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_2
    array-length v0, p3

    if-nez v0, :cond_3

    const-string/jumbo v0, "VaultKeeperService"

    const-string/jumbo v1, "verifyCertificate : certificate length is zero"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_3
    iget-object v1, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/VaultKeeperService;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/VaultKeeperService;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/VaultKeeperService;->nativeVerifyCertificate(Ljava/lang/String;Ljava/lang/String;[B)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public write(Ljava/lang/String;Ljava/lang/String;I[B[B[B)[B
    .locals 5

    const/16 v4, 0x20

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string/jumbo v0, "VaultKeeperService"

    const-string/jumbo v1, "write"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/server/VaultKeeperService;->mServiceSupport:I

    if-nez v0, :cond_0

    const-string/jumbo v0, "VaultKeeperService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "VaultKeeper not support("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/VaultKeeperService;->mServiceSupport:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/VaultKeeperService;->validateParameter(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    return-object v3

    :cond_1
    if-lt p3, v2, :cond_2

    const/4 v0, 0x3

    if-le p3, v0, :cond_3

    :cond_2
    const-string/jumbo v0, "VaultKeeperService"

    const-string/jumbo v1, "write : Invalid type vaule."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :cond_3
    if-eqz p4, :cond_4

    array-length v0, p4

    if-nez v0, :cond_4

    const-string/jumbo v0, "VaultKeeperService"

    const-string/jumbo v1, "write : if data is exist, it should contain value."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :cond_4
    if-eqz p5, :cond_5

    array-length v0, p5

    if-eq v0, v4, :cond_5

    const-string/jumbo v0, "VaultKeeperService"

    const-string/jumbo v1, "write : if privated is exist, it should contain value."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :cond_5
    if-eqz p6, :cond_6

    array-length v0, p6

    if-eq v0, v4, :cond_6

    const-string/jumbo v0, "VaultKeeperService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "write : if hmac is exist, it should be 32 Bytes. but now("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p6

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :cond_6
    iget-object v1, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/VaultKeeperService;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/VaultKeeperService;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    invoke-direct/range {p0 .. p6}, Lcom/android/server/VaultKeeperService;->nativeWrite(Ljava/lang/String;Ljava/lang/String;I[B[B[B)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
