.class final synthetic Lcom/android/internal/telephony/ims/-$Lambda$Dp0MKpTfGctn5WSf-VZIVicYMbM$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/ims/-$Lambda$Dp0MKpTfGctn5WSf-VZIVicYMbM$2;->-$f0:Ljava/lang/Object;

    check-cast v0, Landroid/util/Pair;

    check-cast p1, Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureStatusCallback;

    invoke-static {v0, p1}, Lcom/android/internal/telephony/ims/ImsServiceController;->lambda$-com_android_internal_telephony_ims_ImsServiceController_18817(Landroid/util/Pair;Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureStatusCallback;)Z

    move-result v0

    return v0
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/ims/-$Lambda$Dp0MKpTfGctn5WSf-VZIVicYMbM$2;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ims/-$Lambda$Dp0MKpTfGctn5WSf-VZIVicYMbM$2;->$m$0(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
