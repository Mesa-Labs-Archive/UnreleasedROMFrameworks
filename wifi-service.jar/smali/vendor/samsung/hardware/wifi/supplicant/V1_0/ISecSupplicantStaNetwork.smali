.class public interface abstract Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork;
.super Ljava/lang/Object;
.source "ISecSupplicantStaNetwork.java"

# interfaces
.implements Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$EapMethodSec;,
        Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$EapPhase1Method;,
        Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$KeyMgmtMaskSec;,
        Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$ProtoMaskSec;,
        Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Proxy;,
        Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$SamsungFlag;,
        Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub;,
        Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$getAuthenticatedCallback;,
        Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$getAutoReconnectCallback;,
        Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$getCaptivePortalCallback;,
        Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$getEapMethodSecCallback;,
        Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$getEapPacFileCallback;,
        Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$getEapPhase1MethodCallback;,
        Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$getLoginUrlCallback;,
        Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$getSamsungSpecificFlagsCallback;,
        Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$getSimNumberCallback;,
        Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$getSkipInternetCheckCallback;,
        Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$getUsableInternetCallback;,
        Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$getVendorSsidCallback;,
        Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$getWapiAsCertCallback;,
        Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$getWapiCertIndexCallback;,
        Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$getWapiPskTypeCallback;,
        Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$getWapiUserCertCallback;
    }
.end annotation


# static fields
.field public static final kInterfaceName:Ljava/lang/String; = "vendor.samsung.hardware.wifi.supplicant@1.0::ISecSupplicantStaNetwork"


# direct methods
.method public static asInterface(Landroid/os/IHwBinder;)Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork;
    .locals 7

    const/4 v6, 0x0

    if-nez p0, :cond_0

    return-object v6

    :cond_0
    const-string/jumbo v5, "vendor.samsung.hardware.wifi.supplicant@1.0::ISecSupplicantStaNetwork"

    invoke-interface {p0, v5}, Landroid/os/IHwBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;

    move-result-object v3

    if-eqz v3, :cond_1

    instance-of v5, v3, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork;

    if-eqz v5, :cond_1

    check-cast v3, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork;

    return-object v3

    :cond_1
    new-instance v4, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Proxy;

    invoke-direct {v4, p0}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Proxy;-><init>(Landroid/os/IHwBinder;)V

    :try_start_0
    invoke-interface {v4}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork;->interfaceChain()Ljava/util/ArrayList;

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

    const-string/jumbo v5, "vendor.samsung.hardware.wifi.supplicant@1.0::ISecSupplicantStaNetwork"

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

.method public static castFrom(Landroid/os/IHwInterface;)Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork;
    .locals 1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p0}, Landroid/os/IHwInterface;->asBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork;->asInterface(Landroid/os/IHwBinder;)Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork;

    move-result-object v0

    goto :goto_0
.end method

.method public static getService()Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string/jumbo v0, "vendor.samsung.hardware.wifi.supplicant@1.0::ISecSupplicantStaNetwork"

    const-string/jumbo v1, "default"

    invoke-static {v0, v1}, Landroid/os/HwBinder;->getService(Ljava/lang/String;Ljava/lang/String;)Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork;->asInterface(Landroid/os/IHwBinder;)Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork;

    move-result-object v0

    return-object v0
.end method

.method public static getService(Ljava/lang/String;)Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string/jumbo v0, "vendor.samsung.hardware.wifi.supplicant@1.0::ISecSupplicantStaNetwork"

    invoke-static {v0, p0}, Landroid/os/HwBinder;->getService(Ljava/lang/String;Ljava/lang/String;)Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork;->asInterface(Landroid/os/IHwBinder;)Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract asBinder()Landroid/os/IHwBinder;
.end method

.method public abstract getAuthenticated(Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$getAuthenticatedCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getAutoReconnect(Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$getAutoReconnectCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getCaptivePortal(Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$getCaptivePortalCallback;)V
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

.method public abstract getEapMethodSec(Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$getEapMethodSecCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getEapPacFile(Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$getEapPacFileCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getEapPhase1Method(Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$getEapPhase1MethodCallback;)V
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

.method public abstract getLoginUrl(Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$getLoginUrlCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getSamsungSpecificFlags(Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$getSamsungSpecificFlagsCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getSimNumber(Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$getSimNumberCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getSkipInternetCheck(Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$getSkipInternetCheckCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getUsableInternet(Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$getUsableInternetCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getVendorSsid(Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$getVendorSsidCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getWapiAsCert(Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$getWapiAsCertCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getWapiCertIndex(Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$getWapiCertIndexCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getWapiPskType(Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$getWapiPskTypeCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getWapiUserCert(Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$getWapiUserCertCallback;)V
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

.method public abstract setAuthenticated(Z)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setCaptivePortal(Z)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setEapMethodSec(I)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setEapPacFile(Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setEapPhase1Method(I)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
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

.method public abstract setLoginUrl(Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setSimNumber(I)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setSkipInternetCheck(I)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setUsableInternet(Z)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setVendorSsid(Z)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setWapiAsCert(Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setWapiCertIndex(I)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setWapiPskType(I)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setWapiUserCert(Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
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
