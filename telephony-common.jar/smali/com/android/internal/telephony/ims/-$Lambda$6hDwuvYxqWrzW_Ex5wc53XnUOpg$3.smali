.class final synthetic Lcom/android/internal/telephony/ims/-$Lambda$6hDwuvYxqWrzW_Ex5wc53XnUOpg$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/ims/-$Lambda$6hDwuvYxqWrzW_Ex5wc53XnUOpg$3;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;

    check-cast p1, Lcom/android/internal/telephony/ims/ImsServiceController;

    invoke-static {v0, p1}, Lcom/android/internal/telephony/ims/ImsResolver;->lambda$-com_android_internal_telephony_ims_ImsResolver_19119(Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;Lcom/android/internal/telephony/ims/ImsServiceController;)Z

    move-result v0

    return v0
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/ims/-$Lambda$6hDwuvYxqWrzW_Ex5wc53XnUOpg$3;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ims/-$Lambda$6hDwuvYxqWrzW_Ex5wc53XnUOpg$3;->$m$0(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
