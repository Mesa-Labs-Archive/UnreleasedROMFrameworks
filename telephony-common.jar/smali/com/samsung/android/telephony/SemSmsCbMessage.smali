.class public Lcom/samsung/android/telephony/SemSmsCbMessage;
.super Ljava/lang/Object;
.source "SemSmsCbMessage.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/telephony/SemSmsCbMessage$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/telephony/SemSmsCbMessage;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mSmsCbMessage:Landroid/telephony/SmsCbMessage;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/telephony/SemSmsCbMessage$1;

    invoke-direct {v0}, Lcom/samsung/android/telephony/SemSmsCbMessage$1;-><init>()V

    sput-object v0, Lcom/samsung/android/telephony/SemSmsCbMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/telephony/SmsCbMessage;

    invoke-direct {v0, p1}, Landroid/telephony/SmsCbMessage;-><init>(Landroid/os/Parcel;)V

    iput-object v0, p0, Lcom/samsung/android/telephony/SemSmsCbMessage;->mSmsCbMessage:Landroid/telephony/SmsCbMessage;

    return-void
.end method

.method public constructor <init>(Landroid/telephony/SmsCbMessage;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/telephony/SemSmsCbMessage;->mSmsCbMessage:Landroid/telephony/SmsCbMessage;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCmasAlertHandling()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/telephony/SemSmsCbMessage;->mSmsCbMessage:Landroid/telephony/SmsCbMessage;

    invoke-virtual {v0}, Landroid/telephony/SmsCbMessage;->getCmasAlertHandling()I

    move-result v0

    return v0
.end method

.method public getCmasCategory()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/telephony/SemSmsCbMessage;->mSmsCbMessage:Landroid/telephony/SmsCbMessage;

    invoke-virtual {v0}, Landroid/telephony/SmsCbMessage;->getCmasCategory()I

    move-result v0

    return v0
.end method

.method public getCmasCertainty()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/telephony/SemSmsCbMessage;->mSmsCbMessage:Landroid/telephony/SmsCbMessage;

    invoke-virtual {v0}, Landroid/telephony/SmsCbMessage;->getCmasCertainty()I

    move-result v0

    return v0
.end method

.method public getCmasMessageID()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/telephony/SemSmsCbMessage;->mSmsCbMessage:Landroid/telephony/SmsCbMessage;

    invoke-virtual {v0}, Landroid/telephony/SmsCbMessage;->getCmasMessageID()I

    move-result v0

    return v0
.end method

.method public getCmasMsgExpires()J
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/telephony/SemSmsCbMessage;->mSmsCbMessage:Landroid/telephony/SmsCbMessage;

    invoke-virtual {v0}, Landroid/telephony/SmsCbMessage;->getCmasMsgExpires()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCmasRecordTypeFirstExists()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/telephony/SemSmsCbMessage;->mSmsCbMessage:Landroid/telephony/SmsCbMessage;

    invoke-virtual {v0}, Landroid/telephony/SmsCbMessage;->getCmasRecordTypeFirstExists()Z

    move-result v0

    return v0
.end method

.method public getCmasRecordTypeSecondExists()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/telephony/SemSmsCbMessage;->mSmsCbMessage:Landroid/telephony/SmsCbMessage;

    invoke-virtual {v0}, Landroid/telephony/SmsCbMessage;->getCmasRecordTypeSecondExists()Z

    move-result v0

    return v0
.end method

.method public getCmasResponseType()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/telephony/SemSmsCbMessage;->mSmsCbMessage:Landroid/telephony/SmsCbMessage;

    invoke-virtual {v0}, Landroid/telephony/SmsCbMessage;->getCmasResponseType()I

    move-result v0

    return v0
.end method

.method public getCmasSeverity()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/telephony/SemSmsCbMessage;->mSmsCbMessage:Landroid/telephony/SmsCbMessage;

    invoke-virtual {v0}, Landroid/telephony/SmsCbMessage;->getCmasSeverity()I

    move-result v0

    return v0
.end method

.method public getCmasUrgency()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/telephony/SemSmsCbMessage;->mSmsCbMessage:Landroid/telephony/SmsCbMessage;

    invoke-virtual {v0}, Landroid/telephony/SmsCbMessage;->getCmasUrgency()I

    move-result v0

    return v0
.end method

.method public getCmasWarningInfo()Landroid/telephony/SmsCbCmasInfo;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/telephony/SemSmsCbMessage;->mSmsCbMessage:Landroid/telephony/SmsCbMessage;

    invoke-virtual {v0}, Landroid/telephony/SmsCbMessage;->getCmasWarningInfo()Landroid/telephony/SmsCbCmasInfo;

    move-result-object v0

    return-object v0
.end method

.method public getEtwsWarningInfo()Landroid/telephony/SmsCbEtwsInfo;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/telephony/SemSmsCbMessage;->mSmsCbMessage:Landroid/telephony/SmsCbMessage;

    invoke-virtual {v0}, Landroid/telephony/SmsCbMessage;->getEtwsWarningInfo()Landroid/telephony/SmsCbEtwsInfo;

    move-result-object v0

    return-object v0
.end method

.method public getGeographicalScope()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/telephony/SemSmsCbMessage;->mSmsCbMessage:Landroid/telephony/SmsCbMessage;

    invoke-virtual {v0}, Landroid/telephony/SmsCbMessage;->getGeographicalScope()I

    move-result v0

    return v0
.end method

.method public getLanguageCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/telephony/SemSmsCbMessage;->mSmsCbMessage:Landroid/telephony/SmsCbMessage;

    invoke-virtual {v0}, Landroid/telephony/SmsCbMessage;->getLanguageCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocation()Landroid/telephony/SmsCbLocation;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/telephony/SemSmsCbMessage;->mSmsCbMessage:Landroid/telephony/SmsCbMessage;

    invoke-virtual {v0}, Landroid/telephony/SmsCbMessage;->getLocation()Landroid/telephony/SmsCbLocation;

    move-result-object v0

    return-object v0
.end method

.method public getMessageBody()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/telephony/SemSmsCbMessage;->mSmsCbMessage:Landroid/telephony/SmsCbMessage;

    invoke-virtual {v0}, Landroid/telephony/SmsCbMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMessageFormat()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/telephony/SemSmsCbMessage;->mSmsCbMessage:Landroid/telephony/SmsCbMessage;

    invoke-virtual {v0}, Landroid/telephony/SmsCbMessage;->getMessageFormat()I

    move-result v0

    return v0
.end method

.method public getSerialNumber()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/telephony/SemSmsCbMessage;->mSmsCbMessage:Landroid/telephony/SmsCbMessage;

    invoke-virtual {v0}, Landroid/telephony/SmsCbMessage;->getSerialNumber()I

    move-result v0

    return v0
.end method

.method public getServiceCategory()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/telephony/SemSmsCbMessage;->mSmsCbMessage:Landroid/telephony/SmsCbMessage;

    invoke-virtual {v0}, Landroid/telephony/SmsCbMessage;->getServiceCategory()I

    move-result v0

    return v0
.end method

.method public isCmasMessage()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/telephony/SemSmsCbMessage;->mSmsCbMessage:Landroid/telephony/SmsCbMessage;

    invoke-virtual {v0}, Landroid/telephony/SmsCbMessage;->isCmasMessage()Z

    move-result v0

    return v0
.end method

.method public isEmergencyMessage()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/telephony/SemSmsCbMessage;->mSmsCbMessage:Landroid/telephony/SmsCbMessage;

    invoke-virtual {v0}, Landroid/telephony/SmsCbMessage;->isEmergencyMessage()Z

    move-result v0

    return v0
.end method

.method public isEtwsMessage()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/telephony/SemSmsCbMessage;->mSmsCbMessage:Landroid/telephony/SmsCbMessage;

    invoke-virtual {v0}, Landroid/telephony/SmsCbMessage;->isEtwsMessage()Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/telephony/SemSmsCbMessage;->mSmsCbMessage:Landroid/telephony/SmsCbMessage;

    invoke-virtual {v0}, Landroid/telephony/SmsCbMessage;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/telephony/SemSmsCbMessage;->mSmsCbMessage:Landroid/telephony/SmsCbMessage;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/SmsCbMessage;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
