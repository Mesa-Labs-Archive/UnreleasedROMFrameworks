.class final synthetic Ljava/util/-$Lambda$fWIoPSZ-61hz8SM5DJYpXGYqc5o$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/IntConsumer;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(I)V
    .locals 1

    iget-object v0, p0, Ljava/util/-$Lambda$fWIoPSZ-61hz8SM5DJYpXGYqc5o$3;->-$f0:Ljava/lang/Object;

    check-cast v0, Ljava/util/function/Consumer;

    invoke-static {v0, p1}, Ljava/util/Spliterator$OfInt;->-java_util_Spliterator$OfInt-mthref-0(Ljava/util/function/Consumer;I)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/-$Lambda$fWIoPSZ-61hz8SM5DJYpXGYqc5o$3;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final accept(I)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/util/-$Lambda$fWIoPSZ-61hz8SM5DJYpXGYqc5o$3;->$m$0(I)V

    return-void
.end method
