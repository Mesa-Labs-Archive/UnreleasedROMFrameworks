.class Lcom/android/server/wifi/WifiVendorHal$RttEventCallback;
.super Landroid/hardware/wifi/V1_0/IWifiRttControllerEventCallback$Stub;
.source "WifiVendorHal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiVendorHal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RttEventCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiVendorHal;


# direct methods
.method private constructor <init>(Lcom/android/server/wifi/WifiVendorHal;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wifi/WifiVendorHal$RttEventCallback;->this$0:Lcom/android/server/wifi/WifiVendorHal;

    invoke-direct {p0}, Landroid/hardware/wifi/V1_0/IWifiRttControllerEventCallback$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wifi/WifiVendorHal;Lcom/android/server/wifi/WifiVendorHal$RttEventCallback;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiVendorHal$RttEventCallback;-><init>(Lcom/android/server/wifi/WifiVendorHal;)V

    return-void
.end method


# virtual methods
.method public onResults(ILjava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/wifi/V1_0/RttResult;",
            ">;)V"
        }
    .end annotation

    sget-object v4, Lcom/android/server/wifi/WifiVendorHal;->sLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/android/server/wifi/WifiVendorHal$RttEventCallback;->this$0:Lcom/android/server/wifi/WifiVendorHal;

    invoke-static {v3}, Lcom/android/server/wifi/WifiVendorHal;->-get3(Lcom/android/server/wifi/WifiVendorHal;)I

    move-result v3

    if-ne p1, v3, :cond_0

    iget-object v3, p0, Lcom/android/server/wifi/WifiVendorHal$RttEventCallback;->this$0:Lcom/android/server/wifi/WifiVendorHal;

    invoke-static {v3}, Lcom/android/server/wifi/WifiVendorHal;->-get4(Lcom/android/server/wifi/WifiVendorHal;)Lcom/android/server/wifi/WifiNative$RttEventHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    if-nez v3, :cond_1

    :cond_0
    monitor-exit v4

    return-void

    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wifi/WifiVendorHal$RttEventCallback;->this$0:Lcom/android/server/wifi/WifiVendorHal;

    invoke-static {v3}, Lcom/android/server/wifi/WifiVendorHal;->-get4(Lcom/android/server/wifi/WifiVendorHal;)Lcom/android/server/wifi/WifiNative$RttEventHandler;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/wifi/WifiVendorHal$RttEventCallback;->this$0:Lcom/android/server/wifi/WifiVendorHal;

    const/4 v5, 0x0

    invoke-static {v3, v5}, Lcom/android/server/wifi/WifiVendorHal;->-set0(Lcom/android/server/wifi/WifiVendorHal;I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v4

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v2, v3, [Landroid/net/wifi/RttManager$RttResult;

    const/4 v1, 0x0

    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_2

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/wifi/V1_0/RttResult;

    invoke-static {v3}, Lcom/android/server/wifi/WifiVendorHal;->frameworkRttResultFromHalRttResult(Landroid/hardware/wifi/V1_0/RttResult;)Landroid/net/wifi/RttManager$RttResult;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    :cond_2
    invoke-interface {v0, v2}, Lcom/android/server/wifi/WifiNative$RttEventHandler;->onRttResults([Landroid/net/wifi/RttManager$RttResult;)V

    return-void
.end method
