.class final synthetic Ljava/util/stream/-$Lambda$DJvCeprCIGMk0JvfSkTmQUmEYKA$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/DoubleConsumer;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(D)V
    .locals 1

    iget-object v0, p0, Ljava/util/stream/-$Lambda$DJvCeprCIGMk0JvfSkTmQUmEYKA$2;->-$f0:Ljava/lang/Object;

    check-cast v0, Ljava/util/stream/Sink;

    invoke-static {v0, p1, p2}, Ljava/util/stream/ReferencePipeline$9$1;->-java_util_stream_ReferencePipeline$9$1-mthref-0(Ljava/util/stream/Sink;D)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/stream/-$Lambda$DJvCeprCIGMk0JvfSkTmQUmEYKA$2;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final accept(D)V
    .locals 1

    invoke-direct {p0, p1, p2}, Ljava/util/stream/-$Lambda$DJvCeprCIGMk0JvfSkTmQUmEYKA$2;->$m$0(D)V

    return-void
.end method
