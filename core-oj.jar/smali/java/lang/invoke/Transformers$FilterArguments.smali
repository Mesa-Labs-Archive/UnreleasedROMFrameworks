.class Ljava/lang/invoke/Transformers$FilterArguments;
.super Ljava/lang/invoke/Transformers$Transformer;
.source "Transformers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/invoke/Transformers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FilterArguments"
.end annotation


# instance fields
.field private final filters:[Ljava/lang/invoke/MethodHandle;

.field private final pos:I

.field private final target:Ljava/lang/invoke/MethodHandle;


# direct methods
.method constructor <init>(Ljava/lang/invoke/MethodHandle;I[Ljava/lang/invoke/MethodHandle;)V
    .locals 1

    invoke-static {p1, p2, p3}, Ljava/lang/invoke/Transformers$FilterArguments;->deriveType(Ljava/lang/invoke/MethodHandle;I[Ljava/lang/invoke/MethodHandle;)Ljava/lang/invoke/MethodType;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/invoke/Transformers$Transformer;-><init>(Ljava/lang/invoke/MethodType;)V

    iput-object p1, p0, Ljava/lang/invoke/Transformers$FilterArguments;->target:Ljava/lang/invoke/MethodHandle;

    iput p2, p0, Ljava/lang/invoke/Transformers$FilterArguments;->pos:I

    iput-object p3, p0, Ljava/lang/invoke/Transformers$FilterArguments;->filters:[Ljava/lang/invoke/MethodHandle;

    return-void
.end method

.method private static deriveType(Ljava/lang/invoke/MethodHandle;I[Ljava/lang/invoke/MethodHandle;)Ljava/lang/invoke/MethodType;
    .locals 4

    array-length v2, p2

    new-array v0, v2, [Ljava/lang/Class;

    const/4 v1, 0x0

    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_0

    aget-object v2, p2, v1

    invoke-virtual {v2}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/invoke/MethodType;->parameterType(I)Ljava/lang/Class;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v2

    array-length v3, p2

    add-int/2addr v3, p1

    invoke-virtual {v2, p1, v3, v0}, Ljava/lang/invoke/MethodType;->replaceParameterTypes(II[Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public transform(Ldalvik/system/EmulatedStackFrame;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    new-instance v7, Ldalvik/system/EmulatedStackFrame$StackFrameReader;

    invoke-direct {v7}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;-><init>()V

    invoke-virtual {v7, p1}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->attach(Ldalvik/system/EmulatedStackFrame;)Ldalvik/system/EmulatedStackFrame$StackFrameAccessor;

    iget-object v10, p0, Ljava/lang/invoke/Transformers$FilterArguments;->target:Ljava/lang/invoke/MethodHandle;

    invoke-virtual {v10}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v10

    invoke-static {v10}, Ldalvik/system/EmulatedStackFrame;->create(Ljava/lang/invoke/MethodType;)Ldalvik/system/EmulatedStackFrame;

    move-result-object v8

    new-instance v9, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;

    invoke-direct {v9}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;-><init>()V

    invoke-virtual {v9, v8}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->attach(Ldalvik/system/EmulatedStackFrame;)Ldalvik/system/EmulatedStackFrame$StackFrameAccessor;

    iget-object v10, p0, Ljava/lang/invoke/Transformers$FilterArguments;->target:Ljava/lang/invoke/MethodHandle;

    invoke-virtual {v10}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/invoke/MethodType;->ptypes()[Ljava/lang/Class;

    move-result-object v6

    const/4 v4, 0x0

    :goto_0
    array-length v10, v6

    if-ge v4, v10, :cond_3

    aget-object v5, v6, v4

    iget v10, p0, Ljava/lang/invoke/Transformers$FilterArguments;->pos:I

    if-ge v4, v10, :cond_0

    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v10

    invoke-static {v10}, Ldalvik/system/EmulatedStackFrame;->create(Ljava/lang/invoke/MethodType;)Ldalvik/system/EmulatedStackFrame;

    move-result-object v1

    new-instance v3, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;

    invoke-direct {v3}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;-><init>()V

    invoke-virtual {v3, v1}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->attach(Ldalvik/system/EmulatedStackFrame;)Ldalvik/system/EmulatedStackFrame$StackFrameAccessor;

    invoke-virtual {v0}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/invoke/MethodType;->ptypes()[Ljava/lang/Class;

    move-result-object v10

    const/4 v11, 0x0

    aget-object v10, v10, v11

    invoke-static {v7, v3, v10}, Ldalvik/system/EmulatedStackFrame$StackFrameAccessor;->copyNext(Ldalvik/system/EmulatedStackFrame$StackFrameReader;Ldalvik/system/EmulatedStackFrame$StackFrameWriter;Ljava/lang/Class;)V

    invoke-polymorphic {v0, v1}, Ljava/lang/invoke/MethodHandle;->invoke([Ljava/lang/Object;)Ljava/lang/Object;, (Ldalvik/system/EmulatedStackFrame;)V

    new-instance v2, Ldalvik/system/EmulatedStackFrame$StackFrameReader;

    invoke-direct {v2}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;-><init>()V

    invoke-virtual {v2, v1}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->attach(Ldalvik/system/EmulatedStackFrame;)Ldalvik/system/EmulatedStackFrame$StackFrameAccessor;

    invoke-virtual {v2}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->makeReturnValueAccessor()V

    invoke-static {v2, v9, v5}, Ldalvik/system/EmulatedStackFrame$StackFrameAccessor;->copyNext(Ldalvik/system/EmulatedStackFrame$StackFrameReader;Ldalvik/system/EmulatedStackFrame$StackFrameWriter;Ljava/lang/Class;)V

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    iget v10, p0, Ljava/lang/invoke/Transformers$FilterArguments;->pos:I

    iget-object v11, p0, Ljava/lang/invoke/Transformers$FilterArguments;->filters:[Ljava/lang/invoke/MethodHandle;

    array-length v11, v11

    add-int/2addr v10, v11

    if-lt v4, v10, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    iget-object v10, p0, Ljava/lang/invoke/Transformers$FilterArguments;->filters:[Ljava/lang/invoke/MethodHandle;

    iget v11, p0, Ljava/lang/invoke/Transformers$FilterArguments;->pos:I

    sub-int v11, v4, v11

    aget-object v0, v10, v11

    goto :goto_1

    :cond_2
    invoke-static {v7, v9, v5}, Ldalvik/system/EmulatedStackFrame$StackFrameAccessor;->copyNext(Ldalvik/system/EmulatedStackFrame$StackFrameReader;Ldalvik/system/EmulatedStackFrame$StackFrameWriter;Ljava/lang/Class;)V

    goto :goto_2

    :cond_3
    iget-object v10, p0, Ljava/lang/invoke/Transformers$FilterArguments;->target:Ljava/lang/invoke/MethodHandle;

    invoke-polymorphic {v10, v8}, Ljava/lang/invoke/MethodHandle;->invoke([Ljava/lang/Object;)Ljava/lang/Object;, (Ldalvik/system/EmulatedStackFrame;)V

    invoke-virtual {v8, p1}, Ldalvik/system/EmulatedStackFrame;->copyReturnValueTo(Ldalvik/system/EmulatedStackFrame;)V

    return-void
.end method
