.class final synthetic Ljava/util/-$Lambda$i2v6-5RQNI3YGcqf1AP8d7D8zis$6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/UnaryOperator;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;

.field private final synthetic -$f1:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Ljava/util/-$Lambda$i2v6-5RQNI3YGcqf1AP8d7D8zis$6;->-$f0:Ljava/lang/Object;

    check-cast v0, Ljava/util/Collections$CheckedList;

    iget-object v1, p0, Ljava/util/-$Lambda$i2v6-5RQNI3YGcqf1AP8d7D8zis$6;->-$f1:Ljava/lang/Object;

    check-cast v1, Ljava/util/function/UnaryOperator;

    invoke-virtual {v0, v1, p1}, Ljava/util/Collections$CheckedList;->lambda$-java_util_Collections$CheckedList_142882(Ljava/util/function/UnaryOperator;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/-$Lambda$i2v6-5RQNI3YGcqf1AP8d7D8zis$6;->-$f0:Ljava/lang/Object;

    iput-object p2, p0, Ljava/util/-$Lambda$i2v6-5RQNI3YGcqf1AP8d7D8zis$6;->-$f1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0, p1}, Ljava/util/-$Lambda$i2v6-5RQNI3YGcqf1AP8d7D8zis$6;->$m$0(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
