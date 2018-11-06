.class public abstract Landroid/net/wifi/IWifiScannerImpl$Stub;
.super Landroid/os/Binder;
.source "IWifiScannerImpl.java"

# interfaces
.implements Landroid/net/wifi/IWifiScannerImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/IWifiScannerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/IWifiScannerImpl$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.net.wifi.IWifiScannerImpl"

.field static final TRANSACTION_abortScan:I = 0xe

.field static final TRANSACTION_disableRandomMac:I = 0x6

.field static final TRANSACTION_getAvailable2gChannels:I = 0x1

.field static final TRANSACTION_getAvailable5gNonDFSChannels:I = 0x2

.field static final TRANSACTION_getAvailableDFSChannels:I = 0x3

.field static final TRANSACTION_getMaxNumScanSsids:I = 0x5

.field static final TRANSACTION_getScanResults:I = 0x4

.field static final TRANSACTION_scan:I = 0x7

.field static final TRANSACTION_startPnoScan:I = 0xc

.field static final TRANSACTION_stopPnoScan:I = 0xd

.field static final TRANSACTION_subscribePnoScanEvents:I = 0xa

.field static final TRANSACTION_subscribeScanEvents:I = 0x8

.field static final TRANSACTION_unsubscribePnoScanEvents:I = 0xb

.field static final TRANSACTION_unsubscribeScanEvents:I = 0x9


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "android.net.wifi.IWifiScannerImpl"

    invoke-virtual {p0, p0, v0}, Landroid/net/wifi/IWifiScannerImpl$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IWifiScannerImpl;
    .locals 2

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    const-string/jumbo v1, "android.net.wifi.IWifiScannerImpl"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/net/wifi/IWifiScannerImpl;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/net/wifi/IWifiScannerImpl;

    return-object v0

    :cond_1
    new-instance v1, Landroid/net/wifi/IWifiScannerImpl$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/wifi/IWifiScannerImpl$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v8, 0x0

    const/4 v9, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v8

    return v8

    :sswitch_0
    const-string/jumbo v8, "android.net.wifi.IWifiScannerImpl"

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v9

    :sswitch_1
    const-string/jumbo v8, "android.net.wifi.IWifiScannerImpl"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/net/wifi/IWifiScannerImpl$Stub;->getAvailable2gChannels()[I

    move-result-object v6

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeIntArray([I)V

    return v9

    :sswitch_2
    const-string/jumbo v8, "android.net.wifi.IWifiScannerImpl"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/net/wifi/IWifiScannerImpl$Stub;->getAvailable5gNonDFSChannels()[I

    move-result-object v6

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeIntArray([I)V

    return v9

    :sswitch_3
    const-string/jumbo v8, "android.net.wifi.IWifiScannerImpl"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/net/wifi/IWifiScannerImpl$Stub;->getAvailableDFSChannels()[I

    move-result-object v6

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeIntArray([I)V

    return v9

    :sswitch_4
    const-string/jumbo v8, "android.net.wifi.IWifiScannerImpl"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/net/wifi/IWifiScannerImpl$Stub;->getScanResults()[Lcom/android/server/wifi/wificond/NativeScanResult;

    move-result-object v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v7, v9}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    return v9

    :sswitch_5
    const-string/jumbo v8, "android.net.wifi.IWifiScannerImpl"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/net/wifi/IWifiScannerImpl$Stub;->getMaxNumScanSsids()I

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v9

    :sswitch_6
    const-string/jumbo v8, "android.net.wifi.IWifiScannerImpl"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/net/wifi/IWifiScannerImpl$Stub;->disableRandomMac()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v9

    :sswitch_7
    const-string/jumbo v10, "android.net.wifi.IWifiScannerImpl"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_1

    sget-object v10, Lcom/android/server/wifi/wificond/SingleScanSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wifi/wificond/SingleScanSettings;

    :goto_0
    invoke-virtual {p0, v3}, Landroid/net/wifi/IWifiScannerImpl$Stub;->scan(Lcom/android/server/wifi/wificond/SingleScanSettings;)Z

    move-result v5

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v5, :cond_0

    move v8, v9

    :cond_0
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    return v9

    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    :sswitch_8
    const-string/jumbo v8, "android.net.wifi.IWifiScannerImpl"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Landroid/net/wifi/IScanEvent$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IScanEvent;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/net/wifi/IWifiScannerImpl$Stub;->subscribeScanEvents(Landroid/net/wifi/IScanEvent;)V

    return v9

    :sswitch_9
    const-string/jumbo v8, "android.net.wifi.IWifiScannerImpl"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/net/wifi/IWifiScannerImpl$Stub;->unsubscribeScanEvents()V

    return v9

    :sswitch_a
    const-string/jumbo v8, "android.net.wifi.IWifiScannerImpl"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Landroid/net/wifi/IPnoScanEvent$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IPnoScanEvent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiScannerImpl$Stub;->subscribePnoScanEvents(Landroid/net/wifi/IPnoScanEvent;)V

    return v9

    :sswitch_b
    const-string/jumbo v8, "android.net.wifi.IWifiScannerImpl"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/net/wifi/IWifiScannerImpl$Stub;->unsubscribePnoScanEvents()V

    return v9

    :sswitch_c
    const-string/jumbo v10, "android.net.wifi.IWifiScannerImpl"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_3

    sget-object v10, Lcom/android/server/wifi/wificond/PnoSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wifi/wificond/PnoSettings;

    :goto_1
    invoke-virtual {p0, v2}, Landroid/net/wifi/IWifiScannerImpl$Stub;->startPnoScan(Lcom/android/server/wifi/wificond/PnoSettings;)Z

    move-result v5

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v5, :cond_2

    move v8, v9

    :cond_2
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    return v9

    :cond_3
    const/4 v2, 0x0

    goto :goto_1

    :sswitch_d
    const-string/jumbo v10, "android.net.wifi.IWifiScannerImpl"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/net/wifi/IWifiScannerImpl$Stub;->stopPnoScan()Z

    move-result v5

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v5, :cond_4

    move v8, v9

    :cond_4
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    return v9

    :sswitch_e
    const-string/jumbo v8, "android.net.wifi.IWifiScannerImpl"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/net/wifi/IWifiScannerImpl$Stub;->abortScan()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v9

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
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
