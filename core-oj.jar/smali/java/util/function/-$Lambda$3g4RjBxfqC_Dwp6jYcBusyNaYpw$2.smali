.class final synthetic Ljava/util/function/-$Lambda$3g4RjBxfqC_Dwp6jYcBusyNaYpw$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/LongUnaryOperator;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;

.field private final synthetic -$f1:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(J)J
    .locals 3

    iget-object v0, p0, Ljava/util/function/-$Lambda$3g4RjBxfqC_Dwp6jYcBusyNaYpw$2;->-$f0:Ljava/lang/Object;

    check-cast v0, Ljava/util/function/LongUnaryOperator;

    iget-object v1, p0, Ljava/util/function/-$Lambda$3g4RjBxfqC_Dwp6jYcBusyNaYpw$2;->-$f1:Ljava/lang/Object;

    check-cast v1, Ljava/util/function/LongUnaryOperator;

    invoke-interface {v0, v1, p1, p2}, Ljava/util/function/LongUnaryOperator;->lambda$-java_util_function_LongUnaryOperator_2602(Ljava/util/function/LongUnaryOperator;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/function/-$Lambda$3g4RjBxfqC_Dwp6jYcBusyNaYpw$2;->-$f0:Ljava/lang/Object;

    iput-object p2, p0, Ljava/util/function/-$Lambda$3g4RjBxfqC_Dwp6jYcBusyNaYpw$2;->-$f1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final applyAsLong(J)J
    .locals 3

    invoke-direct {p0, p1, p2}, Ljava/util/function/-$Lambda$3g4RjBxfqC_Dwp6jYcBusyNaYpw$2;->$m$0(J)J

    move-result-wide v0

    return-wide v0
.end method
