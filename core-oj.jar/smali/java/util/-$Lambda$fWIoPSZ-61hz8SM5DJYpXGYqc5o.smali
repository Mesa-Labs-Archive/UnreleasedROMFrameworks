.class final synthetic Ljava/util/-$Lambda$fWIoPSZ-61hz8SM5DJYpXGYqc5o;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/DoubleConsumer;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(D)V
    .locals 1

    iget-object v0, p0, Ljava/util/-$Lambda$fWIoPSZ-61hz8SM5DJYpXGYqc5o;->-$f0:Ljava/lang/Object;

    check-cast v0, Ljava/util/function/Consumer;

    invoke-static {v0, p1, p2}, Ljava/util/Spliterator$OfDouble;->-java_util_Spliterator$OfDouble-mthref-1(Ljava/util/function/Consumer;D)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/-$Lambda$fWIoPSZ-61hz8SM5DJYpXGYqc5o;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final accept(D)V
    .locals 1

    invoke-direct {p0, p1, p2}, Ljava/util/-$Lambda$fWIoPSZ-61hz8SM5DJYpXGYqc5o;->$m$0(D)V

    return-void
.end method
