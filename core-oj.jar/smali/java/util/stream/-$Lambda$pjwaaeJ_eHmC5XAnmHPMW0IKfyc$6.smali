.class final synthetic Ljava/util/stream/-$Lambda$pjwaaeJ_eHmC5XAnmHPMW0IKfyc$6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/BooleanSupplier;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0()Z
    .locals 1

    iget-object v0, p0, Ljava/util/stream/-$Lambda$pjwaaeJ_eHmC5XAnmHPMW0IKfyc$6;->-$f0:Ljava/lang/Object;

    check-cast v0, Ljava/util/stream/StreamSpliterators$IntWrappingSpliterator;

    invoke-virtual {v0}, Ljava/util/stream/StreamSpliterators$IntWrappingSpliterator;->lambda$-java_util_stream_StreamSpliterators$IntWrappingSpliterator_12402()Z

    move-result v0

    return v0
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/stream/-$Lambda$pjwaaeJ_eHmC5XAnmHPMW0IKfyc$6;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final getAsBoolean()Z
    .locals 1

    invoke-direct {p0}, Ljava/util/stream/-$Lambda$pjwaaeJ_eHmC5XAnmHPMW0IKfyc$6;->$m$0()Z

    move-result v0

    return v0
.end method
