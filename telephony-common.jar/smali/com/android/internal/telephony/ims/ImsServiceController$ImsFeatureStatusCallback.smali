.class Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureStatusCallback;
.super Ljava/lang/Object;
.source "ImsServiceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ims/ImsServiceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImsFeatureStatusCallback"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureStatusCallback$1;
    }
.end annotation


# instance fields
.field private final mCallback:Lcom/android/ims/internal/IImsFeatureStatusCallback;

.field private mFeatureType:I

.field private mSlotId:I

.field final synthetic this$0:Lcom/android/internal/telephony/ims/ImsServiceController;


# direct methods
.method static synthetic -get0(Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureStatusCallback;)I
    .locals 1

    iget v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureStatusCallback;->mFeatureType:I

    return v0
.end method

.method static synthetic -get1(Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureStatusCallback;)I
    .locals 1

    iget v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureStatusCallback;->mSlotId:I

    return v0
.end method

.method constructor <init>(Lcom/android/internal/telephony/ims/ImsServiceController;II)V
    .locals 1

    iput-object p1, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureStatusCallback;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureStatusCallback$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureStatusCallback$1;-><init>(Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureStatusCallback;)V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureStatusCallback;->mCallback:Lcom/android/ims/internal/IImsFeatureStatusCallback;

    iput p2, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureStatusCallback;->mSlotId:I

    iput p3, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureStatusCallback;->mFeatureType:I

    return-void
.end method


# virtual methods
.method public getCallback()Lcom/android/ims/internal/IImsFeatureStatusCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureStatusCallback;->mCallback:Lcom/android/ims/internal/IImsFeatureStatusCallback;

    return-object v0
.end method
