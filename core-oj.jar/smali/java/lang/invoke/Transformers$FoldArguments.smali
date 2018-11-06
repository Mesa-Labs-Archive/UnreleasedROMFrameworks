.class Ljava/lang/invoke/Transformers$FoldArguments;
.super Ljava/lang/invoke/Transformers$Transformer;
.source "Transformers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/invoke/Transformers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FoldArguments"
.end annotation


# instance fields
.field private final combiner:Ljava/lang/invoke/MethodHandle;

.field private final combinerArgs:Ldalvik/system/EmulatedStackFrame$Range;

.field private final referencesOffset:I

.field private final stackFrameOffset:I

.field private final target:Ljava/lang/invoke/MethodHandle;

.field private final targetArgs:Ldalvik/system/EmulatedStackFrame$Range;


# direct methods
.method constructor <init>(Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodHandle;)V
    .locals 3

    const/4 v2, 0x0

    invoke-static {p1, p2}, Ljava/lang/invoke/Transformers$FoldArguments;->deriveType(Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodHandle;)Ljava/lang/invoke/MethodType;

    move-result-object v1

    invoke-direct {p0, v1}, Ljava/lang/invoke/Transformers$Transformer;-><init>(Ljava/lang/invoke/MethodType;)V

    iput-object p1, p0, Ljava/lang/invoke/Transformers$FoldArguments;->target:Ljava/lang/invoke/MethodHandle;

    iput-object p2, p0, Ljava/lang/invoke/Transformers$FoldArguments;->combiner:Ljava/lang/invoke/MethodHandle;

    invoke-virtual {p2}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v1

    invoke-static {v1}, Ldalvik/system/EmulatedStackFrame$Range;->all(Ljava/lang/invoke/MethodType;)Ldalvik/system/EmulatedStackFrame$Range;

    move-result-object v1

    iput-object v1, p0, Ljava/lang/invoke/Transformers$FoldArguments;->combinerArgs:Ldalvik/system/EmulatedStackFrame$Range;

    invoke-virtual {p0}, Ljava/lang/invoke/Transformers$FoldArguments;->type()Ljava/lang/invoke/MethodType;

    move-result-object v1

    invoke-static {v1}, Ldalvik/system/EmulatedStackFrame$Range;->all(Ljava/lang/invoke/MethodType;)Ldalvik/system/EmulatedStackFrame$Range;

    move-result-object v1

    iput-object v1, p0, Ljava/lang/invoke/Transformers$FoldArguments;->targetArgs:Ldalvik/system/EmulatedStackFrame$Range;

    invoke-virtual {p2}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/invoke/MethodType;->rtype()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_0

    iput v2, p0, Ljava/lang/invoke/Transformers$FoldArguments;->stackFrameOffset:I

    iput v2, p0, Ljava/lang/invoke/Transformers$FoldArguments;->referencesOffset:I

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Ldalvik/system/EmulatedStackFrame;->getSize(Ljava/lang/Class;)I

    move-result v1

    iput v1, p0, Ljava/lang/invoke/Transformers$FoldArguments;->stackFrameOffset:I

    iput v2, p0, Ljava/lang/invoke/Transformers$FoldArguments;->referencesOffset:I

    goto :goto_0

    :cond_1
    iput v2, p0, Ljava/lang/invoke/Transformers$FoldArguments;->stackFrameOffset:I

    const/4 v1, 0x1

    iput v1, p0, Ljava/lang/invoke/Transformers$FoldArguments;->referencesOffset:I

    goto :goto_0
.end method

.method private static deriveType(Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodHandle;)Ljava/lang/invoke/MethodType;
    .locals 3

    invoke-virtual {p1}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/invoke/MethodType;->rtype()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/invoke/MethodType;->dropParameterTypes(II)Ljava/lang/invoke/MethodType;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public transform(Ldalvik/system/EmulatedStackFrame;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v5, 0x0

    iget-object v4, p0, Ljava/lang/invoke/Transformers$FoldArguments;->combiner:Ljava/lang/invoke/MethodHandle;

    invoke-virtual {v4}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v4

    invoke-static {v4}, Ldalvik/system/EmulatedStackFrame;->create(Ljava/lang/invoke/MethodType;)Ldalvik/system/EmulatedStackFrame;

    move-result-object v0

    iget-object v4, p0, Ljava/lang/invoke/Transformers$FoldArguments;->combinerArgs:Ldalvik/system/EmulatedStackFrame$Range;

    invoke-virtual {p1, v0, v4, v5, v5}, Ldalvik/system/EmulatedStackFrame;->copyRangeTo(Ldalvik/system/EmulatedStackFrame;Ldalvik/system/EmulatedStackFrame$Range;II)V

    iget-object v4, p0, Ljava/lang/invoke/Transformers$FoldArguments;->combiner:Ljava/lang/invoke/MethodHandle;

    invoke-polymorphic {v4, v0}, Ljava/lang/invoke/MethodHandle;->invoke([Ljava/lang/Object;)Ljava/lang/Object;, (Ldalvik/system/EmulatedStackFrame;)V

    iget-object v4, p0, Ljava/lang/invoke/Transformers$FoldArguments;->target:Ljava/lang/invoke/MethodHandle;

    invoke-virtual {v4}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v4

    invoke-static {v4}, Ldalvik/system/EmulatedStackFrame;->create(Ljava/lang/invoke/MethodType;)Ldalvik/system/EmulatedStackFrame;

    move-result-object v2

    iget v4, p0, Ljava/lang/invoke/Transformers$FoldArguments;->referencesOffset:I

    if-nez v4, :cond_0

    iget v4, p0, Ljava/lang/invoke/Transformers$FoldArguments;->stackFrameOffset:I

    if-eqz v4, :cond_1

    :cond_0
    new-instance v1, Ldalvik/system/EmulatedStackFrame$StackFrameReader;

    invoke-direct {v1}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;-><init>()V

    invoke-virtual {v1, v0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->attach(Ldalvik/system/EmulatedStackFrame;)Ldalvik/system/EmulatedStackFrame$StackFrameAccessor;

    move-result-object v4

    invoke-virtual {v4}, Ldalvik/system/EmulatedStackFrame$StackFrameAccessor;->makeReturnValueAccessor()V

    new-instance v3, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;

    invoke-direct {v3}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;-><init>()V

    invoke-virtual {v3, v2}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->attach(Ldalvik/system/EmulatedStackFrame;)Ldalvik/system/EmulatedStackFrame$StackFrameAccessor;

    iget-object v4, p0, Ljava/lang/invoke/Transformers$FoldArguments;->target:Ljava/lang/invoke/MethodHandle;

    invoke-virtual {v4}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/invoke/MethodType;->ptypes()[Ljava/lang/Class;

    move-result-object v4

    aget-object v4, v4, v5

    invoke-static {v1, v3, v4}, Ldalvik/system/EmulatedStackFrame$StackFrameAccessor;->copyNext(Ldalvik/system/EmulatedStackFrame$StackFrameReader;Ldalvik/system/EmulatedStackFrame$StackFrameWriter;Ljava/lang/Class;)V

    :cond_1
    iget-object v4, p0, Ljava/lang/invoke/Transformers$FoldArguments;->targetArgs:Ldalvik/system/EmulatedStackFrame$Range;

    iget v5, p0, Ljava/lang/invoke/Transformers$FoldArguments;->referencesOffset:I

    iget v6, p0, Ljava/lang/invoke/Transformers$FoldArguments;->stackFrameOffset:I

    invoke-virtual {p1, v2, v4, v5, v6}, Ldalvik/system/EmulatedStackFrame;->copyRangeTo(Ldalvik/system/EmulatedStackFrame;Ldalvik/system/EmulatedStackFrame$Range;II)V

    iget-object v4, p0, Ljava/lang/invoke/Transformers$FoldArguments;->target:Ljava/lang/invoke/MethodHandle;

    invoke-polymorphic {v4, v2}, Ljava/lang/invoke/MethodHandle;->invoke([Ljava/lang/Object;)Ljava/lang/Object;, (Ldalvik/system/EmulatedStackFrame;)V

    invoke-virtual {v2, p1}, Ldalvik/system/EmulatedStackFrame;->copyReturnValueTo(Ldalvik/system/EmulatedStackFrame;)V

    return-void
.end method
