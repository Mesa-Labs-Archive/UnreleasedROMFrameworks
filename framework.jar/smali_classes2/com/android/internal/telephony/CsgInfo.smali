.class public Lcom/android/internal/telephony/CsgInfo;
.super Ljava/lang/Object;
.source "CsgInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/CsgInfo$CsgListCat;
    }
.end annotation


# instance fields
.field public mCsgCat:Lcom/android/internal/telephony/CsgInfo$CsgListCat;

.field public mCsgId:I

.field public mCsgName:Ljava/lang/String;

.field public mOperatorNumeric:Ljava/lang/String;

.field public mRat:I

.field public mSignalStrength:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/android/internal/telephony/CsgInfo;->mCsgId:I

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/CsgInfo;->mCsgName:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/CsgInfo;->mOperatorNumeric:Ljava/lang/String;

    iput v1, p0, Lcom/android/internal/telephony/CsgInfo;->mRat:I

    sget-object v0, Lcom/android/internal/telephony/CsgInfo$CsgListCat;->UNKNOWN:Lcom/android/internal/telephony/CsgInfo$CsgListCat;

    iput-object v0, p0, Lcom/android/internal/telephony/CsgInfo;->mCsgCat:Lcom/android/internal/telephony/CsgInfo$CsgListCat;

    iput v1, p0, Lcom/android/internal/telephony/CsgInfo;->mSignalStrength:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;III)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/internal/telephony/CsgInfo;->mCsgId:I

    iput-object p2, p0, Lcom/android/internal/telephony/CsgInfo;->mCsgName:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/internal/telephony/CsgInfo;->mOperatorNumeric:Ljava/lang/String;

    iput p4, p0, Lcom/android/internal/telephony/CsgInfo;->mRat:I

    invoke-virtual {p0, p5}, Lcom/android/internal/telephony/CsgInfo;->convertFromInt(I)Lcom/android/internal/telephony/CsgInfo$CsgListCat;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/CsgInfo;->mCsgCat:Lcom/android/internal/telephony/CsgInfo$CsgListCat;

    iput p6, p0, Lcom/android/internal/telephony/CsgInfo;->mSignalStrength:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;ILcom/android/internal/telephony/CsgInfo$CsgListCat;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/internal/telephony/CsgInfo;->mCsgId:I

    iput-object p2, p0, Lcom/android/internal/telephony/CsgInfo;->mCsgName:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/internal/telephony/CsgInfo;->mOperatorNumeric:Ljava/lang/String;

    iput p4, p0, Lcom/android/internal/telephony/CsgInfo;->mRat:I

    iput-object p5, p0, Lcom/android/internal/telephony/CsgInfo;->mCsgCat:Lcom/android/internal/telephony/CsgInfo$CsgListCat;

    iput p6, p0, Lcom/android/internal/telephony/CsgInfo;->mSignalStrength:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/CsgInfo;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/CsgInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/CsgInfo;->copyFrom(Lcom/android/internal/telephony/CsgInfo;)V

    return-void
.end method

.method private convertFromString(Ljava/lang/String;)Lcom/android/internal/telephony/CsgInfo$CsgListCat;
    .locals 1

    const-string/jumbo v0, "ALLOWED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/CsgInfo$CsgListCat;->ALLOWED:Lcom/android/internal/telephony/CsgInfo$CsgListCat;

    return-object v0

    :cond_0
    const-string/jumbo v0, "OPERATOR"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/internal/telephony/CsgInfo$CsgListCat;->OPERATOR:Lcom/android/internal/telephony/CsgInfo$CsgListCat;

    return-object v0

    :cond_1
    const-string/jumbo v0, "CONNECTED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/internal/telephony/CsgInfo$CsgListCat;->CONNECTED:Lcom/android/internal/telephony/CsgInfo$CsgListCat;

    return-object v0

    :cond_2
    sget-object v0, Lcom/android/internal/telephony/CsgInfo$CsgListCat;->UNKNOWN:Lcom/android/internal/telephony/CsgInfo$CsgListCat;

    return-object v0
.end method


# virtual methods
.method public convertFromInt(I)Lcom/android/internal/telephony/CsgInfo$CsgListCat;
    .locals 1

    sget-object v0, Lcom/android/internal/telephony/CsgInfo$CsgListCat;->UNKNOWN:Lcom/android/internal/telephony/CsgInfo$CsgListCat;

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lcom/android/internal/telephony/CsgInfo$CsgListCat;->ALLOWED:Lcom/android/internal/telephony/CsgInfo$CsgListCat;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/android/internal/telephony/CsgInfo$CsgListCat;->OPERATOR:Lcom/android/internal/telephony/CsgInfo$CsgListCat;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/android/internal/telephony/CsgInfo$CsgListCat;->CONNECTED:Lcom/android/internal/telephony/CsgInfo$CsgListCat;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected copyFrom(Lcom/android/internal/telephony/CsgInfo;)V
    .locals 1

    iget v0, p1, Lcom/android/internal/telephony/CsgInfo;->mCsgId:I

    iput v0, p0, Lcom/android/internal/telephony/CsgInfo;->mCsgId:I

    iget-object v0, p1, Lcom/android/internal/telephony/CsgInfo;->mCsgName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/CsgInfo;->mCsgName:Ljava/lang/String;

    iget-object v0, p1, Lcom/android/internal/telephony/CsgInfo;->mOperatorNumeric:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/CsgInfo;->mOperatorNumeric:Ljava/lang/String;

    iget v0, p1, Lcom/android/internal/telephony/CsgInfo;->mRat:I

    iput v0, p0, Lcom/android/internal/telephony/CsgInfo;->mRat:I

    iget-object v0, p1, Lcom/android/internal/telephony/CsgInfo;->mCsgCat:Lcom/android/internal/telephony/CsgInfo$CsgListCat;

    iput-object v0, p0, Lcom/android/internal/telephony/CsgInfo;->mCsgCat:Lcom/android/internal/telephony/CsgInfo$CsgListCat;

    iget v0, p1, Lcom/android/internal/telephony/CsgInfo;->mSignalStrength:I

    iput v0, p0, Lcom/android/internal/telephony/CsgInfo;->mSignalStrength:I

    return-void
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/CsgInfo;->mCsgId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/CsgInfo;->mCsgName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/CsgInfo;->mOperatorNumeric:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/CsgInfo;->mRat:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/CsgInfo;->convertFromInt(I)Lcom/android/internal/telephony/CsgInfo$CsgListCat;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/CsgInfo;->mCsgCat:Lcom/android/internal/telephony/CsgInfo$CsgListCat;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/CsgInfo;->mSignalStrength:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "CsgInfo: { ID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/CsgInfo;->mCsgId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", Name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/CsgInfo;->mCsgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", plmn: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/CsgInfo;->mOperatorNumeric:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", RAT: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/CsgInfo;->mRat:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", Category: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/CsgInfo;->mCsgCat:Lcom/android/internal/telephony/CsgInfo$CsgListCat;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", SignalStrength: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/CsgInfo;->mSignalStrength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "dBm }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
