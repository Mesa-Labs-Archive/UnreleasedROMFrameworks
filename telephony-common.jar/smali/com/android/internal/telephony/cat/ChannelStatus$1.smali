.class final Lcom/android/internal/telephony/cat/ChannelStatus$1;
.super Ljava/lang/Object;
.source "ChannelStatus.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cat/ChannelStatus;
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
        "Lcom/android/internal/telephony/cat/ChannelStatus;",
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
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/telephony/cat/ChannelStatus;
    .locals 2

    new-instance v0, Lcom/android/internal/telephony/cat/ChannelStatus;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/internal/telephony/cat/ChannelStatus;-><init>(Landroid/os/Parcel;Lcom/android/internal/telephony/cat/ChannelStatus;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cat/ChannelStatus$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/telephony/cat/ChannelStatus;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/android/internal/telephony/cat/ChannelStatus;
    .locals 1

    new-array v0, p1, [Lcom/android/internal/telephony/cat/ChannelStatus;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cat/ChannelStatus$1;->newArray(I)[Lcom/android/internal/telephony/cat/ChannelStatus;

    move-result-object v0

    return-object v0
.end method
