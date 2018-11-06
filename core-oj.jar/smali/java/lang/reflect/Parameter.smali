.class public final Ljava/lang/reflect/Parameter;
.super Ljava/lang/Object;
.source "Parameter.java"

# interfaces
.implements Ljava/lang/reflect/AnnotatedElement;


# instance fields
.field private final executable:Ljava/lang/reflect/Executable;

.field private final index:I

.field private final modifiers:I

.field private final name:Ljava/lang/String;

.field private volatile transient parameterClassCache:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private volatile transient parameterTypeCache:Ljava/lang/reflect/Type;


# direct methods
.method constructor <init>(Ljava/lang/String;ILjava/lang/reflect/Executable;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/lang/reflect/Parameter;->parameterTypeCache:Ljava/lang/reflect/Type;

    iput-object v0, p0, Ljava/lang/reflect/Parameter;->parameterClassCache:Ljava/lang/Class;

    iput-object p1, p0, Ljava/lang/reflect/Parameter;->name:Ljava/lang/String;

    iput p2, p0, Ljava/lang/reflect/Parameter;->modifiers:I

    iput-object p3, p0, Ljava/lang/reflect/Parameter;->executable:Ljava/lang/reflect/Executable;

    iput p4, p0, Ljava/lang/reflect/Parameter;->index:I

    return-void
.end method

.method private static native getAnnotationNative(Ljava/lang/reflect/Executable;ILjava/lang/Class;)Ljava/lang/annotation/Annotation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/reflect/Executable;",
            "I",
            "Ljava/lang/Class",
            "<TA;>;)TA;"
        }
    .end annotation

    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x0

    instance-of v2, p1, Ljava/lang/reflect/Parameter;

    if-eqz v2, :cond_1

    move-object v0, p1

    check-cast v0, Ljava/lang/reflect/Parameter;

    iget-object v2, v0, Ljava/lang/reflect/Parameter;->executable:Ljava/lang/reflect/Executable;

    iget-object v3, p0, Ljava/lang/reflect/Parameter;->executable:Ljava/lang/reflect/Executable;

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Executable;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, v0, Ljava/lang/reflect/Parameter;->index:I

    iget v3, p0, Ljava/lang/reflect/Parameter;->index:I

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    return v1
.end method

.method public getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Ljava/lang/reflect/Parameter;->executable:Ljava/lang/reflect/Executable;

    iget v1, p0, Ljava/lang/reflect/Parameter;->index:I

    invoke-static {v0, v1, p1}, Ljava/lang/reflect/Parameter;->getAnnotationNative(Ljava/lang/reflect/Executable;ILjava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    return-object v0
.end method

.method public getAnnotations()[Ljava/lang/annotation/Annotation;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/reflect/Parameter;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v0

    return-object v0
.end method

.method public getAnnotationsByType(Ljava/lang/Class;)[Ljava/lang/annotation/Annotation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)[TT;"
        }
    .end annotation

    invoke-static {p0, p1}, Llibcore/reflect/AnnotatedElements;->getDirectOrIndirectAnnotationsByType(Ljava/lang/reflect/AnnotatedElement;Ljava/lang/Class;)[Ljava/lang/annotation/Annotation;

    move-result-object v0

    return-object v0
.end method

.method public getDeclaredAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Ljava/lang/reflect/Parameter;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    return-object v0
.end method

.method public getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;
    .locals 2

    iget-object v0, p0, Ljava/lang/reflect/Parameter;->executable:Ljava/lang/reflect/Executable;

    invoke-virtual {v0}, Ljava/lang/reflect/Executable;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v0

    iget v1, p0, Ljava/lang/reflect/Parameter;->index:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getDeclaredAnnotationsByType(Ljava/lang/Class;)[Ljava/lang/annotation/Annotation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)[TT;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Ljava/lang/reflect/Parameter;->getAnnotationsByType(Ljava/lang/Class;)[Ljava/lang/annotation/Annotation;

    move-result-object v0

    return-object v0
.end method

.method public getDeclaringExecutable()Ljava/lang/reflect/Executable;
    .locals 1

    iget-object v0, p0, Ljava/lang/reflect/Parameter;->executable:Ljava/lang/reflect/Executable;

    return-object v0
.end method

.method public getModifiers()I
    .locals 1

    iget v0, p0, Ljava/lang/reflect/Parameter;->modifiers:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Ljava/lang/reflect/Parameter;->name:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava/lang/reflect/Parameter;->name:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "arg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljava/lang/reflect/Parameter;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v0, p0, Ljava/lang/reflect/Parameter;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getParameterizedType()Ljava/lang/reflect/Type;
    .locals 3

    iget-object v0, p0, Ljava/lang/reflect/Parameter;->parameterTypeCache:Ljava/lang/reflect/Type;

    if-nez v0, :cond_0

    iget-object v1, p0, Ljava/lang/reflect/Parameter;->executable:Ljava/lang/reflect/Executable;

    invoke-virtual {v1}, Ljava/lang/reflect/Executable;->getAllGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v1

    iget v2, p0, Ljava/lang/reflect/Parameter;->index:I

    aget-object v0, v1, v2

    iput-object v0, p0, Ljava/lang/reflect/Parameter;->parameterTypeCache:Ljava/lang/reflect/Type;

    :cond_0
    return-object v0
.end method

.method getRealName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/lang/reflect/Parameter;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/Class;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    iget-object v0, p0, Ljava/lang/reflect/Parameter;->parameterClassCache:Ljava/lang/Class;

    if-nez v0, :cond_0

    iget-object v1, p0, Ljava/lang/reflect/Parameter;->executable:Ljava/lang/reflect/Executable;

    invoke-virtual {v1}, Ljava/lang/reflect/Executable;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    iget v2, p0, Ljava/lang/reflect/Parameter;->index:I

    aget-object v0, v1, v2

    iput-object v0, p0, Ljava/lang/reflect/Parameter;->parameterClassCache:Ljava/lang/Class;

    :cond_0
    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Ljava/lang/reflect/Parameter;->executable:Ljava/lang/reflect/Executable;

    invoke-virtual {v0}, Ljava/lang/reflect/Executable;->hashCode()I

    move-result v0

    iget v1, p0, Ljava/lang/reflect/Parameter;->index:I

    xor-int/2addr v0, v1

    return v0
.end method

.method public isImplicit()Z
    .locals 1

    invoke-virtual {p0}, Ljava/lang/reflect/Parameter;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isMandated(I)Z

    move-result v0

    return v0
.end method

.method public isNamePresent()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Ljava/lang/reflect/Parameter;->executable:Ljava/lang/reflect/Executable;

    invoke-virtual {v1}, Ljava/lang/reflect/Executable;->hasRealParameterData()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Ljava/lang/reflect/Parameter;->name:Ljava/lang/String;

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isSynthetic()Z
    .locals 1

    invoke-virtual {p0}, Ljava/lang/reflect/Parameter;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isSynthetic(I)Z

    move-result v0

    return v0
.end method

.method public isVarArgs()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Ljava/lang/reflect/Parameter;->executable:Ljava/lang/reflect/Executable;

    invoke-virtual {v1}, Ljava/lang/reflect/Executable;->isVarArgs()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Ljava/lang/reflect/Parameter;->index:I

    iget-object v2, p0, Ljava/lang/reflect/Parameter;->executable:Ljava/lang/reflect/Executable;

    invoke-virtual {v2}, Ljava/lang/reflect/Executable;->getParameterCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    const/16 v5, 0x20

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/reflect/Parameter;->getParameterizedType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/reflect/Type;->getTypeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/reflect/Parameter;->getModifiers()I

    move-result v3

    invoke-static {v3}, Ljava/lang/reflect/Modifier;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Ljava/lang/reflect/Parameter;->modifiers:I

    if-eqz v3, :cond_0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {p0}, Ljava/lang/reflect/Parameter;->isVarArgs()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v3, "\\[\\]$"

    const-string/jumbo v4, "..."

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/reflect/Parameter;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
