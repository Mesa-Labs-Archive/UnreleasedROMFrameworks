.class public Ljava/lang/invoke/Transformers$CatchException;
.super Ljava/lang/invoke/Transformers$Transformer;
.source "Transformers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/invoke/Transformers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CatchException"
.end annotation


# instance fields
.field private final exType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private final handler:Ljava/lang/invoke/MethodHandle;

.field private final handlerArgsRange:Ldalvik/system/EmulatedStackFrame$Range;

.field private final target:Ljava/lang/invoke/MethodHandle;


# direct methods
.method public constructor <init>(Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodHandle;Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/invoke/MethodHandle;",
            "Ljava/lang/invoke/MethodHandle;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/invoke/Transformers$Transformer;-><init>(Ljava/lang/invoke/MethodType;)V

    iput-object p1, p0, Ljava/lang/invoke/Transformers$CatchException;->target:Ljava/lang/invoke/MethodHandle;

    iput-object p2, p0, Ljava/lang/invoke/Transformers$CatchException;->handler:Ljava/lang/invoke/MethodHandle;

    iput-object p3, p0, Ljava/lang/invoke/Transformers$CatchException;->exType:Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/invoke/MethodType;->parameterCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Ldalvik/system/EmulatedStackFrame$Range;->of(Ljava/lang/invoke/MethodType;II)Ldalvik/system/EmulatedStackFrame$Range;

    move-result-object v0

    iput-object v0, p0, Ljava/lang/invoke/Transformers$CatchException;->handlerArgsRange:Ldalvik/system/EmulatedStackFrame$Range;

    return-void
.end method


# virtual methods
.method public transform(Ldalvik/system/EmulatedStackFrame;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v4, 0x0

    :try_start_0
    iget-object v2, p0, Ljava/lang/invoke/Transformers$CatchException;->target:Ljava/lang/invoke/MethodHandle;

    invoke-polymorphic {v2, p1}, Ljava/lang/invoke/MethodHandle;->invoke([Ljava/lang/Object;)Ljava/lang/Object;, (Ldalvik/system/EmulatedStackFrame;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->getClass()Ljava/lang/Class;

    move-result-object v2

    iget-object v3, p0, Ljava/lang/invoke/Transformers$CatchException;->exType:Ljava/lang/Class;

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Ljava/lang/invoke/Transformers$CatchException;->handler:Ljava/lang/invoke/MethodHandle;

    invoke-virtual {v2}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v2

    invoke-static {v2}, Ldalvik/system/EmulatedStackFrame;->create(Ljava/lang/invoke/MethodType;)Ldalvik/system/EmulatedStackFrame;

    move-result-object v0

    invoke-virtual {v0, v4, v1}, Ldalvik/system/EmulatedStackFrame;->setReference(ILjava/lang/Object;)V

    iget-object v2, p0, Ljava/lang/invoke/Transformers$CatchException;->handlerArgsRange:Ldalvik/system/EmulatedStackFrame$Range;

    const/4 v3, 0x1

    invoke-virtual {p1, v0, v2, v3, v4}, Ldalvik/system/EmulatedStackFrame;->copyRangeTo(Ldalvik/system/EmulatedStackFrame;Ldalvik/system/EmulatedStackFrame$Range;II)V

    iget-object v2, p0, Ljava/lang/invoke/Transformers$CatchException;->handler:Ljava/lang/invoke/MethodHandle;

    invoke-polymorphic {v2, v0}, Ljava/lang/invoke/MethodHandle;->invoke([Ljava/lang/Object;)Ljava/lang/Object;, (Ldalvik/system/EmulatedStackFrame;)V

    invoke-virtual {v0, p1}, Ldalvik/system/EmulatedStackFrame;->copyReturnValueTo(Ldalvik/system/EmulatedStackFrame;)V

    goto :goto_0

    :cond_0
    throw v1
.end method
