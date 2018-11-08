.class public final Ljava/lang/reflect/Constructor;
.super Ljava/lang/reflect/Executable;
.source "Constructor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/reflect/Executable;"
    }
.end annotation


# static fields
.field private static final ORDER_BY_SIGNATURE:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final serializationClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private final serializationCtor:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Ljava/lang/reflect/Constructor;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/reflect/Executable;-><init>()V

    iput-object p1, p0, Ljava/lang/reflect/Constructor;->serializationCtor:Ljava/lang/Class;

    iput-object p2, p0, Ljava/lang/reflect/Constructor;->serializationClass:Ljava/lang/Class;

    return-void
.end method

.method private varargs native newInstance0([Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native newInstanceFromSerialization(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-eqz p1, :cond_0

    instance-of v1, p1, Ljava/lang/reflect/Constructor;

    if-eqz v1, :cond_0

    move-object v0, p1

    check-cast v0, Ljava/lang/reflect/Constructor;

    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Ljava/lang/reflect/Constructor;->equalParamTypes([Ljava/lang/Class;[Ljava/lang/Class;)Z

    move-result v1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
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

    invoke-super {p0, p1}, Ljava/lang/reflect/Executable;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    return-object v0
.end method

.method public getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;
    .locals 1

    invoke-super {p0}, Ljava/lang/reflect/Executable;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v0

    return-object v0
.end method

.method public getDeclaringClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation

    invoke-super {p0}, Ljava/lang/reflect/Executable;->getDeclaringClassInternal()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public native getExceptionTypes()[Ljava/lang/Class;
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

.method public getGenericExceptionTypes()[Ljava/lang/reflect/Type;
    .locals 1

    invoke-super {p0}, Ljava/lang/reflect/Executable;->getGenericExceptionTypes()[Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method

.method public getGenericParameterTypes()[Ljava/lang/reflect/Type;
    .locals 1

    invoke-super {p0}, Ljava/lang/reflect/Executable;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method

.method public getModifiers()I
    .locals 1

    invoke-super {p0}, Ljava/lang/reflect/Executable;->getModifiersInternal()I

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParameterAnnotations()[[Ljava/lang/annotation/Annotation;
    .locals 1

    invoke-super {p0}, Ljava/lang/reflect/Executable;->getParameterAnnotationsInternal()[[Ljava/lang/annotation/Annotation;

    move-result-object v0

    return-object v0
.end method

.method public getParameterCount()I
    .locals 1

    invoke-super {p0}, Ljava/lang/reflect/Executable;->getParameterCountInternal()I

    move-result v0

    return v0
.end method

.method public getParameterTypes()[Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    invoke-super {p0}, Ljava/lang/reflect/Executable;->getParameterTypesInternal()[Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v1, Llibcore/util/EmptyArray;->CLASS:[Ljava/lang/Class;

    return-object v1

    :cond_0
    return-object v0
.end method

.method public getTypeParameters()[Ljava/lang/reflect/TypeVariable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/reflect/TypeVariable",
            "<",
            "Ljava/lang/reflect/Constructor",
            "<TT;>;>;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getMethodOrConstructorGenericInfoInternal()Ljava/lang/reflect/Executable$GenericInfo;

    move-result-object v0

    iget-object v1, v0, Ljava/lang/reflect/Executable$GenericInfo;->formalTypeParameters:[Ljava/lang/reflect/TypeVariable;

    invoke-virtual {v1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/reflect/TypeVariable;

    return-object v1
.end method

.method hasGenericInformation()Z
    .locals 1

    invoke-super {p0}, Ljava/lang/reflect/Executable;->hasGenericInformationInternal()Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isSynthetic()Z
    .locals 1

    invoke-super {p0}, Ljava/lang/reflect/Executable;->isSynthetic()Z

    move-result v0

    return v0
.end method

.method public isVarArgs()Z
    .locals 1

    invoke-super {p0}, Ljava/lang/reflect/Executable;->isVarArgs()Z

    move-result v0

    return v0
.end method

.method public varargs newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    iget-object v0, p0, Ljava/lang/reflect/Constructor;->serializationClass:Ljava/lang/Class;

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Ljava/lang/reflect/Constructor;->newInstance0([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Ljava/lang/reflect/Constructor;->serializationCtor:Ljava/lang/Class;

    iget-object v1, p0, Ljava/lang/reflect/Constructor;->serializationClass:Ljava/lang/Class;

    invoke-static {v0, v1}, Ljava/lang/reflect/Constructor;->newInstanceFromSerialization(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public serializationCopy(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Constructor",
            "<TT;>;"
        }
    .end annotation

    new-instance v0, Ljava/lang/reflect/Constructor;

    invoke-direct {v0, p1, p2}, Ljava/lang/reflect/Constructor;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    return-object v0
.end method

.method specificToGenericStringHeader(Ljava/lang/StringBuilder;)V
    .locals 0

    invoke-virtual {p0, p1}, Ljava/lang/reflect/Constructor;->specificToStringHeader(Ljava/lang/StringBuilder;)V

    return-void
.end method

.method specificToStringHeader(Ljava/lang/StringBuilder;)V
    .locals 1

    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getTypeName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public toGenericString()Ljava/lang/String;
    .locals 2

    invoke-static {}, Ljava/lang/reflect/Modifier;->constructorModifiers()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/lang/reflect/Constructor;->sharedToGenericString(IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    invoke-static {}, Ljava/lang/reflect/Modifier;->constructorModifiers()I

    move-result v0

    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getExceptionTypes()[Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3, v1, v2}, Ljava/lang/reflect/Constructor;->sharedToString(IZ[Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
