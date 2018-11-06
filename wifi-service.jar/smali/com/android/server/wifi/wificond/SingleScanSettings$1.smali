.class final Lcom/android/server/wifi/wificond/SingleScanSettings$1;
.super Ljava/lang/Object;
.source "SingleScanSettings.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/wificond/SingleScanSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/android/server/wifi/wificond/SingleScanSettings;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/server/wifi/wificond/SingleScanSettings;
    .locals 3

    new-instance v0, Lcom/android/server/wifi/wificond/SingleScanSettings;

    invoke-direct {v0}, Lcom/android/server/wifi/wificond/SingleScanSettings;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/android/server/wifi/wificond/SingleScanSettings;->channelSettings:Ljava/util/ArrayList;

    iget-object v1, v0, Lcom/android/server/wifi/wificond/SingleScanSettings;->channelSettings:Ljava/util/ArrayList;

    sget-object v2, Lcom/android/server/wifi/wificond/ChannelSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/android/server/wifi/wificond/SingleScanSettings;->hiddenNetworks:Ljava/util/ArrayList;

    iget-object v1, v0, Lcom/android/server/wifi/wificond/SingleScanSettings;->hiddenNetworks:Ljava/util/ArrayList;

    sget-object v2, Lcom/android/server/wifi/wificond/HiddenNetwork;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "SingleScanSettings"

    const-string/jumbo v2, "Found trailing data after parcel parsing."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/server/wifi/wificond/SingleScanSettings$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/server/wifi/wificond/SingleScanSettings;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/android/server/wifi/wificond/SingleScanSettings;
    .locals 1

    new-array v0, p1, [Lcom/android/server/wifi/wificond/SingleScanSettings;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/server/wifi/wificond/SingleScanSettings$1;->newArray(I)[Lcom/android/server/wifi/wificond/SingleScanSettings;

    move-result-object v0

    return-object v0
.end method
