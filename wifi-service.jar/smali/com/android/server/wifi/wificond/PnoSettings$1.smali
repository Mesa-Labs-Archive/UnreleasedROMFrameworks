.class final Lcom/android/server/wifi/wificond/PnoSettings$1;
.super Ljava/lang/Object;
.source "PnoSettings.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/wificond/PnoSettings;
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
        "Lcom/android/server/wifi/wificond/PnoSettings;",
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
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/server/wifi/wificond/PnoSettings;
    .locals 3

    new-instance v0, Lcom/android/server/wifi/wificond/PnoSettings;

    invoke-direct {v0}, Lcom/android/server/wifi/wificond/PnoSettings;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/server/wifi/wificond/PnoSettings;->intervalMs:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/server/wifi/wificond/PnoSettings;->min2gRssi:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/server/wifi/wificond/PnoSettings;->min5gRssi:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/android/server/wifi/wificond/PnoSettings;->pnoNetworks:Ljava/util/ArrayList;

    iget-object v1, v0, Lcom/android/server/wifi/wificond/PnoSettings;->pnoNetworks:Ljava/util/ArrayList;

    sget-object v2, Lcom/android/server/wifi/wificond/PnoNetwork;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/server/wifi/wificond/PnoSettings$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/server/wifi/wificond/PnoSettings;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/android/server/wifi/wificond/PnoSettings;
    .locals 1

    new-array v0, p1, [Lcom/android/server/wifi/wificond/PnoSettings;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/server/wifi/wificond/PnoSettings$1;->newArray(I)[Lcom/android/server/wifi/wificond/PnoSettings;

    move-result-object v0

    return-object v0
.end method
