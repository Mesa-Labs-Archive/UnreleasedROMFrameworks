.class final synthetic Ljava/util/-$Lambda$0ZvtycDcLIMOjCTCE-AzwhVMR0g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/DoubleConsumer;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(D)V
    .locals 1

    iget-object v0, p0, Ljava/util/-$Lambda$0ZvtycDcLIMOjCTCE-AzwhVMR0g;->-$f0:Ljava/lang/Object;

    check-cast v0, Ljava/util/function/Consumer;

    invoke-static {v0, p1, p2}, Ljava/util/PrimitiveIterator$OfDouble;->-java_util_PrimitiveIterator$OfDouble-mthref-0(Ljava/util/function/Consumer;D)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/-$Lambda$0ZvtycDcLIMOjCTCE-AzwhVMR0g;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final accept(D)V
    .locals 1

    invoke-direct {p0, p1, p2}, Ljava/util/-$Lambda$0ZvtycDcLIMOjCTCE-AzwhVMR0g;->$m$0(D)V

    return-void
.end method
