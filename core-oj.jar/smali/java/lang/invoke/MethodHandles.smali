.class public Ljava/lang/invoke/MethodHandles;
.super Ljava/lang/Object;
.source "MethodHandles.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/lang/invoke/MethodHandles$Lookup;
    }
.end annotation


# direct methods
.method static synthetic -wrap0(Ljava/lang/invoke/MethodHandle;)Ljava/lang/invoke/MethodHandleImpl;
    .locals 1

    invoke-static {p0}, Ljava/lang/invoke/MethodHandles;->getMethodHandleImpl(Ljava/lang/invoke/MethodHandle;)Ljava/lang/invoke/MethodHandleImpl;

    move-result-object v0

    return-object v0
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static arrayElementGetter([BI)B
    .locals 1

    aget-byte v0, p0, p1

    return v0
.end method

.method public static arrayElementGetter([CI)C
    .locals 1

    aget-char v0, p0, p1

    return v0
.end method

.method public static arrayElementGetter([DI)D
    .locals 2

    aget-wide v0, p0, p1

    return-wide v0
.end method

.method public static arrayElementGetter([FI)F
    .locals 1

    aget v0, p0, p1

    return v0
.end method

.method public static arrayElementGetter([II)I
    .locals 1

    aget v0, p0, p1

    return v0
.end method

.method public static arrayElementGetter([JI)J
    .locals 2

    aget-wide v0, p0, p1

    return-wide v0
.end method

.method public static arrayElementGetter(Ljava/lang/Class;)Ljava/lang/invoke/MethodHandle;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/invoke/MethodHandle;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Not an array type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v2

    if-eqz v2, :cond_1

    :try_start_0
    sget-object v2, Ljava/lang/invoke/MethodHandles$Lookup;->PUBLIC_LOOKUP:Ljava/lang/invoke/MethodHandles$Lookup;

    const-class v3, Ljava/lang/invoke/MethodHandles;

    const-string/jumbo v4, "arrayElementGetter"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-static {v0, p0, v5}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Ljava/lang/invoke/MethodHandles$Lookup;->findStatic(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    :cond_1
    new-instance v2, Ljava/lang/invoke/Transformers$ReferenceArrayElementGetter;

    invoke-direct {v2, p0}, Ljava/lang/invoke/Transformers$ReferenceArrayElementGetter;-><init>(Ljava/lang/Class;)V

    return-object v2
.end method

.method public static arrayElementGetter([SI)S
    .locals 1

    aget-short v0, p0, p1

    return v0
.end method

.method public static arrayElementGetter([ZI)Z
    .locals 1

    aget-boolean v0, p0, p1

    return v0
.end method

.method public static arrayElementSetter(Ljava/lang/Class;)Ljava/lang/invoke/MethodHandle;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/invoke/MethodHandle;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Not an array type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v2

    if-eqz v2, :cond_1

    :try_start_0
    sget-object v2, Ljava/lang/invoke/MethodHandles$Lookup;->PUBLIC_LOOKUP:Ljava/lang/invoke/MethodHandles$Lookup;

    const-class v3, Ljava/lang/invoke/MethodHandles;

    const-string/jumbo v4, "arrayElementSetter"

    sget-object v5, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    const/4 v7, 0x1

    aput-object v0, v6, v7

    invoke-static {v5, p0, v6}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Ljava/lang/invoke/MethodHandles$Lookup;->findStatic(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    :cond_1
    new-instance v2, Ljava/lang/invoke/Transformers$ReferenceArrayElementSetter;

    invoke-direct {v2, p0}, Ljava/lang/invoke/Transformers$ReferenceArrayElementSetter;-><init>(Ljava/lang/Class;)V

    return-object v2
.end method

.method public static arrayElementSetter([BIB)V
    .locals 0

    aput-byte p2, p0, p1

    return-void
.end method

.method public static arrayElementSetter([CIC)V
    .locals 0

    aput-char p2, p0, p1

    return-void
.end method

.method public static arrayElementSetter([DID)V
    .locals 0

    aput-wide p2, p0, p1

    return-void
.end method

.method public static arrayElementSetter([FIF)V
    .locals 0

    aput p2, p0, p1

    return-void
.end method

.method public static arrayElementSetter([III)V
    .locals 0

    aput p2, p0, p1

    return-void
.end method

.method public static arrayElementSetter([JIJ)V
    .locals 0

    aput-wide p2, p0, p1

    return-void
.end method

.method public static arrayElementSetter([SIS)V
    .locals 0

    aput-short p2, p0, p1

    return-void
.end method

.method public static arrayElementSetter([ZIZ)V
    .locals 0

    aput-boolean p2, p0, p1

    return-void
.end method

.method public static catchException(Ljava/lang/invoke/MethodHandle;Ljava/lang/Class;Ljava/lang/invoke/MethodHandle;)Ljava/lang/invoke/MethodHandle;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/invoke/MethodHandle;",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/Throwable;",
            ">;",
            "Ljava/lang/invoke/MethodHandle;",
            ")",
            "Ljava/lang/invoke/MethodHandle;"
        }
    .end annotation

    const/4 v9, 0x1

    const/4 v8, 0x0

    invoke-virtual {p0}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v5

    invoke-virtual {p2}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/invoke/MethodType;->parameterCount()I

    move-result v6

    if-lt v6, v9, :cond_0

    invoke-virtual {v2, v8}, Ljava/lang/invoke/MethodType;->parameterType(I)Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_1

    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "handler does not accept exception type "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/invoke/MethodHandleStatics;->newIllegalArgumentException(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v6

    throw v6

    :cond_1
    invoke-virtual {v2}, Ljava/lang/invoke/MethodType;->returnType()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/invoke/MethodType;->returnType()Ljava/lang/Class;

    move-result-object v7

    if-eq v6, v7, :cond_2

    const-string/jumbo v6, "target and handler return types"

    invoke-static {v6, v5, v2}, Ljava/lang/invoke/MethodHandles;->misMatchedTypes(Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;)Ljava/lang/RuntimeException;

    move-result-object v6

    throw v6

    :cond_2
    invoke-virtual {v5}, Ljava/lang/invoke/MethodType;->parameterList()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/invoke/MethodType;->parameterList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    invoke-interface {v0, v9, v6}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_3

    invoke-interface {v3, v8, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v0}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_4

    :cond_3
    const-string/jumbo v6, "target and handler types"

    invoke-static {v6, v5, v2}, Ljava/lang/invoke/MethodHandles;->misMatchedTypes(Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;)Ljava/lang/RuntimeException;

    move-result-object v6

    throw v6

    :cond_4
    new-instance v6, Ljava/lang/invoke/Transformers$CatchException;

    invoke-direct {v6, p0, p2, p1}, Ljava/lang/invoke/Transformers$CatchException;-><init>(Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodHandle;Ljava/lang/Class;)V

    return-object v6
.end method

.method public static collectArguments(Ljava/lang/invoke/MethodHandle;ILjava/lang/invoke/MethodHandle;)Ljava/lang/invoke/MethodHandle;
    .locals 2

    invoke-static {p0, p1, p2}, Ljava/lang/invoke/MethodHandles;->collectArgumentsChecks(Ljava/lang/invoke/MethodHandle;ILjava/lang/invoke/MethodHandle;)Ljava/lang/invoke/MethodType;

    move-result-object v0

    new-instance v1, Ljava/lang/invoke/Transformers$CollectArguments;

    invoke-direct {v1, p0, p2, p1, v0}, Ljava/lang/invoke/Transformers$CollectArguments;-><init>(Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodHandle;ILjava/lang/invoke/MethodType;)V

    return-object v1
.end method

.method private static collectArgumentsChecks(Ljava/lang/invoke/MethodHandle;ILjava/lang/invoke/MethodHandle;)Ljava/lang/invoke/MethodType;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v3

    invoke-virtual {p2}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/invoke/MethodType;->returnType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/invoke/MethodType;->parameterList()Ljava/util/List;

    move-result-object v0

    sget-object v4, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne v2, v4, :cond_0

    invoke-virtual {v3, p1, v0}, Ljava/lang/invoke/MethodType;->insertParameterTypes(ILjava/util/List;)Ljava/lang/invoke/MethodType;

    move-result-object v4

    return-object v4

    :cond_0
    invoke-virtual {v3, p1}, Ljava/lang/invoke/MethodType;->parameterType(I)Ljava/lang/Class;

    move-result-object v4

    if-eq v2, v4, :cond_1

    const-string/jumbo v4, "target and filter types do not match"

    invoke-static {v4, v3, v1}, Ljava/lang/invoke/MethodHandleStatics;->newIllegalArgumentException(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v4

    throw v4

    :cond_1
    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v3, p1, v4}, Ljava/lang/invoke/MethodType;->dropParameterTypes(II)Ljava/lang/invoke/MethodType;

    move-result-object v4

    invoke-virtual {v4, p1, v0}, Ljava/lang/invoke/MethodType;->insertParameterTypes(ILjava/util/List;)Ljava/lang/invoke/MethodType;

    move-result-object v4

    return-object v4
.end method

.method public static constant(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/invoke/MethodHandle;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/invoke/MethodHandle;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne p0, v1, :cond_0

    const-string/jumbo v1, "void type"

    invoke-static {v1}, Ljava/lang/invoke/MethodHandleStatics;->newIllegalArgumentException(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_0
    invoke-static {p0}, Lsun/invoke/util/Wrapper;->forPrimitiveType(Ljava/lang/Class;)Lsun/invoke/util/Wrapper;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Lsun/invoke/util/Wrapper;->convert(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    :cond_1
    new-instance v1, Ljava/lang/invoke/Transformers$Constant;

    invoke-direct {v1, p0, p1}, Ljava/lang/invoke/Transformers$Constant;-><init>(Ljava/lang/Class;Ljava/lang/Object;)V

    return-object v1
.end method

.method private static copyTypes(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class",
            "<*>;>;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    array-length v1, v0

    const-class v2, [Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Class;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method private static dropArgumentChecks(Ljava/lang/invoke/MethodType;ILjava/util/List;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/invoke/MethodType;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class",
            "<*>;>;)I"
        }
    .end annotation

    const/4 v5, 0x0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/invoke/MethodType;->checkSlotCount(I)V

    invoke-virtual {p0}, Ljava/lang/invoke/MethodType;->parameterCount()I

    move-result v2

    add-int v1, v2, v0

    if-ltz p1, :cond_0

    if-le p1, v2, :cond_1

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "no argument type to remove"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    const/4 v5, 0x2

    aput-object p2, v4, v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x3

    aput-object v5, v4, v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x4

    aput-object v5, v4, v6

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/invoke/MethodHandleStatics;->newIllegalArgumentException(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    :cond_1
    return v0
.end method

.method public static dropArguments(Ljava/lang/invoke/MethodHandle;ILjava/util/List;)Ljava/lang/invoke/MethodHandle;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/invoke/MethodHandle;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class",
            "<*>;>;)",
            "Ljava/lang/invoke/MethodHandle;"
        }
    .end annotation

    invoke-static {p2}, Ljava/lang/invoke/MethodHandles;->copyTypes(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p0}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v2

    invoke-static {v2, p1, p2}, Ljava/lang/invoke/MethodHandles;->dropArgumentChecks(Ljava/lang/invoke/MethodType;ILjava/util/List;)I

    move-result v0

    invoke-virtual {v2, p1, p2}, Ljava/lang/invoke/MethodType;->insertParameterTypes(ILjava/util/List;)Ljava/lang/invoke/MethodType;

    move-result-object v1

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    new-instance v3, Ljava/lang/invoke/Transformers$DropArguments;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v1, p0, p1, v4}, Ljava/lang/invoke/Transformers$DropArguments;-><init>(Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodHandle;II)V

    return-object v3
.end method

.method public static varargs dropArguments(Ljava/lang/invoke/MethodHandle;I[Ljava/lang/Class;)Ljava/lang/invoke/MethodHandle;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/invoke/MethodHandle;",
            "I[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/invoke/MethodHandle;"
        }
    .end annotation

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {p0, p1, v0}, Ljava/lang/invoke/MethodHandles;->dropArguments(Ljava/lang/invoke/MethodHandle;ILjava/util/List;)Ljava/lang/invoke/MethodHandle;

    move-result-object v0

    return-object v0
.end method

.method public static exactInvoker(Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;
    .locals 2

    new-instance v0, Ljava/lang/invoke/Transformers$Invoker;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Ljava/lang/invoke/Transformers$Invoker;-><init>(Ljava/lang/invoke/MethodType;Z)V

    return-object v0
.end method

.method public static explicitCastArguments(Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;
    .locals 2

    invoke-static {p0, p1}, Ljava/lang/invoke/MethodHandles;->explicitCastArgumentsChecks(Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;)V

    invoke-virtual {p0}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v0

    if-ne v0, p1, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/invoke/MethodType;->explicitCastEquivalentToAsType(Ljava/lang/invoke/MethodType;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Ljava/lang/invoke/MethodHandle;->asFixedArity()Ljava/lang/invoke/MethodHandle;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/invoke/MethodHandle;->asType(Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v1

    return-object v1

    :cond_1
    new-instance v1, Ljava/lang/invoke/Transformers$ExplicitCastArguments;

    invoke-direct {v1, p0, p1}, Ljava/lang/invoke/Transformers$ExplicitCastArguments;-><init>(Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;)V

    return-object v1
.end method

.method private static explicitCastArgumentsChecks(Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;)V
    .locals 3

    invoke-virtual {p0}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/invoke/MethodType;->parameterCount()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/invoke/MethodType;->parameterCount()I

    move-result v1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/invoke/WrongMethodTypeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "cannot explicitly cast "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/invoke/WrongMethodTypeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private static filterArgumentChecks(Ljava/lang/invoke/MethodHandle;ILjava/lang/invoke/MethodHandle;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/invoke/MethodType;->parameterCount()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    invoke-virtual {v0}, Ljava/lang/invoke/MethodType;->returnType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, p1}, Ljava/lang/invoke/MethodType;->parameterType(I)Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    :cond_0
    const-string/jumbo v2, "target and filter types do not match"

    invoke-static {v2, v1, v0}, Ljava/lang/invoke/MethodHandleStatics;->newIllegalArgumentException(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    :cond_1
    return-void
.end method

.method public static varargs filterArguments(Ljava/lang/invoke/MethodHandle;I[Ljava/lang/invoke/MethodHandle;)Ljava/lang/invoke/MethodHandle;
    .locals 3

    invoke-static {p0, p1, p2}, Ljava/lang/invoke/MethodHandles;->filterArgumentsCheckArity(Ljava/lang/invoke/MethodHandle;I[Ljava/lang/invoke/MethodHandle;)V

    const/4 v0, 0x0

    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    add-int v1, v0, p1

    aget-object v2, p2, v0

    invoke-static {p0, v1, v2}, Ljava/lang/invoke/MethodHandles;->filterArgumentChecks(Ljava/lang/invoke/MethodHandle;ILjava/lang/invoke/MethodHandle;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/invoke/Transformers$FilterArguments;

    invoke-direct {v1, p0, p1, p2}, Ljava/lang/invoke/Transformers$FilterArguments;-><init>(Ljava/lang/invoke/MethodHandle;I[Ljava/lang/invoke/MethodHandle;)V

    return-object v1
.end method

.method private static filterArgumentsCheckArity(Ljava/lang/invoke/MethodHandle;I[Ljava/lang/invoke/MethodHandle;)V
    .locals 3

    invoke-virtual {p0}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/invoke/MethodType;->parameterCount()I

    move-result v0

    array-length v2, p2

    add-int/2addr v2, p1

    if-le v2, v0, :cond_0

    const-string/jumbo v2, "too many filters"

    invoke-static {v2}, Ljava/lang/invoke/MethodHandleStatics;->newIllegalArgumentException(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    :cond_0
    return-void
.end method

.method public static filterReturnValue(Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodHandle;)Ljava/lang/invoke/MethodHandle;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v0

    invoke-static {v1, v0}, Ljava/lang/invoke/MethodHandles;->filterReturnValueChecks(Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;)V

    new-instance v2, Ljava/lang/invoke/Transformers$FilterReturnValue;

    invoke-direct {v2, p0, p1}, Ljava/lang/invoke/Transformers$FilterReturnValue;-><init>(Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodHandle;)V

    return-object v2
.end method

.method private static filterReturnValueChecks(Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/invoke/MethodType;->returnType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/invoke/MethodType;->parameterCount()I

    move-result v0

    if-nez v0, :cond_1

    sget-object v2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-eq v1, v2, :cond_2

    :cond_0
    const-string/jumbo v2, "target and filter types do not match"

    invoke-static {v2, p0, p1}, Ljava/lang/invoke/MethodHandleStatics;->newIllegalArgumentException(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    :cond_1
    invoke-virtual {p1, v2}, Ljava/lang/invoke/MethodType;->parameterType(I)Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    :cond_2
    return-void
.end method

.method private static foldArgumentChecks(ILjava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;)Ljava/lang/Class;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/invoke/MethodType;",
            "Ljava/lang/invoke/MethodType;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    const/4 v8, 0x0

    invoke-virtual {p2}, Ljava/lang/invoke/MethodType;->parameterCount()I

    move-result v1

    invoke-virtual {p2}, Ljava/lang/invoke/MethodType;->returnType()Ljava/lang/Class;

    move-result-object v4

    sget-object v5, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne v4, v5, :cond_2

    const/4 v2, 0x0

    :goto_0
    add-int v0, p0, v2

    invoke-virtual {p1}, Ljava/lang/invoke/MethodType;->parameterCount()I

    move-result v5

    add-int v6, v0, v1

    if-lt v5, v6, :cond_3

    const/4 v3, 0x1

    :goto_1
    if-eqz v3, :cond_0

    invoke-virtual {p2}, Ljava/lang/invoke/MethodType;->parameterList()Ljava/util/List;

    move-result-object v5

    invoke-virtual {p1}, Ljava/lang/invoke/MethodType;->parameterList()Ljava/util/List;

    move-result-object v6

    add-int v7, v0, v1

    invoke-interface {v6, v0, v7}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_0

    const/4 v3, 0x0

    :cond_0
    if-eqz v3, :cond_1

    if-eqz v2, :cond_1

    invoke-virtual {p2}, Ljava/lang/invoke/MethodType;->returnType()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {p1, v8}, Ljava/lang/invoke/MethodType;->parameterType(I)Ljava/lang/Class;

    move-result-object v6

    if-eq v5, v6, :cond_1

    const/4 v3, 0x0

    :cond_1
    if-nez v3, :cond_4

    const-string/jumbo v5, "target and combiner types"

    invoke-static {v5, p1, p2}, Ljava/lang/invoke/MethodHandles;->misMatchedTypes(Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;)Ljava/lang/RuntimeException;

    move-result-object v5

    throw v5

    :cond_2
    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    goto :goto_1

    :cond_4
    return-object v4
.end method

.method public static foldArguments(Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodHandle;)Ljava/lang/invoke/MethodHandle;
    .locals 5

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v0

    invoke-static {v1, v3, v0}, Ljava/lang/invoke/MethodHandles;->foldArgumentChecks(ILjava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;)Ljava/lang/Class;

    move-result-object v2

    new-instance v4, Ljava/lang/invoke/Transformers$FoldArguments;

    invoke-direct {v4, p0, p1}, Ljava/lang/invoke/Transformers$FoldArguments;-><init>(Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodHandle;)V

    return-object v4
.end method

.method private static getMethodHandleImpl(Ljava/lang/invoke/MethodHandle;)Ljava/lang/invoke/MethodHandleImpl;
    .locals 3

    instance-of v0, p0, Ljava/lang/invoke/Transformers$Construct;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/invoke/Transformers$Construct;

    invoke-virtual {p0}, Ljava/lang/invoke/Transformers$Construct;->getConstructorHandle()Ljava/lang/invoke/MethodHandle;

    move-result-object p0

    :cond_0
    instance-of v0, p0, Ljava/lang/invoke/Transformers$VarargsCollector;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/invoke/MethodHandle;->asFixedArity()Ljava/lang/invoke/MethodHandle;

    move-result-object p0

    :cond_1
    instance-of v0, p0, Ljava/lang/invoke/MethodHandleImpl;

    if-eqz v0, :cond_2

    check-cast p0, Ljava/lang/invoke/MethodHandleImpl;

    return-object p0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is not a direct handle"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static guardWithTest(Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodHandle;)Ljava/lang/invoke/MethodHandle;
    .locals 9

    invoke-virtual {p0}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v6

    invoke-virtual {p2}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/invoke/MethodType;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string/jumbo v7, "target and fallback types"

    invoke-static {v7, v6, v0}, Ljava/lang/invoke/MethodHandles;->misMatchedTypes(Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;)Ljava/lang/RuntimeException;

    move-result-object v7

    throw v7

    :cond_0
    invoke-virtual {v3}, Ljava/lang/invoke/MethodType;->returnType()Ljava/lang/Class;

    move-result-object v7

    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v7, v8, :cond_1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "guard type is not a predicate "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/invoke/MethodHandleStatics;->newIllegalArgumentException(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v7

    throw v7

    :cond_1
    invoke-virtual {v6}, Ljava/lang/invoke/MethodType;->parameterList()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/invoke/MethodType;->parameterList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_2

    const/4 v7, 0x0

    invoke-interface {v4, v7, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_3

    :cond_2
    const-string/jumbo v7, "target and test types"

    invoke-static {v7, v6, v3}, Ljava/lang/invoke/MethodHandles;->misMatchedTypes(Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;)Ljava/lang/RuntimeException;

    move-result-object v7

    throw v7

    :cond_3
    invoke-interface {v4, v2, v5}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v7

    invoke-static {p0, v2, v7}, Ljava/lang/invoke/MethodHandles;->dropArguments(Ljava/lang/invoke/MethodHandle;ILjava/util/List;)Ljava/lang/invoke/MethodHandle;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v3

    :cond_4
    new-instance v7, Ljava/lang/invoke/Transformers$GuardWithTest;

    invoke-direct {v7, p0, p1, p2}, Ljava/lang/invoke/Transformers$GuardWithTest;-><init>(Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodHandle;)V

    return-object v7
.end method

.method public static identity(B)B
    .locals 0

    return p0
.end method

.method public static identity(C)C
    .locals 0

    return p0
.end method

.method public static identity(D)D
    .locals 0

    return-wide p0
.end method

.method public static identity(F)F
    .locals 0

    return p0
.end method

.method public static identity(I)I
    .locals 0

    return p0
.end method

.method public static identity(J)J
    .locals 0

    return-wide p0
.end method

.method public static identity(Ljava/lang/Class;)Ljava/lang/invoke/MethodHandle;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/invoke/MethodHandle;"
        }
    .end annotation

    if-nez p0, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "type == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_1

    :try_start_0
    sget-object v1, Ljava/lang/invoke/MethodHandles$Lookup;->PUBLIC_LOOKUP:Ljava/lang/invoke/MethodHandles$Lookup;

    const-class v2, Ljava/lang/invoke/MethodHandles;

    const-string/jumbo v3, "identity"

    invoke-static {p0, p0}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Ljava/lang/invoke/MethodHandles$Lookup;->findStatic(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    :cond_1
    new-instance v1, Ljava/lang/invoke/Transformers$ReferenceIdentity;

    invoke-direct {v1, p0}, Ljava/lang/invoke/Transformers$ReferenceIdentity;-><init>(Ljava/lang/Class;)V

    return-object v1
.end method

.method public static identity(S)S
    .locals 0

    return p0
.end method

.method public static identity(Z)Z
    .locals 0

    return p0
.end method

.method public static varargs insertArguments(Ljava/lang/invoke/MethodHandle;I[Ljava/lang/Object;)Ljava/lang/invoke/MethodHandle;
    .locals 6

    array-length v1, p2

    invoke-static {p0, v1, p1}, Ljava/lang/invoke/MethodHandles;->insertArgumentsChecks(Ljava/lang/invoke/MethodHandle;II)[Ljava/lang/Class;

    move-result-object v3

    if-nez v1, :cond_0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_2

    add-int v4, p1, v0

    aget-object v2, v3, v4

    invoke-virtual {v2}, Ljava/lang/Class;->isPrimitive()Z

    move-result v4

    if-nez v4, :cond_1

    add-int v4, p1, v0

    aget-object v4, v3, v4

    aget-object v5, p2, v0

    invoke-virtual {v4, v5}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v2}, Lsun/invoke/util/Wrapper;->forPrimitiveType(Ljava/lang/Class;)Lsun/invoke/util/Wrapper;

    move-result-object v4

    aget-object v5, p2, v0

    invoke-virtual {v4, v5, v2}, Lsun/invoke/util/Wrapper;->convert(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, p2, v0

    goto :goto_1

    :cond_2
    new-instance v4, Ljava/lang/invoke/Transformers$InsertArguments;

    invoke-direct {v4, p0, p1, p2}, Ljava/lang/invoke/Transformers$InsertArguments;-><init>(Ljava/lang/invoke/MethodHandle;I[Ljava/lang/Object;)V

    return-object v4
.end method

.method private static insertArgumentsChecks(Ljava/lang/invoke/MethodHandle;II)[Ljava/lang/Class;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/invoke/MethodHandle;",
            "II)[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/invoke/MethodType;->parameterCount()I

    move-result v2

    sub-int v0, v2, p1

    if-gez v0, :cond_0

    const-string/jumbo v3, "too many values to insert"

    invoke-static {v3}, Ljava/lang/invoke/MethodHandleStatics;->newIllegalArgumentException(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    :cond_0
    if-ltz p2, :cond_1

    if-le p2, v0, :cond_2

    :cond_1
    const-string/jumbo v3, "no argument type to append"

    invoke-static {v3}, Ljava/lang/invoke/MethodHandleStatics;->newIllegalArgumentException(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    :cond_2
    invoke-virtual {v1}, Ljava/lang/invoke/MethodType;->ptypes()[Ljava/lang/Class;

    move-result-object v3

    return-object v3
.end method

.method public static invoker(Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;
    .locals 2

    new-instance v0, Ljava/lang/invoke/Transformers$Invoker;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljava/lang/invoke/Transformers$Invoker;-><init>(Ljava/lang/invoke/MethodType;Z)V

    return-object v0
.end method

.method public static lookup()Ljava/lang/invoke/MethodHandles$Lookup;
    .locals 2

    new-instance v0, Ljava/lang/invoke/MethodHandles$Lookup;

    invoke-static {}, Ldalvik/system/VMStack;->getStackClass1()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/invoke/MethodHandles$Lookup;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method

.method static misMatchedTypes(Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;)Ljava/lang/RuntimeException;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " must match: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " != "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/invoke/MethodHandleStatics;->newIllegalArgumentException(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    return-object v0
.end method

.method private static permuteArgumentChecks([ILjava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;)Z
    .locals 8

    invoke-virtual {p1}, Ljava/lang/invoke/MethodType;->returnType()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {p2}, Ljava/lang/invoke/MethodType;->returnType()Ljava/lang/Class;

    move-result-object v7

    if-eq v6, v7, :cond_0

    const-string/jumbo v6, "return types do not match"

    invoke-static {v6, p2, p1}, Ljava/lang/invoke/MethodHandleStatics;->newIllegalArgumentException(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v6

    throw v6

    :cond_0
    array-length v6, p0

    invoke-virtual {p2}, Ljava/lang/invoke/MethodType;->parameterCount()I

    move-result v7

    if-ne v6, v7, :cond_5

    invoke-virtual {p1}, Ljava/lang/invoke/MethodType;->parameterCount()I

    move-result v4

    const/4 v0, 0x0

    const/4 v3, 0x0

    :goto_0
    array-length v6, p0

    if-ge v3, v6, :cond_2

    aget v2, p0, v3

    if-ltz v2, :cond_1

    if-lt v2, v4, :cond_3

    :cond_1
    const/4 v0, 0x1

    :cond_2
    if-nez v0, :cond_5

    const/4 v6, 0x1

    return v6

    :cond_3
    invoke-virtual {p1, v2}, Ljava/lang/invoke/MethodType;->parameterType(I)Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {p2, v3}, Ljava/lang/invoke/MethodType;->parameterType(I)Ljava/lang/Class;

    move-result-object v1

    if-eq v5, v1, :cond_4

    const-string/jumbo v6, "parameter types do not match after reorder"

    invoke-static {v6, p2, p1}, Ljava/lang/invoke/MethodHandleStatics;->newIllegalArgumentException(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v6

    throw v6

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "bad reorder array: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/invoke/MethodHandleStatics;->newIllegalArgumentException(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v6

    throw v6
.end method

.method public static varargs permuteArguments(Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;[I)Ljava/lang/invoke/MethodHandle;
    .locals 2

    invoke-virtual {p2}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [I

    invoke-virtual {p0}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v0

    invoke-static {p2, p1, v0}, Ljava/lang/invoke/MethodHandles;->permuteArgumentChecks([ILjava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;)Z

    new-instance v1, Ljava/lang/invoke/Transformers$PermuteArguments;

    invoke-direct {v1, p1, p0, p2}, Ljava/lang/invoke/Transformers$PermuteArguments;-><init>(Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodHandle;[I)V

    return-object v1
.end method

.method public static publicLookup()Ljava/lang/invoke/MethodHandles$Lookup;
    .locals 1

    sget-object v0, Ljava/lang/invoke/MethodHandles$Lookup;->PUBLIC_LOOKUP:Ljava/lang/invoke/MethodHandles$Lookup;

    return-object v0
.end method

.method public static reflectAs(Ljava/lang/Class;Ljava/lang/invoke/MethodHandle;)Ljava/lang/reflect/Member;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/reflect/Member;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/invoke/MethodHandle;",
            ")TT;"
        }
    .end annotation

    invoke-static {p1}, Ljava/lang/invoke/MethodHandles;->getMethodHandleImpl(Ljava/lang/invoke/MethodHandle;)Ljava/lang/invoke/MethodHandleImpl;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/invoke/MethodHandleImpl;->getMemberInternal()Ljava/lang/reflect/Member;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Member;

    return-object v1
.end method

.method public static spreadInvoker(Ljava/lang/invoke/MethodType;I)Ljava/lang/invoke/MethodHandle;
    .locals 4

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/invoke/MethodType;->parameterCount()I

    move-result v2

    if-le p1, v2, :cond_1

    :cond_0
    const-string/jumbo v2, "bad argument count"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/lang/invoke/MethodHandleStatics;->newIllegalArgumentException(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    :cond_1
    invoke-static {p0}, Ljava/lang/invoke/MethodHandles;->invoker(Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/invoke/MethodType;->parameterCount()I

    move-result v2

    sub-int v1, v2, p1

    const-class v2, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Ljava/lang/invoke/MethodHandle;->asSpreader(Ljava/lang/Class;I)Ljava/lang/invoke/MethodHandle;

    move-result-object v0

    return-object v0
.end method

.method public static throwException(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/invoke/MethodHandle;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/Throwable;",
            ">;)",
            "Ljava/lang/invoke/MethodHandle;"
        }
    .end annotation

    const-class v0, Ljava/lang/Throwable;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/ClassCastException;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Ljava/lang/invoke/Transformers$AlwaysThrow;

    invoke-direct {v0, p0, p1}, Ljava/lang/invoke/Transformers$AlwaysThrow;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    return-object v0
.end method
