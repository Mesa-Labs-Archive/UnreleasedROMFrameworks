.class public interface abstract Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/ISemHostapdApIface;
.super Ljava/lang/Object;
.source "ISemHostapdApIface.java"

# interfaces
.implements Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/ISemHostapdIface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/ISemHostapdApIface$Proxy;,
        Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/ISemHostapdApIface$Stub;,
        Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/ISemHostapdApIface$sendHostapdCommandCallback;
    }
.end annotation


# static fields
.field public static final kInterfaceName:Ljava/lang/String; = "vendor.samsung.hardware.wifi.sec_hostapd@1.0::ISemHostapdApIface"


# direct methods
.method public static asInterface(Landroid/os/IHwBinder;)Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/ISemHostapdApIface;
    .locals 7

    const/4 v6, 0x0

    if-nez p0, :cond_0

    return-object v6

    :cond_0
    const-string/jumbo v5, "vendor.samsung.hardware.wifi.sec_hostapd@1.0::ISemHostapdApIface"

    invoke-interface {p0, v5}, Landroid/os/IHwBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;

    move-result-object v3

    if-eqz v3, :cond_1

    instance-of v5, v3, Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/ISemHostapdApIface;

    if-eqz v5, :cond_1

    check-cast v3, Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/ISemHostapdApIface;

    return-object v3

    :cond_1
    new-instance v4, Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/ISemHostapdApIface$Proxy;

    invoke-direct {v4, p0}, Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/ISemHostapdApIface$Proxy;-><init>(Landroid/os/IHwBinder;)V

    :try_start_0
    invoke-interface {v4}, Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/ISemHostapdApIface;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v5, "vendor.samsung.hardware.wifi.sec_hostapd@1.0::ISemHostapdApIface"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_2

    return-object v4

    :catch_0
    move-exception v2

    :cond_3
    return-object v6
.end method

.method public static castFrom(Landroid/os/IHwInterface;)Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/ISemHostapdApIface;
    .locals 1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p0}, Landroid/os/IHwInterface;->asBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/ISemHostapdApIface;->asInterface(Landroid/os/IHwBinder;)Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/ISemHostapdApIface;

    move-result-object v0

    goto :goto_0
.end method

.method public static getService()Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/ISemHostapdApIface;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string/jumbo v0, "vendor.samsung.hardware.wifi.sec_hostapd@1.0::ISemHostapdApIface"

    const-string/jumbo v1, "default"

    invoke-static {v0, v1}, Landroid/os/HwBinder;->getService(Ljava/lang/String;Ljava/lang/String;)Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/ISemHostapdApIface;->asInterface(Landroid/os/IHwBinder;)Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/ISemHostapdApIface;

    move-result-object v0

    return-object v0
.end method

.method public static getService(Ljava/lang/String;)Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/ISemHostapdApIface;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string/jumbo v0, "vendor.samsung.hardware.wifi.sec_hostapd@1.0::ISemHostapdApIface"

    invoke-static {v0, p0}, Landroid/os/HwBinder;->getService(Ljava/lang/String;Ljava/lang/String;)Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/ISemHostapdApIface;->asInterface(Landroid/os/IHwBinder;)Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/ISemHostapdApIface;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract asBinder()Landroid/os/IHwBinder;
.end method

.method public abstract cancelWps()Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/HostapdStatus;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getAccessPointChannel()Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/HostapdStatus;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getAccessPointNumConnectedSta()Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/HostapdStatus;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getAccessPointStaList()Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/HostapdStatus;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getHashChain()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getStationInfo(Ljava/lang/String;)Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/HostapdStatus;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract interfaceChain()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract interfaceDescriptor()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract notifySyspropsChanged()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract ping()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract readWhiteList()Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/HostapdStatus;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract registerCallback(Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/ISemHostapdApIfaceCallback;)Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/HostapdStatus;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract sendHostapdCommand(Ljava/lang/String;Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/ISemHostapdApIface$sendHostapdCommandCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setAccessPointDisassocSta(Ljava/lang/String;)Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/HostapdStatus;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setHALInstrumentation()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setMaxClient(I)Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/HostapdStatus;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setTxPower(I)Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/HostapdStatus;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract startWpsPbc()Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/HostapdStatus;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract startWpsPinAp(Ljava/lang/String;)Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/HostapdStatus;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract startWpsPinApRandom()Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/HostapdStatus;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract startWpsPinClient(Ljava/lang/String;)Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/HostapdStatus;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract validatewpspin(Ljava/lang/String;)Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/HostapdStatus;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
