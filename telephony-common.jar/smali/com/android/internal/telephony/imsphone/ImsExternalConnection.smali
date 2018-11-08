.class public Lcom/android/internal/telephony/imsphone/ImsExternalConnection;
.super Lcom/android/internal/telephony/Connection;
.source "ImsExternalConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/imsphone/ImsExternalConnection$Listener;
    }
.end annotation


# static fields
.field private static final CONFERENCE_PREFIX:Ljava/lang/String; = "conf"


# instance fields
.field private mCall:Lcom/android/internal/telephony/imsphone/ImsExternalCall;

.field private mCallId:I

.field private final mContext:Landroid/content/Context;

.field private mIsPullable:Z

.field private final mListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/internal/telephony/imsphone/ImsExternalConnection$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private mOriginalAddress:Landroid/net/Uri;


# direct methods
.method protected constructor <init>(Lcom/android/internal/telephony/Phone;ILandroid/net/Uri;Z)V
    .locals 4

    const/4 v3, 0x1

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/Connection;-><init>(I)V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x8

    const v2, 0x3f666666    # 0.9f

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->mListeners:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/internal/telephony/imsphone/ImsExternalCall;

    invoke-direct {v0, p1, p0}, Lcom/android/internal/telephony/imsphone/ImsExternalCall;-><init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/imsphone/ImsExternalConnection;)V

    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->mCall:Lcom/android/internal/telephony/imsphone/ImsExternalCall;

    iput p2, p0, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->mCallId:I

    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->setExternalConnectionAddress(Landroid/net/Uri;)V

    iput v3, p0, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->mNumberPresentation:I

    iput-boolean p4, p0, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->mIsPullable:Z

    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->rebuildCapabilities()V

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->setActive()V

    return-void
.end method

.method private rebuildCapabilities()V
    .locals 2

    const/16 v0, 0x10

    iget-boolean v1, p0, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->mIsPullable:Z

    if-eqz v1, :cond_0

    const/16 v0, 0x30

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->setConnectionCapabilities(I)V

    return-void
.end method


# virtual methods
.method public addListener(Lcom/android/internal/telephony/imsphone/ImsExternalConnection$Listener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public cancelPostDial()V
    .locals 0

    return-void
.end method

.method public getCall()Lcom/android/internal/telephony/Call;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->mCall:Lcom/android/internal/telephony/imsphone/ImsExternalCall;

    return-object v0
.end method

.method public getCallId()I
    .locals 1

    iget v0, p0, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->mCallId:I

    return v0
.end method

.method public getDisconnectTime()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getHoldDurationMillis()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getNumberPresentation()I
    .locals 1

    iget v0, p0, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->mNumberPresentation:I

    return v0
.end method

.method public getPreciseDisconnectCause()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getUUSInfo()Lcom/android/internal/telephony/UUSInfo;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getVendorDisconnectCause()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public hangup()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    return-void
.end method

.method public isMultiparty()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public proceedAfterWaitChar()V
    .locals 0

    return-void
.end method

.method public proceedAfterWildChar(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public pullExternalCall()V
    .locals 3

    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/imsphone/ImsExternalConnection$Listener;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/imsphone/ImsExternalConnection$Listener;->onPullExternalCall(Lcom/android/internal/telephony/imsphone/ImsExternalConnection;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public removeListener(Lcom/android/internal/telephony/imsphone/ImsExternalConnection$Listener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public separate()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    return-void
.end method

.method public setActive()V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->mCall:Lcom/android/internal/telephony/imsphone/ImsExternalCall;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->mCall:Lcom/android/internal/telephony/imsphone/ImsExternalCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsExternalCall;->setActive()V

    return-void
.end method

.method public setExternalConnectionAddress(Landroid/net/Uri;)V
    .locals 3

    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->mOriginalAddress:Landroid/net/Uri;

    const-string/jumbo v1, "sip"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "conf"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->mContext:Landroid/content/Context;

    const v2, 0x10401e4

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->mCnapName:Ljava/lang/String;

    const/4 v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->mCnapNamePresentation:I

    const-string/jumbo v1, ""

    iput-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->mAddress:Ljava/lang/String;

    const/4 v1, 0x2

    iput v1, p0, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->mNumberPresentation:I

    return-void

    :cond_0
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->convertSipUriToTelUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->mAddress:Ljava/lang/String;

    return-void
.end method

.method public setIsPullable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->mIsPullable:Z

    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->rebuildCapabilities()V

    return-void
.end method

.method public setTerminated()V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->mCall:Lcom/android/internal/telephony/imsphone/ImsExternalCall;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->mCall:Lcom/android/internal/telephony/imsphone/ImsExternalCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsExternalCall;->setTerminated()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v1, "[ImsExternalConnection dialogCallId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->mCallId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, " state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->mCall:Lcom/android/internal/telephony/imsphone/ImsExternalCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsExternalCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v2, :cond_1

    const-string/jumbo v1, "Active"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    :goto_0
    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->mCall:Lcom/android/internal/telephony/imsphone/ImsExternalCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsExternalCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v2, :cond_0

    const-string/jumbo v1, "Disconnected"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
