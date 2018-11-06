.class public Lcom/samsung/android/knoxguard/service/KnoxGuardService;
.super Lcom/samsung/android/knoxguard/IKnoxGuardManager$Stub;
.source "KnoxGuardService.java"


# static fields
.field public static final KNOXGUARD_SERVICE:Ljava/lang/String; = "knoxguard_service"

.field private static final LOG:Z

.field private static final TAG:Ljava/lang/String;

.field public static mActionList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static mPreFix:Ljava/lang/String;

.field private static mSettedInterface:Ljava/lang/String;


# instance fields
.field private mConnectivityManagerService:Landroid/net/IConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mNetworkManagementService:Landroid/os/INetworkManagementService;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "KG."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/samsung/android/knoxguard/service/KnoxGuardService;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "knox.guard"

    sput-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mPreFix:Ljava/lang/String;

    sput-object v2, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mActionList:Ljava/util/List;

    sput-object v2, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mSettedInterface:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/samsung/android/knoxguard/IKnoxGuardManager$Stub;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mNetworkManagementService:Landroid/os/INetworkManagementService;

    iput-object v0, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mConnectivityManagerService:Landroid/net/IConnectivityManager;

    invoke-static {}, Lcom/samsung/android/knoxguard/service/utils/Utils;->isSupportKGOnSEC()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "KnoxGuard is unsupported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->registerReceiver(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/knoxguard/service/utils/IntegrityUtil;->setInitialState(Landroid/content/Context;)V

    return-void
.end method

.method private getConnectivityManagerService()Landroid/net/IConnectivityManager;
    .locals 2

    const-string/jumbo v1, "connectivity"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mConnectivityManagerService:Landroid/net/IConnectivityManager;

    if-nez v1, :cond_0

    invoke-static {v0}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mConnectivityManagerService:Landroid/net/IConnectivityManager;

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mConnectivityManagerService:Landroid/net/IConnectivityManager;

    return-object v1
.end method

.method private getNetworkManagementService()Landroid/os/INetworkManagementService;
    .locals 2

    iget-object v1, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mNetworkManagementService:Landroid/os/INetworkManagementService;

    if-nez v1, :cond_0

    const-string/jumbo v1, "network_management"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mNetworkManagementService:Landroid/os/INetworkManagementService;

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mNetworkManagementService:Landroid/os/INetworkManagementService;

    return-object v1
.end method

.method private registerReceiver(Landroid/content/Context;)V
    .locals 4

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    new-instance v1, Lcom/samsung/android/knoxguard/service/receiver/SystemReceiver;

    invoke-direct {v1}, Lcom/samsung/android/knoxguard/service/receiver/SystemReceiver;-><init>()V

    const-string/jumbo v2, "package"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    const-string/jumbo v2, "com.samsung.android.kgclient"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    const-string/jumbo v2, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "android.intent.action.PACKAGE_DATA_CLEARED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private resetKnoxGuardExemptRule(I)V
    .locals 4

    :try_start_0
    sget-object v1, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mSettedInterface:Ljava/lang/String;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "clearKnoxGuardExemptRule - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mSettedInterface:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->getNetworkManagementService()Landroid/os/INetworkManagementService;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mSettedInterface:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v1, v3, v2, p1}, Landroid/os/INetworkManagementService;->setKnoxGuardExemptRule(ZLjava/lang/String;I)V

    const/4 v1, 0x0

    sput-object v1, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mSettedInterface:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Exception : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public addPackagesToClearCacheBlackList(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    iget-object v1, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "com.samsung.android.knoxguard.STATUS"

    invoke-static {v1, v2}, Lcom/samsung/android/knoxguard/service/utils/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    sget-object v1, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "call addPackagesToClearCacheBlackList"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return v1
.end method

.method public addPackagesToForceStopBlackList(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    iget-object v1, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "com.samsung.android.knoxguard.STATUS"

    invoke-static {v1, v2}, Lcom/samsung/android/knoxguard/service/utils/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    sget-object v1, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "call addPackagesToForceStopBlackList"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return v1
.end method

.method public allowFirmwareRecovery(Z)Z
    .locals 3

    iget-object v1, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "com.samsung.android.knoxguard.STATUS"

    invoke-static {v1, v2}, Lcom/samsung/android/knoxguard/service/utils/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    sget-object v1, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "call allowFirmwareRecovery"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return v1
.end method

.method public allowOTAUpgrade(Z)Z
    .locals 3

    iget-object v1, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "com.samsung.android.knoxguard.STATUS"

    invoke-static {v1, v2}, Lcom/samsung/android/knoxguard/service/utils/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    sget-object v1, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "call allowOTAUpgrade"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return v1
.end method

.method public allowSafeMode(Z)Z
    .locals 3

    iget-object v1, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "com.samsung.android.knoxguard.STATUS"

    invoke-static {v1, v2}, Lcom/samsung/android/knoxguard/service/utils/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    sget-object v1, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "call allowSafeMode"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return v1
.end method

.method public callKGsv()V
    .locals 3

    iget-object v1, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "com.samsung.android.knoxguard.STATUS"

    invoke-static {v1, v2}, Lcom/samsung/android/knoxguard/service/utils/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    sget-object v1, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "call Knox Guard sv"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 9

    const/4 v7, 0x0

    sget-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "call dump"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Permission Denial: can\'t dump KnoxGuardService from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v6, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knoxguard/service/utils/Constants;->KG_LOG_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_2

    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "data"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    :goto_1
    if-eqz v6, :cond_1

    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    :cond_1
    :goto_2
    if-eqz v1, :cond_5

    throw v1

    :cond_2
    if-eqz v6, :cond_3

    :try_start_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    :cond_3
    :goto_3
    if-eqz v7, :cond_6

    throw v7

    :catch_1
    move-exception v7

    goto :goto_3

    :catch_2
    move-exception v2

    if-nez v1, :cond_4

    move-object v1, v2

    goto :goto_2

    :cond_4
    if-eq v1, v2, :cond_1

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_5
    throw v0

    :cond_6
    return-void

    :catchall_1
    move-exception v0

    move-object v1, v7

    goto :goto_1
.end method

.method public getPBAUniqueNumber()Ljava/lang/String;
    .locals 12

    const/16 v11, 0x14

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x0

    iget-object v6, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "com.samsung.android.knoxguard.STATUS"

    invoke-static {v6, v7}, Lcom/samsung/android/knoxguard/service/utils/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    sget-object v6, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "call getPBAUniqueNumber"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, ""

    const-string/jumbo v6, "/sys/class/scsi_host/host0/unique_number"

    invoke-static {v6}, Lcom/samsung/android/knoxguard/service/utils/Utils;->isExistFile(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string/jumbo v6, "/sys/class/scsi_host/host0/unique_number"

    invoke-static {v6}, Lcom/samsung/android/knoxguard/service/utils/Utils;->getTextFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :cond_0
    :goto_0
    if-eqz v4, :cond_a

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    return-object v4

    :cond_1
    const-string/jumbo v6, "/sys/block/mmcblk0/device/unique_number"

    invoke-static {v6}, Lcom/samsung/android/knoxguard/service/utils/Utils;->isExistFile(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string/jumbo v6, "/sys/block/mmcblk0/device/unique_number"

    invoke-static {v6}, Lcom/samsung/android/knoxguard/service/utils/Utils;->getTextFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_2
    const-string/jumbo v6, "/sys/block/mmcblk0/device/cid"

    invoke-static {v6}, Lcom/samsung/android/knoxguard/service/utils/Utils;->isExistFile(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    const-string/jumbo v6, "/sys/block/mmcblk0/device/cid"

    invoke-static {v6}, Lcom/samsung/android/knoxguard/service/utils/Utils;->getTextFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v6, "/sys/block/mmcblk0/device/name"

    invoke-static {v6}, Lcom/samsung/android/knoxguard/service/utils/Utils;->getTextFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v2, ""

    const-string/jumbo v0, ""

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "c"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    if-eqz v1, :cond_0

    invoke-virtual {v1, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    if-eqz v3, :cond_3

    const-string/jumbo v6, "15"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v3, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_3
    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x12

    invoke-virtual {v1, v7, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x1c

    invoke-virtual {v1, v11, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x1c

    const/16 v8, 0x1e

    invoke-virtual {v1, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    :cond_4
    const-string/jumbo v6, "02"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5

    const-string/jumbo v6, "45"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    :cond_5
    const/4 v6, 0x5

    invoke-virtual {v3, v10, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_6
    const-string/jumbo v6, "11"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_7

    const-string/jumbo v6, "90"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    :cond_7
    const/4 v6, 0x1

    invoke-virtual {v3, v6, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_8
    const-string/jumbo v6, "FE"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v6, 0x4

    const/4 v7, 0x6

    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_9
    const-string/jumbo v6, ""

    return-object v6

    :cond_a
    const-string/jumbo v6, ""

    return-object v6
.end method

.method public registerIntent(Ljava/lang/String;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v5, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "com.samsung.android.knoxguard.STATUS"

    invoke-static {v5, v6}, Lcom/samsung/android/knoxguard/service/utils/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    new-instance v3, Lcom/samsung/android/knoxguard/service/receiver/SystemReceiver;

    invoke-direct {v3}, Lcom/samsung/android/knoxguard/service/receiver/SystemReceiver;-><init>()V

    sput-object p1, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mPreFix:Ljava/lang/String;

    sput-object p2, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mActionList:Ljava/util/List;

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v5, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v3, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    sget-object v5, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "KG registerIntent"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public removeActiveAdmin(Landroid/content/ComponentName;)V
    .locals 4

    iget-object v2, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "com.samsung.android.knoxguard.STATUS"

    invoke-static {v2, v3}, Lcom/samsung/android/knoxguard/service/utils/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    sget-object v2, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "call removeActiveAdmin"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "device_policy"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->removeActiveAdmin(Landroid/content/ComponentName;)V

    :cond_0
    return-void
.end method

.method public revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 4

    iget-object v2, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "com.samsung.android.knoxguard.STATUS"

    invoke-static {v2, v3}, Lcom/samsung/android/knoxguard/service/utils/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    sget-object v2, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "call revokeRuntimePermission"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/pm/PackageManager;->revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    :cond_0
    return-void
.end method

.method public setActiveAdmin(Landroid/content/ComponentName;)V
    .locals 4

    iget-object v2, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "com.samsung.android.knoxguard.STATUS"

    invoke-static {v2, v3}, Lcom/samsung/android/knoxguard/service/utils/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    sget-object v2, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "call setActiveAdmin"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "device_policy"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/app/admin/DevicePolicyManager;->setActiveAdmin(Landroid/content/ComponentName;Z)V

    :cond_0
    return-void
.end method

.method public setAdminRemovable(Z)Z
    .locals 3

    iget-object v1, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "com.samsung.android.knoxguard.STATUS"

    invoke-static {v1, v2}, Lcom/samsung/android/knoxguard/service/utils/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    sget-object v1, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "call setAdminRemovable"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return v1
.end method

.method public setApplicationUninstallationDisabled(Ljava/lang/String;)Z
    .locals 3

    iget-object v1, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "com.samsung.android.knoxguard.STATUS"

    invoke-static {v1, v2}, Lcom/samsung/android/knoxguard/service/utils/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    sget-object v1, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "call setApplicationUninstallationDisabled"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return v1
.end method

.method public setKnoxGuardExemptRule(Z)V
    .locals 9

    iget-object v6, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "com.samsung.android.knoxguard.STATUS"

    invoke-static {v6, v7}, Lcom/samsung/android/knoxguard/service/utils/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const-wide/16 v2, -0x1

    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    invoke-direct {p0, v0}, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->resetKnoxGuardExemptRule(I)V

    invoke-direct {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->getConnectivityManagerService()Landroid/net/IConnectivityManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/net/IConnectivityManager;->getActiveLinkProperties()Landroid/net/LinkProperties;

    move-result-object v4

    if-nez v4, :cond_0

    sget-object v6, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "setKnoxGuardExemptRule - There is no active network"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_0
    :try_start_1
    sget-object v6, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setKnoxGuardExemptRule - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->getNetworkManagementService()Landroid/os/INetworkManagementService;

    move-result-object v6

    invoke-virtual {v4}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-interface {v6, v8, v7, v0}, Landroid/os/INetworkManagementService;->setKnoxGuardExemptRule(ZLjava/lang/String;I)V

    invoke-virtual {v4}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mSettedInterface:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_0
    return-void

    :catch_0
    move-exception v1

    :try_start_2
    sget-object v6, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Exception : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_0
    move-exception v6

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6
.end method

.method public setRemoteLockToLockscreen(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;IJIZLandroid/os/Bundle;)V
    .locals 3

    iget-object v1, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "com.samsung.android.knoxguard.STATUS"

    invoke-static {v1, v2}, Lcom/samsung/android/knoxguard/service/utils/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    sget-object v1, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "call setRemoteLockToLockscreen"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {p1 .. p13}, Lcom/samsung/android/knoxguard/service/utils/Utils;->setRemoteLockToLockscreen(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;IJIZLandroid/os/Bundle;)V

    return-void
.end method

.method public setRuntimePermission(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 4

    iget-object v2, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "com.samsung.android.knoxguard.STATUS"

    invoke-static {v2, v3}, Lcom/samsung/android/knoxguard/service/utils/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    sget-object v2, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "call setRuntimePermission"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/pm/PackageManager;->grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    :cond_0
    return-void
.end method

.method public shouldBlockCustomRom()Z
    .locals 2

    iget-object v1, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/knoxguard/service/utils/Utils;->getRlcState(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "Checking"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "Completed"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    return v1

    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method public showInstallmentStatus()Z
    .locals 2

    iget-object v1, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/knoxguard/service/utils/Utils;->getRlcState(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "Prenormal"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "Checking"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "Completed"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    return v1

    :cond_1
    const/4 v1, 0x1

    return v1
.end method
