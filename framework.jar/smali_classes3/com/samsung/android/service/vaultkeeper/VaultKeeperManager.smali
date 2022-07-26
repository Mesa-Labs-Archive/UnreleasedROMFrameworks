.class public final Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;
.super Ljava/lang/Object;
.source "VaultKeeperManager.java"


# static fields
.field public static final ERR_EXCEPTION:I = -0x3

.field public static final ERR_GENERAL_FAILED:I = -0x1

.field public static final ERR_INVALID_ARGUMENT:I = -0x2

.field public static final ERR_SERVICE_NOT_SUPPORT:I = -0x4

.field public static final MAX_LEN_VAULT_NAME:I = 0x20

.field public static final SUCCESS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "VaultKeeperManager"

.field public static final TYPE_EMT:I = 0x3

.field public static final TYPE_NONCE:I = 0x1

.field public static final TYPE_VAULT_DATA_MAX:I = 0x3

.field public static final TYPE_VAULT_DATA_MIN:I = 0x1

.field public static final TYPE_VAULT_DATA_PRIVATED:I = 0x3

.field public static final TYPE_VAULT_DATA_SHELTERED:I = 0x2

.field public static final TYPE_VAULT_DATA_UNSHELTERED:I = 0x1

.field public static final TYPE_WB:I = 0x2

.field public static final VAULT_HMAC_LEN:I = 0x20

.field public static final VAULT_KEY_LEN:I = 0x20


# instance fields
.field private mClientPkgName:Ljava/lang/String;

.field private mService:Lcom/samsung/android/service/vaultkeeper/IVaultKeeperService;

.field private mVaultName:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v1, "VaultKeeperService"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/service/vaultkeeper/IVaultKeeperService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/service/vaultkeeper/IVaultKeeperService;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->mService:Lcom/samsung/android/service/vaultkeeper/IVaultKeeperService;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->mVaultName:Ljava/lang/String;

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->mService:Lcom/samsung/android/service/vaultkeeper/IVaultKeeperService;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->mService:Lcom/samsung/android/service/vaultkeeper/IVaultKeeperService;

    iget-object v2, p0, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->mVaultName:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/samsung/android/service/vaultkeeper/IVaultKeeperService;->getPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->mClientPkgName:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v1, "VaultKeeperManager"

    const-string/jumbo v2, "VaultKeeperService is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getInstance(Ljava/lang/String;)Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;
    .locals 6

    const/16 v5, 0x20

    const/4 v4, 0x0

    if-nez p0, :cond_0

    const-string/jumbo v1, "VaultKeeperManager"

    const-string/jumbo v2, "vaultName is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v5, :cond_2

    :cond_1
    const-string/jumbo v1, "VaultKeeperManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "vaultName length is wrong("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "). It should be less than ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    :cond_2
    new-instance v0, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    invoke-direct {v0, p0}, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;-><init>(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->mClientPkgName:Ljava/lang/String;

    if-eqz v1, :cond_3

    return-object v0

    :cond_3
    const-string/jumbo v1, "VaultKeeperManager"

    const-string/jumbo v2, "Unauthorized Pkg. Manager can\'t be provided."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4
.end method


# virtual methods
.method public destroy([B)I
    .locals 7

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->mService:Lcom/samsung/android/service/vaultkeeper/IVaultKeeperService;

    iget-object v1, p0, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->mClientPkgName:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->mVaultName:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, p1

    invoke-interface/range {v0 .. v5}, Lcom/samsung/android/service/vaultkeeper/IVaultKeeperService;->destroy(Ljava/lang/String;Ljava/lang/String;[B[B[B)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v6

    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, -0x3

    return v0
.end method

.method public destroy([B[B)I
    .locals 7

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->mService:Lcom/samsung/android/service/vaultkeeper/IVaultKeeperService;

    iget-object v1, p0, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->mClientPkgName:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->mVaultName:Ljava/lang/String;

    const/4 v3, 0x0

    move-object v4, p1

    move-object v5, p2

    invoke-interface/range {v0 .. v5}, Lcom/samsung/android/service/vaultkeeper/IVaultKeeperService;->destroy(Ljava/lang/String;Ljava/lang/String;[B[B[B)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v6

    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, -0x3

    return v0
.end method

.method public encryptMessage([B)[B
    .locals 4

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->mService:Lcom/samsung/android/service/vaultkeeper/IVaultKeeperService;

    iget-object v2, p0, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->mClientPkgName:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->mVaultName:Ljava/lang/String;

    invoke-interface {v1, v2, v3, p1}, Lcom/samsung/android/service/vaultkeeper/IVaultKeeperService;->encryptMessage(Ljava/lang/String;Ljava/lang/String;[B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v1, 0x0

    return-object v1
.end method

.method public initialize([B[B)[B
    .locals 11

    const/4 v10, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->mService:Lcom/samsung/android/service/vaultkeeper/IVaultKeeperService;

    iget-object v1, p0, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->mClientPkgName:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->mVaultName:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p1

    move-object v4, p2

    invoke-interface/range {v0 .. v8}, Lcom/samsung/android/service/vaultkeeper/IVaultKeeperService;->initialize(Ljava/lang/String;Ljava/lang/String;[B[B[B[B[B[B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v9

    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    return-object v10
.end method

.method public initialize([B[B[B)[B
    .locals 11

    const/4 v10, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->mService:Lcom/samsung/android/service/vaultkeeper/IVaultKeeperService;

    iget-object v1, p0, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->mClientPkgName:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->mVaultName:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v3, p1

    move-object v7, p2

    move-object v8, p3

    invoke-interface/range {v0 .. v8}, Lcom/samsung/android/service/vaultkeeper/IVaultKeeperService;->initialize(Ljava/lang/String;Ljava/lang/String;[B[B[B[B[B[B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v9

    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    return-object v10
.end method

.method public initialize([B[B[B[B)[B
    .locals 11

    const/4 v10, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->mService:Lcom/samsung/android/service/vaultkeeper/IVaultKeeperService;

    iget-object v1, p0, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->mClientPkgName:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->mVaultName:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v3, p1

    move-object v5, p2

    move-object v7, p3

    move-object v8, p4

    invoke-interface/range {v0 .. v8}, Lcom/samsung/android/service/vaultkeeper/IVaultKeeperService;->initialize(Ljava/lang/String;Ljava/lang/String;[B[B[B[B[B[B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v9

    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    return-object v10
.end method

.method public initialize([B[B[B[B[B)[B
    .locals 10

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->mService:Lcom/samsung/android/service/vaultkeeper/IVaultKeeperService;

    iget-object v1, p0, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->mClientPkgName:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->mVaultName:Ljava/lang/String;

    const/4 v4, 0x0

    move-object v3, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-interface/range {v0 .. v8}, Lcom/samsung/android/service/vaultkeeper/IVaultKeeperService;->initialize(Ljava/lang/String;Ljava/lang/String;[B[B[B[B[B[B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v9

    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 4

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->mService:Lcom/samsung/android/service/vaultkeeper/IVaultKeeperService;

    iget-object v2, p0, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->mClientPkgName:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->mVaultName:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/samsung/android/service/vaultkeeper/IVaultKeeperService;->isInitialized(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v1, 0x0

    return v1
.end method

.method public migrationStorage()Z
    .locals 4

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->mService:Lcom/samsung/android/service/vaultkeeper/IVaultKeeperService;

    iget-object v2, p0, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->mClientPkgName:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->mVaultName:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/samsung/android/service/vaultkeeper/IVaultKeeperService;->migrationStorage(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v1, 0x0

    return v1
.end method

.method public read(I)[B
    .locals 6

    const/4 v5, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->mService:Lcom/samsung/android/service/vaultkeeper/IVaultKeeperService;

    iget-object v2, p0, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->mClientPkgName:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->mVaultName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, p1, v4}, Lcom/samsung/android/service/vaultkeeper/IVaultKeeperService;->read(Ljava/lang/String;Ljava/lang/String;I[B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v5
.end method

.method public read(I[B)[B
    .locals 4

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->mService:Lcom/samsung/android/service/vaultkeeper/IVaultKeeperService;

    iget-object v2, p0, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->mClientPkgName:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->mVaultName:Ljava/lang/String;

    invoke-interface {v1, v2, v3, p1, p2}, Lcom/samsung/android/service/vaultkeeper/IVaultKeeperService;->read(Ljava/lang/String;Ljava/lang/String;I[B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v1, 0x0

    return-object v1
.end method

.method public sensitiveBox(I)[B
    .locals 6

    const/4 v5, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->mService:Lcom/samsung/android/service/vaultkeeper/IVaultKeeperService;

    iget-object v2, p0, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->mClientPkgName:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->mVaultName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, p1, v4}, Lcom/samsung/android/service/vaultkeeper/IVaultKeeperService;->sensitiveBox(Ljava/lang/String;Ljava/lang/String;I[B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v5
.end method

.method public sensitiveBox([B)[B
    .locals 5

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->mService:Lcom/samsung/android/service/vaultkeeper/IVaultKeeperService;

    iget-object v2, p0, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->mClientPkgName:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->mVaultName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4, p1}, Lcom/samsung/android/service/vaultkeeper/IVaultKeeperService;->sensitiveBox(Ljava/lang/String;Ljava/lang/String;I[B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v1, 0x0

    return-object v1
.end method

.method public verifyCertificate([B)Z
    .locals 4

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->mService:Lcom/samsung/android/service/vaultkeeper/IVaultKeeperService;

    iget-object v2, p0, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->mClientPkgName:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->mVaultName:Ljava/lang/String;

    invoke-interface {v1, v2, v3, p1}, Lcom/samsung/android/service/vaultkeeper/IVaultKeeperService;->verifyCertificate(Ljava/lang/String;Ljava/lang/String;[B)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v1, 0x0

    return v1
.end method

.method public write(I[B)[B
    .locals 9

    const/4 v8, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->mService:Lcom/samsung/android/service/vaultkeeper/IVaultKeeperService;

    iget-object v1, p0, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->mClientPkgName:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->mVaultName:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v3, p1

    move-object v4, p2

    invoke-interface/range {v0 .. v6}, Lcom/samsung/android/service/vaultkeeper/IVaultKeeperService;->write(Ljava/lang/String;Ljava/lang/String;I[B[B[B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v7

    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    return-object v8
.end method

.method public write(I[B[B)[B
    .locals 9

    const/4 v8, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->mService:Lcom/samsung/android/service/vaultkeeper/IVaultKeeperService;

    iget-object v1, p0, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->mClientPkgName:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->mVaultName:Ljava/lang/String;

    const/4 v5, 0x0

    move v3, p1

    move-object v4, p2

    move-object v6, p3

    invoke-interface/range {v0 .. v6}, Lcom/samsung/android/service/vaultkeeper/IVaultKeeperService;->write(Ljava/lang/String;Ljava/lang/String;I[B[B[B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v7

    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    return-object v8
.end method

.method public write(I[B[B[B)[B
    .locals 8

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->mService:Lcom/samsung/android/service/vaultkeeper/IVaultKeeperService;

    iget-object v1, p0, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->mClientPkgName:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->mVaultName:Ljava/lang/String;

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-interface/range {v0 .. v6}, Lcom/samsung/android/service/vaultkeeper/IVaultKeeperService;->write(Ljava/lang/String;Ljava/lang/String;I[B[B[B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v7

    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method
