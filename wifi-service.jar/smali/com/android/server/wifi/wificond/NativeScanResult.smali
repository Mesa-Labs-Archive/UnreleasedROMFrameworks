.class public Lcom/android/server/wifi/wificond/NativeScanResult;
.super Ljava/lang/Object;
.source "NativeScanResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/wificond/NativeScanResult$1;
    }
.end annotation


# static fields
.field private static final CAPABILITY_SIZE:I = 0x10

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/server/wifi/wificond/NativeScanResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public associated:Z

.field public bssid:[B

.field public capability:Ljava/util/BitSet;

.field public frequency:I

.field public infoElement:[B

.field public signalMbm:I

.field public ssid:[B

.field public tsf:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/wifi/wificond/NativeScanResult$1;

    invoke-direct {v0}, Lcom/android/server/wifi/wificond/NativeScanResult$1;-><init>()V

    sput-object v0, Lcom/android/server/wifi/wificond/NativeScanResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wifi/wificond/NativeScanResult;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/android/server/wifi/wificond/NativeScanResult;->ssid:[B

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/android/server/wifi/wificond/NativeScanResult;->ssid:[B

    iget-object v0, p1, Lcom/android/server/wifi/wificond/NativeScanResult;->bssid:[B

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/android/server/wifi/wificond/NativeScanResult;->bssid:[B

    iget-object v0, p1, Lcom/android/server/wifi/wificond/NativeScanResult;->infoElement:[B

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/android/server/wifi/wificond/NativeScanResult;->infoElement:[B

    iget v0, p1, Lcom/android/server/wifi/wificond/NativeScanResult;->frequency:I

    iput v0, p0, Lcom/android/server/wifi/wificond/NativeScanResult;->frequency:I

    iget v0, p1, Lcom/android/server/wifi/wificond/NativeScanResult;->signalMbm:I

    iput v0, p0, Lcom/android/server/wifi/wificond/NativeScanResult;->signalMbm:I

    iget-wide v0, p1, Lcom/android/server/wifi/wificond/NativeScanResult;->tsf:J

    iput-wide v0, p0, Lcom/android/server/wifi/wificond/NativeScanResult;->tsf:J

    iget-object v0, p1, Lcom/android/server/wifi/wificond/NativeScanResult;->capability:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/BitSet;

    iput-object v0, p0, Lcom/android/server/wifi/wificond/NativeScanResult;->capability:Ljava/util/BitSet;

    iget-boolean v0, p1, Lcom/android/server/wifi/wificond/NativeScanResult;->associated:Z

    iput-boolean v0, p0, Lcom/android/server/wifi/wificond/NativeScanResult;->associated:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/server/wifi/wificond/NativeScanResult;->ssid:[B

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeByteArray([B)V

    iget-object v3, p0, Lcom/android/server/wifi/wificond/NativeScanResult;->bssid:[B

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeByteArray([B)V

    iget-object v3, p0, Lcom/android/server/wifi/wificond/NativeScanResult;->infoElement:[B

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeByteArray([B)V

    iget v3, p0, Lcom/android/server/wifi/wificond/NativeScanResult;->frequency:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    iget v3, p0, Lcom/android/server/wifi/wificond/NativeScanResult;->signalMbm:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v4, p0, Lcom/android/server/wifi/wificond/NativeScanResult;->tsf:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/16 v3, 0x10

    if-ge v1, v3, :cond_1

    iget-object v3, p0, Lcom/android/server/wifi/wificond/NativeScanResult;->capability:Ljava/util/BitSet;

    invoke-virtual {v3, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-eqz v3, :cond_0

    shl-int v3, v2, v1

    or-int/2addr v0, v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v3, p0, Lcom/android/server/wifi/wificond/NativeScanResult;->associated:Z

    if-eqz v3, :cond_2

    :goto_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method
