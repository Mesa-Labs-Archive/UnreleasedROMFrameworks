.class final Lcom/android/server/wifi/wificond/HiddenNetwork$1;
.super Ljava/lang/Object;
.source "HiddenNetwork.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/wificond/HiddenNetwork;
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
        "Lcom/android/server/wifi/wificond/HiddenNetwork;",
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
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/server/wifi/wificond/HiddenNetwork;
    .locals 3

    new-instance v0, Lcom/android/server/wifi/wificond/HiddenNetwork;

    invoke-direct {v0}, Lcom/android/server/wifi/wificond/HiddenNetwork;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/wifi/wificond/HiddenNetwork;->ssid:[B

    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "HiddenNetwork"

    const-string/jumbo v2, "Found trailing data after parcel parsing."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/server/wifi/wificond/HiddenNetwork$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/server/wifi/wificond/HiddenNetwork;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/android/server/wifi/wificond/HiddenNetwork;
    .locals 1

    new-array v0, p1, [Lcom/android/server/wifi/wificond/HiddenNetwork;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/server/wifi/wificond/HiddenNetwork$1;->newArray(I)[Lcom/android/server/wifi/wificond/HiddenNetwork;

    move-result-object v0

    return-object v0
.end method
