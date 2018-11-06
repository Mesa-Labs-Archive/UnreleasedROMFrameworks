.class Lcom/android/server/wifi/SupplicantStaNetworkHal$SupplicantStaNetworkHalCallback;
.super Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetworkCallback$Stub;
.source "SupplicantStaNetworkHal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/SupplicantStaNetworkHal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SupplicantStaNetworkHalCallback"
.end annotation


# instance fields
.field private final mFramewokNetworkId:I

.field private final mSsid:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/wifi/SupplicantStaNetworkHal;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/SupplicantStaNetworkHal;ILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal$SupplicantStaNetworkHalCallback;->this$0:Lcom/android/server/wifi/SupplicantStaNetworkHal;

    invoke-direct {p0}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetworkCallback$Stub;-><init>()V

    iput p2, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal$SupplicantStaNetworkHalCallback;->mFramewokNetworkId:I

    iput-object p3, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal$SupplicantStaNetworkHalCallback;->mSsid:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onNetworkEapIdentityRequest()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal$SupplicantStaNetworkHalCallback;->this$0:Lcom/android/server/wifi/SupplicantStaNetworkHal;

    const-string/jumbo v1, "onNetworkEapIdentityRequest"

    invoke-static {v0, v1}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->-wrap0(Lcom/android/server/wifi/SupplicantStaNetworkHal;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal$SupplicantStaNetworkHalCallback;->this$0:Lcom/android/server/wifi/SupplicantStaNetworkHal;

    invoke-static {v0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->-get1(Lcom/android/server/wifi/SupplicantStaNetworkHal;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal$SupplicantStaNetworkHalCallback;->this$0:Lcom/android/server/wifi/SupplicantStaNetworkHal;

    invoke-static {v0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->-get2(Lcom/android/server/wifi/SupplicantStaNetworkHal;)Lcom/android/server/wifi/WifiMonitor;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal$SupplicantStaNetworkHalCallback;->this$0:Lcom/android/server/wifi/SupplicantStaNetworkHal;

    invoke-static {v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->-get0(Lcom/android/server/wifi/SupplicantStaNetworkHal;)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal$SupplicantStaNetworkHalCallback;->mFramewokNetworkId:I

    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal$SupplicantStaNetworkHalCallback;->mSsid:Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/server/wifi/WifiMonitor;->broadcastNetworkIdentityRequestEvent(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onNetworkEapSimGsmAuthRequest(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetworkCallback$NetworkRequestEapSimGsmAuthParams;)V
    .locals 10

    iget-object v5, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal$SupplicantStaNetworkHalCallback;->this$0:Lcom/android/server/wifi/SupplicantStaNetworkHal;

    const-string/jumbo v6, "onNetworkEapSimGsmAuthRequest"

    invoke-static {v5, v6}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->-wrap0(Lcom/android/server/wifi/SupplicantStaNetworkHal;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal$SupplicantStaNetworkHalCallback;->this$0:Lcom/android/server/wifi/SupplicantStaNetworkHal;

    invoke-static {v5}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->-get1(Lcom/android/server/wifi/SupplicantStaNetworkHal;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    :try_start_0
    iget-object v5, p1, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetworkCallback$NetworkRequestEapSimGsmAuthParams;->rands:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v0, v5, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v5, p1, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetworkCallback$NetworkRequestEapSimGsmAuthParams;->rands:Ljava/util/ArrayList;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v2, v1

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    add-int/lit8 v1, v2, 0x1

    invoke-static {v3}, Lcom/android/server/wifi/util/NativeUtil;->hexStringFromByteArray([B)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v2

    move v2, v1

    goto :goto_0

    :cond_0
    iget-object v5, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal$SupplicantStaNetworkHalCallback;->this$0:Lcom/android/server/wifi/SupplicantStaNetworkHal;

    invoke-static {v5}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->-get2(Lcom/android/server/wifi/SupplicantStaNetworkHal;)Lcom/android/server/wifi/WifiMonitor;

    move-result-object v5

    iget-object v7, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal$SupplicantStaNetworkHalCallback;->this$0:Lcom/android/server/wifi/SupplicantStaNetworkHal;

    invoke-static {v7}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->-get0(Lcom/android/server/wifi/SupplicantStaNetworkHal;)Ljava/lang/String;

    move-result-object v7

    iget v8, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal$SupplicantStaNetworkHalCallback;->mFramewokNetworkId:I

    iget-object v9, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal$SupplicantStaNetworkHalCallback;->mSsid:Ljava/lang/String;

    invoke-virtual {v5, v7, v8, v9, v0}, Lcom/android/server/wifi/WifiMonitor;->broadcastNetworkGsmAuthRequestEvent(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v6

    return-void

    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5
.end method

.method public onNetworkEapSimUmtsAuthRequest(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetworkCallback$NetworkRequestEapSimUmtsAuthParams;)V
    .locals 8

    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal$SupplicantStaNetworkHalCallback;->this$0:Lcom/android/server/wifi/SupplicantStaNetworkHal;

    const-string/jumbo v4, "onNetworkEapSimUmtsAuthRequest"

    invoke-static {v3, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->-wrap0(Lcom/android/server/wifi/SupplicantStaNetworkHal;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal$SupplicantStaNetworkHalCallback;->this$0:Lcom/android/server/wifi/SupplicantStaNetworkHal;

    invoke-static {v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->-get1(Lcom/android/server/wifi/SupplicantStaNetworkHal;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    :try_start_0
    iget-object v3, p1, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetworkCallback$NetworkRequestEapSimUmtsAuthParams;->rand:[B

    invoke-static {v3}, Lcom/android/server/wifi/util/NativeUtil;->hexStringFromByteArray([B)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetworkCallback$NetworkRequestEapSimUmtsAuthParams;->autn:[B

    invoke-static {v3}, Lcom/android/server/wifi/util/NativeUtil;->hexStringFromByteArray([B)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x2

    new-array v1, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v3, 0x1

    aput-object v0, v1, v3

    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal$SupplicantStaNetworkHalCallback;->this$0:Lcom/android/server/wifi/SupplicantStaNetworkHal;

    invoke-static {v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->-get2(Lcom/android/server/wifi/SupplicantStaNetworkHal;)Lcom/android/server/wifi/WifiMonitor;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal$SupplicantStaNetworkHalCallback;->this$0:Lcom/android/server/wifi/SupplicantStaNetworkHal;

    invoke-static {v5}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->-get0(Lcom/android/server/wifi/SupplicantStaNetworkHal;)Ljava/lang/String;

    move-result-object v5

    iget v6, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal$SupplicantStaNetworkHalCallback;->mFramewokNetworkId:I

    iget-object v7, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal$SupplicantStaNetworkHalCallback;->mSsid:Ljava/lang/String;

    invoke-virtual {v3, v5, v6, v7, v1}, Lcom/android/server/wifi/WifiMonitor;->broadcastNetworkUmtsAuthRequestEvent(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    return-void

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method
