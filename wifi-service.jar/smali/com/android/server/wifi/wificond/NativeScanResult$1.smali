.class final Lcom/android/server/wifi/wificond/NativeScanResult$1;
.super Ljava/lang/Object;
.source "NativeScanResult.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/wificond/NativeScanResult;
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
        "Lcom/android/server/wifi/wificond/NativeScanResult;",
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
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/server/wifi/wificond/NativeScanResult;
    .locals 9

    const/16 v8, 0x10

    const/4 v3, 0x1

    const/4 v4, 0x0

    new-instance v2, Lcom/android/server/wifi/wificond/NativeScanResult;

    invoke-direct {v2}, Lcom/android/server/wifi/wificond/NativeScanResult;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    iput-object v5, v2, Lcom/android/server/wifi/wificond/NativeScanResult;->ssid:[B

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    iput-object v5, v2, Lcom/android/server/wifi/wificond/NativeScanResult;->bssid:[B

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    iput-object v5, v2, Lcom/android/server/wifi/wificond/NativeScanResult;->infoElement:[B

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, v2, Lcom/android/server/wifi/wificond/NativeScanResult;->frequency:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, v2, Lcom/android/server/wifi/wificond/NativeScanResult;->signalMbm:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    iput-wide v6, v2, Lcom/android/server/wifi/wificond/NativeScanResult;->tsf:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-instance v5, Ljava/util/BitSet;

    invoke-direct {v5, v8}, Ljava/util/BitSet;-><init>(I)V

    iput-object v5, v2, Lcom/android/server/wifi/wificond/NativeScanResult;->capability:Ljava/util/BitSet;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v8, :cond_1

    shl-int v5, v3, v1

    and-int/2addr v5, v0

    if-eqz v5, :cond_0

    iget-object v5, v2, Lcom/android/server/wifi/wificond/NativeScanResult;->capability:Ljava/util/BitSet;

    invoke-virtual {v5, v1}, Ljava/util/BitSet;->set(I)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2

    :goto_1
    iput-boolean v3, v2, Lcom/android/server/wifi/wificond/NativeScanResult;->associated:Z

    return-object v2

    :cond_2
    move v3, v4

    goto :goto_1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/server/wifi/wificond/NativeScanResult$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/server/wifi/wificond/NativeScanResult;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/android/server/wifi/wificond/NativeScanResult;
    .locals 1

    new-array v0, p1, [Lcom/android/server/wifi/wificond/NativeScanResult;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/server/wifi/wificond/NativeScanResult$1;->newArray(I)[Lcom/android/server/wifi/wificond/NativeScanResult;

    move-result-object v0

    return-object v0
.end method
