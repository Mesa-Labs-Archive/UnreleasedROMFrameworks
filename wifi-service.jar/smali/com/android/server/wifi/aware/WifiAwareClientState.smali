.class public Lcom/android/server/wifi/aware/WifiAwareClientState;
.super Ljava/lang/Object;
.source "WifiAwareClientState.java"


# static fields
.field private static final ALL_ZERO_MAC:[B

.field static final CLUSTER_CHANGE_EVENT_JOINED:I = 0x1

.field static final CLUSTER_CHANGE_EVENT_STARTED:I = 0x0

.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "WifiAwareClientState"

.field private static final VDBG:Z


# instance fields
.field private mAppOps:Landroid/app/AppOpsManager;

.field private final mCallback:Landroid/net/wifi/aware/IWifiAwareEventCallback;

.field private final mCallingPackage:Ljava/lang/String;

.field private final mClientId:I

.field private mConfigRequest:Landroid/net/wifi/aware/ConfigRequest;

.field private final mContext:Landroid/content/Context;

.field private mLastDiscoveryInterfaceMac:[B

.field private final mNotifyIdentityChange:Z

.field private final mPid:I

.field private final mSessions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;",
            ">;"
        }
    .end annotation
.end field

.field private final mUid:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/wifi/aware/WifiAwareClientState;->ALL_ZERO_MAC:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;IIILjava/lang/String;Landroid/net/wifi/aware/IWifiAwareEventCallback;Landroid/net/wifi/aware/ConfigRequest;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareClientState;->mSessions:Landroid/util/SparseArray;

    sget-object v0, Lcom/android/server/wifi/aware/WifiAwareClientState;->ALL_ZERO_MAC:[B

    iput-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareClientState;->mLastDiscoveryInterfaceMac:[B

    iput-object p1, p0, Lcom/android/server/wifi/aware/WifiAwareClientState;->mContext:Landroid/content/Context;

    iput p2, p0, Lcom/android/server/wifi/aware/WifiAwareClientState;->mClientId:I

    iput p3, p0, Lcom/android/server/wifi/aware/WifiAwareClientState;->mUid:I

    iput p4, p0, Lcom/android/server/wifi/aware/WifiAwareClientState;->mPid:I

    iput-object p5, p0, Lcom/android/server/wifi/aware/WifiAwareClientState;->mCallingPackage:Ljava/lang/String;

    iput-object p6, p0, Lcom/android/server/wifi/aware/WifiAwareClientState;->mCallback:Landroid/net/wifi/aware/IWifiAwareEventCallback;

    iput-object p7, p0, Lcom/android/server/wifi/aware/WifiAwareClientState;->mConfigRequest:Landroid/net/wifi/aware/ConfigRequest;

    iput-boolean p8, p0, Lcom/android/server/wifi/aware/WifiAwareClientState;->mNotifyIdentityChange:Z

    const-string/jumbo v0, "appops"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareClientState;->mAppOps:Landroid/app/AppOpsManager;

    return-void
.end method

.method private hasLocationingPermission()Z
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareClientState;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.ACCESS_COARSE_LOCATION"

    iget v3, p0, Lcom/android/server/wifi/aware/WifiAwareClientState;->mPid:I

    iget v4, p0, Lcom/android/server/wifi/aware/WifiAwareClientState;->mUid:I

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareClientState;->mAppOps:Landroid/app/AppOpsManager;

    iget v2, p0, Lcom/android/server/wifi/aware/WifiAwareClientState;->mUid:I

    iget-object v3, p0, Lcom/android/server/wifi/aware/WifiAwareClientState;->mCallingPackage:Ljava/lang/String;

    invoke-virtual {v1, v0, v2, v3}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method


# virtual methods
.method public addSession(Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;)V
    .locals 4

    invoke-virtual {p1}, Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;->getSessionId()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareClientState;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "WifiAwareClientState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "createSession: sessionId already exists (replaced) - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareClientState;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v1, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public destroy()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareClientState;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareClientState;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;

    invoke-virtual {v1}, Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;->terminate()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareClientState;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareClientState;->mConfigRequest:Landroid/net/wifi/aware/ConfigRequest;

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    const-string/jumbo v1, "AwareClientState:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "  mClientId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/wifi/aware/WifiAwareClientState;->mClientId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "  mConfigRequest: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/aware/WifiAwareClientState;->mConfigRequest:Landroid/net/wifi/aware/ConfigRequest;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "  mNotifyIdentityChange: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/wifi/aware/WifiAwareClientState;->mNotifyIdentityChange:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "  mCallback: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/aware/WifiAwareClientState;->mCallback:Landroid/net/wifi/aware/IWifiAwareEventCallback;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "  mSessions: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/aware/WifiAwareClientState;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareClientState;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareClientState;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getAwareSessionStateForPubSubId(I)Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/server/wifi/aware/WifiAwareClientState;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/android/server/wifi/aware/WifiAwareClientState;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;

    invoke-virtual {v1, p1}, Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;->isPubSubIdSession(I)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method public getClientId()I
    .locals 1

    iget v0, p0, Lcom/android/server/wifi/aware/WifiAwareClientState;->mClientId:I

    return v0
.end method

.method public getConfigRequest()Landroid/net/wifi/aware/ConfigRequest;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareClientState;->mConfigRequest:Landroid/net/wifi/aware/ConfigRequest;

    return-object v0
.end method

.method public getNotifyIdentityChange()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wifi/aware/WifiAwareClientState;->mNotifyIdentityChange:Z

    return v0
.end method

.method public getSession(I)Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareClientState;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;

    return-object v0
.end method

.method public getUid()I
    .locals 1

    iget v0, p0, Lcom/android/server/wifi/aware/WifiAwareClientState;->mUid:I

    return v0
.end method

.method public onClusterChange(I[B[B)V
    .locals 5

    iget-boolean v2, p0, Lcom/android/server/wifi/aware/WifiAwareClientState;->mNotifyIdentityChange:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/wifi/aware/WifiAwareClientState;->mLastDiscoveryInterfaceMac:[B

    invoke-static {p3, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/wifi/aware/WifiAwareClientState;->hasLocationingPermission()Z

    move-result v1

    iget-object v2, p0, Lcom/android/server/wifi/aware/WifiAwareClientState;->mCallback:Landroid/net/wifi/aware/IWifiAwareEventCallback;

    if-eqz v1, :cond_1

    :goto_0
    invoke-interface {v2, p2}, Landroid/net/wifi/aware/IWifiAwareEventCallback;->onIdentityChanged([B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    iput-object p3, p0, Lcom/android/server/wifi/aware/WifiAwareClientState;->mLastDiscoveryInterfaceMac:[B

    return-void

    :cond_1
    :try_start_1
    sget-object p2, Lcom/android/server/wifi/aware/WifiAwareClientState;->ALL_ZERO_MAC:[B
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "WifiAwareClientState"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onIdentityChanged: RemoteException - ignored: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onInterfaceAddressChange([B)V
    .locals 5

    iget-boolean v2, p0, Lcom/android/server/wifi/aware/WifiAwareClientState;->mNotifyIdentityChange:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/wifi/aware/WifiAwareClientState;->mLastDiscoveryInterfaceMac:[B

    invoke-static {p1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/wifi/aware/WifiAwareClientState;->hasLocationingPermission()Z

    move-result v1

    iget-object v3, p0, Lcom/android/server/wifi/aware/WifiAwareClientState;->mCallback:Landroid/net/wifi/aware/IWifiAwareEventCallback;

    if-eqz v1, :cond_1

    move-object v2, p1

    :goto_0
    invoke-interface {v3, v2}, Landroid/net/wifi/aware/IWifiAwareEventCallback;->onIdentityChanged([B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    iput-object p1, p0, Lcom/android/server/wifi/aware/WifiAwareClientState;->mLastDiscoveryInterfaceMac:[B

    return-void

    :cond_1
    :try_start_1
    sget-object v2, Lcom/android/server/wifi/aware/WifiAwareClientState;->ALL_ZERO_MAC:[B
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "WifiAwareClientState"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onIdentityChanged: RemoteException - ignored: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onRangingAborted(I)V
    .locals 4

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareClientState;->mCallback:Landroid/net/wifi/aware/IWifiAwareEventCallback;

    invoke-interface {v1, p1}, Landroid/net/wifi/aware/IWifiAwareEventCallback;->onRangingAborted(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "WifiAwareClientState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onRangingAborted: RemoteException - ignored: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onRangingFailure(IILjava/lang/String;)V
    .locals 4

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareClientState;->mCallback:Landroid/net/wifi/aware/IWifiAwareEventCallback;

    invoke-interface {v1, p1, p2, p3}, Landroid/net/wifi/aware/IWifiAwareEventCallback;->onRangingFailure(IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "WifiAwareClientState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onRangingFailure: RemoteException - ignored: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onRangingSuccess(ILandroid/net/wifi/RttManager$ParcelableRttResults;)V
    .locals 4

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareClientState;->mCallback:Landroid/net/wifi/aware/IWifiAwareEventCallback;

    invoke-interface {v1, p1, p2}, Landroid/net/wifi/aware/IWifiAwareEventCallback;->onRangingSuccess(ILandroid/net/wifi/RttManager$ParcelableRttResults;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "WifiAwareClientState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onRangingSuccess: RemoteException - ignored: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public removeSession(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareClientState;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "WifiAwareClientState"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeSession: sessionId doesn\'t exist - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareClientState;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->delete(I)V

    return-void
.end method

.method public terminateSession(I)V
    .locals 4

    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareClientState;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;

    if-nez v0, :cond_0

    const-string/jumbo v1, "WifiAwareClientState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "terminateSession: sessionId doesn\'t exist - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;->terminate()V

    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareClientState;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->delete(I)V

    return-void
.end method
