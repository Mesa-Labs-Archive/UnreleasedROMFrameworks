.class public abstract Ljava/lang/invoke/MethodHandle;
.super Ljava/lang/Object;
.source "MethodHandle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/lang/invoke/MethodHandle$PolymorphicSignature;
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z

.field public static final IGET:I = 0x7

.field public static final INVOKE_CALLSITE_TRANSFORM:I = 0x6

.field public static final INVOKE_DIRECT:I = 0x2

.field public static final INVOKE_INTERFACE:I = 0x4

.field public static final INVOKE_STATIC:I = 0x3

.field public static final INVOKE_SUPER:I = 0x1

.field public static final INVOKE_TRANSFORM:I = 0x5

.field public static final INVOKE_VIRTUAL:I = 0x0

.field public static final IPUT:I = 0x8

.field public static final SGET:I = 0x9

.field public static final SPUT:I = 0xa


# instance fields
.field protected final artFieldOrMethod:J

.field private cachedSpreadInvoker:Ljava/lang/invoke/MethodHandle;

.field protected final handleKind:I

.field private nominalType:Ljava/lang/invoke/MethodType;

.field private final type:Ljava/lang/invoke/MethodType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Ljava/lang/invoke/MethodHandle;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Ljava/lang/invoke/MethodHandle;->-assertionsDisabled:Z

    return-void
.end method

.method protected constructor <init>(JILjava/lang/invoke/MethodType;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Ljava/lang/invoke/MethodHandle;->artFieldOrMethod:J

    iput p3, p0, Ljava/lang/invoke/MethodHandle;->handleKind:I

    iput-object p4, p0, Ljava/lang/invoke/MethodHandle;->type:Ljava/lang/invoke/MethodType;

    return-void
.end method

.method private asSpreaderChecks(Ljava/lang/Class;I)Ljava/lang/invoke/MethodType;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;I)",
            "Ljava/lang/invoke/MethodType;"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/invoke/MethodHandle;->spreadArrayChecks(Ljava/lang/Class;I)V

    invoke-virtual {p0}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/invoke/MethodType;->parameterCount()I

    move-result v5

    if-lt v5, p2, :cond_0

    if-gez p2, :cond_1

    :cond_0
    const-string/jumbo v8, "bad spread array length"

    invoke-static {v8}, Ljava/lang/invoke/MethodHandleStatics;->newIllegalArgumentException(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v8

    throw v8

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v4

    const/4 v3, 0x1

    const/4 v1, 0x0

    sub-int v2, v5, p2

    :goto_0
    if-ge v2, v5, :cond_2

    invoke-virtual {v4, v2}, Ljava/lang/invoke/MethodType;->parameterType(I)Ljava/lang/Class;

    move-result-object v7

    if-eq v7, v0, :cond_3

    const/4 v3, 0x0

    invoke-static {v0, v7}, Ljava/lang/invoke/MethodType;->canConvert(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v8

    if-nez v8, :cond_3

    const/4 v1, 0x1

    :cond_2
    if-eqz v3, :cond_4

    return-object v4

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {v4, p1, p2}, Ljava/lang/invoke/MethodType;->asSpreaderType(Ljava/lang/Class;I)Ljava/lang/invoke/MethodType;

    move-result-object v6

    if-nez v1, :cond_5

    return-object v6

    :cond_5
    invoke-virtual {p0, v6}, Ljava/lang/invoke/MethodHandle;->asType(Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    const-string/jumbo v8, "should not return"

    const/4 v9, 0x0

    invoke-static {v8, v9}, Ljava/lang/invoke/MethodHandleStatics;->newInternalError(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/InternalError;

    move-result-object v8

    throw v8
.end method

.method private spreadArrayChecks(Ljava/lang/Class;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;I)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v1, "not an array type"

    invoke-static {v1, p1}, Ljava/lang/invoke/MethodHandleStatics;->newIllegalArgumentException(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_0
    and-int/lit8 v1, p2, 0x7f

    if-eq v1, p2, :cond_4

    and-int/lit16 v1, p2, 0xff

    if-eq v1, p2, :cond_1

    const-string/jumbo v1, "array length is not legal"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/lang/invoke/MethodHandleStatics;->newIllegalArgumentException(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_1
    sget-boolean v1, Ljava/lang/invoke/MethodHandle;->-assertionsDisabled:Z

    if-nez v1, :cond_2

    const/16 v1, 0x80

    if-ge p2, v1, :cond_2

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_2
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq v0, v1, :cond_3

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_4

    :cond_3
    const-string/jumbo v1, "array length is not legal for long[] or double[]"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/lang/invoke/MethodHandleStatics;->newIllegalArgumentException(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_4
    return-void
.end method

.method private transformInternal(Ldalvik/system/EmulatedStackFrame;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-virtual {p0, p1}, Ljava/lang/invoke/MethodHandle;->transform(Ldalvik/system/EmulatedStackFrame;)V

    return-void
.end method


# virtual methods
.method public asCollector(Ljava/lang/Class;I)Ljava/lang/invoke/MethodHandle;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;I)",
            "Ljava/lang/invoke/MethodHandle;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Ljava/lang/invoke/MethodHandle;->asCollectorChecks(Ljava/lang/Class;I)Z

    new-instance v0, Ljava/lang/invoke/Transformers$Collector;

    invoke-direct {v0, p0, p1, p2}, Ljava/lang/invoke/Transformers$Collector;-><init>(Ljava/lang/invoke/MethodHandle;Ljava/lang/Class;I)V

    return-object v0
.end method

.method asCollectorChecks(Ljava/lang/Class;I)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;I)Z"
        }
    .end annotation

    const/4 v4, 0x0

    invoke-direct {p0, p1, p2}, Ljava/lang/invoke/MethodHandle;->spreadArrayChecks(Ljava/lang/Class;I)V

    invoke-virtual {p0}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/invoke/MethodType;->parameterCount()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v2

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/invoke/MethodType;->parameterType(I)Ljava/lang/Class;

    move-result-object v0

    if-ne v0, p1, :cond_0

    const/4 v2, 0x1

    return v2

    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v4

    :cond_1
    const-string/jumbo v2, "array type not assignable to trailing argument"

    invoke-static {v2, p0, p1}, Ljava/lang/invoke/MethodHandleStatics;->newIllegalArgumentException(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public asFixedArity()Ljava/lang/invoke/MethodHandle;
    .locals 2

    move-object v0, p0

    invoke-virtual {p0}, Ljava/lang/invoke/MethodHandle;->isVarargsCollector()Z

    move-result v1

    if-eqz v1, :cond_0

    check-cast p0, Ljava/lang/invoke/Transformers$VarargsCollector;

    invoke-virtual {p0}, Ljava/lang/invoke/Transformers$VarargsCollector;->asFixedArity()Ljava/lang/invoke/MethodHandle;

    move-result-object v0

    :cond_0
    sget-boolean v1, Ljava/lang/invoke/MethodHandle;->-assertionsDisabled:Z

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/invoke/MethodHandle;->isVarargsCollector()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_1
    return-object v0
.end method

.method public asSpreader(Ljava/lang/Class;I)Ljava/lang/invoke/MethodHandle;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;I)",
            "Ljava/lang/invoke/MethodHandle;"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/invoke/MethodHandle;->asSpreaderChecks(Ljava/lang/Class;I)Ljava/lang/invoke/MethodType;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/invoke/MethodType;->parameterCount()I

    move-result v3

    sub-int v4, v3, p2

    invoke-virtual {v2, v4, v3}, Ljava/lang/invoke/MethodType;->dropParameterTypes(II)Ljava/lang/invoke/MethodType;

    move-result-object v1

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v1, v4}, Ljava/lang/invoke/MethodType;->appendParameterTypes([Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v0

    new-instance v4, Ljava/lang/invoke/Transformers$Spreader;

    invoke-direct {v4, p0, v0, p2}, Ljava/lang/invoke/Transformers$Spreader;-><init>(Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;I)V

    return-object v4
.end method

.method public asType(Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;
    .locals 4

    iget-object v1, p0, Ljava/lang/invoke/MethodHandle;->type:Ljava/lang/invoke/MethodType;

    if-ne p1, v1, :cond_0

    return-object p0

    :cond_0
    iget-object v1, p0, Ljava/lang/invoke/MethodHandle;->type:Ljava/lang/invoke/MethodType;

    invoke-virtual {v1, p1}, Ljava/lang/invoke/MethodType;->isConvertibleTo(Ljava/lang/invoke/MethodType;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/invoke/WrongMethodTypeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "cannot convert "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/invoke/WrongMethodTypeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/invoke/MethodHandle;->duplicate()Ljava/lang/invoke/MethodHandle;

    move-result-object v0

    iput-object p1, v0, Ljava/lang/invoke/MethodHandle;->nominalType:Ljava/lang/invoke/MethodType;

    return-object v0
.end method

.method public asVarargsCollector(Ljava/lang/Class;)Ljava/lang/invoke/MethodHandle;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/invoke/MethodHandle;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Class;->getClass()Ljava/lang/Class;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Ljava/lang/invoke/MethodHandle;->asCollectorChecks(Ljava/lang/Class;I)Z

    move-result v0

    invoke-virtual {p0}, Ljava/lang/invoke/MethodHandle;->isVarargsCollector()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    new-instance v1, Ljava/lang/invoke/Transformers$VarargsCollector;

    invoke-direct {v1, p0}, Ljava/lang/invoke/Transformers$VarargsCollector;-><init>(Ljava/lang/invoke/MethodHandle;)V

    return-object v1
.end method

.method public bindTo(Ljava/lang/Object;)Ljava/lang/invoke/MethodHandle;
    .locals 1

    iget-object v0, p0, Ljava/lang/invoke/MethodHandle;->type:Ljava/lang/invoke/MethodType;

    invoke-virtual {v0}, Ljava/lang/invoke/MethodType;->leadingReferenceParameter()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    new-instance v0, Ljava/lang/invoke/Transformers$BindTo;

    invoke-direct {v0, p0, p1}, Ljava/lang/invoke/Transformers$BindTo;-><init>(Ljava/lang/invoke/MethodHandle;Ljava/lang/Object;)V

    return-object v0
.end method

.method protected duplicate()Ljava/lang/invoke/MethodHandle;
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/invoke/MethodHandle;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/invoke/MethodHandle;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    const-string/jumbo v2, "Subclass of Transformer is not cloneable"

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public getHandleKind()I
    .locals 1

    iget v0, p0, Ljava/lang/invoke/MethodHandle;->handleKind:I

    return v0
.end method

.method public final varargs native invoke([Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .annotation runtime Ljava/lang/invoke/MethodHandle$PolymorphicSignature;
    .end annotation
.end method

.method public final varargs native invokeExact([Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .annotation runtime Ljava/lang/invoke/MethodHandle$PolymorphicSignature;
    .end annotation
.end method

.method public invokeWithArguments(Ljava/util/List;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/invoke/MethodHandle;->invokeWithArguments([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public varargs invokeWithArguments([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Ljava/lang/invoke/MethodHandle;->cachedSpreadInvoker:Ljava/lang/invoke/MethodHandle;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/invoke/MethodHandles;->spreadInvoker(Ljava/lang/invoke/MethodType;I)Ljava/lang/invoke/MethodHandle;

    move-result-object v1

    iput-object v1, p0, Ljava/lang/invoke/MethodHandle;->cachedSpreadInvoker:Ljava/lang/invoke/MethodHandle;

    :cond_0
    iget-object v0, p0, Ljava/lang/invoke/MethodHandle;->cachedSpreadInvoker:Ljava/lang/invoke/MethodHandle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    invoke-polymorphic {v0, p0, p1}, Ljava/lang/invoke/MethodHandle;->invoke([Ljava/lang/Object;)Ljava/lang/Object;, (Ljava/lang/invoke/MethodHandle;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public isVarargsCollector()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "MethodHandle"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/lang/invoke/MethodHandle;->type:Ljava/lang/invoke/MethodType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected transform(Ldalvik/system/EmulatedStackFrame;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "MethodHandle.transform should never be called."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public type()Ljava/lang/invoke/MethodType;
    .locals 1

    iget-object v0, p0, Ljava/lang/invoke/MethodHandle;->nominalType:Ljava/lang/invoke/MethodType;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava/lang/invoke/MethodHandle;->nominalType:Ljava/lang/invoke/MethodType;

    return-object v0

    :cond_0
    iget-object v0, p0, Ljava/lang/invoke/MethodHandle;->type:Ljava/lang/invoke/MethodType;

    return-object v0
.end method
