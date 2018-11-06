.class public abstract Landroid/net/wifi/IInterfaceEventCallback$Stub;
.super Landroid/os/Binder;
.source "IInterfaceEventCallback.java"

# interfaces
.implements Landroid/net/wifi/IInterfaceEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/IInterfaceEventCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/IInterfaceEventCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.net.wifi.IInterfaceEventCallback"

.field static final TRANSACTION_OnApInterfaceReady:I = 0x2

.field static final TRANSACTION_OnApTorndownEvent:I = 0x4

.field static final TRANSACTION_OnClientInterfaceReady:I = 0x1

.field static final TRANSACTION_OnClientTorndownEvent:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "android.net.wifi.IInterfaceEventCallback"

    invoke-virtual {p0, p0, v0}, Landroid/net/wifi/IInterfaceEventCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IInterfaceEventCallback;
    .locals 2

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    const-string/jumbo v1, "android.net.wifi.IInterfaceEventCallback"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/net/wifi/IInterfaceEventCallback;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/net/wifi/IInterfaceEventCallback;

    return-object v0

    :cond_1
    new-instance v1, Landroid/net/wifi/IInterfaceEventCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/wifi/IInterfaceEventCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v3, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    return v2

    :sswitch_0
    const-string/jumbo v2, "android.net.wifi.IInterfaceEventCallback"

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v3

    :sswitch_1
    const-string/jumbo v2, "android.net.wifi.IInterfaceEventCallback"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/net/wifi/IClientInterface$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IClientInterface;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/net/wifi/IInterfaceEventCallback$Stub;->OnClientInterfaceReady(Landroid/net/wifi/IClientInterface;)V

    return v3

    :sswitch_2
    const-string/jumbo v2, "android.net.wifi.IInterfaceEventCallback"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/net/wifi/IApInterface$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IApInterface;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/IInterfaceEventCallback$Stub;->OnApInterfaceReady(Landroid/net/wifi/IApInterface;)V

    return v3

    :sswitch_3
    const-string/jumbo v2, "android.net.wifi.IInterfaceEventCallback"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/net/wifi/IClientInterface$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IClientInterface;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/net/wifi/IInterfaceEventCallback$Stub;->OnClientTorndownEvent(Landroid/net/wifi/IClientInterface;)V

    return v3

    :sswitch_4
    const-string/jumbo v2, "android.net.wifi.IInterfaceEventCallback"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/net/wifi/IApInterface$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IApInterface;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/IInterfaceEventCallback$Stub;->OnApTorndownEvent(Landroid/net/wifi/IApInterface;)V

    return v3

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
