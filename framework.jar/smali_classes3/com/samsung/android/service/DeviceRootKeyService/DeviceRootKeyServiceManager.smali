.class public final Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;
.super Ljava/lang/Object;
.source "DeviceRootKeyServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager$DeviceInfo;,
        Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager$TlvEx;
    }
.end annotation


# static fields
.field public static final ERR_SERVICE_ERROR:I = -0x2710

.field public static final KEY_TYPE_EC:I = 0x4

.field public static final KEY_TYPE_RSA:I = 0x1

.field public static final NO_ERROR:I = 0x0

.field private static final TAG:Ljava/lang/String; = "DeviceRootKeyServiceManager(1.1.1)"

.field private static final VERSION:Ljava/lang/String; = "1.1.1"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mService:Lcom/samsung/android/service/DeviceRootKeyService/IDeviceRootKeyService;

.field private mTlvEx:Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager$TlvEx;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;)Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager$TlvEx;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;->mTlvEx:Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager$TlvEx;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;->mTlvEx:Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager$TlvEx;

    iput-object p1, p0, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "DeviceRootKeyService"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/service/DeviceRootKeyService/IDeviceRootKeyService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/service/DeviceRootKeyService/IDeviceRootKeyService;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;->mService:Lcom/samsung/android/service/DeviceRootKeyService/IDeviceRootKeyService;

    const-string/jumbo v0, "DeviceRootKeyServiceManager(1.1.1)"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " connects to DeviceRootKeyService."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public createServiceKeySession(Ljava/lang/String;ILcom/samsung/android/service/DeviceRootKeyService/Tlv;)[B
    .locals 5

    const/4 v4, 0x0

    const-string/jumbo v2, "DeviceRootKeyServiceManager(1.1.1)"

    const-string/jumbo v3, "createServiceKeySession() is called."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;->mService:Lcom/samsung/android/service/DeviceRootKeyService/IDeviceRootKeyService;

    invoke-interface {v2, p1, p2, p3}, Lcom/samsung/android/service/DeviceRootKeyService/IDeviceRootKeyService;->createServiceKeySession(Ljava/lang/String;ILcom/samsung/android/service/DeviceRootKeyService/Tlv;)[B
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v4

    :catch_1
    move-exception v1

    const-string/jumbo v2, "DeviceRootKeyServiceManager(1.1.1)"

    const-string/jumbo v3, "Failed to connect service."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    return-object v4
.end method

.method public doSelfTestProvService(ILcom/samsung/android/service/DeviceRootKeyService/Tlv;)[B
    .locals 5

    const/4 v4, 0x0

    const-string/jumbo v2, "DeviceRootKeyServiceManager(1.1.1)"

    const-string/jumbo v3, "doSelfTestProvService() is called."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;->mService:Lcom/samsung/android/service/DeviceRootKeyService/IDeviceRootKeyService;

    const-string/jumbo v3, "PROV"

    invoke-interface {v2, v3, p1, p2}, Lcom/samsung/android/service/DeviceRootKeyService/IDeviceRootKeyService;->doSelfTestProvServiceBlob(Ljava/lang/String;ILcom/samsung/android/service/DeviceRootKeyService/Tlv;)[B
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v4

    :catch_1
    move-exception v1

    const-string/jumbo v2, "DeviceRootKeyServiceManager(1.1.1)"

    const-string/jumbo v3, "Failed to connect service."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    return-object v4
.end method

.method public getDeviceInfo(I)Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager$DeviceInfo;
    .locals 5

    const/4 v4, 0x0

    const-string/jumbo v2, "DeviceRootKeyServiceManager(1.1.1)"

    const-string/jumbo v3, "getDeviceInfo() is called."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-lez p1, :cond_0

    const/16 v2, 0x1f

    if-le p1, v2, :cond_1

    :cond_0
    const-string/jumbo v2, "DeviceRootKeyServiceManager(1.1.1)"

    const-string/jumbo v3, "Invalid argument"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;->mTlvEx:Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager$TlvEx;

    if-nez v2, :cond_2

    new-instance v2, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager$TlvEx;

    iget-object v3, p0, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;->mService:Lcom/samsung/android/service/DeviceRootKeyService/IDeviceRootKeyService;

    invoke-interface {v3}, Lcom/samsung/android/service/DeviceRootKeyService/IDeviceRootKeyService;->getDeviceInfo()[B

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager$TlvEx;-><init>(Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;[B)V

    iput-object v2, p0, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;->mTlvEx:Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager$TlvEx;

    :cond_2
    new-instance v2, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager$DeviceInfo;

    invoke-direct {v2, p0, p1}, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager$DeviceInfo;-><init>(Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v0

    const-string/jumbo v2, "DeviceRootKeyServiceManager(1.1.1)"

    const-string/jumbo v3, "Failed to connect service."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    return-object v4

    :catch_1
    move-exception v1

    const-string/jumbo v2, "DeviceRootKeyServiceManager(1.1.1)"

    const-string/jumbo v3, "Operation failed."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    return-object v4
.end method

.method public getDeviceRootKeyCertificate(I)[B
    .locals 5

    const/4 v4, 0x0

    const-string/jumbo v2, "DeviceRootKeyServiceManager(1.1.1)"

    const-string/jumbo v3, "getDeviceRootKeyCertificate() is called."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;->mService:Lcom/samsung/android/service/DeviceRootKeyService/IDeviceRootKeyService;

    invoke-interface {v2, p1}, Lcom/samsung/android/service/DeviceRootKeyService/IDeviceRootKeyService;->getDeviceRootKeyCertificate(I)[B
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v4

    :catch_1
    move-exception v1

    const-string/jumbo v2, "DeviceRootKeyServiceManager(1.1.1)"

    const-string/jumbo v3, "Failed to connect service."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    return-object v4
.end method

.method public getDeviceRootKeyUID(I)Ljava/lang/String;
    .locals 5

    const/4 v4, 0x0

    const-string/jumbo v2, "DeviceRootKeyServiceManager(1.1.1)"

    const-string/jumbo v3, "getDeviceRootKeyUID() is called."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;->mService:Lcom/samsung/android/service/DeviceRootKeyService/IDeviceRootKeyService;

    invoke-interface {v2, p1}, Lcom/samsung/android/service/DeviceRootKeyService/IDeviceRootKeyService;->getDeviceRootKeyUID(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v4

    :catch_1
    move-exception v1

    const-string/jumbo v2, "DeviceRootKeyServiceManager(1.1.1)"

    const-string/jumbo v3, "Failed to connect service."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    return-object v4
.end method

.method public isAliveDeviceRootKeyService()Z
    .locals 5

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;->mService:Lcom/samsung/android/service/DeviceRootKeyService/IDeviceRootKeyService;

    if-eqz v2, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;->mService:Lcom/samsung/android/service/DeviceRootKeyService/IDeviceRootKeyService;

    invoke-interface {v2}, Lcom/samsung/android/service/DeviceRootKeyService/IDeviceRootKeyService;->isServiceReady()Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return v4

    :catch_1
    move-exception v1

    const-string/jumbo v2, "DeviceRootKeyServiceManager(1.1.1)"

    const-string/jumbo v3, "Failed to connect service."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    return v4

    :cond_0
    return v4
.end method

.method public isExistDeviceRootKey(I)Z
    .locals 5

    const/4 v4, 0x0

    const-string/jumbo v2, "DeviceRootKeyServiceManager(1.1.1)"

    const-string/jumbo v3, "isExistDeviceRootKey() is called."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;->mService:Lcom/samsung/android/service/DeviceRootKeyService/IDeviceRootKeyService;

    invoke-interface {v2, p1}, Lcom/samsung/android/service/DeviceRootKeyService/IDeviceRootKeyService;->isExistDeviceRootKey(I)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return v4

    :catch_1
    move-exception v1

    const-string/jumbo v2, "DeviceRootKeyServiceManager(1.1.1)"

    const-string/jumbo v3, "Failed to connect service."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    return v4
.end method

.method public releaseServiceKeySession()I
    .locals 5

    const/16 v4, -0x2710

    const-string/jumbo v2, "DeviceRootKeyServiceManager(1.1.1)"

    const-string/jumbo v3, "releaseServiceKeySession() is called."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;->mService:Lcom/samsung/android/service/DeviceRootKeyService/IDeviceRootKeyService;

    invoke-interface {v2}, Lcom/samsung/android/service/DeviceRootKeyService/IDeviceRootKeyService;->releaseServiceKeySession()I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return v4

    :catch_1
    move-exception v1

    const-string/jumbo v2, "DeviceRootKeyServiceManager(1.1.1)"

    const-string/jumbo v3, "Failed to connect service."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    return v4
.end method

.method public setDeviceRootKey([B)I
    .locals 5

    const/16 v4, -0x2710

    const-string/jumbo v2, "DeviceRootKeyServiceManager(1.1.1)"

    const-string/jumbo v3, "setDeviceRootKey() is called."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "DeviceRootKeyServiceManager(1.1.1)"

    const-string/jumbo v3, "This function has been deprecated."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;->mService:Lcom/samsung/android/service/DeviceRootKeyService/IDeviceRootKeyService;

    invoke-interface {v2, p1}, Lcom/samsung/android/service/DeviceRootKeyService/IDeviceRootKeyService;->setDeviceRootKey([B)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return v4

    :catch_1
    move-exception v1

    const-string/jumbo v2, "DeviceRootKeyServiceManager(1.1.1)"

    const-string/jumbo v3, "Failed to connect service."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    return v4
.end method
