.class final synthetic Ljava/util/stream/-$Lambda$DJvCeprCIGMk0JvfSkTmQUmEYKA$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;

.field private final synthetic -$f1:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Ljava/util/stream/-$Lambda$DJvCeprCIGMk0JvfSkTmQUmEYKA$5;->-$f0:Ljava/lang/Object;

    check-cast v0, Ljava/util/function/BiConsumer;

    iget-object v1, p0, Ljava/util/stream/-$Lambda$DJvCeprCIGMk0JvfSkTmQUmEYKA$5;->-$f1:Ljava/lang/Object;

    invoke-static {v0, v1, p1}, Ljava/util/stream/ReferencePipeline;->lambda$-java_util_stream_ReferencePipeline_19478(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/stream/-$Lambda$DJvCeprCIGMk0JvfSkTmQUmEYKA$5;->-$f0:Ljava/lang/Object;

    iput-object p2, p0, Ljava/util/stream/-$Lambda$DJvCeprCIGMk0JvfSkTmQUmEYKA$5;->-$f1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/util/stream/-$Lambda$DJvCeprCIGMk0JvfSkTmQUmEYKA$5;->$m$0(Ljava/lang/Object;)V

    return-void
.end method
