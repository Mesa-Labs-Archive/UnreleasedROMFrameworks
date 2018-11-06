.class public Lcom/android/server/wifi/LocalOnlyHotspotRequestInfo;
.super Ljava/lang/Object;
.source "LocalOnlyHotspotRequestInfo.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/LocalOnlyHotspotRequestInfo$RequestingApplicationDeathCallback;
    }
.end annotation


# static fields
.field static final HOTSPOT_NO_ERROR:I = -0x1


# instance fields
.field private final mBinder:Landroid/os/IBinder;

.field private final mCallback:Lcom/android/server/wifi/LocalOnlyHotspotRequestInfo$RequestingApplicationDeathCallback;

.field private final mMessenger:Landroid/os/Messenger;

.field private final mPid:I


# direct methods
.method constructor <init>(Landroid/os/IBinder;Landroid/os/Messenger;Lcom/android/server/wifi/LocalOnlyHotspotRequestInfo$RequestingApplicationDeathCallback;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/LocalOnlyHotspotRequestInfo;->mPid:I

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IBinder;

    iput-object v1, p0, Lcom/android/server/wifi/LocalOnlyHotspotRequestInfo;->mBinder:Landroid/os/IBinder;

    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Messenger;

    iput-object v1, p0, Lcom/android/server/wifi/LocalOnlyHotspotRequestInfo;->mMessenger:Landroid/os/Messenger;

    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wifi/LocalOnlyHotspotRequestInfo$RequestingApplicationDeathCallback;

    iput-object v1, p0, Lcom/android/server/wifi/LocalOnlyHotspotRequestInfo;->mCallback:Lcom/android/server/wifi/LocalOnlyHotspotRequestInfo$RequestingApplicationDeathCallback;

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/LocalOnlyHotspotRequestInfo;->mBinder:Landroid/os/IBinder;

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/android/server/wifi/LocalOnlyHotspotRequestInfo;->binderDied()V

    goto :goto_0
.end method


# virtual methods
.method public binderDied()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/LocalOnlyHotspotRequestInfo;->mCallback:Lcom/android/server/wifi/LocalOnlyHotspotRequestInfo$RequestingApplicationDeathCallback;

    invoke-interface {v0, p0}, Lcom/android/server/wifi/LocalOnlyHotspotRequestInfo$RequestingApplicationDeathCallback;->onLocalOnlyHotspotRequestorDeath(Lcom/android/server/wifi/LocalOnlyHotspotRequestInfo;)V

    return-void
.end method

.method public getPid()I
    .locals 1

    iget v0, p0, Lcom/android/server/wifi/LocalOnlyHotspotRequestInfo;->mPid:I

    return v0
.end method

.method public sendHotspotFailedMessage(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    iput p1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/android/server/wifi/LocalOnlyHotspotRequestInfo;->mMessenger:Landroid/os/Messenger;

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    return-void
.end method

.method public sendHotspotStartedMessage(Landroid/net/wifi/WifiConfiguration;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/wifi/LocalOnlyHotspotRequestInfo;->mMessenger:Landroid/os/Messenger;

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    return-void
.end method

.method public sendHotspotStoppedMessage()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/android/server/wifi/LocalOnlyHotspotRequestInfo;->mMessenger:Landroid/os/Messenger;

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    return-void
.end method

.method public unlinkDeathRecipient()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wifi/LocalOnlyHotspotRequestInfo;->mBinder:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    return-void
.end method
