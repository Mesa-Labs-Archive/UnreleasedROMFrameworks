.class final Lcom/android/server/wifi/wificond/PnoNetwork$1;
.super Ljava/lang/Object;
.source "PnoNetwork.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/wificond/PnoNetwork;
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
        "Lcom/android/server/wifi/wificond/PnoNetwork;",
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
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/server/wifi/wificond/PnoNetwork;
    .locals 3

    const/4 v1, 0x0

    new-instance v0, Lcom/android/server/wifi/wificond/PnoNetwork;

    invoke-direct {v0}, Lcom/android/server/wifi/wificond/PnoNetwork;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    iput-boolean v1, v0, Lcom/android/server/wifi/wificond/PnoNetwork;->isHidden:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/wifi/wificond/PnoNetwork;->ssid:[B

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/server/wifi/wificond/PnoNetwork$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/server/wifi/wificond/PnoNetwork;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/android/server/wifi/wificond/PnoNetwork;
    .locals 1

    new-array v0, p1, [Lcom/android/server/wifi/wificond/PnoNetwork;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/server/wifi/wificond/PnoNetwork$1;->newArray(I)[Lcom/android/server/wifi/wificond/PnoNetwork;

    move-result-object v0

    return-object v0
.end method
