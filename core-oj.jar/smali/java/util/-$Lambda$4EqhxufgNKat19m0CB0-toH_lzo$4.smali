.class final synthetic Ljava/util/-$Lambda$4EqhxufgNKat19m0CB0-toH_lzo$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;
.implements Ljava/io/Serializable;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;

.field private final synthetic -$f1:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    iget-object v0, p0, Ljava/util/-$Lambda$4EqhxufgNKat19m0CB0-toH_lzo$4;->-$f0:Ljava/lang/Object;

    check-cast v0, Ljava/util/Comparator;

    iget-object v1, p0, Ljava/util/-$Lambda$4EqhxufgNKat19m0CB0-toH_lzo$4;->-$f1:Ljava/lang/Object;

    check-cast v1, Ljava/util/function/Function;

    invoke-static {v0, v1, p1, p2}, Ljava/util/Comparator;->lambda$-java_util_Comparator_19343(Ljava/util/Comparator;Ljava/util/function/Function;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/-$Lambda$4EqhxufgNKat19m0CB0-toH_lzo$4;->-$f0:Ljava/lang/Object;

    iput-object p2, p0, Ljava/util/-$Lambda$4EqhxufgNKat19m0CB0-toH_lzo$4;->-$f1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    invoke-direct {p0, p1, p2}, Ljava/util/-$Lambda$4EqhxufgNKat19m0CB0-toH_lzo$4;->$m$0(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
