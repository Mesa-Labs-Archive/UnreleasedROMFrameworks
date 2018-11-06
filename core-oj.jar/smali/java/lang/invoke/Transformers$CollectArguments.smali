.class Ljava/lang/invoke/Transformers$CollectArguments;
.super Ljava/lang/invoke/Transformers$Transformer;
.source "Transformers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/invoke/Transformers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CollectArguments"
.end annotation


# instance fields
.field private final collector:Ljava/lang/invoke/MethodHandle;

.field private final collectorRange:Ldalvik/system/EmulatedStackFrame$Range;

.field private final pos:I

.field private final range1:Ldalvik/system/EmulatedStackFrame$Range;

.field private final range2:Ldalvik/system/EmulatedStackFrame$Range;

.field private final referencesOffset:I

.field private final stackFrameOffset:I

.field private final target:Ljava/lang/invoke/MethodHandle;


# direct methods
.method constructor <init>(Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodHandle;ILjava/lang/invoke/MethodType;)V
    .locals 6

    const/4 v5, 0x0

    invoke-direct {p0, p4}, Ljava/lang/invoke/Transformers$Transformer;-><init>(Ljava/lang/invoke/MethodType;)V

    iput-object p1, p0, Ljava/lang/invoke/Transformers$CollectArguments;->target:Ljava/lang/invoke/MethodHandle;

    iput-object p2, p0, Ljava/lang/invoke/Transformers$CollectArguments;->collector:Ljava/lang/invoke/MethodHandle;

    iput p3, p0, Ljava/lang/invoke/Transformers$CollectArguments;->pos:I

    invoke-virtual {p2}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/invoke/MethodType;->parameterCount()I

    move-result v2

    invoke-virtual {p0}, Ljava/lang/invoke/Transformers$CollectArguments;->type()Ljava/lang/invoke/MethodType;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/invoke/MethodType;->parameterCount()I

    move-result v1

    invoke-virtual {p0}, Ljava/lang/invoke/Transformers$CollectArguments;->type()Ljava/lang/invoke/MethodType;

    move-result-object v3

    add-int v4, p3, v2

    invoke-static {v3, p3, v4}, Ldalvik/system/EmulatedStackFrame$Range;->of(Ljava/lang/invoke/MethodType;II)Ldalvik/system/EmulatedStackFrame$Range;

    move-result-object v3

    iput-object v3, p0, Ljava/lang/invoke/Transformers$CollectArguments;->collectorRange:Ldalvik/system/EmulatedStackFrame$Range;

    invoke-virtual {p0}, Ljava/lang/invoke/Transformers$CollectArguments;->type()Ljava/lang/invoke/MethodType;

    move-result-object v3

    invoke-static {v3, v5, p3}, Ldalvik/system/EmulatedStackFrame$Range;->of(Ljava/lang/invoke/MethodType;II)Ldalvik/system/EmulatedStackFrame$Range;

    move-result-object v3

    iput-object v3, p0, Ljava/lang/invoke/Transformers$CollectArguments;->range1:Ldalvik/system/EmulatedStackFrame$Range;

    add-int v3, p3, v2

    if-ge v3, v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/invoke/Transformers$CollectArguments;->type()Ljava/lang/invoke/MethodType;

    move-result-object v3

    add-int v4, p3, v2

    invoke-static {v3, v4, v1}, Ldalvik/system/EmulatedStackFrame$Range;->of(Ljava/lang/invoke/MethodType;II)Ldalvik/system/EmulatedStackFrame$Range;

    move-result-object v3

    iput-object v3, p0, Ljava/lang/invoke/Transformers$CollectArguments;->range2:Ldalvik/system/EmulatedStackFrame$Range;

    :goto_0
    invoke-virtual {p2}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/invoke/MethodType;->rtype()Ljava/lang/Class;

    move-result-object v0

    sget-object v3, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne v0, v3, :cond_1

    iput v5, p0, Ljava/lang/invoke/Transformers$CollectArguments;->stackFrameOffset:I

    iput v5, p0, Ljava/lang/invoke/Transformers$CollectArguments;->referencesOffset:I

    :goto_1
    return-void

    :cond_0
    const/4 v3, 0x0

    iput-object v3, p0, Ljava/lang/invoke/Transformers$CollectArguments;->range2:Ldalvik/system/EmulatedStackFrame$Range;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {v0}, Ldalvik/system/EmulatedStackFrame;->getSize(Ljava/lang/Class;)I

    move-result v3

    iput v3, p0, Ljava/lang/invoke/Transformers$CollectArguments;->stackFrameOffset:I

    iput v5, p0, Ljava/lang/invoke/Transformers$CollectArguments;->referencesOffset:I

    goto :goto_1

    :cond_2
    iput v5, p0, Ljava/lang/invoke/Transformers$CollectArguments;->stackFrameOffset:I

    const/4 v3, 0x1

    iput v3, p0, Ljava/lang/invoke/Transformers$CollectArguments;->referencesOffset:I

    goto :goto_1
.end method


# virtual methods
.method public transform(Ldalvik/system/EmulatedStackFrame;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v7, 0x0

    iget-object v4, p0, Ljava/lang/invoke/Transformers$CollectArguments;->collector:Ljava/lang/invoke/MethodHandle;

    invoke-virtual {v4}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v4

    invoke-static {v4}, Ldalvik/system/EmulatedStackFrame;->create(Ljava/lang/invoke/MethodType;)Ldalvik/system/EmulatedStackFrame;

    move-result-object v0

    iget-object v4, p0, Ljava/lang/invoke/Transformers$CollectArguments;->collectorRange:Ldalvik/system/EmulatedStackFrame$Range;

    invoke-virtual {p1, v0, v4, v7, v7}, Ldalvik/system/EmulatedStackFrame;->copyRangeTo(Ldalvik/system/EmulatedStackFrame;Ldalvik/system/EmulatedStackFrame$Range;II)V

    iget-object v4, p0, Ljava/lang/invoke/Transformers$CollectArguments;->collector:Ljava/lang/invoke/MethodHandle;

    invoke-polymorphic {v4, v0}, Ljava/lang/invoke/MethodHandle;->invoke([Ljava/lang/Object;)Ljava/lang/Object;, (Ldalvik/system/EmulatedStackFrame;)V

    iget-object v4, p0, Ljava/lang/invoke/Transformers$CollectArguments;->target:Ljava/lang/invoke/MethodHandle;

    invoke-virtual {v4}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v4

    invoke-static {v4}, Ldalvik/system/EmulatedStackFrame;->create(Ljava/lang/invoke/MethodType;)Ldalvik/system/EmulatedStackFrame;

    move-result-object v2

    iget-object v4, p0, Ljava/lang/invoke/Transformers$CollectArguments;->range1:Ldalvik/system/EmulatedStackFrame$Range;

    invoke-virtual {p1, v2, v4, v7, v7}, Ldalvik/system/EmulatedStackFrame;->copyRangeTo(Ldalvik/system/EmulatedStackFrame;Ldalvik/system/EmulatedStackFrame$Range;II)V

    iget v4, p0, Ljava/lang/invoke/Transformers$CollectArguments;->referencesOffset:I

    if-nez v4, :cond_0

    iget v4, p0, Ljava/lang/invoke/Transformers$CollectArguments;->stackFrameOffset:I

    if-eqz v4, :cond_1

    :cond_0
    new-instance v1, Ldalvik/system/EmulatedStackFrame$StackFrameReader;

    invoke-direct {v1}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;-><init>()V

    invoke-virtual {v1, v0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->attach(Ldalvik/system/EmulatedStackFrame;)Ldalvik/system/EmulatedStackFrame$StackFrameAccessor;

    move-result-object v4

    invoke-virtual {v4}, Ldalvik/system/EmulatedStackFrame$StackFrameAccessor;->makeReturnValueAccessor()V

    new-instance v3, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;

    invoke-direct {v3}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;-><init>()V

    iget v4, p0, Ljava/lang/invoke/Transformers$CollectArguments;->pos:I

    iget-object v5, p0, Ljava/lang/invoke/Transformers$CollectArguments;->range1:Ldalvik/system/EmulatedStackFrame$Range;

    iget v5, v5, Ldalvik/system/EmulatedStackFrame$Range;->numReferences:I

    iget-object v6, p0, Ljava/lang/invoke/Transformers$CollectArguments;->range1:Ldalvik/system/EmulatedStackFrame$Range;

    iget v6, v6, Ldalvik/system/EmulatedStackFrame$Range;->numBytes:I

    invoke-virtual {v3, v2, v4, v5, v6}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->attach(Ldalvik/system/EmulatedStackFrame;III)Ldalvik/system/EmulatedStackFrame$StackFrameAccessor;

    iget-object v4, p0, Ljava/lang/invoke/Transformers$CollectArguments;->target:Ljava/lang/invoke/MethodHandle;

    invoke-virtual {v4}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/invoke/MethodType;->ptypes()[Ljava/lang/Class;

    move-result-object v4

    aget-object v4, v4, v7

    invoke-static {v1, v3, v4}, Ldalvik/system/EmulatedStackFrame$StackFrameAccessor;->copyNext(Ldalvik/system/EmulatedStackFrame$StackFrameReader;Ldalvik/system/EmulatedStackFrame$StackFrameWriter;Ljava/lang/Class;)V

    :cond_1
    iget-object v4, p0, Ljava/lang/invoke/Transformers$CollectArguments;->range2:Ldalvik/system/EmulatedStackFrame$Range;

    if-eqz v4, :cond_2

    iget-object v4, p0, Ljava/lang/invoke/Transformers$CollectArguments;->range2:Ldalvik/system/EmulatedStackFrame$Range;

    iget-object v5, p0, Ljava/lang/invoke/Transformers$CollectArguments;->range1:Ldalvik/system/EmulatedStackFrame$Range;

    iget v5, v5, Ldalvik/system/EmulatedStackFrame$Range;->numReferences:I

    iget v6, p0, Ljava/lang/invoke/Transformers$CollectArguments;->referencesOffset:I

    add-int/2addr v5, v6

    iget-object v6, p0, Ljava/lang/invoke/Transformers$CollectArguments;->range2:Ldalvik/system/EmulatedStackFrame$Range;

    iget v6, v6, Ldalvik/system/EmulatedStackFrame$Range;->numBytes:I

    iget v7, p0, Ljava/lang/invoke/Transformers$CollectArguments;->stackFrameOffset:I

    add-int/2addr v6, v7

    invoke-virtual {p1, v2, v4, v5, v6}, Ldalvik/system/EmulatedStackFrame;->copyRangeTo(Ldalvik/system/EmulatedStackFrame;Ldalvik/system/EmulatedStackFrame$Range;II)V

    :cond_2
    iget-object v4, p0, Ljava/lang/invoke/Transformers$CollectArguments;->target:Ljava/lang/invoke/MethodHandle;

    invoke-polymorphic {v4, v2}, Ljava/lang/invoke/MethodHandle;->invoke([Ljava/lang/Object;)Ljava/lang/Object;, (Ldalvik/system/EmulatedStackFrame;)V

    invoke-virtual {v2, p1}, Ldalvik/system/EmulatedStackFrame;->copyReturnValueTo(Ldalvik/system/EmulatedStackFrame;)V

    return-void
.end method
