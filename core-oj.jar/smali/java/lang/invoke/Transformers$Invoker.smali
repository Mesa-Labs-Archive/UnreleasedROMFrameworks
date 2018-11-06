.class Ljava/lang/invoke/Transformers$Invoker;
.super Ljava/lang/invoke/Transformers$Transformer;
.source "Transformers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/invoke/Transformers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Invoker"
.end annotation


# instance fields
.field private final copyRange:Ldalvik/system/EmulatedStackFrame$Range;

.field private final isExactInvoker:Z

.field private final targetType:Ljava/lang/invoke/MethodType;


# direct methods
.method constructor <init>(Ljava/lang/invoke/MethodType;Z)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-array v0, v3, [Ljava/lang/Class;

    const-class v1, Ljava/lang/invoke/MethodHandle;

    aput-object v1, v0, v2

    invoke-virtual {p1, v2, v0}, Ljava/lang/invoke/MethodType;->insertParameterTypes(I[Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/invoke/Transformers$Transformer;-><init>(Ljava/lang/invoke/MethodType;)V

    iput-object p1, p0, Ljava/lang/invoke/Transformers$Invoker;->targetType:Ljava/lang/invoke/MethodType;

    iput-boolean p2, p0, Ljava/lang/invoke/Transformers$Invoker;->isExactInvoker:Z

    invoke-virtual {p0}, Ljava/lang/invoke/Transformers$Invoker;->type()Ljava/lang/invoke/MethodType;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/invoke/Transformers$Invoker;->type()Ljava/lang/invoke/MethodType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/invoke/MethodType;->parameterCount()I

    move-result v1

    invoke-static {v0, v3, v1}, Ldalvik/system/EmulatedStackFrame$Range;->of(Ljava/lang/invoke/MethodType;II)Ldalvik/system/EmulatedStackFrame$Range;

    move-result-object v0

    iput-object v0, p0, Ljava/lang/invoke/Transformers$Invoker;->copyRange:Ldalvik/system/EmulatedStackFrame$Range;

    return-void
.end method


# virtual methods
.method public transform(Ldalvik/system/EmulatedStackFrame;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v5, 0x0

    iget-boolean v3, p0, Ljava/lang/invoke/Transformers$Invoker;->isExactInvoker:Z

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Ldalvik/system/EmulatedStackFrame;->getCallsiteType()Ljava/lang/invoke/MethodType;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v5, v4}, Ljava/lang/invoke/MethodType;->dropParameterTypes(II)Ljava/lang/invoke/MethodType;

    move-result-object v0

    iget-object v3, p0, Ljava/lang/invoke/Transformers$Invoker;->targetType:Ljava/lang/invoke/MethodType;

    invoke-virtual {v3, v0}, Ljava/lang/invoke/MethodType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/invoke/WrongMethodTypeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Wrong type, Expected: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Ljava/lang/invoke/Transformers$Invoker;->targetType:Ljava/lang/invoke/MethodType;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " was: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/invoke/WrongMethodTypeException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    const-class v3, Ljava/lang/invoke/MethodHandle;

    invoke-virtual {p1, v5, v3}, Ldalvik/system/EmulatedStackFrame;->getReference(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/invoke/MethodHandle;

    iget-object v3, p0, Ljava/lang/invoke/Transformers$Invoker;->targetType:Ljava/lang/invoke/MethodType;

    invoke-static {v3}, Ldalvik/system/EmulatedStackFrame;->create(Ljava/lang/invoke/MethodType;)Ldalvik/system/EmulatedStackFrame;

    move-result-object v2

    iget-object v3, p0, Ljava/lang/invoke/Transformers$Invoker;->copyRange:Ldalvik/system/EmulatedStackFrame$Range;

    invoke-virtual {p1, v2, v3, v5, v5}, Ldalvik/system/EmulatedStackFrame;->copyRangeTo(Ldalvik/system/EmulatedStackFrame;Ldalvik/system/EmulatedStackFrame$Range;II)V

    invoke-polymorphic {v1, v2}, Ljava/lang/invoke/MethodHandle;->invoke([Ljava/lang/Object;)Ljava/lang/Object;, (Ldalvik/system/EmulatedStackFrame;)V

    invoke-virtual {v2, p1}, Ldalvik/system/EmulatedStackFrame;->copyReturnValueTo(Ldalvik/system/EmulatedStackFrame;)V

    return-void
.end method
