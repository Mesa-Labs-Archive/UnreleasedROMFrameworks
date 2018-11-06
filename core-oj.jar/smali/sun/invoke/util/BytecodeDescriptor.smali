.class public Lsun/invoke/util/BytecodeDescriptor;
.super Ljava/lang/Object;
.source "BytecodeDescriptor.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static parseError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "bad signature: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static parseMethod(Ljava/lang/String;IILjava/lang/ClassLoader;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation

    const/4 v7, 0x0

    if-nez p3, :cond_0

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object p3

    :cond_0
    move-object v4, p0

    const/4 v5, 0x1

    new-array v0, v5, [I

    aput p1, v0, v7

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    aget v5, v0, v7

    if-ge v5, p2, :cond_6

    aget v5, v0, v7

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x28

    if-ne v5, v6, :cond_6

    aget v5, v0, v7

    add-int/lit8 v5, v5, 0x1

    aput v5, v0, v7

    :goto_0
    aget v5, v0, v7

    if-ge v5, p2, :cond_3

    aget v5, v0, v7

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x29

    if-eq v5, v6, :cond_3

    invoke-static {p0, v0, p2, p3}, Lsun/invoke/util/BytecodeDescriptor;->parseSig(Ljava/lang/String;[IILjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_1

    sget-object v5, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne v1, v5, :cond_2

    :cond_1
    const-string/jumbo v5, "bad argument type"

    invoke-static {p0, v5}, Lsun/invoke/util/BytecodeDescriptor;->parseError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    aget v5, v0, v7

    add-int/lit8 v5, v5, 0x1

    aput v5, v0, v7

    :goto_1
    invoke-static {p0, v0, p2, p3}, Lsun/invoke/util/BytecodeDescriptor;->parseSig(Ljava/lang/String;[IILjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v3

    if-eqz v3, :cond_4

    aget v5, v0, v7

    if-eq v5, p2, :cond_5

    :cond_4
    const-string/jumbo v5, "bad return type"

    invoke-static {p0, v5}, Lsun/invoke/util/BytecodeDescriptor;->parseError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v2

    :cond_6
    const-string/jumbo v5, "not a method type"

    invoke-static {p0, v5}, Lsun/invoke/util/BytecodeDescriptor;->parseError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static parseMethod(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, p1}, Lsun/invoke/util/BytecodeDescriptor;->parseMethod(Ljava/lang/String;IILjava/lang/ClassLoader;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static parseSig(Ljava/lang/String;[IILjava/lang/ClassLoader;)Ljava/lang/Class;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[II",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    const/4 v9, 0x0

    const/4 v8, 0x0

    aget v6, p1, v8

    if-ne v6, p2, :cond_0

    return-object v9

    :cond_0
    aget v6, p1, v8

    add-int/lit8 v7, v6, 0x1

    aput v7, p1, v8

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v6, 0x4c

    if-ne v1, v6, :cond_2

    aget v0, p1, v8

    const/16 v6, 0x3b

    invoke-virtual {p0, v6, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    if-gez v2, :cond_1

    return-object v9

    :cond_1
    add-int/lit8 v6, v2, 0x1

    aput v6, p1, v8

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x2f

    const/16 v8, 0x2e

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    :try_start_0
    invoke-virtual {p3, v4}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    return-object v6

    :catch_0
    move-exception v3

    new-instance v6, Ljava/lang/TypeNotPresentException;

    invoke-direct {v6, v4, v3}, Ljava/lang/TypeNotPresentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    :cond_2
    const/16 v6, 0x5b

    if-ne v1, v6, :cond_4

    invoke-static {p0, p1, p2, p3}, Lsun/invoke/util/BytecodeDescriptor;->parseSig(Ljava/lang/String;[IILjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-static {v5, v8}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    :cond_3
    return-object v5

    :cond_4
    invoke-static {v1}, Lsun/invoke/util/Wrapper;->forBasicType(C)Lsun/invoke/util/Wrapper;

    move-result-object v6

    invoke-virtual {v6}, Lsun/invoke/util/Wrapper;->primitiveType()Ljava/lang/Class;

    move-result-object v6

    return-object v6
.end method

.method public static unparse(Ljava/lang/Class;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, v0}, Lsun/invoke/util/BytecodeDescriptor;->unparseSig(Ljava/lang/Class;Ljava/lang/StringBuilder;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static unparse(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/Class;

    invoke-static {p0}, Lsun/invoke/util/BytecodeDescriptor;->unparse(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    instance-of v0, p0, Ljava/lang/invoke/MethodType;

    if-eqz v0, :cond_1

    check-cast p0, Ljava/lang/invoke/MethodType;

    invoke-static {p0}, Lsun/invoke/util/BytecodeDescriptor;->unparse(Ljava/lang/invoke/MethodType;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static unparse(Ljava/lang/invoke/MethodType;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/invoke/MethodType;->returnType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/invoke/MethodType;->parameterList()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lsun/invoke/util/BytecodeDescriptor;->unparseMethod(Ljava/lang/Class;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static unparseMethod(Ljava/lang/Class;Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class",
            "<*>;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x28

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    invoke-static {v0, v2}, Lsun/invoke/util/BytecodeDescriptor;->unparseSig(Ljava/lang/Class;Ljava/lang/StringBuilder;)V

    goto :goto_0

    :cond_0
    const/16 v3, 0x29

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0, v2}, Lsun/invoke/util/BytecodeDescriptor;->unparseSig(Ljava/lang/Class;Ljava/lang/StringBuilder;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private static unparseSig(Ljava/lang/Class;Ljava/lang/StringBuilder;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/StringBuilder;",
            ")V"
        }
    .end annotation

    const/16 v3, 0x4c

    invoke-static {p0}, Lsun/invoke/util/Wrapper;->forBasicType(Ljava/lang/Class;)Lsun/invoke/util/Wrapper;

    move-result-object v2

    invoke-virtual {v2}, Lsun/invoke/util/Wrapper;->basicTypeChar()C

    move-result v0

    if-eq v0, v3, :cond_1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v2

    xor-int/lit8 v1, v2, 0x1

    if-eqz v1, :cond_2

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x2e

    const/16 v4, 0x2f

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_0

    const/16 v2, 0x3b

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
