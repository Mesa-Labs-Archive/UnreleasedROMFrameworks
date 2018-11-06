.class final synthetic Lcom/android/internal/telephony/ims/-$Lambda$6hDwuvYxqWrzW_Ex5wc53XnUOpg$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceControllerFactory;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Landroid/content/Context;Landroid/content/ComponentName;)Lcom/android/internal/telephony/ims/ImsServiceController;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/ims/-$Lambda$6hDwuvYxqWrzW_Ex5wc53XnUOpg$2;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/ims/ImsResolver;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/ims/ImsResolver;->lambda$-com_android_internal_telephony_ims_ImsResolver_7707(Landroid/content/Context;Landroid/content/ComponentName;)Lcom/android/internal/telephony/ims/ImsServiceController;

    move-result-object v0

    return-object v0
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/ims/-$Lambda$6hDwuvYxqWrzW_Ex5wc53XnUOpg$2;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final get(Landroid/content/Context;Landroid/content/ComponentName;)Lcom/android/internal/telephony/ims/ImsServiceController;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/ims/-$Lambda$6hDwuvYxqWrzW_Ex5wc53XnUOpg$2;->$m$0(Landroid/content/Context;Landroid/content/ComponentName;)Lcom/android/internal/telephony/ims/ImsServiceController;

    move-result-object v0

    return-object v0
.end method
