.class final synthetic Ljava/util/stream/-$Lambda$6Ha_z5NODYn_Qs3Vg00tRqQ1oBM;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;

.field private final synthetic -$f1:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Ljava/util/stream/-$Lambda$6Ha_z5NODYn_Qs3Vg00tRqQ1oBM;->-$f0:Ljava/lang/Object;

    check-cast v0, Ljava/util/stream/MatchOps$MatchKind;

    iget-object v1, p0, Ljava/util/stream/-$Lambda$6Ha_z5NODYn_Qs3Vg00tRqQ1oBM;->-$f1:Ljava/lang/Object;

    check-cast v1, Ljava/util/function/DoublePredicate;

    invoke-static {v0, v1}, Ljava/util/stream/MatchOps;->-java_util_stream_MatchOps-mthref-3(Ljava/util/stream/MatchOps$MatchKind;Ljava/util/function/DoublePredicate;)Ljava/util/stream/MatchOps$BooleanTerminalSink;

    move-result-object v0

    return-object v0
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/stream/-$Lambda$6Ha_z5NODYn_Qs3Vg00tRqQ1oBM;->-$f0:Ljava/lang/Object;

    iput-object p2, p0, Ljava/util/stream/-$Lambda$6Ha_z5NODYn_Qs3Vg00tRqQ1oBM;->-$f1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Ljava/util/stream/-$Lambda$6Ha_z5NODYn_Qs3Vg00tRqQ1oBM;->$m$0()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
