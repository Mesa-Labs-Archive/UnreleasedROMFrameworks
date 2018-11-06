.class public Lcom/android/server/wifi/HalDeviceManager;
.super Ljava/lang/Object;
.source "HalDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/HalDeviceManager$1;,
        Lcom/android/server/wifi/HalDeviceManager$IfaceCreationData;,
        Lcom/android/server/wifi/HalDeviceManager$InterfaceAvailableForRequestListener;,
        Lcom/android/server/wifi/HalDeviceManager$InterfaceAvailableForRequestListenerProxy;,
        Lcom/android/server/wifi/HalDeviceManager$InterfaceCacheEntry;,
        Lcom/android/server/wifi/HalDeviceManager$InterfaceDestroyedListener;,
        Lcom/android/server/wifi/HalDeviceManager$InterfaceDestroyedListenerProxy;,
        Lcom/android/server/wifi/HalDeviceManager$ListenerProxy;,
        Lcom/android/server/wifi/HalDeviceManager$ManagerStatusListener;,
        Lcom/android/server/wifi/HalDeviceManager$ManagerStatusListenerProxy;,
        Lcom/android/server/wifi/HalDeviceManager$Mutable;,
        Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;,
        Lcom/android/server/wifi/HalDeviceManager$WifiEventCallback;,
        Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field public static final HAL_INSTANCE_NAME:Ljava/lang/String; = "default"

.field private static final IFACE_TYPES_BY_PRIORITY:[I

.field private static final START_HAL_RETRY_INTERVAL_MS:I = 0x14

.field public static final START_HAL_RETRY_TIMES:I = 0x3

.field private static final TAG:Ljava/lang/String; = "HalDeviceManager"


# instance fields
.field private final mIWifiDeathRecipient:Landroid/os/IHwBinder$DeathRecipient;

.field private final mInterfaceAvailableForRequestListeners:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/Set",
            "<",
            "Lcom/android/server/wifi/HalDeviceManager$InterfaceAvailableForRequestListenerProxy;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mInterfaceInfoCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/hardware/wifi/V1_0/IWifiIface;",
            "Lcom/android/server/wifi/HalDeviceManager$InterfaceCacheEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private final mManagerStatusListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/server/wifi/HalDeviceManager$ManagerStatusListenerProxy;",
            ">;"
        }
    .end annotation
.end field

.field private mServiceManager:Landroid/hidl/manager/V1_0/IServiceManager;

.field private final mServiceManagerDeathRecipient:Landroid/os/IHwBinder$DeathRecipient;

.field private final mServiceNotificationCallback:Landroid/hidl/manager/V1_0/IServiceNotification;

.field private final mStopStartLock:Ljava/lang/Object;

.field private mWifi:Landroid/hardware/wifi/V1_0/IWifi;

.field private final mWifiEventCallback:Lcom/android/server/wifi/HalDeviceManager$WifiEventCallback;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/wifi/HalDeviceManager;->DBG:Z

    return v0
.end method

.method static synthetic -get1()[I
    .locals 1

    sget-object v0, Lcom/android/server/wifi/HalDeviceManager;->IFACE_TYPES_BY_PRIORITY:[I

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/wifi/HalDeviceManager;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/HalDeviceManager;->mStopStartLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/wifi/HalDeviceManager;Landroid/hardware/wifi/V1_0/IWifi;)Landroid/hardware/wifi/V1_0/IWifi;
    .locals 0

    iput-object p1, p0, Lcom/android/server/wifi/HalDeviceManager;->mWifi:Landroid/hardware/wifi/V1_0/IWifi;

    return-object p1
.end method

.method static synthetic -wrap0(Landroid/hardware/wifi/V1_0/WifiStatus;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/android/server/wifi/HalDeviceManager;->statusString(Landroid/hardware/wifi/V1_0/WifiStatus;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/server/wifi/HalDeviceManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wifi/HalDeviceManager;->initIWifiIfNecessary()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/wifi/HalDeviceManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wifi/HalDeviceManager;->stopWifi()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/wifi/HalDeviceManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wifi/HalDeviceManager;->teardownInternal()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wifi/HalDeviceManager;->DBG:Z

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x3

    filled-new-array {v0, v1, v2, v3}, [I

    move-result-object v0

    sput-object v0, Lcom/android/server/wifi/HalDeviceManager;->IFACE_TYPES_BY_PRIORITY:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/HalDeviceManager;->mLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/HalDeviceManager;->mStopStartLock:Ljava/lang/Object;

    new-instance v0, Lcom/android/server/wifi/HalDeviceManager$WifiEventCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/wifi/HalDeviceManager$WifiEventCallback;-><init>(Lcom/android/server/wifi/HalDeviceManager;Lcom/android/server/wifi/HalDeviceManager$WifiEventCallback;)V

    iput-object v0, p0, Lcom/android/server/wifi/HalDeviceManager;->mWifiEventCallback:Lcom/android/server/wifi/HalDeviceManager$WifiEventCallback;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/HalDeviceManager;->mManagerStatusListeners:Ljava/util/Set;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/HalDeviceManager;->mInterfaceAvailableForRequestListeners:Landroid/util/SparseArray;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/HalDeviceManager;->mInterfaceInfoCache:Ljava/util/Map;

    new-instance v0, Lcom/android/server/wifi/-$Lambda$zRsSIzbfvkJSErD1TWUPvfb3F7k$3;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/-$Lambda$zRsSIzbfvkJSErD1TWUPvfb3F7k$3;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/wifi/HalDeviceManager;->mServiceManagerDeathRecipient:Landroid/os/IHwBinder$DeathRecipient;

    new-instance v0, Lcom/android/server/wifi/HalDeviceManager$1;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/HalDeviceManager$1;-><init>(Lcom/android/server/wifi/HalDeviceManager;)V

    iput-object v0, p0, Lcom/android/server/wifi/HalDeviceManager;->mServiceNotificationCallback:Landroid/hidl/manager/V1_0/IServiceNotification;

    new-instance v0, Lcom/android/server/wifi/-$Lambda$zRsSIzbfvkJSErD1TWUPvfb3F7k$4;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/-$Lambda$zRsSIzbfvkJSErD1TWUPvfb3F7k$4;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/wifi/HalDeviceManager;->mIWifiDeathRecipient:Landroid/os/IHwBinder$DeathRecipient;

    iget-object v0, p0, Lcom/android/server/wifi/HalDeviceManager;->mInterfaceAvailableForRequestListeners:Landroid/util/SparseArray;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/wifi/HalDeviceManager;->mInterfaceAvailableForRequestListeners:Landroid/util/SparseArray;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/wifi/HalDeviceManager;->mInterfaceAvailableForRequestListeners:Landroid/util/SparseArray;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/wifi/HalDeviceManager;->mInterfaceAvailableForRequestListeners:Landroid/util/SparseArray;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method private allowedToDeleteIfaceTypeForRequestedType(II)Z
    .locals 4

    const/4 v3, 0x3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p2, :cond_0

    return v1

    :cond_0
    if-ne p2, v3, :cond_1

    return v1

    :cond_1
    const/4 v2, 0x2

    if-ne p2, v2, :cond_3

    if-ne p1, v3, :cond_2

    :goto_0
    return v0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    return v0
.end method

.method private canIfaceComboSupportRequest(Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;Landroid/hardware/wifi/V1_0/IWifiChip$ChipMode;[II)Lcom/android/server/wifi/HalDeviceManager$IfaceCreationData;
    .locals 11

    sget-boolean v6, Lcom/android/server/wifi/HalDeviceManager;->DBG:Z

    if-eqz v6, :cond_0

    const-string/jumbo v6, "HalDeviceManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "canIfaceComboSupportRequest: chipInfo="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", chipMode="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", chipIfaceCombo="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", ifaceType="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    aget v6, p3, p4

    if-nez v6, :cond_2

    sget-boolean v6, Lcom/android/server/wifi/HalDeviceManager;->DBG:Z

    if-eqz v6, :cond_1

    const-string/jumbo v6, "HalDeviceManager"

    const-string/jumbo v7, "Requested type not supported by combo"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v6, 0x0

    return-object v6

    :cond_2
    iget-boolean v6, p1, Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;->currentModeIdValid:Z

    if-eqz v6, :cond_4

    iget v6, p1, Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;->currentModeId:I

    iget v7, p2, Landroid/hardware/wifi/V1_0/IWifiChip$ChipMode;->id:I

    if-eq v6, v7, :cond_4

    const/4 v3, 0x1

    :goto_0
    if-eqz v3, :cond_7

    sget-object v7, Lcom/android/server/wifi/HalDeviceManager;->IFACE_TYPES_BY_PRIORITY:[I

    const/4 v6, 0x0

    array-length v8, v7

    :goto_1
    if-ge v6, v8, :cond_6

    aget v5, v7, v6

    iget-object v9, p1, Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;->ifaces:[[Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;

    aget-object v9, v9, v5

    array-length v9, v9

    if-eqz v9, :cond_5

    invoke-direct {p0, v5, p4}, Lcom/android/server/wifi/HalDeviceManager;->allowedToDeleteIfaceTypeForRequestedType(II)Z

    move-result v9

    if-nez v9, :cond_5

    sget-boolean v6, Lcom/android/server/wifi/HalDeviceManager;->DBG:Z

    if-eqz v6, :cond_3

    const-string/jumbo v6, "HalDeviceManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Couldn\'t delete existing type "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " interfaces for requested type"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/4 v6, 0x0

    return-object v6

    :cond_4
    const/4 v3, 0x0

    goto :goto_0

    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_6
    new-instance v1, Lcom/android/server/wifi/HalDeviceManager$IfaceCreationData;

    const/4 v6, 0x0

    invoke-direct {v1, p0, v6}, Lcom/android/server/wifi/HalDeviceManager$IfaceCreationData;-><init>(Lcom/android/server/wifi/HalDeviceManager;Lcom/android/server/wifi/HalDeviceManager$IfaceCreationData;)V

    iput-object p1, v1, Lcom/android/server/wifi/HalDeviceManager$IfaceCreationData;->chipInfo:Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;

    iget v6, p2, Landroid/hardware/wifi/V1_0/IWifiChip$ChipMode;->id:I

    iput v6, v1, Lcom/android/server/wifi/HalDeviceManager$IfaceCreationData;->chipModeId:I

    return-object v1

    :cond_7
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sget-object v7, Lcom/android/server/wifi/HalDeviceManager;->IFACE_TYPES_BY_PRIORITY:[I

    const/4 v6, 0x0

    array-length v8, v7

    :goto_2
    if-ge v6, v8, :cond_c

    aget v5, v7, v6

    iget-object v9, p1, Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;->ifaces:[[Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;

    aget-object v9, v9, v5

    array-length v9, v9

    aget v10, p3, v5

    sub-int v4, v9, v10

    if-ne v5, p4, :cond_8

    add-int/lit8 v4, v4, 0x1

    :cond_8
    if-lez v4, :cond_b

    invoke-direct {p0, v5, p4}, Lcom/android/server/wifi/HalDeviceManager;->allowedToDeleteIfaceTypeForRequestedType(II)Z

    move-result v9

    if-nez v9, :cond_a

    sget-boolean v6, Lcom/android/server/wifi/HalDeviceManager;->DBG:Z

    if-eqz v6, :cond_9

    const-string/jumbo v6, "HalDeviceManager"

    const-string/jumbo v7, "Would need to delete some higher priority interfaces"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    const/4 v6, 0x0

    return-object v6

    :cond_a
    const/4 v0, 0x0

    :goto_3
    if-ge v0, v4, :cond_b

    iget-object v9, p1, Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;->ifaces:[[Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;

    aget-object v9, v9, v5

    aget-object v9, v9, v0

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_b
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_c
    new-instance v1, Lcom/android/server/wifi/HalDeviceManager$IfaceCreationData;

    const/4 v6, 0x0

    invoke-direct {v1, p0, v6}, Lcom/android/server/wifi/HalDeviceManager$IfaceCreationData;-><init>(Lcom/android/server/wifi/HalDeviceManager;Lcom/android/server/wifi/HalDeviceManager$IfaceCreationData;)V

    iput-object p1, v1, Lcom/android/server/wifi/HalDeviceManager$IfaceCreationData;->chipInfo:Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;

    iget v6, p2, Landroid/hardware/wifi/V1_0/IWifiChip$ChipMode;->id:I

    iput v6, v1, Lcom/android/server/wifi/HalDeviceManager$IfaceCreationData;->chipModeId:I

    iput-object v2, v1, Lcom/android/server/wifi/HalDeviceManager$IfaceCreationData;->interfacesToBeRemovedFirst:Ljava/util/List;

    return-object v1
.end method

.method private compareIfaceCreationData(Lcom/android/server/wifi/HalDeviceManager$IfaceCreationData;Lcom/android/server/wifi/HalDeviceManager$IfaceCreationData;)Z
    .locals 10

    const/4 v9, 0x1

    const/4 v4, 0x0

    sget-boolean v3, Lcom/android/server/wifi/HalDeviceManager;->DBG:Z

    if-eqz v3, :cond_0

    const-string/jumbo v3, "HalDeviceManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "compareIfaceCreationData: val1="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", val2="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez p1, :cond_1

    return v4

    :cond_1
    if-nez p2, :cond_2

    return v9

    :cond_2
    sget-object v5, Lcom/android/server/wifi/HalDeviceManager;->IFACE_TYPES_BY_PRIORITY:[I

    array-length v6, v5

    move v3, v4

    :goto_0
    if-ge v3, v6, :cond_7

    aget v2, v5, v3

    const/4 v0, 0x0

    iget-object v7, p1, Lcom/android/server/wifi/HalDeviceManager$IfaceCreationData;->chipInfo:Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;

    iget-boolean v7, v7, Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;->currentModeIdValid:Z

    if-eqz v7, :cond_4

    iget-object v7, p1, Lcom/android/server/wifi/HalDeviceManager$IfaceCreationData;->chipInfo:Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;

    iget v7, v7, Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;->currentModeId:I

    iget v8, p1, Lcom/android/server/wifi/HalDeviceManager$IfaceCreationData;->chipModeId:I

    if-eq v7, v8, :cond_4

    iget-object v7, p1, Lcom/android/server/wifi/HalDeviceManager$IfaceCreationData;->chipInfo:Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;

    iget-object v7, v7, Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;->ifaces:[[Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;

    aget-object v7, v7, v2

    array-length v0, v7

    :goto_1
    const/4 v1, 0x0

    iget-object v7, p2, Lcom/android/server/wifi/HalDeviceManager$IfaceCreationData;->chipInfo:Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;

    iget-boolean v7, v7, Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;->currentModeIdValid:Z

    if-eqz v7, :cond_5

    iget-object v7, p2, Lcom/android/server/wifi/HalDeviceManager$IfaceCreationData;->chipInfo:Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;

    iget v7, v7, Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;->currentModeId:I

    iget v8, p2, Lcom/android/server/wifi/HalDeviceManager$IfaceCreationData;->chipModeId:I

    if-eq v7, v8, :cond_5

    iget-object v7, p2, Lcom/android/server/wifi/HalDeviceManager$IfaceCreationData;->chipInfo:Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;

    iget-object v7, v7, Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;->ifaces:[[Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;

    aget-object v7, v7, v2

    array-length v1, v7

    :goto_2
    if-ge v0, v1, :cond_6

    sget-boolean v3, Lcom/android/server/wifi/HalDeviceManager;->DBG:Z

    if-eqz v3, :cond_3

    const-string/jumbo v3, "HalDeviceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "decision based on type="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " < "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return v9

    :cond_4
    iget-object v7, p1, Lcom/android/server/wifi/HalDeviceManager$IfaceCreationData;->interfacesToBeRemovedFirst:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_1

    :cond_5
    iget-object v7, p2, Lcom/android/server/wifi/HalDeviceManager$IfaceCreationData;->interfacesToBeRemovedFirst:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_2

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_7
    sget-boolean v3, Lcom/android/server/wifi/HalDeviceManager;->DBG:Z

    if-eqz v3, :cond_8

    const-string/jumbo v3, "HalDeviceManager"

    const-string/jumbo v5, "proposals identical - flip a coin"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    return v4
.end method

.method private createIface(ILcom/android/server/wifi/HalDeviceManager$InterfaceDestroyedListener;Landroid/os/Looper;)Landroid/hardware/wifi/V1_0/IWifiIface;
    .locals 6

    const/4 v5, 0x0

    sget-boolean v2, Lcom/android/server/wifi/HalDeviceManager;->DBG:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "HalDeviceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "createIface: ifaceType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v3, p0, Lcom/android/server/wifi/HalDeviceManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/wifi/HalDeviceManager;->getAllChipInfo()[Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;

    move-result-object v0

    if-nez v0, :cond_1

    const-string/jumbo v2, "HalDeviceManager"

    const-string/jumbo v4, "createIface: no chip info found"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/wifi/HalDeviceManager;->stopWifi()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    return-object v5

    :cond_1
    :try_start_1
    invoke-direct {p0, v0}, Lcom/android/server/wifi/HalDeviceManager;->validateInterfaceCache([Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "HalDeviceManager"

    const-string/jumbo v4, "createIface: local cache is invalid!"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/wifi/HalDeviceManager;->stopWifi()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v3

    return-object v5

    :cond_2
    :try_start_2
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/server/wifi/HalDeviceManager;->createIfaceIfPossible([Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;ILcom/android/server/wifi/HalDeviceManager$InterfaceDestroyedListener;Landroid/os/Looper;)Landroid/hardware/wifi/V1_0/IWifiIface;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/android/server/wifi/HalDeviceManager;->dispatchAvailableForRequestListeners()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v2

    if-nez v2, :cond_3

    monitor-exit v3

    return-object v5

    :cond_3
    monitor-exit v3

    return-object v1

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private createIfaceIfPossible([Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;ILcom/android/server/wifi/HalDeviceManager$InterfaceDestroyedListener;Landroid/os/Looper;)Landroid/hardware/wifi/V1_0/IWifiIface;
    .locals 21

    sget-boolean v14, Lcom/android/server/wifi/HalDeviceManager;->DBG:Z

    if-eqz v14, :cond_0

    const-string/jumbo v14, "HalDeviceManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "createIfaceIfPossible: chipInfos="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static/range {p1 .. p1}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ", ifaceType="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/HalDeviceManager;->mLock:Ljava/lang/Object;

    move-object/from16 v16, v0

    monitor-enter v16

    const/4 v3, 0x0

    const/4 v14, 0x0

    :try_start_0
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v17, v0

    move v15, v14

    :goto_0
    move/from16 v0, v17

    if-ge v15, v0, :cond_7

    aget-object v7, p1, v15

    iget-object v14, v7, Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;->availableModes:Ljava/util/ArrayList;

    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/hardware/wifi/V1_0/IWifiChip$ChipMode;

    iget-object v14, v8, Landroid/hardware/wifi/V1_0/IWifiChip$ChipMode;->availableCombinations:Ljava/util/ArrayList;

    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/wifi/V1_0/IWifiChip$ChipIfaceCombination;

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/server/wifi/HalDeviceManager;->expandIfaceCombos(Landroid/hardware/wifi/V1_0/IWifiChip$ChipIfaceCombination;)[[I

    move-result-object v12

    sget-boolean v14, Lcom/android/server/wifi/HalDeviceManager;->DBG:Z

    if-eqz v14, :cond_3

    const-string/jumbo v14, "HalDeviceManager"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, " expands to "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-static {v12}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v14, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/4 v14, 0x0

    array-length v0, v12

    move/from16 v18, v0

    :goto_1
    move/from16 v0, v18

    if-ge v14, v0, :cond_2

    aget-object v11, v12, v14

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v7, v8, v11, v1}, Lcom/android/server/wifi/HalDeviceManager;->canIfaceComboSupportRequest(Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;Landroid/hardware/wifi/V1_0/IWifiChip$ChipMode;[II)Lcom/android/server/wifi/HalDeviceManager$IfaceCreationData;

    move-result-object v10

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v3}, Lcom/android/server/wifi/HalDeviceManager;->compareIfaceCreationData(Lcom/android/server/wifi/HalDeviceManager$IfaceCreationData;Lcom/android/server/wifi/HalDeviceManager$IfaceCreationData;)Z

    move-result v19

    if-eqz v19, :cond_5

    sget-boolean v19, Lcom/android/server/wifi/HalDeviceManager;->DBG:Z

    if-eqz v19, :cond_4

    const-string/jumbo v19, "HalDeviceManager"

    const-string/jumbo v20, "new proposal accepted"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    move-object v3, v10

    :cond_5
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    :cond_6
    add-int/lit8 v14, v15, 0x1

    move v15, v14

    goto/16 :goto_0

    :cond_7
    if-eqz v3, :cond_a

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v3, v1}, Lcom/android/server/wifi/HalDeviceManager;->executeChipReconfiguration(Lcom/android/server/wifi/HalDeviceManager$IfaceCreationData;I)Landroid/hardware/wifi/V1_0/IWifiIface;

    move-result-object v13

    if-eqz v13, :cond_a

    new-instance v4, Lcom/android/server/wifi/HalDeviceManager$InterfaceCacheEntry;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v14}, Lcom/android/server/wifi/HalDeviceManager$InterfaceCacheEntry;-><init>(Lcom/android/server/wifi/HalDeviceManager;Lcom/android/server/wifi/HalDeviceManager$InterfaceCacheEntry;)V

    iget-object v14, v3, Lcom/android/server/wifi/HalDeviceManager$IfaceCreationData;->chipInfo:Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;

    iget-object v14, v14, Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;->chip:Landroid/hardware/wifi/V1_0/IWifiChip;

    iput-object v14, v4, Lcom/android/server/wifi/HalDeviceManager$InterfaceCacheEntry;->chip:Landroid/hardware/wifi/V1_0/IWifiChip;

    iget-object v14, v3, Lcom/android/server/wifi/HalDeviceManager$IfaceCreationData;->chipInfo:Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;

    iget v14, v14, Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;->chipId:I

    iput v14, v4, Lcom/android/server/wifi/HalDeviceManager$InterfaceCacheEntry;->chipId:I

    invoke-static {v13}, Lcom/android/server/wifi/HalDeviceManager;->getName(Landroid/hardware/wifi/V1_0/IWifiIface;)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v4, Lcom/android/server/wifi/HalDeviceManager$InterfaceCacheEntry;->name:Ljava/lang/String;

    move/from16 v0, p2

    iput v0, v4, Lcom/android/server/wifi/HalDeviceManager$InterfaceCacheEntry;->type:I

    if-eqz p3, :cond_9

    iget-object v14, v4, Lcom/android/server/wifi/HalDeviceManager$InterfaceCacheEntry;->destroyedListeners:Ljava/util/Set;

    new-instance v15, Lcom/android/server/wifi/HalDeviceManager$InterfaceDestroyedListenerProxy;

    if-nez p4, :cond_8

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p4

    :cond_8
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-direct {v15, v0, v1, v2}, Lcom/android/server/wifi/HalDeviceManager$InterfaceDestroyedListenerProxy;-><init>(Lcom/android/server/wifi/HalDeviceManager;Lcom/android/server/wifi/HalDeviceManager$InterfaceDestroyedListener;Landroid/os/Looper;)V

    invoke-interface {v14, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_9
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/HalDeviceManager;->mInterfaceInfoCache:Ljava/util/Map;

    invoke-interface {v14, v13, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v16

    return-object v13

    :cond_a
    monitor-exit v16

    const/4 v14, 0x0

    return-object v14

    :catchall_0
    move-exception v14

    monitor-exit v16

    throw v14
.end method

.method private dispatchAllDestroyedListeners()V
    .locals 6

    sget-boolean v4, Lcom/android/server/wifi/HalDeviceManager;->DBG:Z

    if-eqz v4, :cond_0

    const-string/jumbo v4, "HalDeviceManager"

    const-string/jumbo v5, "dispatchAllDestroyedListeners"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v5, p0, Lcom/android/server/wifi/HalDeviceManager;->mLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    iget-object v4, p0, Lcom/android/server/wifi/HalDeviceManager;->mInterfaceInfoCache:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/HalDeviceManager$InterfaceCacheEntry;

    iget-object v4, v0, Lcom/android/server/wifi/HalDeviceManager$InterfaceCacheEntry;->destroyedListeners:Ljava/util/Set;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wifi/HalDeviceManager$InterfaceDestroyedListenerProxy;

    invoke-virtual {v2}, Lcom/android/server/wifi/HalDeviceManager$InterfaceDestroyedListenerProxy;->trigger()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    :cond_1
    :try_start_1
    iget-object v4, v0, Lcom/android/server/wifi/HalDeviceManager$InterfaceCacheEntry;->destroyedListeners:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->clear()V

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_2
    monitor-exit v5

    return-void
.end method

.method private dispatchAvailableForRequestListeners()Z
    .locals 7

    const/4 v2, 0x0

    sget-boolean v3, Lcom/android/server/wifi/HalDeviceManager;->DBG:Z

    if-eqz v3, :cond_0

    const-string/jumbo v3, "HalDeviceManager"

    const-string/jumbo v4, "dispatchAvailableForRequestListeners"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v3, p0, Lcom/android/server/wifi/HalDeviceManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/wifi/HalDeviceManager;->getAllChipInfo()[Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;

    move-result-object v0

    if-nez v0, :cond_1

    const-string/jumbo v4, "HalDeviceManager"

    const-string/jumbo v5, "dispatchAvailableForRequestListeners: no chip info found"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/wifi/HalDeviceManager;->stopWifi()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    return v2

    :cond_1
    :try_start_1
    sget-boolean v4, Lcom/android/server/wifi/HalDeviceManager;->DBG:Z

    if-eqz v4, :cond_2

    const-string/jumbo v4, "HalDeviceManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "dispatchAvailableForRequestListeners: chipInfos="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    sget-object v4, Lcom/android/server/wifi/HalDeviceManager;->IFACE_TYPES_BY_PRIORITY:[I

    array-length v5, v4

    :goto_0
    if-ge v2, v5, :cond_3

    aget v1, v4, v2

    invoke-direct {p0, v1, v0}, Lcom/android/server/wifi/HalDeviceManager;->dispatchAvailableForRequestListenersForType(I[Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    monitor-exit v3

    const/4 v2, 0x1

    return v2

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private dispatchAvailableForRequestListenersForType(I[Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;)V
    .locals 6

    sget-boolean v3, Lcom/android/server/wifi/HalDeviceManager;->DBG:Z

    if-eqz v3, :cond_0

    const-string/jumbo v3, "HalDeviceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "dispatchAvailableForRequestListenersForType: ifaceType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v3, p0, Lcom/android/server/wifi/HalDeviceManager;->mInterfaceAvailableForRequestListeners:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v3

    if-nez v3, :cond_1

    return-void

    :cond_1
    invoke-direct {p0, p2, p1}, Lcom/android/server/wifi/HalDeviceManager;->isItPossibleToCreateIface([Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;I)Z

    move-result v3

    if-nez v3, :cond_3

    sget-boolean v3, Lcom/android/server/wifi/HalDeviceManager;->DBG:Z

    if-eqz v3, :cond_2

    const-string/jumbo v3, "HalDeviceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Creating interface type isn\'t possible: ifaceType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void

    :cond_3
    sget-boolean v3, Lcom/android/server/wifi/HalDeviceManager;->DBG:Z

    if-eqz v3, :cond_4

    const-string/jumbo v3, "HalDeviceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "It is possible to create the interface type: ifaceType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/HalDeviceManager$InterfaceAvailableForRequestListenerProxy;

    invoke-virtual {v0}, Lcom/android/server/wifi/HalDeviceManager$InterfaceAvailableForRequestListenerProxy;->trigger()V

    goto :goto_0

    :cond_5
    return-void
.end method

.method private dispatchDestroyedListeners(Landroid/hardware/wifi/V1_0/IWifiIface;)V
    .locals 7

    sget-boolean v3, Lcom/android/server/wifi/HalDeviceManager;->DBG:Z

    if-eqz v3, :cond_0

    const-string/jumbo v3, "HalDeviceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "dispatchDestroyedListeners: iface(name)="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Lcom/android/server/wifi/HalDeviceManager;->getName(Landroid/hardware/wifi/V1_0/IWifiIface;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v4, p0, Lcom/android/server/wifi/HalDeviceManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/android/server/wifi/HalDeviceManager;->mInterfaceInfoCache:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/HalDeviceManager$InterfaceCacheEntry;

    if-nez v0, :cond_1

    const-string/jumbo v3, "HalDeviceManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "dispatchDestroyedListeners: no cache entry for iface(name)="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1}, Lcom/android/server/wifi/HalDeviceManager;->getName(Landroid/hardware/wifi/V1_0/IWifiIface;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    return-void

    :cond_1
    :try_start_1
    iget-object v3, v0, Lcom/android/server/wifi/HalDeviceManager$InterfaceCacheEntry;->destroyedListeners:Ljava/util/Set;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wifi/HalDeviceManager$InterfaceDestroyedListenerProxy;

    invoke-virtual {v1}, Lcom/android/server/wifi/HalDeviceManager$InterfaceDestroyedListenerProxy;->trigger()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    :cond_2
    :try_start_2
    iget-object v3, v0, Lcom/android/server/wifi/HalDeviceManager$InterfaceCacheEntry;->destroyedListeners:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->clear()V

    iget-object v3, p0, Lcom/android/server/wifi/HalDeviceManager;->mInterfaceInfoCache:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v4

    return-void
.end method

.method private executeChipReconfiguration(Lcom/android/server/wifi/HalDeviceManager$IfaceCreationData;I)Landroid/hardware/wifi/V1_0/IWifiIface;
    .locals 16

    sget-boolean v9, Lcom/android/server/wifi/HalDeviceManager;->DBG:Z

    if-eqz v9, :cond_0

    const-string/jumbo v9, "HalDeviceManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "executeChipReconfiguration: ifaceCreationData="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", ifaceType="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, p2

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/HalDeviceManager;->mLock:Ljava/lang/Object;

    monitor-enter v11

    :try_start_0
    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/android/server/wifi/HalDeviceManager$IfaceCreationData;->chipInfo:Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;

    iget-boolean v9, v9, Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;->currentModeIdValid:Z

    if-eqz v9, :cond_2

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/android/server/wifi/HalDeviceManager$IfaceCreationData;->chipInfo:Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;

    iget v9, v9, Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;->currentModeId:I

    move-object/from16 v0, p1

    iget v10, v0, Lcom/android/server/wifi/HalDeviceManager$IfaceCreationData;->chipModeId:I

    if-eq v9, v10, :cond_3

    const/4 v6, 0x1

    :goto_0
    sget-boolean v9, Lcom/android/server/wifi/HalDeviceManager;->DBG:Z

    if-eqz v9, :cond_1

    const-string/jumbo v9, "HalDeviceManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "isModeConfigNeeded="

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-eqz v6, :cond_6

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/android/server/wifi/HalDeviceManager$IfaceCreationData;->chipInfo:Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;

    iget-object v12, v9, Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;->ifaces:[[Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;

    const/4 v9, 0x0

    array-length v13, v12

    move v10, v9

    :goto_1
    if-ge v10, v13, :cond_5

    aget-object v4, v12, v10

    const/4 v9, 0x0

    array-length v14, v4

    :goto_2
    if-ge v9, v14, :cond_4

    aget-object v2, v4, v9

    iget-object v15, v2, Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;->iface:Landroid/hardware/wifi/V1_0/IWifiIface;

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/server/wifi/HalDeviceManager;->removeIfaceInternal(Landroid/hardware/wifi/V1_0/IWifiIface;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_2
    const/4 v6, 0x1

    goto :goto_0

    :cond_3
    const/4 v6, 0x0

    goto :goto_0

    :cond_4
    add-int/lit8 v9, v10, 0x1

    move v10, v9

    goto :goto_1

    :cond_5
    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/android/server/wifi/HalDeviceManager$IfaceCreationData;->chipInfo:Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;

    iget-object v9, v9, Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;->chip:Landroid/hardware/wifi/V1_0/IWifiChip;

    move-object/from16 v0, p1

    iget v10, v0, Lcom/android/server/wifi/HalDeviceManager$IfaceCreationData;->chipModeId:I

    invoke-interface {v9, v10}, Landroid/hardware/wifi/V1_0/IWifiChip;->configureChip(I)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v7

    iget v9, v7, Landroid/hardware/wifi/V1_0/WifiStatus;->code:I

    if-eqz v9, :cond_7

    const-string/jumbo v9, "HalDeviceManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "executeChipReconfiguration: configureChip error: "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v7}, Lcom/android/server/wifi/HalDeviceManager;->statusString(Landroid/hardware/wifi/V1_0/WifiStatus;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v9, 0x0

    monitor-exit v11

    return-object v9

    :cond_6
    :try_start_1
    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/android/server/wifi/HalDeviceManager$IfaceCreationData;->interfacesToBeRemovedFirst:Ljava/util/List;

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;

    iget-object v9, v2, Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;->iface:Landroid/hardware/wifi/V1_0/IWifiIface;

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/server/wifi/HalDeviceManager;->removeIfaceInternal(Landroid/hardware/wifi/V1_0/IWifiIface;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catch_0
    move-exception v1

    :try_start_2
    const-string/jumbo v9, "HalDeviceManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "executeChipReconfiguration exception: "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v9, 0x0

    monitor-exit v11

    return-object v9

    :cond_7
    :try_start_3
    new-instance v8, Lcom/android/server/wifi/HalDeviceManager$Mutable;

    invoke-direct {v8}, Lcom/android/server/wifi/HalDeviceManager$Mutable;-><init>()V

    new-instance v5, Lcom/android/server/wifi/HalDeviceManager$Mutable;

    invoke-direct {v5}, Lcom/android/server/wifi/HalDeviceManager$Mutable;-><init>()V

    packed-switch p2, :pswitch_data_0

    :goto_4
    iget-object v9, v8, Lcom/android/server/wifi/HalDeviceManager$Mutable;->value:Ljava/lang/Object;

    check-cast v9, Landroid/hardware/wifi/V1_0/WifiStatus;

    iget v9, v9, Landroid/hardware/wifi/V1_0/WifiStatus;->code:I

    if-eqz v9, :cond_8

    const-string/jumbo v10, "HalDeviceManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "executeChipReconfiguration: failed to create interface ifaceType="

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, p2

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v12, ": "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v9, v8, Lcom/android/server/wifi/HalDeviceManager$Mutable;->value:Ljava/lang/Object;

    check-cast v9, Landroid/hardware/wifi/V1_0/WifiStatus;

    invoke-static {v9}, Lcom/android/server/wifi/HalDeviceManager;->statusString(Landroid/hardware/wifi/V1_0/WifiStatus;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v9, 0x0

    monitor-exit v11

    return-object v9

    :pswitch_0
    :try_start_4
    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/android/server/wifi/HalDeviceManager$IfaceCreationData;->chipInfo:Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;

    iget-object v9, v9, Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;->chip:Landroid/hardware/wifi/V1_0/IWifiChip;

    new-instance v10, Lcom/android/server/wifi/-$Lambda$zRsSIzbfvkJSErD1TWUPvfb3F7k$11;

    invoke-direct {v10, v8, v5}, Lcom/android/server/wifi/-$Lambda$zRsSIzbfvkJSErD1TWUPvfb3F7k$11;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v9, v10}, Landroid/hardware/wifi/V1_0/IWifiChip;->createStaIface(Landroid/hardware/wifi/V1_0/IWifiChip$createStaIfaceCallback;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v9

    monitor-exit v11

    throw v9

    :pswitch_1
    :try_start_5
    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/android/server/wifi/HalDeviceManager$IfaceCreationData;->chipInfo:Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;

    iget-object v9, v9, Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;->chip:Landroid/hardware/wifi/V1_0/IWifiChip;

    new-instance v10, Lcom/android/server/wifi/-$Lambda$zRsSIzbfvkJSErD1TWUPvfb3F7k$8;

    invoke-direct {v10, v8, v5}, Lcom/android/server/wifi/-$Lambda$zRsSIzbfvkJSErD1TWUPvfb3F7k$8;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v9, v10}, Landroid/hardware/wifi/V1_0/IWifiChip;->createApIface(Landroid/hardware/wifi/V1_0/IWifiChip$createApIfaceCallback;)V

    goto :goto_4

    :pswitch_2
    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/android/server/wifi/HalDeviceManager$IfaceCreationData;->chipInfo:Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;

    iget-object v9, v9, Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;->chip:Landroid/hardware/wifi/V1_0/IWifiChip;

    new-instance v10, Lcom/android/server/wifi/-$Lambda$zRsSIzbfvkJSErD1TWUPvfb3F7k$10;

    invoke-direct {v10, v8, v5}, Lcom/android/server/wifi/-$Lambda$zRsSIzbfvkJSErD1TWUPvfb3F7k$10;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v9, v10}, Landroid/hardware/wifi/V1_0/IWifiChip;->createP2pIface(Landroid/hardware/wifi/V1_0/IWifiChip$createP2pIfaceCallback;)V

    goto :goto_4

    :pswitch_3
    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/android/server/wifi/HalDeviceManager$IfaceCreationData;->chipInfo:Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;

    iget-object v9, v9, Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;->chip:Landroid/hardware/wifi/V1_0/IWifiChip;

    new-instance v10, Lcom/android/server/wifi/-$Lambda$zRsSIzbfvkJSErD1TWUPvfb3F7k$9;

    invoke-direct {v10, v8, v5}, Lcom/android/server/wifi/-$Lambda$zRsSIzbfvkJSErD1TWUPvfb3F7k$9;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v9, v10}, Landroid/hardware/wifi/V1_0/IWifiChip;->createNanIface(Landroid/hardware/wifi/V1_0/IWifiChip$createNanIfaceCallback;)V

    goto :goto_4

    :cond_8
    iget-object v9, v5, Lcom/android/server/wifi/HalDeviceManager$Mutable;->value:Ljava/lang/Object;

    check-cast v9, Landroid/hardware/wifi/V1_0/IWifiIface;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit v11

    return-object v9

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private expandIfaceCombos(Landroid/hardware/wifi/V1_0/IWifiChip$ChipIfaceCombination;)[[I
    .locals 11

    const/4 v5, 0x1

    iget-object v7, p1, Landroid/hardware/wifi/V1_0/IWifiChip$ChipIfaceCombination;->limits:Ljava/util/ArrayList;

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/wifi/V1_0/IWifiChip$ChipIfaceCombinationLimit;

    const/4 v1, 0x0

    :goto_0
    iget v7, v3, Landroid/hardware/wifi/V1_0/IWifiChip$ChipIfaceCombinationLimit;->maxIfaces:I

    if-ge v1, v7, :cond_0

    iget-object v7, v3, Landroid/hardware/wifi/V1_0/IWifiChip$ChipIfaceCombinationLimit;->types:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    mul-int/2addr v5, v7

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x2

    new-array v8, v8, [I

    const/4 v9, 0x0

    aput v5, v8, v9

    sget-object v9, Lcom/android/server/wifi/HalDeviceManager;->IFACE_TYPES_BY_PRIORITY:[I

    array-length v9, v9

    const/4 v10, 0x1

    aput v9, v8, v10

    invoke-static {v7, v8}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    move v6, v5

    iget-object v7, p1, Landroid/hardware/wifi/V1_0/IWifiChip$ChipIfaceCombination;->limits:Ljava/util/ArrayList;

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/wifi/V1_0/IWifiChip$ChipIfaceCombinationLimit;

    const/4 v1, 0x0

    :goto_1
    iget v7, v3, Landroid/hardware/wifi/V1_0/IWifiChip$ChipIfaceCombinationLimit;->maxIfaces:I

    if-ge v1, v7, :cond_2

    iget-object v7, v3, Landroid/hardware/wifi/V1_0/IWifiChip$ChipIfaceCombinationLimit;->types:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    div-int/2addr v6, v7

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v5, :cond_3

    aget-object v8, v0, v2

    iget-object v7, v3, Landroid/hardware/wifi/V1_0/IWifiChip$ChipIfaceCombinationLimit;->types:Ljava/util/ArrayList;

    div-int v9, v2, v6

    iget-object v10, v3, Landroid/hardware/wifi/V1_0/IWifiChip$ChipIfaceCombinationLimit;->types:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    rem-int/2addr v9, v10

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v9

    aget v9, v8, v9

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int/lit8 v9, v9, 0x1

    aput v9, v8, v7

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    return-object v0
.end method

.method private getAllChipInfo()[Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;
    .locals 39

    sget-boolean v2, Lcom/android/server/wifi/HalDeviceManager;->DBG:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "HalDeviceManager"

    const-string/jumbo v3, "getAllChipInfo"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/HalDeviceManager;->mLock:Ljava/lang/Object;

    move-object/from16 v38, v0

    monitor-enter v38

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/HalDeviceManager;->mWifi:Landroid/hardware/wifi/V1_0/IWifi;

    if-nez v2, :cond_1

    const-string/jumbo v2, "HalDeviceManager"

    const-string/jumbo v3, "getAllChipInfo: called but mWifi is null!?"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    monitor-exit v38

    return-object v2

    :cond_1
    :try_start_1
    new-instance v4, Landroid/util/MutableBoolean;

    const/4 v2, 0x0

    invoke-direct {v4, v2}, Landroid/util/MutableBoolean;-><init>(Z)V

    new-instance v27, Lcom/android/server/wifi/HalDeviceManager$Mutable;

    invoke-direct/range {v27 .. v27}, Lcom/android/server/wifi/HalDeviceManager$Mutable;-><init>()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/HalDeviceManager;->mWifi:Landroid/hardware/wifi/V1_0/IWifi;

    new-instance v3, Lcom/android/server/wifi/-$Lambda$zRsSIzbfvkJSErD1TWUPvfb3F7k$6;

    move-object/from16 v0, v27

    invoke-direct {v3, v4, v0}, Lcom/android/server/wifi/-$Lambda$zRsSIzbfvkJSErD1TWUPvfb3F7k$6;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v2, v3}, Landroid/hardware/wifi/V1_0/IWifi;->getChipIds(Landroid/hardware/wifi/V1_0/IWifi$getChipIdsCallback;)V

    iget-boolean v2, v4, Landroid/util/MutableBoolean;->value:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_2

    const/4 v2, 0x0

    monitor-exit v38

    return-object v2

    :cond_2
    :try_start_2
    sget-boolean v2, Lcom/android/server/wifi/HalDeviceManager;->DBG:Z

    if-eqz v2, :cond_3

    const-string/jumbo v2, "HalDeviceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getChipIds="

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v27

    iget-object v8, v0, Lcom/android/server/wifi/HalDeviceManager$Mutable;->value:Ljava/lang/Object;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move-object/from16 v0, v27

    iget-object v2, v0, Lcom/android/server/wifi/HalDeviceManager$Mutable;->value:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_4

    const-string/jumbo v2, "HalDeviceManager"

    const-string/jumbo v3, "Should have at least 1 chip!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v2, 0x0

    monitor-exit v38

    return-object v2

    :cond_4
    const/16 v29, 0x0

    :try_start_3
    move-object/from16 v0, v27

    iget-object v2, v0, Lcom/android/server/wifi/HalDeviceManager$Mutable;->value:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v0, v2, [Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;

    move-object/from16 v32, v0

    new-instance v31, Lcom/android/server/wifi/HalDeviceManager$Mutable;

    invoke-direct/range {v31 .. v31}, Lcom/android/server/wifi/HalDeviceManager$Mutable;-><init>()V

    move-object/from16 v0, v27

    iget-object v2, v0, Lcom/android/server/wifi/HalDeviceManager$Mutable;->value:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v26

    move/from16 v30, v29

    :goto_0
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/Integer;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/HalDeviceManager;->mWifi:Landroid/hardware/wifi/V1_0/IWifi;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->intValue()I

    move-result v3

    new-instance v8, Lcom/android/server/wifi/-$Lambda$zRsSIzbfvkJSErD1TWUPvfb3F7k$5;

    move-object/from16 v0, v31

    invoke-direct {v8, v4, v0}, Lcom/android/server/wifi/-$Lambda$zRsSIzbfvkJSErD1TWUPvfb3F7k$5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v2, v3, v8}, Landroid/hardware/wifi/V1_0/IWifi;->getChip(ILandroid/hardware/wifi/V1_0/IWifi$getChipCallback;)V

    iget-boolean v2, v4, Landroid/util/MutableBoolean;->value:Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v2, :cond_5

    const/4 v2, 0x0

    monitor-exit v38

    return-object v2

    :cond_5
    :try_start_4
    new-instance v24, Lcom/android/server/wifi/HalDeviceManager$Mutable;

    invoke-direct/range {v24 .. v24}, Lcom/android/server/wifi/HalDeviceManager$Mutable;-><init>()V

    move-object/from16 v0, v31

    iget-object v2, v0, Lcom/android/server/wifi/HalDeviceManager$Mutable;->value:Ljava/lang/Object;

    check-cast v2, Landroid/hardware/wifi/V1_0/IWifiChip;

    new-instance v3, Lcom/android/server/wifi/-$Lambda$zRsSIzbfvkJSErD1TWUPvfb3F7k$13;

    move-object/from16 v0, v24

    invoke-direct {v3, v4, v0}, Lcom/android/server/wifi/-$Lambda$zRsSIzbfvkJSErD1TWUPvfb3F7k$13;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v2, v3}, Landroid/hardware/wifi/V1_0/IWifiChip;->getAvailableModes(Landroid/hardware/wifi/V1_0/IWifiChip$getAvailableModesCallback;)V

    iget-boolean v2, v4, Landroid/util/MutableBoolean;->value:Z
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-nez v2, :cond_6

    const/4 v2, 0x0

    monitor-exit v38

    return-object v2

    :cond_6
    :try_start_5
    new-instance v34, Landroid/util/MutableBoolean;

    const/4 v2, 0x0

    move-object/from16 v0, v34

    invoke-direct {v0, v2}, Landroid/util/MutableBoolean;-><init>(Z)V

    new-instance v33, Landroid/util/MutableInt;

    const/4 v2, 0x0

    move-object/from16 v0, v33

    invoke-direct {v0, v2}, Landroid/util/MutableInt;-><init>(I)V

    move-object/from16 v0, v31

    iget-object v2, v0, Lcom/android/server/wifi/HalDeviceManager$Mutable;->value:Ljava/lang/Object;

    check-cast v2, Landroid/hardware/wifi/V1_0/IWifiChip;

    new-instance v3, Lcom/android/server/wifi/-$Lambda$zRsSIzbfvkJSErD1TWUPvfb3F7k$18;

    move-object/from16 v0, v34

    move-object/from16 v1, v33

    invoke-direct {v3, v4, v0, v1}, Lcom/android/server/wifi/-$Lambda$zRsSIzbfvkJSErD1TWUPvfb3F7k$18;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v2, v3}, Landroid/hardware/wifi/V1_0/IWifiChip;->getMode(Landroid/hardware/wifi/V1_0/IWifiChip$getModeCallback;)V

    iget-boolean v2, v4, Landroid/util/MutableBoolean;->value:Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-nez v2, :cond_7

    const/4 v2, 0x0

    monitor-exit v38

    return-object v2

    :cond_7
    :try_start_6
    new-instance v37, Lcom/android/server/wifi/HalDeviceManager$Mutable;

    invoke-direct/range {v37 .. v37}, Lcom/android/server/wifi/HalDeviceManager$Mutable;-><init>()V

    new-instance v7, Landroid/util/MutableInt;

    const/4 v2, 0x0

    invoke-direct {v7, v2}, Landroid/util/MutableInt;-><init>(I)V

    move-object/from16 v0, v31

    iget-object v2, v0, Lcom/android/server/wifi/HalDeviceManager$Mutable;->value:Ljava/lang/Object;

    check-cast v2, Landroid/hardware/wifi/V1_0/IWifiChip;

    new-instance v3, Lcom/android/server/wifi/-$Lambda$zRsSIzbfvkJSErD1TWUPvfb3F7k$17;

    move-object/from16 v0, v37

    invoke-direct {v3, v4, v0}, Lcom/android/server/wifi/-$Lambda$zRsSIzbfvkJSErD1TWUPvfb3F7k$17;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v2, v3}, Landroid/hardware/wifi/V1_0/IWifiChip;->getStaIfaceNames(Landroid/hardware/wifi/V1_0/IWifiChip$getStaIfaceNamesCallback;)V

    iget-boolean v2, v4, Landroid/util/MutableBoolean;->value:Z
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-nez v2, :cond_8

    const/4 v2, 0x0

    monitor-exit v38

    return-object v2

    :cond_8
    :try_start_7
    move-object/from16 v0, v37

    iget-object v2, v0, Lcom/android/server/wifi/HalDeviceManager$Mutable;->value:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v6, v2, [Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;

    move-object/from16 v0, v37

    iget-object v2, v0, Lcom/android/server/wifi/HalDeviceManager$Mutable;->value:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v36

    :cond_9
    invoke-interface/range {v36 .. v36}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface/range {v36 .. v36}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object/from16 v0, v31

    iget-object v2, v0, Lcom/android/server/wifi/HalDeviceManager$Mutable;->value:Ljava/lang/Object;

    move-object v0, v2

    check-cast v0, Landroid/hardware/wifi/V1_0/IWifiChip;

    move-object v8, v0

    new-instance v2, Lcom/android/server/wifi/-$Lambda$zRsSIzbfvkJSErD1TWUPvfb3F7k$22;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/wifi/-$Lambda$zRsSIzbfvkJSErD1TWUPvfb3F7k$22;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v8, v5, v2}, Landroid/hardware/wifi/V1_0/IWifiChip;->getStaIface(Ljava/lang/String;Landroid/hardware/wifi/V1_0/IWifiChip$getStaIfaceCallback;)V

    iget-boolean v2, v4, Landroid/util/MutableBoolean;->value:Z
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-nez v2, :cond_9

    const/4 v2, 0x0

    monitor-exit v38

    return-object v2

    :cond_a
    const/4 v2, 0x0

    :try_start_8
    iput v2, v7, Landroid/util/MutableInt;->value:I

    move-object/from16 v0, v31

    iget-object v2, v0, Lcom/android/server/wifi/HalDeviceManager$Mutable;->value:Ljava/lang/Object;

    check-cast v2, Landroid/hardware/wifi/V1_0/IWifiChip;

    new-instance v3, Lcom/android/server/wifi/-$Lambda$zRsSIzbfvkJSErD1TWUPvfb3F7k$12;

    move-object/from16 v0, v37

    invoke-direct {v3, v4, v0}, Lcom/android/server/wifi/-$Lambda$zRsSIzbfvkJSErD1TWUPvfb3F7k$12;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v2, v3}, Landroid/hardware/wifi/V1_0/IWifiChip;->getApIfaceNames(Landroid/hardware/wifi/V1_0/IWifiChip$getApIfaceNamesCallback;)V

    iget-boolean v2, v4, Landroid/util/MutableBoolean;->value:Z
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-nez v2, :cond_b

    const/4 v2, 0x0

    monitor-exit v38

    return-object v2

    :cond_b
    :try_start_9
    move-object/from16 v0, v37

    iget-object v2, v0, Lcom/android/server/wifi/HalDeviceManager$Mutable;->value:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v12, v2, [Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;

    move-object/from16 v0, v37

    iget-object v2, v0, Lcom/android/server/wifi/HalDeviceManager$Mutable;->value:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v36

    :cond_c
    invoke-interface/range {v36 .. v36}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface/range {v36 .. v36}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object/from16 v0, v31

    iget-object v2, v0, Lcom/android/server/wifi/HalDeviceManager$Mutable;->value:Ljava/lang/Object;

    check-cast v2, Landroid/hardware/wifi/V1_0/IWifiChip;

    new-instance v8, Lcom/android/server/wifi/-$Lambda$zRsSIzbfvkJSErD1TWUPvfb3F7k$19;

    move-object/from16 v9, p0

    move-object v10, v4

    move-object v11, v5

    move-object v13, v7

    invoke-direct/range {v8 .. v13}, Lcom/android/server/wifi/-$Lambda$zRsSIzbfvkJSErD1TWUPvfb3F7k$19;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v2, v5, v8}, Landroid/hardware/wifi/V1_0/IWifiChip;->getApIface(Ljava/lang/String;Landroid/hardware/wifi/V1_0/IWifiChip$getApIfaceCallback;)V

    iget-boolean v2, v4, Landroid/util/MutableBoolean;->value:Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    if-nez v2, :cond_c

    const/4 v2, 0x0

    monitor-exit v38

    return-object v2

    :cond_d
    const/4 v2, 0x0

    :try_start_a
    iput v2, v7, Landroid/util/MutableInt;->value:I

    move-object/from16 v0, v31

    iget-object v2, v0, Lcom/android/server/wifi/HalDeviceManager$Mutable;->value:Ljava/lang/Object;

    check-cast v2, Landroid/hardware/wifi/V1_0/IWifiChip;

    new-instance v3, Lcom/android/server/wifi/-$Lambda$zRsSIzbfvkJSErD1TWUPvfb3F7k$16;

    move-object/from16 v0, v37

    invoke-direct {v3, v4, v0}, Lcom/android/server/wifi/-$Lambda$zRsSIzbfvkJSErD1TWUPvfb3F7k$16;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v2, v3}, Landroid/hardware/wifi/V1_0/IWifiChip;->getP2pIfaceNames(Landroid/hardware/wifi/V1_0/IWifiChip$getP2pIfaceNamesCallback;)V

    iget-boolean v2, v4, Landroid/util/MutableBoolean;->value:Z
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    if-nez v2, :cond_e

    const/4 v2, 0x0

    monitor-exit v38

    return-object v2

    :cond_e
    :try_start_b
    move-object/from16 v0, v37

    iget-object v2, v0, Lcom/android/server/wifi/HalDeviceManager$Mutable;->value:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v0, v2, [Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v37

    iget-object v2, v0, Lcom/android/server/wifi/HalDeviceManager$Mutable;->value:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v36

    :cond_f
    invoke-interface/range {v36 .. v36}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-interface/range {v36 .. v36}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object/from16 v0, v31

    iget-object v2, v0, Lcom/android/server/wifi/HalDeviceManager$Mutable;->value:Ljava/lang/Object;

    check-cast v2, Landroid/hardware/wifi/V1_0/IWifiChip;

    new-instance v13, Lcom/android/server/wifi/-$Lambda$zRsSIzbfvkJSErD1TWUPvfb3F7k$21;

    move-object/from16 v14, p0

    move-object v15, v4

    move-object/from16 v16, v5

    move-object/from16 v18, v7

    invoke-direct/range {v13 .. v18}, Lcom/android/server/wifi/-$Lambda$zRsSIzbfvkJSErD1TWUPvfb3F7k$21;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v2, v5, v13}, Landroid/hardware/wifi/V1_0/IWifiChip;->getP2pIface(Ljava/lang/String;Landroid/hardware/wifi/V1_0/IWifiChip$getP2pIfaceCallback;)V

    iget-boolean v2, v4, Landroid/util/MutableBoolean;->value:Z
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    if-nez v2, :cond_f

    const/4 v2, 0x0

    monitor-exit v38

    return-object v2

    :cond_10
    const/4 v2, 0x0

    :try_start_c
    iput v2, v7, Landroid/util/MutableInt;->value:I

    move-object/from16 v0, v31

    iget-object v2, v0, Lcom/android/server/wifi/HalDeviceManager$Mutable;->value:Ljava/lang/Object;

    check-cast v2, Landroid/hardware/wifi/V1_0/IWifiChip;

    new-instance v3, Lcom/android/server/wifi/-$Lambda$zRsSIzbfvkJSErD1TWUPvfb3F7k$15;

    move-object/from16 v0, v37

    invoke-direct {v3, v4, v0}, Lcom/android/server/wifi/-$Lambda$zRsSIzbfvkJSErD1TWUPvfb3F7k$15;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v2, v3}, Landroid/hardware/wifi/V1_0/IWifiChip;->getNanIfaceNames(Landroid/hardware/wifi/V1_0/IWifiChip$getNanIfaceNamesCallback;)V

    iget-boolean v2, v4, Landroid/util/MutableBoolean;->value:Z
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    if-nez v2, :cond_11

    const/4 v2, 0x0

    monitor-exit v38

    return-object v2

    :cond_11
    :try_start_d
    move-object/from16 v0, v37

    iget-object v2, v0, Lcom/android/server/wifi/HalDeviceManager$Mutable;->value:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v0, v2, [Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v37

    iget-object v2, v0, Lcom/android/server/wifi/HalDeviceManager$Mutable;->value:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v36

    :cond_12
    invoke-interface/range {v36 .. v36}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-interface/range {v36 .. v36}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object/from16 v0, v31

    iget-object v2, v0, Lcom/android/server/wifi/HalDeviceManager$Mutable;->value:Ljava/lang/Object;

    check-cast v2, Landroid/hardware/wifi/V1_0/IWifiChip;

    new-instance v18, Lcom/android/server/wifi/-$Lambda$zRsSIzbfvkJSErD1TWUPvfb3F7k$20;

    move-object/from16 v19, p0

    move-object/from16 v20, v4

    move-object/from16 v21, v5

    move-object/from16 v23, v7

    invoke-direct/range {v18 .. v23}, Lcom/android/server/wifi/-$Lambda$zRsSIzbfvkJSErD1TWUPvfb3F7k$20;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v0, v18

    invoke-interface {v2, v5, v0}, Landroid/hardware/wifi/V1_0/IWifiChip;->getNanIface(Ljava/lang/String;Landroid/hardware/wifi/V1_0/IWifiChip$getNanIfaceCallback;)V

    iget-boolean v2, v4, Landroid/util/MutableBoolean;->value:Z
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    if-nez v2, :cond_12

    const/4 v2, 0x0

    monitor-exit v38

    return-object v2

    :cond_13
    :try_start_e
    new-instance v28, Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;

    const/4 v2, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;-><init>(Lcom/android/server/wifi/HalDeviceManager;Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;)V

    add-int/lit8 v29, v30, 0x1

    aput-object v28, v32, v30

    move-object/from16 v0, v31

    iget-object v2, v0, Lcom/android/server/wifi/HalDeviceManager$Mutable;->value:Ljava/lang/Object;

    check-cast v2, Landroid/hardware/wifi/V1_0/IWifiChip;

    move-object/from16 v0, v28

    iput-object v2, v0, Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;->chip:Landroid/hardware/wifi/V1_0/IWifiChip;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object/from16 v0, v28

    iput v2, v0, Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;->chipId:I

    move-object/from16 v0, v24

    iget-object v2, v0, Lcom/android/server/wifi/HalDeviceManager$Mutable;->value:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    move-object/from16 v0, v28

    iput-object v2, v0, Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;->availableModes:Ljava/util/ArrayList;

    move-object/from16 v0, v34

    iget-boolean v2, v0, Landroid/util/MutableBoolean;->value:Z

    move-object/from16 v0, v28

    iput-boolean v2, v0, Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;->currentModeIdValid:Z

    move-object/from16 v0, v33

    iget v2, v0, Landroid/util/MutableInt;->value:I

    move-object/from16 v0, v28

    iput v2, v0, Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;->currentModeId:I

    move-object/from16 v0, v28

    iget-object v2, v0, Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;->ifaces:[[Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;

    const/4 v3, 0x0

    aput-object v6, v2, v3

    move-object/from16 v0, v28

    iget-object v2, v0, Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;->ifaces:[[Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;

    const/4 v3, 0x1

    aput-object v12, v2, v3

    move-object/from16 v0, v28

    iget-object v2, v0, Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;->ifaces:[[Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;

    const/4 v3, 0x2

    aput-object v17, v2, v3

    move-object/from16 v0, v28

    iget-object v2, v0, Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;->ifaces:[[Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;

    const/4 v3, 0x3

    aput-object v22, v2, v3
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_e} :catch_0
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    move/from16 v30, v29

    goto/16 :goto_0

    :cond_14
    monitor-exit v38

    return-object v32

    :catch_0
    move-exception v35

    :try_start_f
    const-string/jumbo v2, "HalDeviceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getAllChipInfoAndValidateCache exception: "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v35

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    monitor-exit v38

    const/4 v2, 0x0

    return-object v2

    :catchall_0
    move-exception v2

    monitor-exit v38

    throw v2
.end method

.method public static getName(Landroid/hardware/wifi/V1_0/IWifiIface;)Ljava/lang/String;
    .locals 5

    if-nez p0, :cond_0

    const-string/jumbo v2, "<null>"

    return-object v2

    :cond_0
    new-instance v1, Lcom/android/server/wifi/HalDeviceManager$Mutable;

    invoke-direct {v1}, Lcom/android/server/wifi/HalDeviceManager$Mutable;-><init>()V

    :try_start_0
    new-instance v2, Lcom/android/server/wifi/-$Lambda$zRsSIzbfvkJSErD1TWUPvfb3F7k$1;

    invoke-direct {v2, v1}, Lcom/android/server/wifi/-$Lambda$zRsSIzbfvkJSErD1TWUPvfb3F7k$1;-><init>(Ljava/lang/Object;)V

    invoke-interface {p0, v2}, Landroid/hardware/wifi/V1_0/IWifiIface;->getName(Landroid/hardware/wifi/V1_0/IWifiIface$getNameCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v2, v1, Lcom/android/server/wifi/HalDeviceManager$Mutable;->value:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    return-object v2

    :catch_0
    move-exception v0

    const-string/jumbo v2, "HalDeviceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Exception on getName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static getType(Landroid/hardware/wifi/V1_0/IWifiIface;)I
    .locals 5

    new-instance v1, Landroid/util/MutableInt;

    const/4 v2, -0x1

    invoke-direct {v1, v2}, Landroid/util/MutableInt;-><init>(I)V

    :try_start_0
    new-instance v2, Lcom/android/server/wifi/-$Lambda$zRsSIzbfvkJSErD1TWUPvfb3F7k$2;

    invoke-direct {v2, v1}, Lcom/android/server/wifi/-$Lambda$zRsSIzbfvkJSErD1TWUPvfb3F7k$2;-><init>(Ljava/lang/Object;)V

    invoke-interface {p0, v2}, Landroid/hardware/wifi/V1_0/IWifiIface;->getType(Landroid/hardware/wifi/V1_0/IWifiIface$getTypeCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget v2, v1, Landroid/util/MutableInt;->value:I

    return v2

    :catch_0
    move-exception v0

    const-string/jumbo v2, "HalDeviceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Exception on getType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private initIServiceManagerIfNecessary()V
    .locals 6

    sget-boolean v1, Lcom/android/server/wifi/HalDeviceManager;->DBG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "HalDeviceManager"

    const-string/jumbo v2, "initIServiceManagerIfNecessary"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v2, p0, Lcom/android/server/wifi/HalDeviceManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/HalDeviceManager;->mServiceManager:Landroid/hidl/manager/V1_0/IServiceManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    monitor-exit v2

    return-void

    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/wifi/HalDeviceManager;->getServiceManagerMockable()Landroid/hidl/manager/V1_0/IServiceManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wifi/HalDeviceManager;->mServiceManager:Landroid/hidl/manager/V1_0/IServiceManager;

    iget-object v1, p0, Lcom/android/server/wifi/HalDeviceManager;->mServiceManager:Landroid/hidl/manager/V1_0/IServiceManager;

    if-nez v1, :cond_3

    const-string/jumbo v1, "HalDeviceManager"

    const-string/jumbo v3, "Failed to get IServiceManager instance"

    invoke-static {v1, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    :goto_0
    monitor-exit v2

    return-void

    :cond_3
    :try_start_2
    iget-object v1, p0, Lcom/android/server/wifi/HalDeviceManager;->mServiceManager:Landroid/hidl/manager/V1_0/IServiceManager;

    iget-object v3, p0, Lcom/android/server/wifi/HalDeviceManager;->mServiceManagerDeathRecipient:Landroid/os/IHwBinder$DeathRecipient;

    const-wide/16 v4, 0x0

    invoke-interface {v1, v3, v4, v5}, Landroid/hidl/manager/V1_0/IServiceManager;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    move-result v1

    if-nez v1, :cond_4

    const-string/jumbo v1, "HalDeviceManager"

    const-string/jumbo v3, "Error on linkToDeath on IServiceManager"

    invoke-static {v1, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wifi/HalDeviceManager;->mServiceManager:Landroid/hidl/manager/V1_0/IServiceManager;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v2

    return-void

    :cond_4
    :try_start_3
    iget-object v1, p0, Lcom/android/server/wifi/HalDeviceManager;->mServiceManager:Landroid/hidl/manager/V1_0/IServiceManager;

    const-string/jumbo v3, "android.hardware.wifi@1.0::IWifi"

    const-string/jumbo v4, ""

    iget-object v5, p0, Lcom/android/server/wifi/HalDeviceManager;->mServiceNotificationCallback:Landroid/hidl/manager/V1_0/IServiceNotification;

    invoke-interface {v1, v3, v4, v5}, Landroid/hidl/manager/V1_0/IServiceManager;->registerForNotifications(Ljava/lang/String;Ljava/lang/String;Landroid/hidl/manager/V1_0/IServiceNotification;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "HalDeviceManager"

    const-string/jumbo v3, "Failed to register a listener for IWifi service"

    invoke-static {v1, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wifi/HalDeviceManager;->mServiceManager:Landroid/hidl/manager/V1_0/IServiceManager;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_4
    const-string/jumbo v1, "HalDeviceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Exception while operating on IServiceManager: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wifi/HalDeviceManager;->mServiceManager:Landroid/hidl/manager/V1_0/IServiceManager;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private initIWifiChipDebugListeners()V
    .locals 7

    sget-boolean v3, Lcom/android/server/wifi/HalDeviceManager;->DBG:Z

    if-eqz v3, :cond_0

    const-string/jumbo v3, "HalDeviceManager"

    const-string/jumbo v4, "initIWifiChipDebugListeners"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-boolean v3, Lcom/android/server/wifi/HalDeviceManager;->DBG:Z

    if-nez v3, :cond_1

    return-void

    :cond_1
    iget-object v4, p0, Lcom/android/server/wifi/HalDeviceManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    new-instance v2, Landroid/util/MutableBoolean;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/util/MutableBoolean;-><init>(Z)V

    new-instance v0, Lcom/android/server/wifi/HalDeviceManager$Mutable;

    invoke-direct {v0}, Lcom/android/server/wifi/HalDeviceManager$Mutable;-><init>()V

    iget-object v3, p0, Lcom/android/server/wifi/HalDeviceManager;->mWifi:Landroid/hardware/wifi/V1_0/IWifi;

    new-instance v5, Lcom/android/server/wifi/-$Lambda$zRsSIzbfvkJSErD1TWUPvfb3F7k$7;

    invoke-direct {v5, v2, v0}, Lcom/android/server/wifi/-$Lambda$zRsSIzbfvkJSErD1TWUPvfb3F7k$7;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v3, v5}, Landroid/hardware/wifi/V1_0/IWifi;->getChipIds(Landroid/hardware/wifi/V1_0/IWifi$getChipIdsCallback;)V

    iget-boolean v3, v2, Landroid/util/MutableBoolean;->value:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_2

    monitor-exit v4

    return-void

    :cond_2
    :try_start_1
    sget-boolean v3, Lcom/android/server/wifi/HalDeviceManager;->DBG:Z

    if-eqz v3, :cond_3

    const-string/jumbo v3, "HalDeviceManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getChipIds="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/android/server/wifi/HalDeviceManager$Mutable;->value:Ljava/lang/Object;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v3, v0, Lcom/android/server/wifi/HalDeviceManager$Mutable;->value:Ljava/lang/Object;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_4

    const-string/jumbo v3, "HalDeviceManager"

    const-string/jumbo v5, "Should have at least 1 chip!"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v4

    return-void

    :catch_0
    move-exception v1

    :try_start_2
    const-string/jumbo v3, "HalDeviceManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "initIWifiChipDebugListeners: exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v4

    return-void

    :cond_4
    monitor-exit v4

    return-void

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private initIWifiIfNecessary()V
    .locals 8

    sget-boolean v2, Lcom/android/server/wifi/HalDeviceManager;->DBG:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "HalDeviceManager"

    const-string/jumbo v3, "initIWifiIfNecessary"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v3, p0, Lcom/android/server/wifi/HalDeviceManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/server/wifi/HalDeviceManager;->mWifi:Landroid/hardware/wifi/V1_0/IWifi;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    monitor-exit v3

    return-void

    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/wifi/HalDeviceManager;->getWifiServiceMockable()Landroid/hardware/wifi/V1_0/IWifi;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wifi/HalDeviceManager;->mWifi:Landroid/hardware/wifi/V1_0/IWifi;

    iget-object v2, p0, Lcom/android/server/wifi/HalDeviceManager;->mWifi:Landroid/hardware/wifi/V1_0/IWifi;

    if-nez v2, :cond_2

    const-string/jumbo v2, "HalDeviceManager"

    const-string/jumbo v4, "IWifi not (yet) available - but have a listener for it ..."

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v3

    return-void

    :cond_2
    :try_start_2
    iget-object v2, p0, Lcom/android/server/wifi/HalDeviceManager;->mWifi:Landroid/hardware/wifi/V1_0/IWifi;

    iget-object v4, p0, Lcom/android/server/wifi/HalDeviceManager;->mIWifiDeathRecipient:Landroid/os/IHwBinder$DeathRecipient;

    const-wide/16 v6, 0x0

    invoke-interface {v2, v4, v6, v7}, Landroid/hardware/wifi/V1_0/IWifi;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    move-result v2

    if-nez v2, :cond_3

    const-string/jumbo v2, "HalDeviceManager"

    const-string/jumbo v4, "Error on linkToDeath on IWifi - will retry later"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v3

    return-void

    :cond_3
    :try_start_3
    iget-object v2, p0, Lcom/android/server/wifi/HalDeviceManager;->mWifi:Landroid/hardware/wifi/V1_0/IWifi;

    iget-object v4, p0, Lcom/android/server/wifi/HalDeviceManager;->mWifiEventCallback:Lcom/android/server/wifi/HalDeviceManager$WifiEventCallback;

    invoke-interface {v2, v4}, Landroid/hardware/wifi/V1_0/IWifi;->registerEventCallback(Landroid/hardware/wifi/V1_0/IWifiEventCallback;)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v1

    iget v2, v1, Landroid/hardware/wifi/V1_0/WifiStatus;->code:I

    if-eqz v2, :cond_4

    const-string/jumbo v2, "HalDeviceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "IWifi.registerEventCallback failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Lcom/android/server/wifi/HalDeviceManager;->statusString(Landroid/hardware/wifi/V1_0/WifiStatus;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/wifi/HalDeviceManager;->mWifi:Landroid/hardware/wifi/V1_0/IWifi;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v3

    return-void

    :cond_4
    :try_start_4
    invoke-direct {p0}, Lcom/android/server/wifi/HalDeviceManager;->managerStatusListenerDispatch()V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_0
    monitor-exit v3

    return-void

    :catch_0
    move-exception v0

    :try_start_5
    const-string/jumbo v2, "HalDeviceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Exception while operating on IWifi: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private initializeInternal()V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wifi/HalDeviceManager;->initIServiceManagerIfNecessary()V

    return-void
.end method

.method private isItPossibleToCreateIface([Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;I)Z
    .locals 13

    const/4 v8, 0x0

    sget-boolean v7, Lcom/android/server/wifi/HalDeviceManager;->DBG:Z

    if-eqz v7, :cond_0

    const-string/jumbo v7, "HalDeviceManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "isItPossibleToCreateIface: chipInfos="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {p1}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", ifaceType="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    array-length v10, p1

    move v9, v8

    :goto_0
    if-ge v9, v10, :cond_6

    aget-object v2, p1, v9

    iget-object v7, v2, Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;->availableModes:Ljava/util/ArrayList;

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/wifi/V1_0/IWifiChip$ChipMode;

    iget-object v7, v3, Landroid/hardware/wifi/V1_0/IWifiChip$ChipMode;->availableCombinations:Ljava/util/ArrayList;

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/wifi/V1_0/IWifiChip$ChipIfaceCombination;

    invoke-direct {p0, v0}, Lcom/android/server/wifi/HalDeviceManager;->expandIfaceCombos(Landroid/hardware/wifi/V1_0/IWifiChip$ChipIfaceCombination;)[[I

    move-result-object v6

    sget-boolean v7, Lcom/android/server/wifi/HalDeviceManager;->DBG:Z

    if-eqz v7, :cond_3

    const-string/jumbo v7, "HalDeviceManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " expands to "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v6}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v7, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    array-length v11, v6

    move v7, v8

    :goto_1
    if-ge v7, v11, :cond_2

    aget-object v5, v6, v7

    invoke-direct {p0, v2, v3, v5, p2}, Lcom/android/server/wifi/HalDeviceManager;->canIfaceComboSupportRequest(Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;Landroid/hardware/wifi/V1_0/IWifiChip$ChipMode;[II)Lcom/android/server/wifi/HalDeviceManager$IfaceCreationData;

    move-result-object v12

    if-eqz v12, :cond_4

    const/4 v7, 0x1

    return v7

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_5
    add-int/lit8 v7, v9, 0x1

    move v9, v7

    goto :goto_0

    :cond_6
    return v8
.end method

.method private isSupportedInternal()Z
    .locals 6

    const/4 v1, 0x0

    sget-boolean v2, Lcom/android/server/wifi/HalDeviceManager;->DBG:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "HalDeviceManager"

    const-string/jumbo v3, "isSupportedInternal"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v2, p0, Lcom/android/server/wifi/HalDeviceManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/android/server/wifi/HalDeviceManager;->mServiceManager:Landroid/hidl/manager/V1_0/IServiceManager;

    if-nez v3, :cond_1

    const-string/jumbo v3, "HalDeviceManager"

    const-string/jumbo v4, "isSupported: called but mServiceManager is null!?"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return v1

    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wifi/HalDeviceManager;->mServiceManager:Landroid/hidl/manager/V1_0/IServiceManager;

    const-string/jumbo v4, "android.hardware.wifi@1.0::IWifi"

    const-string/jumbo v5, "default"

    invoke-interface {v3, v4, v5}, Landroid/hidl/manager/V1_0/IServiceManager;->getTransport(Ljava/lang/String;Ljava/lang/String;)B
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    if-eqz v3, :cond_2

    const/4 v1, 0x1

    :cond_2
    monitor-exit v2

    return v1

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v3, "HalDeviceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Exception while operating on IServiceManager: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v2

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private isWifiStarted()Z
    .locals 6

    const/4 v5, 0x0

    sget-boolean v1, Lcom/android/server/wifi/HalDeviceManager;->DBG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "HalDeviceManager"

    const-string/jumbo v2, "isWifiStart"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v2, p0, Lcom/android/server/wifi/HalDeviceManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/HalDeviceManager;->mWifi:Landroid/hardware/wifi/V1_0/IWifi;

    if-nez v1, :cond_1

    const-string/jumbo v1, "HalDeviceManager"

    const-string/jumbo v3, "isWifiStarted called but mWifi is null!?"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return v5

    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/server/wifi/HalDeviceManager;->mWifi:Landroid/hardware/wifi/V1_0/IWifi;

    invoke-interface {v1}, Landroid/hardware/wifi/V1_0/IWifi;->isStarted()Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    monitor-exit v2

    return v1

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v1, "HalDeviceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isWifiStarted exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v2

    return v5

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method static synthetic lambda$-com_android_server_wifi_HalDeviceManager_13390(Lcom/android/server/wifi/HalDeviceManager$Mutable;Landroid/hardware/wifi/V1_0/WifiStatus;Ljava/lang/String;)V
    .locals 3

    iget v0, p1, Landroid/hardware/wifi/V1_0/WifiStatus;->code:I

    if-nez v0, :cond_0

    iput-object p2, p0, Lcom/android/server/wifi/HalDeviceManager$Mutable;->value:Ljava/lang/Object;

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "HalDeviceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Error on getName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/android/server/wifi/HalDeviceManager;->statusString(Landroid/hardware/wifi/V1_0/WifiStatus;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic lambda$-com_android_server_wifi_HalDeviceManager_15866(Lcom/android/server/wifi/HalDeviceManager$Mutable;Landroid/hardware/wifi/V1_0/WifiStatus;Landroid/hardware/wifi/V1_0/IWifiRttController;)V
    .locals 3

    iget v0, p1, Landroid/hardware/wifi/V1_0/WifiStatus;->code:I

    if-nez v0, :cond_0

    iput-object p2, p0, Lcom/android/server/wifi/HalDeviceManager$Mutable;->value:Ljava/lang/Object;

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "HalDeviceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "IWifiChip.createRttController failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/android/server/wifi/HalDeviceManager;->statusString(Landroid/hardware/wifi/V1_0/WifiStatus;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic lambda$-com_android_server_wifi_HalDeviceManager_26975(Landroid/util/MutableBoolean;Lcom/android/server/wifi/HalDeviceManager$Mutable;Landroid/hardware/wifi/V1_0/WifiStatus;Ljava/util/ArrayList;)V
    .locals 3

    const/4 v0, 0x0

    iget v1, p2, Landroid/hardware/wifi/V1_0/WifiStatus;->code:I

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Landroid/util/MutableBoolean;->value:Z

    iget-boolean v0, p0, Landroid/util/MutableBoolean;->value:Z

    if-eqz v0, :cond_1

    iput-object p3, p1, Lcom/android/server/wifi/HalDeviceManager$Mutable;->value:Ljava/lang/Object;

    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "HalDeviceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getChipIds failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Lcom/android/server/wifi/HalDeviceManager;->statusString(Landroid/hardware/wifi/V1_0/WifiStatus;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic lambda$-com_android_server_wifi_HalDeviceManager_32159(Landroid/util/MutableBoolean;Lcom/android/server/wifi/HalDeviceManager$Mutable;Landroid/hardware/wifi/V1_0/WifiStatus;Ljava/util/ArrayList;)V
    .locals 3

    const/4 v0, 0x0

    iget v1, p2, Landroid/hardware/wifi/V1_0/WifiStatus;->code:I

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Landroid/util/MutableBoolean;->value:Z

    iget-boolean v0, p0, Landroid/util/MutableBoolean;->value:Z

    if-eqz v0, :cond_1

    iput-object p3, p1, Lcom/android/server/wifi/HalDeviceManager$Mutable;->value:Ljava/lang/Object;

    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "HalDeviceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getChipIds failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Lcom/android/server/wifi/HalDeviceManager;->statusString(Landroid/hardware/wifi/V1_0/WifiStatus;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic lambda$-com_android_server_wifi_HalDeviceManager_33158(Landroid/util/MutableBoolean;Lcom/android/server/wifi/HalDeviceManager$Mutable;Landroid/hardware/wifi/V1_0/WifiStatus;Landroid/hardware/wifi/V1_0/IWifiChip;)V
    .locals 3

    const/4 v0, 0x0

    iget v1, p2, Landroid/hardware/wifi/V1_0/WifiStatus;->code:I

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Landroid/util/MutableBoolean;->value:Z

    iget-boolean v0, p0, Landroid/util/MutableBoolean;->value:Z

    if-eqz v0, :cond_1

    iput-object p3, p1, Lcom/android/server/wifi/HalDeviceManager$Mutable;->value:Ljava/lang/Object;

    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "HalDeviceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getChip failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Lcom/android/server/wifi/HalDeviceManager;->statusString(Landroid/hardware/wifi/V1_0/WifiStatus;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic lambda$-com_android_server_wifi_HalDeviceManager_33824(Landroid/util/MutableBoolean;Lcom/android/server/wifi/HalDeviceManager$Mutable;Landroid/hardware/wifi/V1_0/WifiStatus;Ljava/util/ArrayList;)V
    .locals 3

    const/4 v0, 0x0

    iget v1, p2, Landroid/hardware/wifi/V1_0/WifiStatus;->code:I

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Landroid/util/MutableBoolean;->value:Z

    iget-boolean v0, p0, Landroid/util/MutableBoolean;->value:Z

    if-eqz v0, :cond_1

    iput-object p3, p1, Lcom/android/server/wifi/HalDeviceManager$Mutable;->value:Ljava/lang/Object;

    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "HalDeviceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getAvailableModes failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Lcom/android/server/wifi/HalDeviceManager;->statusString(Landroid/hardware/wifi/V1_0/WifiStatus;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic lambda$-com_android_server_wifi_HalDeviceManager_34605(Landroid/util/MutableBoolean;Landroid/util/MutableBoolean;Landroid/util/MutableInt;Landroid/hardware/wifi/V1_0/WifiStatus;I)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget v2, p3, Landroid/hardware/wifi/V1_0/WifiStatus;->code:I

    if-nez v2, :cond_0

    move v0, v1

    :cond_0
    iput-boolean v0, p0, Landroid/util/MutableBoolean;->value:Z

    iget-boolean v0, p0, Landroid/util/MutableBoolean;->value:Z

    if-eqz v0, :cond_1

    iput-boolean v1, p1, Landroid/util/MutableBoolean;->value:Z

    iput p4, p2, Landroid/util/MutableInt;->value:I

    :goto_0
    return-void

    :cond_1
    iget v0, p3, Landroid/hardware/wifi/V1_0/WifiStatus;->code:I

    const/4 v2, 0x5

    if-ne v0, v2, :cond_2

    iput-boolean v1, p0, Landroid/util/MutableBoolean;->value:Z

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "HalDeviceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getMode failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p3}, Lcom/android/server/wifi/HalDeviceManager;->statusString(Landroid/hardware/wifi/V1_0/WifiStatus;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic lambda$-com_android_server_wifi_HalDeviceManager_35543(Landroid/util/MutableBoolean;Lcom/android/server/wifi/HalDeviceManager$Mutable;Landroid/hardware/wifi/V1_0/WifiStatus;Ljava/util/ArrayList;)V
    .locals 3

    const/4 v0, 0x0

    iget v1, p2, Landroid/hardware/wifi/V1_0/WifiStatus;->code:I

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Landroid/util/MutableBoolean;->value:Z

    iget-boolean v0, p0, Landroid/util/MutableBoolean;->value:Z

    if-eqz v0, :cond_1

    iput-object p3, p1, Lcom/android/server/wifi/HalDeviceManager$Mutable;->value:Ljava/lang/Object;

    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "HalDeviceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getStaIfaceNames failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Lcom/android/server/wifi/HalDeviceManager;->statusString(Landroid/hardware/wifi/V1_0/WifiStatus;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic lambda$-com_android_server_wifi_HalDeviceManager_37348(Landroid/util/MutableBoolean;Lcom/android/server/wifi/HalDeviceManager$Mutable;Landroid/hardware/wifi/V1_0/WifiStatus;Ljava/util/ArrayList;)V
    .locals 3

    const/4 v0, 0x0

    iget v1, p2, Landroid/hardware/wifi/V1_0/WifiStatus;->code:I

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Landroid/util/MutableBoolean;->value:Z

    iget-boolean v0, p0, Landroid/util/MutableBoolean;->value:Z

    if-eqz v0, :cond_1

    iput-object p3, p1, Lcom/android/server/wifi/HalDeviceManager$Mutable;->value:Ljava/lang/Object;

    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "HalDeviceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getApIfaceNames failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Lcom/android/server/wifi/HalDeviceManager;->statusString(Landroid/hardware/wifi/V1_0/WifiStatus;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic lambda$-com_android_server_wifi_HalDeviceManager_39148(Landroid/util/MutableBoolean;Lcom/android/server/wifi/HalDeviceManager$Mutable;Landroid/hardware/wifi/V1_0/WifiStatus;Ljava/util/ArrayList;)V
    .locals 3

    const/4 v0, 0x0

    iget v1, p2, Landroid/hardware/wifi/V1_0/WifiStatus;->code:I

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Landroid/util/MutableBoolean;->value:Z

    iget-boolean v0, p0, Landroid/util/MutableBoolean;->value:Z

    if-eqz v0, :cond_1

    iput-object p3, p1, Lcom/android/server/wifi/HalDeviceManager$Mutable;->value:Ljava/lang/Object;

    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "HalDeviceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getP2pIfaceNames failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Lcom/android/server/wifi/HalDeviceManager;->statusString(Landroid/hardware/wifi/V1_0/WifiStatus;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic lambda$-com_android_server_wifi_HalDeviceManager_40954(Landroid/util/MutableBoolean;Lcom/android/server/wifi/HalDeviceManager$Mutable;Landroid/hardware/wifi/V1_0/WifiStatus;Ljava/util/ArrayList;)V
    .locals 3

    const/4 v0, 0x0

    iget v1, p2, Landroid/hardware/wifi/V1_0/WifiStatus;->code:I

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Landroid/util/MutableBoolean;->value:Z

    iget-boolean v0, p0, Landroid/util/MutableBoolean;->value:Z

    if-eqz v0, :cond_1

    iput-object p3, p1, Lcom/android/server/wifi/HalDeviceManager$Mutable;->value:Ljava/lang/Object;

    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "HalDeviceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getNanIfaceNames failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Lcom/android/server/wifi/HalDeviceManager;->statusString(Landroid/hardware/wifi/V1_0/WifiStatus;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic lambda$-com_android_server_wifi_HalDeviceManager_51009(Landroid/util/MutableInt;Landroid/util/MutableBoolean;Landroid/hardware/wifi/V1_0/WifiStatus;I)V
    .locals 4

    const/4 v3, 0x0

    iget v0, p2, Landroid/hardware/wifi/V1_0/WifiStatus;->code:I

    if-nez v0, :cond_0

    iput p3, p0, Landroid/util/MutableInt;->value:I

    const/4 v0, 0x1

    iput-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "HalDeviceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getSupportedIfaceTypesInternal: IWifiChip.getId() error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Lcom/android/server/wifi/HalDeviceManager;->statusString(Landroid/hardware/wifi/V1_0/WifiStatus;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v3, p1, Landroid/util/MutableBoolean;->value:Z

    goto :goto_0
.end method

.method static synthetic lambda$-com_android_server_wifi_HalDeviceManager_68859(Lcom/android/server/wifi/HalDeviceManager$Mutable;Lcom/android/server/wifi/HalDeviceManager$Mutable;Landroid/hardware/wifi/V1_0/WifiStatus;Landroid/hardware/wifi/V1_0/IWifiStaIface;)V
    .locals 0

    iput-object p2, p0, Lcom/android/server/wifi/HalDeviceManager$Mutable;->value:Ljava/lang/Object;

    iput-object p3, p1, Lcom/android/server/wifi/HalDeviceManager$Mutable;->value:Ljava/lang/Object;

    return-void
.end method

.method static synthetic lambda$-com_android_server_wifi_HalDeviceManager_69238(Lcom/android/server/wifi/HalDeviceManager$Mutable;Lcom/android/server/wifi/HalDeviceManager$Mutable;Landroid/hardware/wifi/V1_0/WifiStatus;Landroid/hardware/wifi/V1_0/IWifiApIface;)V
    .locals 0

    iput-object p2, p0, Lcom/android/server/wifi/HalDeviceManager$Mutable;->value:Ljava/lang/Object;

    iput-object p3, p1, Lcom/android/server/wifi/HalDeviceManager$Mutable;->value:Ljava/lang/Object;

    return-void
.end method

.method static synthetic lambda$-com_android_server_wifi_HalDeviceManager_69618(Lcom/android/server/wifi/HalDeviceManager$Mutable;Lcom/android/server/wifi/HalDeviceManager$Mutable;Landroid/hardware/wifi/V1_0/WifiStatus;Landroid/hardware/wifi/V1_0/IWifiP2pIface;)V
    .locals 0

    iput-object p2, p0, Lcom/android/server/wifi/HalDeviceManager$Mutable;->value:Ljava/lang/Object;

    iput-object p3, p1, Lcom/android/server/wifi/HalDeviceManager$Mutable;->value:Ljava/lang/Object;

    return-void
.end method

.method static synthetic lambda$-com_android_server_wifi_HalDeviceManager_69999(Lcom/android/server/wifi/HalDeviceManager$Mutable;Lcom/android/server/wifi/HalDeviceManager$Mutable;Landroid/hardware/wifi/V1_0/WifiStatus;Landroid/hardware/wifi/V1_0/IWifiNanIface;)V
    .locals 0

    iput-object p2, p0, Lcom/android/server/wifi/HalDeviceManager$Mutable;->value:Ljava/lang/Object;

    iput-object p3, p1, Lcom/android/server/wifi/HalDeviceManager$Mutable;->value:Ljava/lang/Object;

    return-void
.end method

.method static synthetic lambda$-com_android_server_wifi_HalDeviceManager_79452(Landroid/util/MutableInt;Landroid/hardware/wifi/V1_0/WifiStatus;I)V
    .locals 3

    iget v0, p1, Landroid/hardware/wifi/V1_0/WifiStatus;->code:I

    if-nez v0, :cond_0

    iput p2, p0, Landroid/util/MutableInt;->value:I

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "HalDeviceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Error on getType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/android/server/wifi/HalDeviceManager;->statusString(Landroid/hardware/wifi/V1_0/WifiStatus;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private managerStatusListenerDispatch()V
    .locals 4

    iget-object v3, p0, Lcom/android/server/wifi/HalDeviceManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/server/wifi/HalDeviceManager;->mManagerStatusListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/HalDeviceManager$ManagerStatusListenerProxy;

    invoke-virtual {v0}, Lcom/android/server/wifi/HalDeviceManager$ManagerStatusListenerProxy;->trigger()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_0
    monitor-exit v3

    return-void
.end method

.method private removeIfaceInternal(Landroid/hardware/wifi/V1_0/IWifiIface;)Z
    .locals 10

    const/4 v9, 0x0

    sget-boolean v5, Lcom/android/server/wifi/HalDeviceManager;->DBG:Z

    if-eqz v5, :cond_0

    const-string/jumbo v5, "HalDeviceManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "removeIfaceInternal: iface(name)="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p1}, Lcom/android/server/wifi/HalDeviceManager;->getName(Landroid/hardware/wifi/V1_0/IWifiIface;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v6, p0, Lcom/android/server/wifi/HalDeviceManager;->mLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    iget-object v5, p0, Lcom/android/server/wifi/HalDeviceManager;->mWifi:Landroid/hardware/wifi/V1_0/IWifi;

    if-nez v5, :cond_1

    const-string/jumbo v5, "HalDeviceManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "removeIfaceInternal: null IWifi -- iface(name)="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p1}, Lcom/android/server/wifi/HalDeviceManager;->getName(Landroid/hardware/wifi/V1_0/IWifiIface;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v6

    return v9

    :cond_1
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/HalDeviceManager;->getChip(Landroid/hardware/wifi/V1_0/IWifiIface;)Landroid/hardware/wifi/V1_0/IWifiChip;

    move-result-object v0

    if-nez v0, :cond_2

    const-string/jumbo v5, "HalDeviceManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "removeIfaceInternal: null IWifiChip -- iface(name)="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p1}, Lcom/android/server/wifi/HalDeviceManager;->getName(Landroid/hardware/wifi/V1_0/IWifiIface;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v6

    return v9

    :cond_2
    :try_start_2
    invoke-static {p1}, Lcom/android/server/wifi/HalDeviceManager;->getName(Landroid/hardware/wifi/V1_0/IWifiIface;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    const-string/jumbo v5, "HalDeviceManager"

    const-string/jumbo v7, "removeIfaceInternal: can\'t get name"

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v6

    return v9

    :cond_3
    :try_start_3
    invoke-static {p1}, Lcom/android/server/wifi/HalDeviceManager;->getType(Landroid/hardware/wifi/V1_0/IWifiIface;)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_4

    const-string/jumbo v5, "HalDeviceManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "removeIfaceInternal: can\'t get type -- iface(name)="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p1}, Lcom/android/server/wifi/HalDeviceManager;->getName(Landroid/hardware/wifi/V1_0/IWifiIface;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v6

    return v9

    :cond_4
    const/4 v3, 0x0

    packed-switch v4, :pswitch_data_0

    :try_start_4
    const-string/jumbo v5, "HalDeviceManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "removeIfaceInternal: invalid type="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit v6

    return v9

    :pswitch_0
    :try_start_5
    invoke-interface {v0, v2}, Landroid/hardware/wifi/V1_0/IWifiChip;->removeStaIface(Ljava/lang/String;)Landroid/hardware/wifi/V1_0/WifiStatus;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v3

    :goto_0
    :try_start_6
    invoke-direct {p0, p1}, Lcom/android/server/wifi/HalDeviceManager;->dispatchDestroyedListeners(Landroid/hardware/wifi/V1_0/IWifiIface;)V

    if-eqz v3, :cond_5

    iget v5, v3, Landroid/hardware/wifi/V1_0/WifiStatus;->code:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-nez v5, :cond_5

    const/4 v5, 0x1

    monitor-exit v6

    return v5

    :pswitch_1
    :try_start_7
    invoke-interface {v0, v2}, Landroid/hardware/wifi/V1_0/IWifiChip;->removeApIface(Ljava/lang/String;)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v3

    goto :goto_0

    :pswitch_2
    invoke-interface {v0, v2}, Landroid/hardware/wifi/V1_0/IWifiChip;->removeP2pIface(Ljava/lang/String;)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v3

    goto :goto_0

    :pswitch_3
    invoke-interface {v0, v2}, Landroid/hardware/wifi/V1_0/IWifiChip;->removeNanIface(Ljava/lang/String;)Landroid/hardware/wifi/V1_0/WifiStatus;
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result-object v3

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_8
    const-string/jumbo v5, "HalDeviceManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "IWifiChip.removeXxxIface exception: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    :cond_5
    :try_start_9
    const-string/jumbo v5, "HalDeviceManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "IWifiChip.removeXxxIface failed: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v3}, Lcom/android/server/wifi/HalDeviceManager;->statusString(Landroid/hardware/wifi/V1_0/WifiStatus;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    monitor-exit v6

    return v9

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private startWifi()Z
    .locals 9

    const/4 v8, 0x0

    sget-boolean v4, Lcom/android/server/wifi/HalDeviceManager;->DBG:Z

    if-eqz v4, :cond_0

    const-string/jumbo v4, "HalDeviceManager"

    const-string/jumbo v5, "startWifi"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v5, p0, Lcom/android/server/wifi/HalDeviceManager;->mLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    iget-object v4, p0, Lcom/android/server/wifi/HalDeviceManager;->mWifi:Landroid/hardware/wifi/V1_0/IWifi;

    if-nez v4, :cond_1

    const-string/jumbo v4, "HalDeviceManager"

    const-string/jumbo v6, "startWifi called but mWifi is null!?"

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v5

    return v8

    :cond_1
    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x3

    if-gt v3, v4, :cond_5

    :try_start_1
    iget-object v4, p0, Lcom/android/server/wifi/HalDeviceManager;->mWifi:Landroid/hardware/wifi/V1_0/IWifi;

    invoke-interface {v4}, Landroid/hardware/wifi/V1_0/IWifi;->start()Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v2

    iget v4, v2, Landroid/hardware/wifi/V1_0/WifiStatus;->code:I

    if-nez v4, :cond_3

    invoke-direct {p0}, Lcom/android/server/wifi/HalDeviceManager;->initIWifiChipDebugListeners()V

    invoke-direct {p0}, Lcom/android/server/wifi/HalDeviceManager;->managerStatusListenerDispatch()V

    if-eqz v3, :cond_2

    const-string/jumbo v4, "HalDeviceManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "start IWifi succeeded after trying "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " times"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    const/4 v4, 0x1

    monitor-exit v5

    return v4

    :cond_3
    :try_start_2
    iget v4, v2, Landroid/hardware/wifi/V1_0/WifiStatus;->code:I

    const/4 v6, 0x5

    if-ne v4, v6, :cond_4

    const-string/jumbo v4, "HalDeviceManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Cannot start IWifi: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v2}, Lcom/android/server/wifi/HalDeviceManager;->statusString(Landroid/hardware/wifi/V1_0/WifiStatus;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", Retrying..."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-wide/16 v6, 0x14

    :try_start_3
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_4
    :try_start_4
    const-string/jumbo v4, "HalDeviceManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Cannot start IWifi: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v2}, Lcom/android/server/wifi/HalDeviceManager;->statusString(Landroid/hardware/wifi/V1_0/WifiStatus;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit v5

    return v8

    :cond_5
    :try_start_5
    const-string/jumbo v4, "HalDeviceManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Cannot start IWifi after trying "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " times"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit v5

    return v8

    :catch_1
    move-exception v0

    :try_start_6
    const-string/jumbo v4, "HalDeviceManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "startWifi exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit v5

    return v8

    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method private static statusString(Landroid/hardware/wifi/V1_0/WifiStatus;)Ljava/lang/String;
    .locals 3

    if-nez p0, :cond_0

    const-string/jumbo v1, "status=null"

    return-object v1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Landroid/hardware/wifi/V1_0/WifiStatus;->code:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/wifi/V1_0/WifiStatus;->description:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private stopWifi()V
    .locals 6

    sget-boolean v2, Lcom/android/server/wifi/HalDeviceManager;->DBG:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "HalDeviceManager"

    const-string/jumbo v3, "stopWifi"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v3, p0, Lcom/android/server/wifi/HalDeviceManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/server/wifi/HalDeviceManager;->mWifi:Landroid/hardware/wifi/V1_0/IWifi;

    if-nez v2, :cond_1

    const-string/jumbo v2, "HalDeviceManager"

    const-string/jumbo v4, "stopWifi called but mWifi is null!?"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v3

    return-void

    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/HalDeviceManager;->mWifi:Landroid/hardware/wifi/V1_0/IWifi;

    invoke-interface {v2}, Landroid/hardware/wifi/V1_0/IWifi;->stop()Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v1

    iget v2, v1, Landroid/hardware/wifi/V1_0/WifiStatus;->code:I

    if-eqz v2, :cond_2

    const-string/jumbo v2, "HalDeviceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Cannot stop IWifi: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Lcom/android/server/wifi/HalDeviceManager;->statusString(Landroid/hardware/wifi/V1_0/WifiStatus;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-direct {p0}, Lcom/android/server/wifi/HalDeviceManager;->teardownInternal()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v2, "HalDeviceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "stopWifi exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private teardownInternal()V
    .locals 2

    invoke-direct {p0}, Lcom/android/server/wifi/HalDeviceManager;->managerStatusListenerDispatch()V

    invoke-direct {p0}, Lcom/android/server/wifi/HalDeviceManager;->dispatchAllDestroyedListeners()V

    iget-object v0, p0, Lcom/android/server/wifi/HalDeviceManager;->mInterfaceAvailableForRequestListeners:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object v0, p0, Lcom/android/server/wifi/HalDeviceManager;->mInterfaceAvailableForRequestListeners:Landroid/util/SparseArray;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object v0, p0, Lcom/android/server/wifi/HalDeviceManager;->mInterfaceAvailableForRequestListeners:Landroid/util/SparseArray;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object v0, p0, Lcom/android/server/wifi/HalDeviceManager;->mInterfaceAvailableForRequestListeners:Landroid/util/SparseArray;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method private validateInterfaceCache([Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;)Z
    .locals 13

    const/4 v9, 0x0

    sget-boolean v7, Lcom/android/server/wifi/HalDeviceManager;->DBG:Z

    if-eqz v7, :cond_0

    const-string/jumbo v7, "HalDeviceManager"

    const-string/jumbo v8, "validateInterfaceCache"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v10, p0, Lcom/android/server/wifi/HalDeviceManager;->mLock:Ljava/lang/Object;

    monitor-enter v10

    :try_start_0
    iget-object v7, p0, Lcom/android/server/wifi/HalDeviceManager;->mInterfaceInfoCache:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    const/4 v6, 0x0

    array-length v11, p1

    move v8, v9

    :goto_0
    if-ge v8, v11, :cond_2

    aget-object v0, p1, v8

    iget v12, v0, Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;->chipId:I

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wifi/HalDeviceManager$InterfaceCacheEntry;

    iget v7, v7, Lcom/android/server/wifi/HalDeviceManager$InterfaceCacheEntry;->chipId:I

    if-ne v12, v7, :cond_3

    move-object v6, v0

    :cond_2
    if-nez v6, :cond_4

    const-string/jumbo v7, "HalDeviceManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "validateInterfaceCache: no chip found for "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v10

    return v9

    :cond_3
    add-int/lit8 v7, v8, 0x1

    move v8, v7

    goto :goto_0

    :cond_4
    :try_start_1
    iget-object v8, v6, Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;->ifaces:[[Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wifi/HalDeviceManager$InterfaceCacheEntry;

    iget v7, v7, Lcom/android/server/wifi/HalDeviceManager$InterfaceCacheEntry;->type:I

    aget-object v4, v8, v7

    if-nez v4, :cond_5

    const-string/jumbo v7, "HalDeviceManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "validateInterfaceCache: invalid type on entry "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v10

    return v9

    :cond_5
    const/4 v5, 0x0

    :try_start_2
    array-length v11, v4

    move v8, v9

    :goto_1
    if-ge v8, v11, :cond_6

    aget-object v3, v4, v8

    iget-object v12, v3, Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;->name:Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wifi/HalDeviceManager$InterfaceCacheEntry;

    iget-object v7, v7, Lcom/android/server/wifi/HalDeviceManager$InterfaceCacheEntry;->name:Ljava/lang/String;

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    const/4 v5, 0x1

    :cond_6
    if-nez v5, :cond_1

    const-string/jumbo v7, "HalDeviceManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "validateInterfaceCache: no interface found for "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v10

    return v9

    :cond_7
    add-int/lit8 v7, v8, 0x1

    move v8, v7

    goto :goto_1

    :cond_8
    monitor-exit v10

    const/4 v7, 0x1

    return v7

    :catchall_0
    move-exception v7

    monitor-exit v10

    throw v7
.end method


# virtual methods
.method public createApIface(Lcom/android/server/wifi/HalDeviceManager$InterfaceDestroyedListener;Landroid/os/Looper;)Landroid/hardware/wifi/V1_0/IWifiApIface;
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/wifi/HalDeviceManager;->createIface(ILcom/android/server/wifi/HalDeviceManager$InterfaceDestroyedListener;Landroid/os/Looper;)Landroid/hardware/wifi/V1_0/IWifiIface;

    move-result-object v0

    check-cast v0, Landroid/hardware/wifi/V1_0/IWifiApIface;

    return-object v0
.end method

.method public createNanIface(Lcom/android/server/wifi/HalDeviceManager$InterfaceDestroyedListener;Landroid/os/Looper;)Landroid/hardware/wifi/V1_0/IWifiNanIface;
    .locals 1

    const/4 v0, 0x3

    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/wifi/HalDeviceManager;->createIface(ILcom/android/server/wifi/HalDeviceManager$InterfaceDestroyedListener;Landroid/os/Looper;)Landroid/hardware/wifi/V1_0/IWifiIface;

    move-result-object v0

    check-cast v0, Landroid/hardware/wifi/V1_0/IWifiNanIface;

    return-object v0
.end method

.method public createP2pIface(Lcom/android/server/wifi/HalDeviceManager$InterfaceDestroyedListener;Landroid/os/Looper;)Landroid/hardware/wifi/V1_0/IWifiP2pIface;
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/wifi/HalDeviceManager;->createIface(ILcom/android/server/wifi/HalDeviceManager$InterfaceDestroyedListener;Landroid/os/Looper;)Landroid/hardware/wifi/V1_0/IWifiIface;

    move-result-object v0

    check-cast v0, Landroid/hardware/wifi/V1_0/IWifiP2pIface;

    return-object v0
.end method

.method public createRttController(Landroid/hardware/wifi/V1_0/IWifiIface;)Landroid/hardware/wifi/V1_0/IWifiRttController;
    .locals 8

    const/4 v7, 0x0

    sget-boolean v3, Lcom/android/server/wifi/HalDeviceManager;->DBG:Z

    if-eqz v3, :cond_0

    const-string/jumbo v3, "HalDeviceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "createRttController: boundIface(name)="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Lcom/android/server/wifi/HalDeviceManager;->getName(Landroid/hardware/wifi/V1_0/IWifiIface;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v4, p0, Lcom/android/server/wifi/HalDeviceManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/android/server/wifi/HalDeviceManager;->mWifi:Landroid/hardware/wifi/V1_0/IWifi;

    if-nez v3, :cond_1

    const-string/jumbo v3, "HalDeviceManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "createRttController: null IWifi -- boundIface(name)="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1}, Lcom/android/server/wifi/HalDeviceManager;->getName(Landroid/hardware/wifi/V1_0/IWifiIface;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    return-object v7

    :cond_1
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/HalDeviceManager;->getChip(Landroid/hardware/wifi/V1_0/IWifiIface;)Landroid/hardware/wifi/V1_0/IWifiChip;

    move-result-object v0

    if-nez v0, :cond_2

    const-string/jumbo v3, "HalDeviceManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "createRttController: null IWifiChip -- boundIface(name)="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1}, Lcom/android/server/wifi/HalDeviceManager;->getName(Landroid/hardware/wifi/V1_0/IWifiIface;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v4

    return-object v7

    :cond_2
    :try_start_2
    new-instance v2, Lcom/android/server/wifi/HalDeviceManager$Mutable;

    invoke-direct {v2}, Lcom/android/server/wifi/HalDeviceManager$Mutable;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    new-instance v3, Lcom/android/server/wifi/-$Lambda$zRsSIzbfvkJSErD1TWUPvfb3F7k;

    invoke-direct {v3, v2}, Lcom/android/server/wifi/-$Lambda$zRsSIzbfvkJSErD1TWUPvfb3F7k;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, p1, v3}, Landroid/hardware/wifi/V1_0/IWifiChip;->createRttController(Landroid/hardware/wifi/V1_0/IWifiIface;Landroid/hardware/wifi/V1_0/IWifiChip$createRttControllerCallback;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    :try_start_4
    iget-object v3, v2, Lcom/android/server/wifi/HalDeviceManager$Mutable;->value:Ljava/lang/Object;

    check-cast v3, Landroid/hardware/wifi/V1_0/IWifiRttController;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit v4

    return-object v3

    :catch_0
    move-exception v1

    :try_start_5
    const-string/jumbo v3, "HalDeviceManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "IWifiChip.createRttController exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public createStaIface(Lcom/android/server/wifi/HalDeviceManager$InterfaceDestroyedListener;Landroid/os/Looper;)Landroid/hardware/wifi/V1_0/IWifiStaIface;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/wifi/HalDeviceManager;->createIface(ILcom/android/server/wifi/HalDeviceManager$InterfaceDestroyedListener;Landroid/os/Looper;)Landroid/hardware/wifi/V1_0/IWifiIface;

    move-result-object v0

    check-cast v0, Landroid/hardware/wifi/V1_0/IWifiStaIface;

    return-object v0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "HalDeviceManager:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mServiceManager: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/HalDeviceManager;->mServiceManager:Landroid/hidl/manager/V1_0/IServiceManager;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mWifi: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/HalDeviceManager;->mWifi:Landroid/hardware/wifi/V1_0/IWifi;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mManagerStatusListeners: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/HalDeviceManager;->mManagerStatusListeners:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mInterfaceAvailableForRequestListeners: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/HalDeviceManager;->mInterfaceAvailableForRequestListeners:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mInterfaceInfoCache: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/HalDeviceManager;->mInterfaceInfoCache:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getChip(Landroid/hardware/wifi/V1_0/IWifiIface;)Landroid/hardware/wifi/V1_0/IWifiChip;
    .locals 6

    const/4 v5, 0x0

    sget-boolean v1, Lcom/android/server/wifi/HalDeviceManager;->DBG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "HalDeviceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getChip: iface(name)="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/android/server/wifi/HalDeviceManager;->getName(Landroid/hardware/wifi/V1_0/IWifiIface;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v2, p0, Lcom/android/server/wifi/HalDeviceManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/HalDeviceManager;->mInterfaceInfoCache:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/HalDeviceManager$InterfaceCacheEntry;

    if-nez v0, :cond_1

    const-string/jumbo v1, "HalDeviceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getChip: no entry for iface(name)="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Lcom/android/server/wifi/HalDeviceManager;->getName(Landroid/hardware/wifi/V1_0/IWifiIface;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-object v5

    :cond_1
    :try_start_1
    iget-object v1, v0, Lcom/android/server/wifi/HalDeviceManager$InterfaceCacheEntry;->chip:Landroid/hardware/wifi/V1_0/IWifiChip;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method protected getServiceManagerMockable()Landroid/hidl/manager/V1_0/IServiceManager;
    .locals 4

    :try_start_0
    invoke-static {}, Landroid/hidl/manager/V1_0/IServiceManager;->getService()Landroid/hidl/manager/V1_0/IServiceManager;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "HalDeviceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Exception getting IServiceManager: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return-object v1
.end method

.method getSupportedIfaceTypes()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/HalDeviceManager;->getSupportedIfaceTypesInternal(Landroid/hardware/wifi/V1_0/IWifiChip;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method getSupportedIfaceTypes(Landroid/hardware/wifi/V1_0/IWifiChip;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/wifi/V1_0/IWifiChip;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/server/wifi/HalDeviceManager;->getSupportedIfaceTypesInternal(Landroid/hardware/wifi/V1_0/IWifiChip;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method getSupportedIfaceTypesInternal(Landroid/hardware/wifi/V1_0/IWifiChip;)Ljava/util/Set;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/wifi/V1_0/IWifiChip;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wifi/HalDeviceManager;->getAllChipInfo()[Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;

    move-result-object v3

    if-nez v3, :cond_0

    const-string/jumbo v16, "HalDeviceManager"

    const-string/jumbo v17, "getSupportedIfaceTypesInternal: no chip info found"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v11

    :cond_0
    new-instance v2, Landroid/util/MutableInt;

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-direct {v2, v0}, Landroid/util/MutableInt;-><init>(I)V

    if-eqz p1, :cond_1

    new-instance v12, Landroid/util/MutableBoolean;

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-direct {v12, v0}, Landroid/util/MutableBoolean;-><init>(Z)V

    :try_start_0
    new-instance v16, Lcom/android/server/wifi/-$Lambda$zRsSIzbfvkJSErD1TWUPvfb3F7k$14;

    move-object/from16 v0, v16

    invoke-direct {v0, v2, v12}, Lcom/android/server/wifi/-$Lambda$zRsSIzbfvkJSErD1TWUPvfb3F7k$14;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/hardware/wifi/V1_0/IWifiChip;->getId(Landroid/hardware/wifi/V1_0/IWifiChip$getIdCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    iget-boolean v0, v12, Landroid/util/MutableBoolean;->value:Z

    move/from16 v16, v0

    if-nez v16, :cond_1

    return-object v11

    :catch_0
    move-exception v10

    const-string/jumbo v16, "HalDeviceManager"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "getSupportedIfaceTypesInternal IWifiChip.getId() exception: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v11

    :cond_1
    const/16 v16, 0x0

    array-length v0, v3

    move/from16 v18, v0

    move/from16 v17, v16

    :goto_0
    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_7

    aget-object v15, v3, v17

    if-eqz p1, :cond_3

    iget v0, v15, Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;->chipId:I

    move/from16 v16, v0

    iget v0, v2, Landroid/util/MutableInt;->value:I

    move/from16 v19, v0

    move/from16 v0, v16

    move/from16 v1, v19

    if-eq v0, v1, :cond_3

    :cond_2
    add-int/lit8 v16, v17, 0x1

    move/from16 v17, v16

    goto :goto_0

    :cond_3
    iget-object v0, v15, Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;->availableModes:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/hardware/wifi/V1_0/IWifiChip$ChipMode;

    iget-object v0, v8, Landroid/hardware/wifi/V1_0/IWifiChip$ChipMode;->availableCombinations:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/wifi/V1_0/IWifiChip$ChipIfaceCombination;

    iget-object v0, v4, Landroid/hardware/wifi/V1_0/IWifiChip$ChipIfaceCombination;->limits:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/wifi/V1_0/IWifiChip$ChipIfaceCombinationLimit;

    iget-object v0, v6, Landroid/hardware/wifi/V1_0/IWifiChip$ChipIfaceCombinationLimit;->types:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_6

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v11, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_7
    return-object v11
.end method

.method protected getWifiServiceMockable()Landroid/hardware/wifi/V1_0/IWifi;
    .locals 4

    :try_start_0
    invoke-static {}, Landroid/hardware/wifi/V1_0/IWifi;->getService()Landroid/hardware/wifi/V1_0/IWifi;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "HalDeviceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Exception getting IWifi service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return-object v1
.end method

.method public initialize()V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wifi/HalDeviceManager;->initializeInternal()V

    return-void
.end method

.method public isReady()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/HalDeviceManager;->mWifi:Landroid/hardware/wifi/V1_0/IWifi;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStarted()Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/wifi/HalDeviceManager;->isWifiStarted()Z

    move-result v0

    return v0
.end method

.method public isSupported()Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/wifi/HalDeviceManager;->isSupportedInternal()Z

    move-result v0

    return v0
.end method

.method synthetic lambda$-com_android_server_wifi_HalDeviceManager_20682(J)V
    .locals 3

    const-string/jumbo v0, "HalDeviceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "IServiceManager died: cookie="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/wifi/HalDeviceManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcom/android/server/wifi/HalDeviceManager;->mServiceManager:Landroid/hidl/manager/V1_0/IServiceManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method synthetic lambda$-com_android_server_wifi_HalDeviceManager_24179(J)V
    .locals 3

    const-string/jumbo v0, "HalDeviceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "IWifi HAL service died! Have a listener for it ... cookie="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/wifi/HalDeviceManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/android/server/wifi/HalDeviceManager;->mWifi:Landroid/hardware/wifi/V1_0/IWifi;

    invoke-direct {p0}, Lcom/android/server/wifi/HalDeviceManager;->teardownInternal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method synthetic lambda$-com_android_server_wifi_HalDeviceManager_36372(Landroid/util/MutableBoolean;Ljava/lang/String;[Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;Landroid/util/MutableInt;Landroid/hardware/wifi/V1_0/WifiStatus;Landroid/hardware/wifi/V1_0/IWifiStaIface;)V
    .locals 4

    const/4 v1, 0x0

    iget v2, p5, Landroid/hardware/wifi/V1_0/WifiStatus;->code:I

    if-nez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    iput-boolean v1, p1, Landroid/util/MutableBoolean;->value:Z

    iget-boolean v1, p1, Landroid/util/MutableBoolean;->value:Z

    if-eqz v1, :cond_1

    new-instance v0, Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;-><init>(Lcom/android/server/wifi/HalDeviceManager;Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;)V

    iput-object p2, v0, Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;->name:Ljava/lang/String;

    iput-object p6, v0, Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;->iface:Landroid/hardware/wifi/V1_0/IWifiIface;

    iget v1, p4, Landroid/util/MutableInt;->value:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p4, Landroid/util/MutableInt;->value:I

    aput-object v0, p3, v1

    :goto_0
    return-void

    :cond_1
    const-string/jumbo v1, "HalDeviceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getStaIface failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p5}, Lcom/android/server/wifi/HalDeviceManager;->statusString(Landroid/hardware/wifi/V1_0/WifiStatus;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method synthetic lambda$-com_android_server_wifi_HalDeviceManager_38174(Landroid/util/MutableBoolean;Ljava/lang/String;[Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;Landroid/util/MutableInt;Landroid/hardware/wifi/V1_0/WifiStatus;Landroid/hardware/wifi/V1_0/IWifiApIface;)V
    .locals 4

    const/4 v1, 0x0

    iget v2, p5, Landroid/hardware/wifi/V1_0/WifiStatus;->code:I

    if-nez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    iput-boolean v1, p1, Landroid/util/MutableBoolean;->value:Z

    iget-boolean v1, p1, Landroid/util/MutableBoolean;->value:Z

    if-eqz v1, :cond_1

    new-instance v0, Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;-><init>(Lcom/android/server/wifi/HalDeviceManager;Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;)V

    iput-object p2, v0, Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;->name:Ljava/lang/String;

    iput-object p6, v0, Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;->iface:Landroid/hardware/wifi/V1_0/IWifiIface;

    iget v1, p4, Landroid/util/MutableInt;->value:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p4, Landroid/util/MutableInt;->value:I

    aput-object v0, p3, v1

    :goto_0
    return-void

    :cond_1
    const-string/jumbo v1, "HalDeviceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getApIface failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p5}, Lcom/android/server/wifi/HalDeviceManager;->statusString(Landroid/hardware/wifi/V1_0/WifiStatus;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method synthetic lambda$-com_android_server_wifi_HalDeviceManager_39977(Landroid/util/MutableBoolean;Ljava/lang/String;[Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;Landroid/util/MutableInt;Landroid/hardware/wifi/V1_0/WifiStatus;Landroid/hardware/wifi/V1_0/IWifiP2pIface;)V
    .locals 4

    const/4 v1, 0x0

    iget v2, p5, Landroid/hardware/wifi/V1_0/WifiStatus;->code:I

    if-nez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    iput-boolean v1, p1, Landroid/util/MutableBoolean;->value:Z

    iget-boolean v1, p1, Landroid/util/MutableBoolean;->value:Z

    if-eqz v1, :cond_1

    new-instance v0, Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;-><init>(Lcom/android/server/wifi/HalDeviceManager;Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;)V

    iput-object p2, v0, Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;->name:Ljava/lang/String;

    iput-object p6, v0, Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;->iface:Landroid/hardware/wifi/V1_0/IWifiIface;

    iget v1, p4, Landroid/util/MutableInt;->value:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p4, Landroid/util/MutableInt;->value:I

    aput-object v0, p3, v1

    :goto_0
    return-void

    :cond_1
    const-string/jumbo v1, "HalDeviceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getP2pIface failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p5}, Lcom/android/server/wifi/HalDeviceManager;->statusString(Landroid/hardware/wifi/V1_0/WifiStatus;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method synthetic lambda$-com_android_server_wifi_HalDeviceManager_41783(Landroid/util/MutableBoolean;Ljava/lang/String;[Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;Landroid/util/MutableInt;Landroid/hardware/wifi/V1_0/WifiStatus;Landroid/hardware/wifi/V1_0/IWifiNanIface;)V
    .locals 4

    const/4 v1, 0x0

    iget v2, p5, Landroid/hardware/wifi/V1_0/WifiStatus;->code:I

    if-nez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    iput-boolean v1, p1, Landroid/util/MutableBoolean;->value:Z

    iget-boolean v1, p1, Landroid/util/MutableBoolean;->value:Z

    if-eqz v1, :cond_1

    new-instance v0, Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;-><init>(Lcom/android/server/wifi/HalDeviceManager;Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;)V

    iput-object p2, v0, Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;->name:Ljava/lang/String;

    iput-object p6, v0, Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;->iface:Landroid/hardware/wifi/V1_0/IWifiIface;

    iget v1, p4, Landroid/util/MutableInt;->value:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p4, Landroid/util/MutableInt;->value:I

    aput-object v0, p3, v1

    :goto_0
    return-void

    :cond_1
    const-string/jumbo v1, "HalDeviceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getNanIface failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p5}, Lcom/android/server/wifi/HalDeviceManager;->statusString(Landroid/hardware/wifi/V1_0/WifiStatus;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public registerDestroyedListener(Landroid/hardware/wifi/V1_0/IWifiIface;Lcom/android/server/wifi/HalDeviceManager$InterfaceDestroyedListener;Landroid/os/Looper;)Z
    .locals 5

    sget-boolean v1, Lcom/android/server/wifi/HalDeviceManager;->DBG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "HalDeviceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "registerDestroyedListener: iface(name)="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/android/server/wifi/HalDeviceManager;->getName(Landroid/hardware/wifi/V1_0/IWifiIface;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v2, p0, Lcom/android/server/wifi/HalDeviceManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/HalDeviceManager;->mInterfaceInfoCache:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/HalDeviceManager$InterfaceCacheEntry;

    if-nez v0, :cond_1

    const-string/jumbo v1, "HalDeviceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "registerDestroyedListener: no entry for iface(name)="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Lcom/android/server/wifi/HalDeviceManager;->getName(Landroid/hardware/wifi/V1_0/IWifiIface;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    monitor-exit v2

    return v1

    :cond_1
    :try_start_1
    iget-object v1, v0, Lcom/android/server/wifi/HalDeviceManager$InterfaceCacheEntry;->destroyedListeners:Ljava/util/Set;

    new-instance v3, Lcom/android/server/wifi/HalDeviceManager$InterfaceDestroyedListenerProxy;

    if-nez p3, :cond_2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p3

    :cond_2
    invoke-direct {v3, p0, p2, p3}, Lcom/android/server/wifi/HalDeviceManager$InterfaceDestroyedListenerProxy;-><init>(Lcom/android/server/wifi/HalDeviceManager;Lcom/android/server/wifi/HalDeviceManager$InterfaceDestroyedListener;Landroid/os/Looper;)V

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    monitor-exit v2

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public registerInterfaceAvailableForRequestListener(ILcom/android/server/wifi/HalDeviceManager$InterfaceAvailableForRequestListener;Landroid/os/Looper;)V
    .locals 3

    iget-object v1, p0, Lcom/android/server/wifi/HalDeviceManager;->mInterfaceAvailableForRequestListeners:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    new-instance v2, Lcom/android/server/wifi/HalDeviceManager$InterfaceAvailableForRequestListenerProxy;

    if-nez p3, :cond_0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p3

    :cond_0
    invoke-direct {v2, p0, p2, p3}, Lcom/android/server/wifi/HalDeviceManager$InterfaceAvailableForRequestListenerProxy;-><init>(Lcom/android/server/wifi/HalDeviceManager;Lcom/android/server/wifi/HalDeviceManager$InterfaceAvailableForRequestListener;Landroid/os/Looper;)V

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/android/server/wifi/HalDeviceManager;->getAllChipInfo()[Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;

    move-result-object v0

    if-nez v0, :cond_1

    const-string/jumbo v1, "HalDeviceManager"

    const-string/jumbo v2, "registerInterfaceAvailableForRequestListener: no chip info found - but possibly registered pre-started - ignoring"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-direct {p0, p1, v0}, Lcom/android/server/wifi/HalDeviceManager;->dispatchAvailableForRequestListenersForType(I[Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;)V

    return-void
.end method

.method public registerStatusListener(Lcom/android/server/wifi/HalDeviceManager$ManagerStatusListener;Landroid/os/Looper;)V
    .locals 3

    iget-object v1, p0, Lcom/android/server/wifi/HalDeviceManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/HalDeviceManager;->mManagerStatusListeners:Ljava/util/Set;

    new-instance v2, Lcom/android/server/wifi/HalDeviceManager$ManagerStatusListenerProxy;

    if-nez p2, :cond_0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p2

    :cond_0
    invoke-direct {v2, p0, p1, p2}, Lcom/android/server/wifi/HalDeviceManager$ManagerStatusListenerProxy;-><init>(Lcom/android/server/wifi/HalDeviceManager;Lcom/android/server/wifi/HalDeviceManager$ManagerStatusListener;Landroid/os/Looper;)V

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "HalDeviceManager"

    const-string/jumbo v2, "registerStatusListener: duplicate registration ignored"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public removeIface(Landroid/hardware/wifi/V1_0/IWifiIface;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/wifi/HalDeviceManager;->removeIfaceInternal(Landroid/hardware/wifi/V1_0/IWifiIface;)Z

    move-result v0

    invoke-direct {p0}, Lcom/android/server/wifi/HalDeviceManager;->dispatchAvailableForRequestListeners()Z

    return v0
.end method

.method public start()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/wifi/HalDeviceManager;->mStopStartLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/wifi/HalDeviceManager;->startWifi()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public stop()V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wifi/HalDeviceManager;->stopWifi()V

    return-void
.end method

.method public unregisterInterfaceAvailableForRequestListener(ILcom/android/server/wifi/HalDeviceManager$InterfaceAvailableForRequestListener;)V
    .locals 2

    iget-object v1, p0, Lcom/android/server/wifi/HalDeviceManager;->mInterfaceAvailableForRequestListeners:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wifi/HalDeviceManager$InterfaceAvailableForRequestListenerProxy;

    iget-object v1, v1, Lcom/android/server/wifi/HalDeviceManager$InterfaceAvailableForRequestListenerProxy;->mListener:Ljava/lang/Object;

    if-ne v1, p2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    return-void

    :cond_1
    return-void
.end method
