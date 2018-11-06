.class final Lcom/android/server/EngineeringModeService$EngineeringModeClient;
.super Ljava/lang/Object;
.source "EngineeringModeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/EngineeringModeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "EngineeringModeClient"
.end annotation


# static fields
.field private static final EM_NO_PlATFORM_SIGNATURE:I = 0x0

.field private static final EM_PlATFORM_SIGNATURE:I = 0x1


# instance fields
.field private mPkgName:Ljava/lang/String;

.field private mProcName:Ljava/lang/String;

.field private mSignature:I

.field private mUid:I

.field final synthetic this$0:Lcom/android/server/EngineeringModeService;


# direct methods
.method public constructor <init>(Lcom/android/server/EngineeringModeService;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/EngineeringModeService$EngineeringModeClient;->this$0:Lcom/android/server/EngineeringModeService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p2}, Lcom/android/server/EngineeringModeService$EngineeringModeClient;->updateClientInfo(Ljava/lang/String;)V

    return-void
.end method

.method private checkSignature(Ljava/lang/String;I)Z
    .locals 7

    const v6, 0x186a0

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/server/EngineeringModeService;->-get0()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v1, 0x0

    if-nez p1, :cond_0

    return v3

    :cond_0
    if-le p2, v6, :cond_2

    const v5, 0x186a0

    :try_start_0
    div-int v4, p2, v5

    const/16 v5, 0x40

    invoke-virtual {v2, p1, v5, v4}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v1

    :goto_0
    iget-object v5, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v5, p2, :cond_1

    const-string/jumbo v5, "android"

    invoke-virtual {v2, v5, p1}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_1

    const/4 v3, 0x1

    :cond_1
    :goto_1
    return v3

    :cond_2
    const/16 v5, 0x40

    invoke-virtual {v2, p1, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v5, "EngineeringModeService"

    const-string/jumbo v6, "checkSignature Exception occured"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public getPkgName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/EngineeringModeService$EngineeringModeClient;->mPkgName:Ljava/lang/String;

    return-object v0
.end method

.method public getProcName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/EngineeringModeService$EngineeringModeClient;->mProcName:Ljava/lang/String;

    return-object v0
.end method

.method public getSignature()I
    .locals 1

    iget v0, p0, Lcom/android/server/EngineeringModeService$EngineeringModeClient;->mSignature:I

    return v0
.end method

.method public getUid()I
    .locals 1

    iget v0, p0, Lcom/android/server/EngineeringModeService$EngineeringModeClient;->mUid:I

    return v0
.end method

.method public updateClientInfo(Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/server/EngineeringModeService$EngineeringModeClient;->this$0:Lcom/android/server/EngineeringModeService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/EngineeringModeService;->-wrap0(Lcom/android/server/EngineeringModeService;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/EngineeringModeService$EngineeringModeClient;->mProcName:Ljava/lang/String;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const v1, 0x186a0

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/EngineeringModeService$EngineeringModeClient;->mUid:I

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    iput-object p1, p0, Lcom/android/server/EngineeringModeService$EngineeringModeClient;->mPkgName:Ljava/lang/String;

    :goto_0
    iget-object v0, p0, Lcom/android/server/EngineeringModeService$EngineeringModeClient;->mProcName:Ljava/lang/String;

    iget v1, p0, Lcom/android/server/EngineeringModeService$EngineeringModeClient;->mUid:I

    invoke-direct {p0, v0, v1}, Lcom/android/server/EngineeringModeService$EngineeringModeClient;->checkSignature(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/EngineeringModeService$EngineeringModeClient;->mPkgName:Ljava/lang/String;

    iget v1, p0, Lcom/android/server/EngineeringModeService$EngineeringModeClient;->mUid:I

    invoke-direct {p0, v0, v1}, Lcom/android/server/EngineeringModeService$EngineeringModeClient;->checkSignature(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/EngineeringModeService$EngineeringModeClient;->mSignature:I

    :goto_1
    const-string/jumbo v0, "EngineeringModeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ClientInfo : PackageName = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/EngineeringModeService$EngineeringModeClient;->mPkgName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "],"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "ProcName = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/EngineeringModeService$EngineeringModeClient;->mProcName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")],"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "UID = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/EngineeringModeService$EngineeringModeClient;->mUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "],"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "Signature = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/EngineeringModeService$EngineeringModeClient;->mSignature:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string/jumbo v0, "Unknown"

    iput-object v0, p0, Lcom/android/server/EngineeringModeService$EngineeringModeClient;->mPkgName:Ljava/lang/String;

    goto/16 :goto_0

    :cond_2
    iput v2, p0, Lcom/android/server/EngineeringModeService$EngineeringModeClient;->mSignature:I

    goto :goto_1
.end method
