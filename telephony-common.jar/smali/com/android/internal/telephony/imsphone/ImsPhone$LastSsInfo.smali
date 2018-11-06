.class public Lcom/android/internal/telephony/imsphone/ImsPhone$LastSsInfo;
.super Ljava/lang/Object;
.source "ImsPhone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/imsphone/ImsPhone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LastSsInfo"
.end annotation


# instance fields
.field public clirMode:I

.field public commandInterfaceCFAction:I

.field public commandInterfaceCFReason:I

.field public dialNumber:Ljava/lang/String;

.field public enable:Z

.field public facility:Ljava/lang/String;

.field public lockState:Z

.field public password:Ljava/lang/String;

.field public serviceClass:I

.field public timerSeconds:I


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$LastSsInfo;->enable:Z

    iput v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$LastSsInfo;->serviceClass:I

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$LastSsInfo;->dialNumber:Ljava/lang/String;

    iput v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$LastSsInfo;->commandInterfaceCFAction:I

    iput v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$LastSsInfo;->commandInterfaceCFReason:I

    iput v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$LastSsInfo;->timerSeconds:I

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$LastSsInfo;->facility:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$LastSsInfo;->lockState:Z

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$LastSsInfo;->password:Ljava/lang/String;

    iput v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$LastSsInfo;->clirMode:I

    return-void
.end method


# virtual methods
.method public getCfAction()I
    .locals 1

    iget v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$LastSsInfo;->commandInterfaceCFAction:I

    return v0
.end method

.method public getCfReason()I
    .locals 1

    iget v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$LastSsInfo;->commandInterfaceCFReason:I

    return v0
.end method

.method public getClirMode()I
    .locals 1

    iget v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$LastSsInfo;->clirMode:I

    return v0
.end method

.method public getDialNumber()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$LastSsInfo;->dialNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getEnalbe()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$LastSsInfo;->enable:Z

    return v0
.end method

.method public getFacility()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$LastSsInfo;->facility:Ljava/lang/String;

    return-object v0
.end method

.method public getLockState()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$LastSsInfo;->lockState:Z

    return v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$LastSsInfo;->password:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceClass()I
    .locals 1

    iget v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$LastSsInfo;->serviceClass:I

    return v0
.end method

.method public getTimerSeconds()I
    .locals 1

    iget v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$LastSsInfo;->timerSeconds:I

    return v0
.end method

.method public resetSsInfo()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, -0x1

    iput-boolean v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$LastSsInfo;->enable:Z

    iput v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$LastSsInfo;->serviceClass:I

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$LastSsInfo;->dialNumber:Ljava/lang/String;

    iput v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$LastSsInfo;->commandInterfaceCFAction:I

    iput v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$LastSsInfo;->commandInterfaceCFReason:I

    iput v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$LastSsInfo;->timerSeconds:I

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$LastSsInfo;->facility:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$LastSsInfo;->lockState:Z

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$LastSsInfo;->password:Ljava/lang/String;

    iput v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$LastSsInfo;->clirMode:I

    return-void
.end method

.method public setCfAction(I)V
    .locals 0

    iput p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$LastSsInfo;->commandInterfaceCFAction:I

    return-void
.end method

.method public setCfReason(I)V
    .locals 0

    iput p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$LastSsInfo;->commandInterfaceCFReason:I

    return-void
.end method

.method public setClirMode(I)V
    .locals 0

    iput p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$LastSsInfo;->clirMode:I

    return-void
.end method

.method public setDialNumber(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$LastSsInfo;->dialNumber:Ljava/lang/String;

    return-void
.end method

.method public setEnable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$LastSsInfo;->enable:Z

    return-void
.end method

.method public setFacility(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$LastSsInfo;->facility:Ljava/lang/String;

    return-void
.end method

.method public setLockState(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$LastSsInfo;->lockState:Z

    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$LastSsInfo;->password:Ljava/lang/String;

    return-void
.end method

.method public setServiceClass(I)V
    .locals 0

    iput p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$LastSsInfo;->serviceClass:I

    return-void
.end method

.method public setTimerSeconds(I)V
    .locals 0

    iput p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$LastSsInfo;->timerSeconds:I

    return-void
.end method
