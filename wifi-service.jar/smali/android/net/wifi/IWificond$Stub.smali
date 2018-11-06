.class public abstract Landroid/net/wifi/IWificond$Stub;
.super Landroid/os/Binder;
.source "IWificond.java"

# interfaces
.implements Landroid/net/wifi/IWificond;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/IWificond;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/IWificond$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.net.wifi.IWificond"

.field static final TRANSACTION_GetApInterfaces:I = 0x5

.field static final TRANSACTION_GetClientInterfaces:I = 0x4

.field static final TRANSACTION_RegisterCallback:I = 0x6

.field static final TRANSACTION_UnregisterCallback:I = 0x7

.field static final TRANSACTION_createApInterface:I = 0x1

.field static final TRANSACTION_createClientInterface:I = 0x2

.field static final TRANSACTION_registerRttClient:I = 0x8

.field static final TRANSACTION_tearDownInterfaces:I = 0x3

.field static final TRANSACTION_unregisterRttClient:I = 0x9


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "android.net.wifi.IWificond"

    invoke-virtual {p0, p0, v0}, Landroid/net/wifi/IWificond$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IWificond;
    .locals 2

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    const-string/jumbo v1, "android.net.wifi.IWificond"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/net/wifi/IWificond;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/net/wifi/IWificond;

    return-object v0

    :cond_1
    new-instance v1, Landroid/net/wifi/IWificond$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/wifi/IWificond$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v6, 0x0

    const/4 v8, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    return v6

    :sswitch_0
    const-string/jumbo v6, "android.net.wifi.IWificond"

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v8

    :sswitch_1
    const-string/jumbo v7, "android.net.wifi.IWificond"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/net/wifi/IWificond$Stub;->createApInterface()Landroid/net/wifi/IApInterface;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroid/net/wifi/IApInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    :cond_0
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return v8

    :sswitch_2
    const-string/jumbo v7, "android.net.wifi.IWificond"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/net/wifi/IWificond$Stub;->createClientInterface()Landroid/net/wifi/IClientInterface;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_1

    invoke-interface {v3}, Landroid/net/wifi/IClientInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    :cond_1
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return v8

    :sswitch_3
    const-string/jumbo v6, "android.net.wifi.IWificond"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/net/wifi/IWificond$Stub;->tearDownInterfaces()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v8

    :sswitch_4
    const-string/jumbo v6, "android.net.wifi.IWificond"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/net/wifi/IWificond$Stub;->GetClientInterfaces()Ljava/util/List;

    move-result-object v5

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBinderList(Ljava/util/List;)V

    return v8

    :sswitch_5
    const-string/jumbo v6, "android.net.wifi.IWificond"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/net/wifi/IWificond$Stub;->GetApInterfaces()Ljava/util/List;

    move-result-object v5

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBinderList(Ljava/util/List;)V

    return v8

    :sswitch_6
    const-string/jumbo v6, "android.net.wifi.IWificond"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/net/wifi/IInterfaceEventCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IInterfaceEventCallback;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/IWificond$Stub;->RegisterCallback(Landroid/net/wifi/IInterfaceEventCallback;)V

    return v8

    :sswitch_7
    const-string/jumbo v6, "android.net.wifi.IWificond"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/net/wifi/IInterfaceEventCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IInterfaceEventCallback;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/IWificond$Stub;->UnregisterCallback(Landroid/net/wifi/IInterfaceEventCallback;)V

    return v8

    :sswitch_8
    const-string/jumbo v7, "android.net.wifi.IWificond"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Landroid/net/wifi/IRttClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IRttClient;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/net/wifi/IWificond$Stub;->registerRttClient(Landroid/net/wifi/IRttClient;)Landroid/net/wifi/IRttController;

    move-result-object v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_2

    invoke-interface {v4}, Landroid/net/wifi/IRttController;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    :cond_2
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return v8

    :sswitch_9
    const-string/jumbo v6, "android.net.wifi.IWificond"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/net/wifi/IRttClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IRttClient;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/net/wifi/IWificond$Stub;->unregisterRttClient(Landroid/net/wifi/IRttClient;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v8

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
