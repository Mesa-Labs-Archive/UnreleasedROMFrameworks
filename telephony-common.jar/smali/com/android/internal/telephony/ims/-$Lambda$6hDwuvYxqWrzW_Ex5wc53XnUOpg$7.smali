.class final synthetic Lcom/android/internal/telephony/ims/-$Lambda$6hDwuvYxqWrzW_Ex5wc53XnUOpg$7;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field private final synthetic -$f0:I


# direct methods
.method private final synthetic $m$0(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/android/internal/telephony/ims/-$Lambda$6hDwuvYxqWrzW_Ex5wc53XnUOpg$7;->-$f0:I

    check-cast p1, Ljava/lang/Integer;

    invoke-static {v0, p1}, Lcom/android/internal/telephony/ims/ImsResolver;->lambda$-com_android_internal_telephony_ims_ImsResolver_24395(ILjava/lang/Integer;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/internal/telephony/ims/-$Lambda$6hDwuvYxqWrzW_Ex5wc53XnUOpg$7;->-$f0:I

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ims/-$Lambda$6hDwuvYxqWrzW_Ex5wc53XnUOpg$7;->$m$0(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
