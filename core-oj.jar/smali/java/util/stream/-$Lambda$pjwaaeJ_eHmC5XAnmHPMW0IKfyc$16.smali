.class final synthetic Ljava/util/stream/-$Lambda$pjwaaeJ_eHmC5XAnmHPMW0IKfyc$16;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/stream/Sink;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Ljava/util/stream/-$Lambda$pjwaaeJ_eHmC5XAnmHPMW0IKfyc$16;->-$f0:Ljava/lang/Object;

    check-cast v0, Ljava/util/stream/SpinedBuffer;

    invoke-static {v0, p1}, Ljava/util/stream/StreamSpliterators$WrappingSpliterator;->-java_util_stream_StreamSpliterators$WrappingSpliterator-mthref-0(Ljava/util/stream/SpinedBuffer;Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/stream/-$Lambda$pjwaaeJ_eHmC5XAnmHPMW0IKfyc$16;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/util/stream/-$Lambda$pjwaaeJ_eHmC5XAnmHPMW0IKfyc$16;->$m$0(Ljava/lang/Object;)V

    return-void
.end method
