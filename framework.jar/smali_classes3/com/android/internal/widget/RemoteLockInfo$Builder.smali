.class public Lcom/android/internal/widget/RemoteLockInfo$Builder;
.super Ljava/lang/Object;
.source "RemoteLockInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/RemoteLockInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mAllowFailCount:I

.field private mBundle:Landroid/os/Bundle;

.field private mClientName:Ljava/lang/CharSequence;

.field private mEmailAddress:Ljava/lang/CharSequence;

.field private mEnableEmergencyCall:Z

.field private mLockState:Z

.field private mLockTimeOut:J

.field private mLockType:I

.field private mMessage:Ljava/lang/CharSequence;

.field private mPermanentBlockCount:I

.field private mPhoneNumber:Ljava/lang/CharSequence;

.field private mSkipPinContainer:Z


# direct methods
.method static synthetic -get0(Lcom/android/internal/widget/RemoteLockInfo$Builder;)I
    .locals 1

    iget v0, p0, Lcom/android/internal/widget/RemoteLockInfo$Builder;->mAllowFailCount:I

    return v0
.end method

.method static synthetic -get1(Lcom/android/internal/widget/RemoteLockInfo$Builder;)Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/RemoteLockInfo$Builder;->mBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/internal/widget/RemoteLockInfo$Builder;)Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/RemoteLockInfo$Builder;->mPhoneNumber:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic -get11(Lcom/android/internal/widget/RemoteLockInfo$Builder;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/widget/RemoteLockInfo$Builder;->mSkipPinContainer:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/internal/widget/RemoteLockInfo$Builder;)Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/RemoteLockInfo$Builder;->mClientName:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/internal/widget/RemoteLockInfo$Builder;)Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/RemoteLockInfo$Builder;->mEmailAddress:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/internal/widget/RemoteLockInfo$Builder;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/widget/RemoteLockInfo$Builder;->mEnableEmergencyCall:Z

    return v0
.end method

.method static synthetic -get5(Lcom/android/internal/widget/RemoteLockInfo$Builder;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/widget/RemoteLockInfo$Builder;->mLockState:Z

    return v0
.end method

.method static synthetic -get6(Lcom/android/internal/widget/RemoteLockInfo$Builder;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/internal/widget/RemoteLockInfo$Builder;->mLockTimeOut:J

    return-wide v0
.end method

.method static synthetic -get7(Lcom/android/internal/widget/RemoteLockInfo$Builder;)I
    .locals 1

    iget v0, p0, Lcom/android/internal/widget/RemoteLockInfo$Builder;->mLockType:I

    return v0
.end method

.method static synthetic -get8(Lcom/android/internal/widget/RemoteLockInfo$Builder;)Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/RemoteLockInfo$Builder;->mMessage:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/internal/widget/RemoteLockInfo$Builder;)I
    .locals 1

    iget v0, p0, Lcom/android/internal/widget/RemoteLockInfo$Builder;->mPermanentBlockCount:I

    return v0
.end method

.method public constructor <init>(IZ)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/internal/widget/RemoteLockInfo$Builder;->mMessage:Ljava/lang/CharSequence;

    iput-object v2, p0, Lcom/android/internal/widget/RemoteLockInfo$Builder;->mPhoneNumber:Ljava/lang/CharSequence;

    iput-object v2, p0, Lcom/android/internal/widget/RemoteLockInfo$Builder;->mEmailAddress:Ljava/lang/CharSequence;

    iput-boolean v3, p0, Lcom/android/internal/widget/RemoteLockInfo$Builder;->mEnableEmergencyCall:Z

    iput-object v2, p0, Lcom/android/internal/widget/RemoteLockInfo$Builder;->mClientName:Ljava/lang/CharSequence;

    iput v3, p0, Lcom/android/internal/widget/RemoteLockInfo$Builder;->mAllowFailCount:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/widget/RemoteLockInfo$Builder;->mLockTimeOut:J

    iput v3, p0, Lcom/android/internal/widget/RemoteLockInfo$Builder;->mPermanentBlockCount:I

    iput-boolean v3, p0, Lcom/android/internal/widget/RemoteLockInfo$Builder;->mSkipPinContainer:Z

    iput-object v2, p0, Lcom/android/internal/widget/RemoteLockInfo$Builder;->mBundle:Landroid/os/Bundle;

    iput p1, p0, Lcom/android/internal/widget/RemoteLockInfo$Builder;->mLockType:I

    iput-boolean p2, p0, Lcom/android/internal/widget/RemoteLockInfo$Builder;->mLockState:Z

    return-void
.end method


# virtual methods
.method public build()Lcom/android/internal/widget/RemoteLockInfo;
    .locals 1

    new-instance v0, Lcom/android/internal/widget/RemoteLockInfo;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/RemoteLockInfo;-><init>(Lcom/android/internal/widget/RemoteLockInfo$Builder;)V

    return-object v0
.end method

.method public setAllowFailCount(I)Lcom/android/internal/widget/RemoteLockInfo$Builder;
    .locals 0

    iput p1, p0, Lcom/android/internal/widget/RemoteLockInfo$Builder;->mAllowFailCount:I

    return-object p0
.end method

.method public setBlockCount(I)Lcom/android/internal/widget/RemoteLockInfo$Builder;
    .locals 0

    iput p1, p0, Lcom/android/internal/widget/RemoteLockInfo$Builder;->mPermanentBlockCount:I

    return-object p0
.end method

.method public setBundle(Landroid/os/Bundle;)Lcom/android/internal/widget/RemoteLockInfo$Builder;
    .locals 0

    iput-object p1, p0, Lcom/android/internal/widget/RemoteLockInfo$Builder;->mBundle:Landroid/os/Bundle;

    return-object p0
.end method

.method public setClientName(Ljava/lang/CharSequence;)Lcom/android/internal/widget/RemoteLockInfo$Builder;
    .locals 0

    iput-object p1, p0, Lcom/android/internal/widget/RemoteLockInfo$Builder;->mClientName:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setEmailAddress(Ljava/lang/CharSequence;)Lcom/android/internal/widget/RemoteLockInfo$Builder;
    .locals 0

    iput-object p1, p0, Lcom/android/internal/widget/RemoteLockInfo$Builder;->mEmailAddress:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setEnableEmergencyCall(Z)Lcom/android/internal/widget/RemoteLockInfo$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/widget/RemoteLockInfo$Builder;->mEnableEmergencyCall:Z

    return-object p0
.end method

.method public setLockTimeOut(J)Lcom/android/internal/widget/RemoteLockInfo$Builder;
    .locals 1

    iput-wide p1, p0, Lcom/android/internal/widget/RemoteLockInfo$Builder;->mLockTimeOut:J

    return-object p0
.end method

.method public setMessage(Ljava/lang/CharSequence;)Lcom/android/internal/widget/RemoteLockInfo$Builder;
    .locals 0

    iput-object p1, p0, Lcom/android/internal/widget/RemoteLockInfo$Builder;->mMessage:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setPhoneNumber(Ljava/lang/CharSequence;)Lcom/android/internal/widget/RemoteLockInfo$Builder;
    .locals 0

    iput-object p1, p0, Lcom/android/internal/widget/RemoteLockInfo$Builder;->mPhoneNumber:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setSkipPinContainer(Z)Lcom/android/internal/widget/RemoteLockInfo$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/widget/RemoteLockInfo$Builder;->mSkipPinContainer:Z

    return-object p0
.end method
