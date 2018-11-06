.class public abstract Ljava/lang/reflect/Executable;
.super Ljava/lang/reflect/AccessibleObject;
.source "Executable.java"

# interfaces
.implements Ljava/lang/reflect/Member;
.implements Ljava/lang/reflect/GenericDeclaration;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/lang/reflect/Executable$GenericInfo;
    }
.end annotation


# instance fields
.field private accessFlags:I

.field private artMethod:J

.field private declaringClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private declaringClassOfOverriddenMethod:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private dexMethodIndex:I

.field private volatile transient hasRealParameterData:Z

.field private volatile transient parameters:[Ljava/lang/reflect/Parameter;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/reflect/AccessibleObject;-><init>()V

    return-void
.end method

.method private static fixMethodFlags(I)I
    .locals 2

    and-int/lit16 v1, p0, 0x400

    if-eqz v1, :cond_0

    and-int/lit16 p0, p0, -0x101

    :cond_0
    and-int/lit8 p0, p0, -0x21

    const/high16 v0, 0x20000

    const/high16 v1, 0x20000

    and-int/2addr v1, p0

    if-eqz v1, :cond_1

    or-int/lit8 p0, p0, 0x20

    :cond_1
    const v1, 0xffff

    and-int/2addr v1, p0

    return v1
.end method

.method private native getAnnotationNative(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private native getDeclaredAnnotationsNative()[Ljava/lang/annotation/Annotation;
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private native getParameterAnnotationsNative()[[Ljava/lang/annotation/Annotation;
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private native getParameters0()[Ljava/lang/reflect/Parameter;
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private native getSignatureAnnotation()[Ljava/lang/String;
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private getSignatureAttribute()Ljava/lang/String;
    .locals 5

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/reflect/Executable;->getSignatureAnnotation()[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-object v3

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    array-length v4, v0

    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v2, v0, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private native isAnnotationPresentNative(Ljava/lang/Class;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)Z"
        }
    .end annotation

    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private privateGetParameters()[Ljava/lang/reflect/Parameter;
    .locals 4

    iget-object v2, p0, Ljava/lang/reflect/Executable;->parameters:[Ljava/lang/reflect/Parameter;

    if-nez v2, :cond_0

    :try_start_0
    invoke-direct {p0}, Ljava/lang/reflect/Executable;->getParameters0()[Ljava/lang/reflect/Parameter;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    if-nez v2, :cond_1

    const/4 v3, 0x0

    iput-boolean v3, p0, Ljava/lang/reflect/Executable;->hasRealParameterData:Z

    invoke-direct {p0}, Ljava/lang/reflect/Executable;->synthesizeAllParams()[Ljava/lang/reflect/Parameter;

    move-result-object v2

    :goto_0
    iput-object v2, p0, Ljava/lang/reflect/Executable;->parameters:[Ljava/lang/reflect/Parameter;

    :cond_0
    return-object v2

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/reflect/MalformedParametersException;

    const-string/jumbo v3, "Invalid parameter metadata in class file"

    invoke-direct {v1, v3}, Ljava/lang/reflect/MalformedParametersException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/reflect/MalformedParametersException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v1

    :cond_1
    const/4 v3, 0x1

    iput-boolean v3, p0, Ljava/lang/reflect/Executable;->hasRealParameterData:Z

    invoke-direct {p0, v2}, Ljava/lang/reflect/Executable;->verifyParameters([Ljava/lang/reflect/Parameter;)V

    goto :goto_0
.end method

.method private synthesizeAllParams()[Ljava/lang/reflect/Parameter;
    .locals 6

    invoke-virtual {p0}, Ljava/lang/reflect/Executable;->getParameterCount()I

    move-result v2

    new-array v1, v2, [Ljava/lang/reflect/Parameter;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    new-instance v3, Ljava/lang/reflect/Parameter;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "arg"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5, p0, v0}, Ljava/lang/reflect/Parameter;-><init>(Ljava/lang/String;ILjava/lang/reflect/Executable;I)V

    aput-object v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private verifyParameters([Ljava/lang/reflect/Parameter;)V
    .locals 8

    const/4 v7, -0x1

    const v0, 0x9010

    invoke-virtual {p0}, Ljava/lang/reflect/Executable;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    array-length v4, v4

    array-length v5, p1

    if-eq v4, v5, :cond_0

    new-instance v4, Ljava/lang/reflect/MalformedParametersException;

    const-string/jumbo v5, "Wrong number of parameters in MethodParameters attribute"

    invoke-direct {v4, v5}, Ljava/lang/reflect/MalformedParametersException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    const/4 v4, 0x0

    array-length v5, p1

    :goto_0
    if-ge v4, v5, :cond_5

    aget-object v3, p1, v4

    invoke-virtual {v3}, Ljava/lang/reflect/Parameter;->getRealName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3}, Ljava/lang/reflect/Parameter;->getModifiers()I

    move-result v1

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    const/16 v6, 0x2e

    invoke-virtual {v2, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-eq v6, v7, :cond_2

    :cond_1
    new-instance v4, Ljava/lang/reflect/MalformedParametersException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Invalid parameter name \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/reflect/MalformedParametersException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_2
    const/16 v6, 0x3b

    invoke-virtual {v2, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-ne v6, v7, :cond_1

    const/16 v6, 0x5b

    invoke-virtual {v2, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-ne v6, v7, :cond_1

    const/16 v6, 0x2f

    invoke-virtual {v2, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-ne v6, v7, :cond_1

    :cond_3
    const v6, 0x9010

    and-int/2addr v6, v1

    if-eq v1, v6, :cond_4

    new-instance v4, Ljava/lang/reflect/MalformedParametersException;

    const-string/jumbo v5, "Invalid parameter modifiers"

    invoke-direct {v4, v5}, Ljava/lang/reflect/MalformedParametersException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method


# virtual methods
.method native compareMethodParametersInternal(Ljava/lang/reflect/Method;)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method final equalNameAndParametersInternal(Ljava/lang/reflect/Method;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/reflect/Executable;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/reflect/Executable;->compareMethodParametersInternal(Ljava/lang/reflect/Method;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method equalParamTypes([Ljava/lang/Class;[Ljava/lang/Class;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    const/4 v3, 0x0

    array-length v1, p1

    array-length v2, p2

    if-ne v1, v2, :cond_2

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    aget-object v1, p1, v0

    aget-object v2, p2, v0

    if-eq v1, v2, :cond_0

    return v3

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    return v1

    :cond_2
    return v3
.end method

.method public final getAccessFlags()I
    .locals 1

    iget v0, p0, Ljava/lang/reflect/Executable;->accessFlags:I

    return v0
.end method

.method getAllGenericParameterTypes()[Ljava/lang/reflect/Type;
    .locals 11

    invoke-virtual {p0}, Ljava/lang/reflect/Executable;->hasGenericInformation()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/reflect/Executable;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v9

    return-object v9

    :cond_0
    invoke-virtual {p0}, Ljava/lang/reflect/Executable;->hasRealParameterData()Z

    move-result v8

    invoke-virtual {p0}, Ljava/lang/reflect/Executable;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/reflect/Executable;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    array-length v9, v4

    new-array v5, v9, [Ljava/lang/reflect/Type;

    invoke-virtual {p0}, Ljava/lang/reflect/Executable;->getParameters()[Ljava/lang/reflect/Parameter;

    move-result-object v7

    const/4 v0, 0x0

    if-eqz v8, :cond_3

    const/4 v3, 0x0

    :goto_0
    array-length v9, v5

    if-ge v3, v9, :cond_5

    aget-object v6, v7, v3

    invoke-virtual {v6}, Ljava/lang/reflect/Parameter;->isSynthetic()Z

    move-result v9

    if-nez v9, :cond_1

    invoke-virtual {v6}, Ljava/lang/reflect/Parameter;->isImplicit()Z

    move-result v9

    if-eqz v9, :cond_2

    :cond_1
    aget-object v9, v4, v3

    aput-object v9, v5, v3

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    aget-object v9, v2, v0

    aput-object v9, v5, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    array-length v9, v2

    array-length v10, v4

    if-ne v9, v10, :cond_4

    :goto_2
    return-object v2

    :cond_4
    move-object v2, v4

    goto :goto_2

    :cond_5
    return-object v5
.end method

.method public getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
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

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1}, Ljava/lang/reflect/Executable;->getAnnotationNative(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

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

.method public final getArtMethod()J
    .locals 2

    iget-wide v0, p0, Ljava/lang/reflect/Executable;->artMethod:J

    return-wide v0
.end method

.method public getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;
    .locals 1

    invoke-direct {p0}, Ljava/lang/reflect/Executable;->getDeclaredAnnotationsNative()[Ljava/lang/annotation/Annotation;

    move-result-object v0

    return-object v0
.end method

.method public abstract getDeclaringClass()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end method

.method final getDeclaringClassInternal()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    iget-object v0, p0, Ljava/lang/reflect/Executable;->declaringClass:Ljava/lang/Class;

    return-object v0
.end method

.method public abstract getExceptionTypes()[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end method

.method public getGenericExceptionTypes()[Ljava/lang/reflect/Type;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/reflect/Executable;->getMethodOrConstructorGenericInfoInternal()Ljava/lang/reflect/Executable$GenericInfo;

    move-result-object v0

    iget-object v0, v0, Ljava/lang/reflect/Executable$GenericInfo;->genericExceptionTypes:Llibcore/reflect/ListOfTypes;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Llibcore/reflect/Types;->getTypeArray(Llibcore/reflect/ListOfTypes;Z)[Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method

.method public getGenericParameterTypes()[Ljava/lang/reflect/Type;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/reflect/Executable;->getMethodOrConstructorGenericInfoInternal()Ljava/lang/reflect/Executable$GenericInfo;

    move-result-object v0

    iget-object v0, v0, Ljava/lang/reflect/Executable$GenericInfo;->genericParameterTypes:Llibcore/reflect/ListOfTypes;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Llibcore/reflect/Types;->getTypeArray(Llibcore/reflect/ListOfTypes;Z)[Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method

.method final native getMethodNameInternal()Ljava/lang/String;
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method final getMethodOrConstructorGenericInfoInternal()Ljava/lang/reflect/Executable$GenericInfo;
    .locals 8

    invoke-direct {p0}, Ljava/lang/reflect/Executable;->getSignatureAttribute()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/reflect/Executable;->getExceptionTypes()[Ljava/lang/Class;

    move-result-object v0

    new-instance v1, Llibcore/reflect/GenericSignatureParser;

    invoke-virtual {p0}, Ljava/lang/reflect/Executable;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-direct {v1, v3}, Llibcore/reflect/GenericSignatureParser;-><init>(Ljava/lang/ClassLoader;)V

    instance-of v3, p0, Ljava/lang/reflect/Method;

    if-eqz v3, :cond_0

    invoke-virtual {v1, p0, v2, v0}, Llibcore/reflect/GenericSignatureParser;->parseForMethod(Ljava/lang/reflect/GenericDeclaration;Ljava/lang/String;[Ljava/lang/Class;)V

    :goto_0
    new-instance v3, Ljava/lang/reflect/Executable$GenericInfo;

    iget-object v4, v1, Llibcore/reflect/GenericSignatureParser;->exceptionTypes:Llibcore/reflect/ListOfTypes;

    iget-object v5, v1, Llibcore/reflect/GenericSignatureParser;->parameterTypes:Llibcore/reflect/ListOfTypes;

    iget-object v6, v1, Llibcore/reflect/GenericSignatureParser;->returnType:Ljava/lang/reflect/Type;

    iget-object v7, v1, Llibcore/reflect/GenericSignatureParser;->formalTypeParameters:[Ljava/lang/reflect/TypeVariable;

    invoke-direct {v3, v4, v5, v6, v7}, Ljava/lang/reflect/Executable$GenericInfo;-><init>(Llibcore/reflect/ListOfTypes;Llibcore/reflect/ListOfTypes;Ljava/lang/reflect/Type;[Ljava/lang/reflect/TypeVariable;)V

    return-object v3

    :cond_0
    invoke-virtual {v1, p0, v2, v0}, Llibcore/reflect/GenericSignatureParser;->parseForConstructor(Ljava/lang/reflect/GenericDeclaration;Ljava/lang/String;[Ljava/lang/Class;)V

    goto :goto_0
.end method

.method final native getMethodReturnTypeInternal()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public abstract getModifiers()I
.end method

.method final getModifiersInternal()I
    .locals 1

    iget v0, p0, Ljava/lang/reflect/Executable;->accessFlags:I

    invoke-static {v0}, Ljava/lang/reflect/Executable;->fixMethodFlags(I)I

    move-result v0

    return v0
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getParameterAnnotations()[[Ljava/lang/annotation/Annotation;
.end method

.method final getParameterAnnotationsInternal()[[Ljava/lang/annotation/Annotation;
    .locals 5

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/reflect/Executable;->getParameterAnnotationsNative()[[Ljava/lang/annotation/Annotation;

    move-result-object v0

    if-nez v0, :cond_0

    const-class v1, Ljava/lang/annotation/Annotation;

    const/4 v2, 0x2

    new-array v2, v2, [I

    invoke-virtual {p0}, Ljava/lang/reflect/Executable;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v3

    array-length v3, v3

    aput v3, v2, v4

    const/4 v3, 0x1

    aput v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Ljava/lang/annotation/Annotation;

    :cond_0
    return-object v0
.end method

.method public getParameterCount()I
    .locals 1

    new-instance v0, Ljava/lang/AbstractMethodError;

    invoke-direct {v0}, Ljava/lang/AbstractMethodError;-><init>()V

    throw v0
.end method

.method final native getParameterCountInternal()I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public abstract getParameterTypes()[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end method

.method final native getParameterTypesInternal()[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public getParameters()[Ljava/lang/reflect/Parameter;
    .locals 1

    invoke-direct {p0}, Ljava/lang/reflect/Executable;->privateGetParameters()[Ljava/lang/reflect/Parameter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/reflect/Parameter;

    return-object v0
.end method

.method public abstract getTypeParameters()[Ljava/lang/reflect/TypeVariable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/reflect/TypeVariable",
            "<*>;"
        }
    .end annotation
.end method

.method abstract hasGenericInformation()Z
.end method

.method final hasGenericInformationInternal()Z
    .locals 1

    invoke-direct {p0}, Ljava/lang/reflect/Executable;->getSignatureAnnotation()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method hasRealParameterData()Z
    .locals 1

    iget-object v0, p0, Ljava/lang/reflect/Executable;->parameters:[Ljava/lang/reflect/Parameter;

    if-nez v0, :cond_0

    invoke-direct {p0}, Ljava/lang/reflect/Executable;->privateGetParameters()[Ljava/lang/reflect/Parameter;

    :cond_0
    iget-boolean v0, p0, Ljava/lang/reflect/Executable;->hasRealParameterData:Z

    return v0
.end method

.method public final isAnnotationPresent(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)Z"
        }
    .end annotation

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1}, Ljava/lang/reflect/Executable;->isAnnotationPresentNative(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method final isBridgeMethodInternal()Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Ljava/lang/reflect/Executable;->accessFlags:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method final isDefaultMethodInternal()Z
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Ljava/lang/reflect/Executable;->accessFlags:I

    const/high16 v2, 0x400000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isSynthetic()Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Ljava/lang/reflect/Executable;->accessFlags:I

    and-int/lit16 v1, v1, 0x1000

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isVarArgs()Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Ljava/lang/reflect/Executable;->accessFlags:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method printModifiersIfNonzero(Ljava/lang/StringBuilder;IZ)V
    .locals 4

    const/16 v3, 0x20

    invoke-virtual {p0}, Ljava/lang/reflect/Executable;->getModifiers()I

    move-result v2

    and-int v1, v2, p2

    if-eqz v1, :cond_1

    xor-int/lit8 v2, p3, 0x1

    if-eqz v2, :cond_1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    :goto_0
    return-void

    :cond_1
    and-int/lit8 v0, v1, 0x7

    if-eqz v0, :cond_2

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    if-eqz p3, :cond_3

    const-string/jumbo v2, "default "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    and-int/lit8 v1, v1, -0x8

    if-eqz v1, :cond_0

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method separateWithCommas([Ljava/lang/Class;Ljava/lang/StringBuilder;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/StringBuilder;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    aget-object v1, p1, v0

    invoke-virtual {v1}, Ljava/lang/Class;->getTypeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    const-string/jumbo v1, ","

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method sharedToGenericString(IZ)Ljava/lang/String;
    .locals 13

    const/4 v10, 0x0

    :try_start_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v7, p1, p2}, Ljava/lang/reflect/Executable;->printModifiersIfNonzero(Ljava/lang/StringBuilder;IZ)V

    invoke-virtual {p0}, Ljava/lang/reflect/Executable;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v9

    array-length v11, v9

    if-lez v11, :cond_2

    const/4 v2, 0x1

    const/16 v11, 0x3c

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    array-length v11, v9

    :goto_0
    if-ge v10, v11, :cond_1

    aget-object v8, v9, v10

    if-nez v2, :cond_0

    const/16 v12, 0x2c

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_1
    const-string/jumbo v10, "> "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {p0, v7}, Ljava/lang/reflect/Executable;->specificToGenericStringHeader(Ljava/lang/StringBuilder;)V

    const/16 v10, 0x28

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/reflect/Executable;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v6

    const/4 v3, 0x0

    :goto_1
    array-length v10, v6

    if-ge v3, v10, :cond_5

    aget-object v10, v6, v3

    invoke-interface {v10}, Ljava/lang/reflect/Type;->getTypeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Ljava/lang/reflect/Executable;->isVarArgs()Z

    move-result v10

    if-eqz v10, :cond_3

    array-length v10, v6

    add-int/lit8 v10, v10, -0x1

    if-ne v3, v10, :cond_3

    const-string/jumbo v10, "\\[\\]$"

    const-string/jumbo v11, "..."

    invoke-virtual {v5, v10, v11}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :cond_3
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v10, v6

    add-int/lit8 v10, v10, -0x1

    if-ge v3, v10, :cond_4

    const/16 v10, 0x2c

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    const/16 v10, 0x29

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/reflect/Executable;->getGenericExceptionTypes()[Ljava/lang/reflect/Type;

    move-result-object v1

    array-length v10, v1

    if-lez v10, :cond_8

    const-string/jumbo v10, " throws "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    :goto_2
    array-length v10, v1

    if-ge v4, v10, :cond_8

    aget-object v10, v1, v4

    instance-of v10, v10, Ljava/lang/Class;

    if-eqz v10, :cond_7

    aget-object v10, v1, v4

    check-cast v10, Ljava/lang/Class;

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    :goto_3
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v10, v1

    add-int/lit8 v10, v10, -0x1

    if-ge v4, v10, :cond_6

    const/16 v10, 0x2c

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_7
    aget-object v10, v1, v4

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_3

    :cond_8
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    return-object v10

    :catch_0
    move-exception v0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "<"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ">"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    return-object v10
.end method

.method sharedToString(IZ[Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ[",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1, p1, p2}, Ljava/lang/reflect/Executable;->printModifiersIfNonzero(Ljava/lang/StringBuilder;IZ)V

    invoke-virtual {p0, v1}, Ljava/lang/reflect/Executable;->specificToStringHeader(Ljava/lang/StringBuilder;)V

    const/16 v2, 0x28

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3, v1}, Ljava/lang/reflect/Executable;->separateWithCommas([Ljava/lang/Class;Ljava/lang/StringBuilder;)V

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    array-length v2, p4

    if-lez v2, :cond_0

    const-string/jumbo v2, " throws "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4, v1}, Ljava/lang/reflect/Executable;->separateWithCommas([Ljava/lang/Class;Ljava/lang/StringBuilder;)V

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "<"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method abstract specificToGenericStringHeader(Ljava/lang/StringBuilder;)V
.end method

.method abstract specificToStringHeader(Ljava/lang/StringBuilder;)V
.end method

.method public abstract toGenericString()Ljava/lang/String;
.end method
