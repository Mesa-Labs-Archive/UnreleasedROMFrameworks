.class public Lcom/android/internal/telephony/cat/BearerEUTRAN;
.super Ljava/lang/Object;
.source "BearerEUTRAN.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cat/BearerEUTRAN$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/telephony/cat/BearerEUTRAN;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mPdnType:I

.field public mQci:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/internal/telephony/cat/BearerEUTRAN$1;

    invoke-direct {v0}, Lcom/android/internal/telephony/cat/BearerEUTRAN$1;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/cat/BearerEUTRAN;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/cat/BearerEUTRAN;->mQci:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/cat/BearerEUTRAN;->mPdnType:I

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/cat/BearerEUTRAN;->mQci:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/cat/BearerEUTRAN;->mPdnType:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/android/internal/telephony/cat/BearerEUTRAN;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/BearerEUTRAN;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public dump()V
    .locals 3

    const-string/jumbo v0, "Bearer E-UTRAN"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "QCI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/cat/BearerEUTRAN;->mQci:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", PDN Type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/cat/BearerEUTRAN;->mPdnType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setup([BII)V
    .locals 1

    const/4 v0, 0x3

    if-le p2, v0, :cond_0

    aget-byte v0, p1, p3

    iput v0, p0, Lcom/android/internal/telephony/cat/BearerEUTRAN;->mQci:I

    :cond_0
    add-int v0, p3, p2

    add-int/lit8 v0, v0, -0x2

    aget-byte v0, p1, v0

    iput v0, p0, Lcom/android/internal/telephony/cat/BearerEUTRAN;->mPdnType:I

    return-void
.end method

.method public writeParametersTobuffer(Ljava/io/ByteArrayOutputStream;)V
    .locals 1

    iget v0, p0, Lcom/android/internal/telephony/cat/BearerEUTRAN;->mQci:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/cat/BearerEUTRAN;->mQci:I

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :cond_0
    iget v0, p0, Lcom/android/internal/telephony/cat/BearerEUTRAN;->mPdnType:I

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Lcom/android/internal/telephony/cat/BearerEUTRAN;->mQci:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/internal/telephony/cat/BearerEUTRAN;->mPdnType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
