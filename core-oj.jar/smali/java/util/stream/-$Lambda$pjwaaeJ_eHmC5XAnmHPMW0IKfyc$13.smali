.class final synthetic Ljava/util/stream/-$Lambda$pjwaaeJ_eHmC5XAnmHPMW0IKfyc$13;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/stream/Sink$OfLong;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(J)V
    .locals 1

    iget-object v0, p0, Ljava/util/stream/-$Lambda$pjwaaeJ_eHmC5XAnmHPMW0IKfyc$13;->-$f0:Ljava/lang/Object;

    check-cast v0, Ljava/util/function/LongConsumer;

    invoke-static {v0, p1, p2}, Ljava/util/stream/StreamSpliterators$LongWrappingSpliterator;->-java_util_stream_StreamSpliterators$LongWrappingSpliterator-mthref-1(Ljava/util/function/LongConsumer;J)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/stream/-$Lambda$pjwaaeJ_eHmC5XAnmHPMW0IKfyc$13;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final accept(J)V
    .locals 1

    invoke-direct {p0, p1, p2}, Ljava/util/stream/-$Lambda$pjwaaeJ_eHmC5XAnmHPMW0IKfyc$13;->$m$0(J)V

    return-void
.end method
