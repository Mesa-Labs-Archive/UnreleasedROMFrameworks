.class public final Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;
.super Ljava/lang/Object;
.source "SemLmsTokenCTC.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;",
            ">;"
        }
    .end annotation
.end field

.field public static final LMS_STATUS_COMPLETE:I = 0x0

.field public static final LMS_STATUS_FIRST_DISPLAY_TIMEOUT:I = 0x1

.field public static final LMS_STATUS_MAXIMAL_CONNECTION_TIMEOUT:I = 0x2


# instance fields
.field public final address:Ljava/lang/String;

.field public final format:Ljava/lang/String;

.field public final msgCount:I

.field public final refNumber:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC$1;

    invoke-direct {v0}, Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC$1;-><init>()V

    sput-object v0, Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;->address:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;->refNumber:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;->msgCount:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;->format:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;->address:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;->address:Ljava/lang/String;

    iget v0, p1, Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;->refNumber:I

    iput v0, p0, Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;->refNumber:I

    iget v0, p1, Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;->msgCount:I

    iput v0, p0, Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;->msgCount:I

    iget-object v0, p1, Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;->format:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;->format:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;->address:Ljava/lang/String;

    iput p2, p0, Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;->refNumber:I

    iput p3, p0, Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;->msgCount:I

    iput-object p4, p0, Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;->format:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x0

    if-ne p1, p0, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    instance-of v2, p1, Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;

    if-nez v2, :cond_1

    return v1

    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;

    iget v2, p0, Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;->refNumber:I

    iget v3, v0, Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;->refNumber:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;->msgCount:I

    iget v3, v0, Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;->msgCount:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;->format:Ljava/lang/String;

    iget-object v3, v0, Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;->format:Ljava/lang/String;

    if-ne v2, v3, :cond_2

    iget-object v1, p0, Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;->address:Ljava/lang/String;

    iget-object v2, v0, Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;->address:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    :cond_2
    return v1
.end method

.method public hashCode()I
    .locals 3

    const/16 v0, 0x11

    iget-object v1, p0, Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;->address:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0x20f

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;->refNumber:I

    add-int v0, v1, v2

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;->msgCount:I

    add-int v0, v1, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;->format:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string/jumbo v0, "<address=%s; refNumber=%d, msgCount=%d, format=%s>"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;->address:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p0, Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;->refNumber:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget v2, p0, Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;->msgCount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;->format:Ljava/lang/String;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;->address:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;->refNumber:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;->msgCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;->format:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
