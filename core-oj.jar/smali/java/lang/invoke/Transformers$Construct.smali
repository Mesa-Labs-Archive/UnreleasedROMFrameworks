.class Ljava/lang/invoke/Transformers$Construct;
.super Ljava/lang/invoke/Transformers$Transformer;
.source "Transformers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/invoke/Transformers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Construct"
.end annotation


# instance fields
.field private final callerRange:Ldalvik/system/EmulatedStackFrame$Range;

.field private final constructorHandle:Ljava/lang/invoke/MethodHandle;


# direct methods
.method constructor <init>(Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;)V
    .locals 1

    invoke-direct {p0, p2}, Ljava/lang/invoke/Transformers$Transformer;-><init>(Ljava/lang/invoke/MethodType;)V

    iput-object p1, p0, Ljava/lang/invoke/Transformers$Construct;->constructorHandle:Ljava/lang/invoke/MethodHandle;

    invoke-virtual {p0}, Ljava/lang/invoke/Transformers$Construct;->type()Ljava/lang/invoke/MethodType;

    move-result-object v0

    invoke-static {v0}, Ldalvik/system/EmulatedStackFrame$Range;->all(Ljava/lang/invoke/MethodType;)Ldalvik/system/EmulatedStackFrame$Range;

    move-result-object v0

    iput-object v0, p0, Ljava/lang/invoke/Transformers$Construct;->callerRange:Ldalvik/system/EmulatedStackFrame$Range;

    return-void
.end method

.method private static checkInstantiable(Ljava/lang/Class;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;
        }
    .end annotation

    invoke-static {p0}, Ljava/lang/invoke/Transformers$Construct;->isAbstract(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Class;->isInterface()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v0, "interface "

    :goto_0
    new-instance v1, Ljava/lang/InstantiationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Can\'t instantiate "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/InstantiationException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    const-string/jumbo v0, "abstract class "

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static isAbstract(Ljava/lang/Class;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    and-int/lit16 v0, v0, 0x400

    const/16 v1, 0x400

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method getConstructorHandle()Ljava/lang/invoke/MethodHandle;
    .locals 1

    iget-object v0, p0, Ljava/lang/invoke/Transformers$Construct;->constructorHandle:Ljava/lang/invoke/MethodHandle;

    return-object v0
.end method

.method public transform(Ldalvik/system/EmulatedStackFrame;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v5, 0x0

    invoke-virtual {p0}, Ljava/lang/invoke/Transformers$Construct;->type()Ljava/lang/invoke/MethodType;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/invoke/MethodType;->rtype()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/invoke/Transformers$Construct;->checkInstantiable(Ljava/lang/Class;)V

    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v3

    invoke-virtual {v3, v2}, Lsun/misc/Unsafe;->allocateInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    iget-object v3, p0, Ljava/lang/invoke/Transformers$Construct;->constructorHandle:Ljava/lang/invoke/MethodHandle;

    invoke-virtual {v3}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v3

    invoke-static {v3}, Ldalvik/system/EmulatedStackFrame;->create(Ljava/lang/invoke/MethodType;)Ldalvik/system/EmulatedStackFrame;

    move-result-object v0

    invoke-virtual {v0, v5, v1}, Ldalvik/system/EmulatedStackFrame;->setReference(ILjava/lang/Object;)V

    iget-object v3, p0, Ljava/lang/invoke/Transformers$Construct;->callerRange:Ldalvik/system/EmulatedStackFrame$Range;

    const/4 v4, 0x1

    invoke-virtual {p1, v0, v3, v4, v5}, Ldalvik/system/EmulatedStackFrame;->copyRangeTo(Ldalvik/system/EmulatedStackFrame;Ldalvik/system/EmulatedStackFrame$Range;II)V

    iget-object v3, p0, Ljava/lang/invoke/Transformers$Construct;->constructorHandle:Ljava/lang/invoke/MethodHandle;

    invoke-polymorphic {v3, v0}, Ljava/lang/invoke/MethodHandle;->invoke([Ljava/lang/Object;)Ljava/lang/Object;, (Ldalvik/system/EmulatedStackFrame;)V

    invoke-virtual {p1, v1}, Ldalvik/system/EmulatedStackFrame;->setReturnValueTo(Ljava/lang/Object;)V

    return-void
.end method
