.class Lcom/android/server/wifi/aware/WifiAwareServiceImpl$1;
.super Ljava/lang/Object;
.source "WifiAwareServiceImpl.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->connect(Landroid/os/IBinder;Ljava/lang/String;Landroid/net/wifi/aware/IWifiAwareEventCallback;Landroid/net/wifi/aware/ConfigRequest;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/aware/WifiAwareServiceImpl;

.field final synthetic val$binder:Landroid/os/IBinder;

.field final synthetic val$clientId:I


# direct methods
.method constructor <init>(Lcom/android/server/wifi/aware/WifiAwareServiceImpl;ILandroid/os/IBinder;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wifi/aware/WifiAwareServiceImpl$1;->this$0:Lcom/android/server/wifi/aware/WifiAwareServiceImpl;

    iput p2, p0, Lcom/android/server/wifi/aware/WifiAwareServiceImpl$1;->val$clientId:I

    iput-object p3, p0, Lcom/android/server/wifi/aware/WifiAwareServiceImpl$1;->val$binder:Landroid/os/IBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareServiceImpl$1;->val$binder:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareServiceImpl$1;->this$0:Lcom/android/server/wifi/aware/WifiAwareServiceImpl;

    invoke-static {v0}, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->-get1(Lcom/android/server/wifi/aware/WifiAwareServiceImpl;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareServiceImpl$1;->this$0:Lcom/android/server/wifi/aware/WifiAwareServiceImpl;

    invoke-static {v0}, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->-get0(Lcom/android/server/wifi/aware/WifiAwareServiceImpl;)Landroid/util/SparseArray;

    move-result-object v0

    iget v2, p0, Lcom/android/server/wifi/aware/WifiAwareServiceImpl$1;->val$clientId:I

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->delete(I)V

    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareServiceImpl$1;->this$0:Lcom/android/server/wifi/aware/WifiAwareServiceImpl;

    invoke-static {v0}, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->-get3(Lcom/android/server/wifi/aware/WifiAwareServiceImpl;)Landroid/util/SparseIntArray;

    move-result-object v0

    iget v2, p0, Lcom/android/server/wifi/aware/WifiAwareServiceImpl$1;->val$clientId:I

    invoke-virtual {v0, v2}, Landroid/util/SparseIntArray;->delete(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareServiceImpl$1;->this$0:Lcom/android/server/wifi/aware/WifiAwareServiceImpl;

    invoke-static {v0}, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->-get2(Lcom/android/server/wifi/aware/WifiAwareServiceImpl;)Lcom/android/server/wifi/aware/WifiAwareStateManager;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wifi/aware/WifiAwareServiceImpl$1;->val$clientId:I

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->disconnect(I)V

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
