.class Ljava/util/stream/ReferencePipeline$7$1;
.super Ljava/util/stream/Sink$ChainedReference;
.source "ReferencePipeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/stream/ReferencePipeline$7;->opWrapSink(ILjava/util/stream/Sink;)Ljava/util/stream/Sink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/stream/Sink$ChainedReference",
        "<TP_OUT;TR;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Ljava/util/stream/ReferencePipeline$7;

.field final synthetic val$mapper:Ljava/util/function/Function;


# direct methods
.method constructor <init>(Ljava/util/stream/ReferencePipeline$7;Ljava/util/stream/Sink;Ljava/util/function/Function;)V
    .locals 0

    iput-object p1, p0, Ljava/util/stream/ReferencePipeline$7$1;->this$1:Ljava/util/stream/ReferencePipeline$7;

    iput-object p3, p0, Ljava/util/stream/ReferencePipeline$7$1;->val$mapper:Ljava/util/function/Function;

    invoke-direct {p0, p2}, Ljava/util/stream/Sink$ChainedReference;-><init>(Ljava/util/stream/Sink;)V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TP_OUT;)V"
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Ljava/util/stream/ReferencePipeline$7$1;->val$mapper:Ljava/util/function/Function;

    invoke-interface {v2, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/util/stream/Stream;

    move-object v1, v0

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/stream/Stream;->sequential()Ljava/util/stream/BaseStream;

    move-result-object v2

    check-cast v2, Ljava/util/stream/Stream;

    iget-object v4, p0, Ljava/util/stream/ReferencePipeline$7$1;->downstream:Ljava/util/stream/Sink;

    invoke-interface {v2, v4}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :cond_0
    if-eqz v1, :cond_1

    :try_start_1
    invoke-interface {v1}, Ljava/util/stream/Stream;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    :goto_0
    if-eqz v3, :cond_5

    throw v3

    :catch_0
    move-exception v3

    goto :goto_0

    :catch_1
    move-exception v2

    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v3

    move-object v5, v3

    move-object v3, v2

    move-object v2, v5

    :goto_1
    if-eqz v1, :cond_2

    :try_start_3
    invoke-interface {v1}, Ljava/util/stream/Stream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    :cond_2
    :goto_2
    if-eqz v3, :cond_4

    throw v3

    :catch_2
    move-exception v4

    if-nez v3, :cond_3

    move-object v3, v4

    goto :goto_2

    :cond_3
    if-eq v3, v4, :cond_2

    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_4
    throw v2

    :cond_5
    return-void

    :catchall_1
    move-exception v2

    goto :goto_1
.end method

.method public begin(J)V
    .locals 4

    iget-object v0, p0, Ljava/util/stream/ReferencePipeline$7$1;->downstream:Ljava/util/stream/Sink;

    const-wide/16 v2, -0x1

    invoke-interface {v0, v2, v3}, Ljava/util/stream/Sink;->begin(J)V

    return-void
.end method
