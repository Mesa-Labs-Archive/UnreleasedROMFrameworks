.class Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;
.super Ljava/lang/Object;
.source "ImsServiceController.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ims/ImsServiceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ImsServiceConnection"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/ims/ImsServiceController;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/ims/ImsServiceController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 7

    iget-object v3, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    invoke-static {v3}, Lcom/android/internal/telephony/ims/ImsServiceController;->-get5(Lcom/android/internal/telephony/ims/ImsServiceController;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    const/4 v5, 0x1

    invoke-static {v3, v5}, Lcom/android/internal/telephony/ims/ImsServiceController;->-set4(Lcom/android/internal/telephony/ims/ImsServiceController;Z)Z

    iget-object v3, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    const/4 v5, 0x0

    invoke-static {v3, v5}, Lcom/android/internal/telephony/ims/ImsServiceController;->-set3(Lcom/android/internal/telephony/ims/ImsServiceController;Z)Z

    iget-object v3, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    invoke-static {v3}, Lcom/android/internal/telephony/ims/ImsServiceController;->-wrap2(Lcom/android/internal/telephony/ims/ImsServiceController;)V

    const-string/jumbo v3, "ImsServiceController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "ImsService("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "): onServiceConnected with binder: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_1

    iget-object v3, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    new-instance v5, Lcom/android/internal/telephony/ims/ImsServiceController$ImsDeathRecipient;

    iget-object v6, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    invoke-direct {v5, v6, p1}, Lcom/android/internal/telephony/ims/ImsServiceController$ImsDeathRecipient;-><init>(Lcom/android/internal/telephony/ims/ImsServiceController;Landroid/content/ComponentName;)V

    invoke-static {v3, v5}, Lcom/android/internal/telephony/ims/ImsServiceController;->-set1(Lcom/android/internal/telephony/ims/ImsServiceController;Lcom/android/internal/telephony/ims/ImsServiceController$ImsDeathRecipient;)Lcom/android/internal/telephony/ims/ImsServiceController$ImsDeathRecipient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v3, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    invoke-static {v3}, Lcom/android/internal/telephony/ims/ImsServiceController;->-get1(Lcom/android/internal/telephony/ims/ImsServiceController;)Lcom/android/internal/telephony/ims/ImsServiceController$ImsDeathRecipient;

    move-result-object v3

    const/4 v5, 0x0

    invoke-interface {p2, v3, v5}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    iget-object v3, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    invoke-static {v3, p2}, Lcom/android/internal/telephony/ims/ImsServiceController;->-set2(Lcom/android/internal/telephony/ims/ImsServiceController;Landroid/os/IBinder;)Landroid/os/IBinder;

    iget-object v3, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    invoke-static {p2}, Lcom/android/ims/internal/IImsServiceController$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsServiceController;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/internal/telephony/ims/ImsServiceController;->-set0(Lcom/android/internal/telephony/ims/ImsServiceController;Lcom/android/ims/internal/IImsServiceController;)Lcom/android/ims/internal/IImsServiceController;

    iget-object v3, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    invoke-static {v3}, Lcom/android/internal/telephony/ims/ImsServiceController;->-get2(Lcom/android/internal/telephony/ims/ImsServiceController;)Ljava/util/HashSet;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v3, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    invoke-static {v3, v1}, Lcom/android/internal/telephony/ims/ImsServiceController;->-wrap0(Lcom/android/internal/telephony/ims/ImsServiceController;Landroid/util/Pair;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    iget-object v3, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    const/4 v5, 0x0

    invoke-static {v3, v5}, Lcom/android/internal/telephony/ims/ImsServiceController;->-set4(Lcom/android/internal/telephony/ims/ImsServiceController;Z)Z

    iget-object v3, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    const/4 v5, 0x0

    invoke-static {v3, v5}, Lcom/android/internal/telephony/ims/ImsServiceController;->-set3(Lcom/android/internal/telephony/ims/ImsServiceController;Z)Z

    iget-object v3, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    invoke-static {v3}, Lcom/android/internal/telephony/ims/ImsServiceController;->-get1(Lcom/android/internal/telephony/ims/ImsServiceController;)Lcom/android/internal/telephony/ims/ImsServiceController$ImsDeathRecipient;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    invoke-static {v3}, Lcom/android/internal/telephony/ims/ImsServiceController;->-get1(Lcom/android/internal/telephony/ims/ImsServiceController;)Lcom/android/internal/telephony/ims/ImsServiceController$ImsDeathRecipient;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/ims/ImsServiceController$ImsDeathRecipient;->binderDied()V

    :cond_0
    const-string/jumbo v3, "ImsServiceController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "ImsService("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ") RemoteException:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    monitor-exit v4

    return-void

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    invoke-static {v0}, Lcom/android/internal/telephony/ims/ImsServiceController;->-get5(Lcom/android/internal/telephony/ims/ImsServiceController;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/ims/ImsServiceController;->-set3(Lcom/android/internal/telephony/ims/ImsServiceController;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    invoke-static {v0}, Lcom/android/internal/telephony/ims/ImsServiceController;->-get0(Lcom/android/internal/telephony/ims/ImsServiceController;)Lcom/android/ims/internal/IImsServiceController;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    invoke-static {v0}, Lcom/android/internal/telephony/ims/ImsServiceController;->-get3(Lcom/android/internal/telephony/ims/ImsServiceController;)Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    invoke-static {v1}, Lcom/android/internal/telephony/ims/ImsServiceController;->-get1(Lcom/android/internal/telephony/ims/ImsServiceController;)Lcom/android/internal/telephony/ims/ImsServiceController$ImsDeathRecipient;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    invoke-static {v0}, Lcom/android/internal/telephony/ims/ImsServiceController;->-wrap3(Lcom/android/internal/telephony/ims/ImsServiceController;)V

    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    invoke-static {v0}, Lcom/android/internal/telephony/ims/ImsServiceController;->-wrap1(Lcom/android/internal/telephony/ims/ImsServiceController;)V

    const-string/jumbo v0, "ImsServiceController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ImsService("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "): onServiceDisconnected. Rebinding..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    invoke-static {v0}, Lcom/android/internal/telephony/ims/ImsServiceController;->-wrap5(Lcom/android/internal/telephony/ims/ImsServiceController;)V

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
