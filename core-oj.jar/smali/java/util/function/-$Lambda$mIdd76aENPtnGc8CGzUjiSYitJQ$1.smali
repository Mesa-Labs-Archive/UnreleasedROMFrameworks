.class final synthetic Ljava/util/function/-$Lambda$mIdd76aENPtnGc8CGzUjiSYitJQ$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/BinaryOperator;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Ljava/util/function/-$Lambda$mIdd76aENPtnGc8CGzUjiSYitJQ$1;->-$f0:Ljava/lang/Object;

    check-cast v0, Ljava/util/Comparator;

    invoke-static {v0, p1, p2}, Ljava/util/function/BinaryOperator;->lambda$-java_util_function_BinaryOperator_2544(Ljava/util/Comparator;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/function/-$Lambda$mIdd76aENPtnGc8CGzUjiSYitJQ$1;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0, p1, p2}, Ljava/util/function/-$Lambda$mIdd76aENPtnGc8CGzUjiSYitJQ$1;->$m$0(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
