.class public final Ljava/lang/invoke/MethodType;
.super Ljava/lang/Object;
.source "MethodType.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/lang/invoke/MethodType$ConcurrentWeakInternSet;
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z

.field static final MAX_JVM_ARITY:I = 0xff

.field static final MAX_MH_ARITY:I = 0xfe

.field static final MAX_MH_INVOKER_ARITY:I = 0xfd

.field static final NO_PTYPES:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field static final internTable:Ljava/lang/invoke/MethodType$ConcurrentWeakInternSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/invoke/MethodType$ConcurrentWeakInternSet",
            "<",
            "Ljava/lang/invoke/MethodType;",
            ">;"
        }
    .end annotation
.end field

.field private static final objectOnlyTypes:[Ljava/lang/invoke/MethodType;

.field private static final ptypesOffset:J

.field private static final rtypeOffset:J

.field private static final serialPersistentFields:[Ljava/io/ObjectStreamField;

.field private static final serialVersionUID:J = 0x124L


# instance fields
.field private form:Ljava/lang/invoke/MethodTypeForm;
    .annotation runtime Ljava/lang/invoke/Stable;
    .end annotation
.end field

.field private methodDescriptor:Ljava/lang/String;
    .annotation runtime Ljava/lang/invoke/Stable;
    .end annotation
.end field

.field private final ptypes:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private final rtype:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private wrapAlt:Ljava/lang/invoke/MethodType;
    .annotation runtime Ljava/lang/invoke/Stable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v2, 0x0

    const-class v1, Ljava/lang/invoke/MethodType;

    invoke-virtual {v1}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    sput-boolean v1, Ljava/lang/invoke/MethodType;->-assertionsDisabled:Z

    new-instance v1, Ljava/lang/invoke/MethodType$ConcurrentWeakInternSet;

    invoke-direct {v1}, Ljava/lang/invoke/MethodType$ConcurrentWeakInternSet;-><init>()V

    sput-object v1, Ljava/lang/invoke/MethodType;->internTable:Ljava/lang/invoke/MethodType$ConcurrentWeakInternSet;

    new-array v1, v2, [Ljava/lang/Class;

    sput-object v1, Ljava/lang/invoke/MethodType;->NO_PTYPES:[Ljava/lang/Class;

    const/16 v1, 0x14

    new-array v1, v1, [Ljava/lang/invoke/MethodType;

    sput-object v1, Ljava/lang/invoke/MethodType;->objectOnlyTypes:[Ljava/lang/invoke/MethodType;

    new-array v1, v2, [Ljava/io/ObjectStreamField;

    sput-object v1, Ljava/lang/invoke/MethodType;->serialPersistentFields:[Ljava/io/ObjectStreamField;

    :try_start_0
    sget-object v1, Ljava/lang/invoke/MethodHandleStatics;->UNSAFE:Lsun/misc/Unsafe;

    const-class v2, Ljava/lang/invoke/MethodType;

    const-string/jumbo v3, "rtype"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Ljava/lang/invoke/MethodType;->rtypeOffset:J

    sget-object v1, Ljava/lang/invoke/MethodHandleStatics;->UNSAFE:Lsun/misc/Unsafe;

    const-class v2, Ljava/lang/invoke/MethodType;

    const-string/jumbo v3, "ptypes"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Ljava/lang/invoke/MethodType;->ptypesOffset:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/lang/invoke/MethodType;->rtype:Ljava/lang/Class;

    iput-object v0, p0, Ljava/lang/invoke/MethodType;->ptypes:[Ljava/lang/Class;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Class;[Ljava/lang/Class;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Class",
            "<*>;Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/lang/invoke/MethodType;->checkRtype(Ljava/lang/Class;)V

    invoke-static {p2}, Ljava/lang/invoke/MethodType;->checkPtypes([Ljava/lang/Class;)I

    iput-object p1, p0, Ljava/lang/invoke/MethodType;->rtype:Ljava/lang/Class;

    if-eqz p3, :cond_0

    :goto_0
    iput-object p2, p0, Ljava/lang/invoke/MethodType;->ptypes:[Ljava/lang/Class;

    return-void

    :cond_0
    array-length v0, p2

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Class;

    move-object p2, v0

    goto :goto_0
.end method

.method private constructor <init>([Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Ljava/lang/invoke/MethodType;->rtype:Ljava/lang/Class;

    iput-object p1, p0, Ljava/lang/invoke/MethodType;->ptypes:[Ljava/lang/Class;

    return-void
.end method

.method private MethodType_init(Ljava/lang/Class;[Ljava/lang/Class;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    invoke-static {p1}, Ljava/lang/invoke/MethodType;->checkRtype(Ljava/lang/Class;)V

    invoke-static {p2}, Ljava/lang/invoke/MethodType;->checkPtypes([Ljava/lang/Class;)I

    sget-object v0, Ljava/lang/invoke/MethodHandleStatics;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/lang/invoke/MethodType;->rtypeOffset:J

    invoke-virtual {v0, p0, v2, v3, p1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    sget-object v0, Ljava/lang/invoke/MethodHandleStatics;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/lang/invoke/MethodType;->ptypesOffset:J

    invoke-virtual {v0, p0, v2, v3, p2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method

.method static canConvert(Ljava/lang/Class;Ljava/lang/Class;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    const/4 v3, 0x1

    if-eq p0, p1, :cond_0

    const-class v2, Ljava/lang/Object;

    if-ne p0, v2, :cond_1

    :cond_0
    return v3

    :cond_1
    const-class v2, Ljava/lang/Object;

    if-eq p1, v2, :cond_0

    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v2

    if-eqz v2, :cond_4

    sget-object v2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne p0, v2, :cond_2

    return v3

    :cond_2
    invoke-static {p0}, Lsun/invoke/util/Wrapper;->forPrimitiveType(Ljava/lang/Class;)Lsun/invoke/util/Wrapper;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {p1}, Lsun/invoke/util/Wrapper;->forPrimitiveType(Ljava/lang/Class;)Lsun/invoke/util/Wrapper;

    move-result-object v2

    invoke-virtual {v2, v1}, Lsun/invoke/util/Wrapper;->isConvertibleFrom(Lsun/invoke/util/Wrapper;)Z

    move-result v2

    return v2

    :cond_3
    invoke-virtual {v1}, Lsun/invoke/util/Wrapper;->wrapperType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    return v2

    :cond_4
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v2

    if-eqz v2, :cond_8

    sget-object v2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne p1, v2, :cond_5

    return v3

    :cond_5
    invoke-static {p1}, Lsun/invoke/util/Wrapper;->forPrimitiveType(Ljava/lang/Class;)Lsun/invoke/util/Wrapper;

    move-result-object v0

    invoke-virtual {v0}, Lsun/invoke/util/Wrapper;->wrapperType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_6

    return v3

    :cond_6
    invoke-static {p0}, Lsun/invoke/util/Wrapper;->isWrapperType(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-static {p0}, Lsun/invoke/util/Wrapper;->forWrapperType(Ljava/lang/Class;)Lsun/invoke/util/Wrapper;

    move-result-object v2

    invoke-virtual {v0, v2}, Lsun/invoke/util/Wrapper;->isConvertibleFrom(Lsun/invoke/util/Wrapper;)Z

    move-result v2

    if-eqz v2, :cond_7

    return v3

    :cond_7
    const/4 v2, 0x0

    return v2

    :cond_8
    return v3
.end method

.method private canConvertParameters([Ljava/lang/Class;[Ljava/lang/Class;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    aget-object v1, p1, v0

    aget-object v2, p2, v0

    invoke-static {v1, v2}, Ljava/lang/invoke/MethodType;->canConvert(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method private static checkPtype(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_0

    const-string/jumbo v0, "parameter type cannot be void"

    invoke-static {v0}, Ljava/lang/invoke/MethodHandleStatics;->newIllegalArgumentException(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_0
    return-void
.end method

.method private static checkPtypes([Ljava/lang/Class;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<*>;)I"
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v2, 0x0

    array-length v3, p0

    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v0, p0, v2

    invoke-static {v0}, Ljava/lang/invoke/MethodType;->checkPtype(Ljava/lang/Class;)V

    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq v0, v4, :cond_0

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v0, v4, :cond_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    array-length v2, p0

    add-int/2addr v2, v1

    invoke-static {v2}, Ljava/lang/invoke/MethodType;->checkSlotCount(I)V

    return v1
.end method

.method private static checkRtype(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static checkSlotCount(I)V
    .locals 2

    sget-boolean v0, Ljava/lang/invoke/MethodType;->-assertionsDisabled:Z

    and-int/lit16 v0, p0, 0xff

    if-eq v0, p0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "bad parameter count "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/invoke/MethodHandleStatics;->newIllegalArgumentException(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_0
    return-void
.end method

.method private equals(Ljava/lang/invoke/MethodType;)Z
    .locals 2

    iget-object v0, p0, Ljava/lang/invoke/MethodType;->rtype:Ljava/lang/Class;

    iget-object v1, p1, Ljava/lang/invoke/MethodType;->rtype:Ljava/lang/Class;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Ljava/lang/invoke/MethodType;->ptypes:[Ljava/lang/Class;

    iget-object v1, p1, Ljava/lang/invoke/MethodType;->ptypes:[Ljava/lang/Class;

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static explicitCastEquivalentToAsType(Ljava/lang/Class;Ljava/lang/Class;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    if-eq p0, p1, :cond_0

    const-class v1, Ljava/lang/Object;

    if-ne p1, v1, :cond_1

    :cond_0
    return v0

    :cond_1
    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-eq p1, v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-eq p0, v1, :cond_2

    invoke-static {p0, p1}, Ljava/lang/invoke/MethodType;->canConvert(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v0

    return v0

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x0

    return v0

    :cond_3
    invoke-virtual {p1}, Ljava/lang/Class;->isInterface()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p1, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    :cond_4
    return v0
.end method

.method public static fromMethodDescriptorString(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/invoke/MethodType;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/TypeNotPresentException;
        }
    .end annotation

    const-string/jumbo v3, "("

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x29

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-gez v3, :cond_1

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "not a method descriptor: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/invoke/MethodHandleStatics;->newIllegalArgumentException(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    :cond_1
    const/16 v3, 0x2e

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-gez v3, :cond_0

    invoke-static {p0, p1}, Lsun/invoke/util/BytecodeDescriptor;->parseMethod(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/invoke/MethodType;->checkSlotCount(I)V

    invoke-static {v2}, Ljava/lang/invoke/MethodType;->listToArray(Ljava/util/List;)[Ljava/lang/Class;

    move-result-object v0

    const/4 v3, 0x1

    invoke-static {v1, v0, v3}, Ljava/lang/invoke/MethodType;->makeImpl(Ljava/lang/Class;[Ljava/lang/Class;Z)Ljava/lang/invoke/MethodType;

    move-result-object v3

    return-object v3
.end method

.method public static genericMethodType(I)Ljava/lang/invoke/MethodType;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/lang/invoke/MethodType;->genericMethodType(IZ)Ljava/lang/invoke/MethodType;

    move-result-object v0

    return-object v0
.end method

.method public static genericMethodType(IZ)Ljava/lang/invoke/MethodType;
    .locals 6

    invoke-static {p0}, Ljava/lang/invoke/MethodType;->checkSlotCount(I)V

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v4, p0, 0x2

    add-int v2, v4, v0

    sget-object v4, Ljava/lang/invoke/MethodType;->objectOnlyTypes:[Ljava/lang/invoke/MethodType;

    array-length v4, v4

    if-ge v2, v4, :cond_1

    sget-object v4, Ljava/lang/invoke/MethodType;->objectOnlyTypes:[Ljava/lang/invoke/MethodType;

    aget-object v1, v4, v2

    if-eqz v1, :cond_1

    return-object v1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    add-int v4, p0, v0

    new-array v3, v4, [Ljava/lang/Class;

    const-class v4, Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    if-eqz v0, :cond_2

    const-class v4, [Ljava/lang/Object;

    aput-object v4, v3, p0

    :cond_2
    const-class v4, Ljava/lang/Object;

    const/4 v5, 0x1

    invoke-static {v4, v3, v5}, Ljava/lang/invoke/MethodType;->makeImpl(Ljava/lang/Class;[Ljava/lang/Class;Z)Ljava/lang/invoke/MethodType;

    move-result-object v1

    sget-object v4, Ljava/lang/invoke/MethodType;->objectOnlyTypes:[Ljava/lang/invoke/MethodType;

    array-length v4, v4

    if-ge v2, v4, :cond_3

    sget-object v4, Ljava/lang/invoke/MethodType;->objectOnlyTypes:[Ljava/lang/invoke/MethodType;

    aput-object v1, v4, v2

    :cond_3
    return-object v1
.end method

.method private static listToArray(Ljava/util/List;)[Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class",
            "<*>;>;)[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/invoke/MethodType;->checkSlotCount(I)V

    sget-object v0, Ljava/lang/invoke/MethodType;->NO_PTYPES:[Ljava/lang/Class;

    invoke-interface {p0, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Class;

    return-object v0
.end method

.method static makeImpl(Ljava/lang/Class;[Ljava/lang/Class;Z)Ljava/lang/invoke/MethodType;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Class",
            "<*>;Z)",
            "Ljava/lang/invoke/MethodType;"
        }
    .end annotation

    sget-object v1, Ljava/lang/invoke/MethodType;->internTable:Ljava/lang/invoke/MethodType$ConcurrentWeakInternSet;

    new-instance v2, Ljava/lang/invoke/MethodType;

    invoke-direct {v2, p1, p0}, Ljava/lang/invoke/MethodType;-><init>([Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Ljava/lang/invoke/MethodType$ConcurrentWeakInternSet;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/invoke/MethodType;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    array-length v1, p1

    if-nez v1, :cond_1

    sget-object p1, Ljava/lang/invoke/MethodType;->NO_PTYPES:[Ljava/lang/Class;

    const/4 p2, 0x1

    :cond_1
    new-instance v0, Ljava/lang/invoke/MethodType;

    invoke-direct {v0, p0, p1, p2}, Ljava/lang/invoke/MethodType;-><init>(Ljava/lang/Class;[Ljava/lang/Class;Z)V

    invoke-static {v0}, Ljava/lang/invoke/MethodTypeForm;->findForm(Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodTypeForm;

    move-result-object v1

    iput-object v1, v0, Ljava/lang/invoke/MethodType;->form:Ljava/lang/invoke/MethodTypeForm;

    sget-object v1, Ljava/lang/invoke/MethodType;->internTable:Ljava/lang/invoke/MethodType$ConcurrentWeakInternSet;

    invoke-virtual {v1, v0}, Ljava/lang/invoke/MethodType$ConcurrentWeakInternSet;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/invoke/MethodType;

    return-object v1
.end method

.method public static methodType(Ljava/lang/Class;)Ljava/lang/invoke/MethodType;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/invoke/MethodType;"
        }
    .end annotation

    sget-object v0, Ljava/lang/invoke/MethodType;->NO_PTYPES:[Ljava/lang/Class;

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Ljava/lang/invoke/MethodType;->makeImpl(Ljava/lang/Class;[Ljava/lang/Class;Z)Ljava/lang/invoke/MethodType;

    move-result-object v0

    return-object v0
.end method

.method public static methodType(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/invoke/MethodType;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/invoke/MethodType;"
        }
    .end annotation

    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/Class;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p0, v0, v2}, Ljava/lang/invoke/MethodType;->makeImpl(Ljava/lang/Class;[Ljava/lang/Class;Z)Ljava/lang/invoke/MethodType;

    move-result-object v0

    return-object v0
.end method

.method public static varargs methodType(Ljava/lang/Class;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/invoke/MethodType;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/invoke/MethodType;"
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v2, 0x1

    array-length v1, p2

    add-int/lit8 v1, v1, 0x1

    new-array v0, v1, [Ljava/lang/Class;

    aput-object p1, v0, v3

    array-length v1, p2

    invoke-static {p2, v3, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {p0, v0, v2}, Ljava/lang/invoke/MethodType;->makeImpl(Ljava/lang/Class;[Ljava/lang/Class;Z)Ljava/lang/invoke/MethodType;

    move-result-object v1

    return-object v1
.end method

.method public static methodType(Ljava/lang/Class;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodType;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/invoke/MethodType;",
            ")",
            "Ljava/lang/invoke/MethodType;"
        }
    .end annotation

    iget-object v0, p1, Ljava/lang/invoke/MethodType;->ptypes:[Ljava/lang/Class;

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Ljava/lang/invoke/MethodType;->makeImpl(Ljava/lang/Class;[Ljava/lang/Class;Z)Ljava/lang/invoke/MethodType;

    move-result-object v0

    return-object v0
.end method

.method public static methodType(Ljava/lang/Class;Ljava/util/List;)Ljava/lang/invoke/MethodType;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class",
            "<*>;>;)",
            "Ljava/lang/invoke/MethodType;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p1}, Ljava/lang/invoke/MethodType;->listToArray(Ljava/util/List;)[Ljava/lang/Class;

    move-result-object v1

    invoke-static {p0, v1, v0}, Ljava/lang/invoke/MethodType;->makeImpl(Ljava/lang/Class;[Ljava/lang/Class;Z)Ljava/lang/invoke/MethodType;

    move-result-object v1

    return-object v1
.end method

.method public static methodType(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/invoke/MethodType;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/invoke/MethodType;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Ljava/lang/invoke/MethodType;->makeImpl(Ljava/lang/Class;[Ljava/lang/Class;Z)Ljava/lang/invoke/MethodType;

    move-result-object v0

    return-object v0
.end method

.method private static newIndexOutOfBoundsException(Ljava/lang/Object;)Ljava/lang/IndexOutOfBoundsException;
    .locals 2

    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "bad index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Class;

    invoke-static {v1}, Ljava/lang/invoke/MethodType;->checkRtype(Ljava/lang/Class;)V

    invoke-static {v0}, Ljava/lang/invoke/MethodType;->checkPtypes([Ljava/lang/Class;)I

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Class;

    invoke-direct {p0, v1, v0}, Ljava/lang/invoke/MethodType;->MethodType_init(Ljava/lang/Class;[Ljava/lang/Class;)V

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Ljava/lang/invoke/MethodType;->rtype:Ljava/lang/Class;

    iget-object v1, p0, Ljava/lang/invoke/MethodType;->ptypes:[Ljava/lang/Class;

    invoke-static {v0, v1}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v0

    return-object v0
.end method

.method static toFieldDescriptorString(Ljava/lang/Class;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-static {p0}, Lsun/invoke/util/BytecodeDescriptor;->unparse(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static unwrapWithNoPrims(Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodType;
    .locals 3

    const/4 v2, 0x3

    sget-boolean v1, Ljava/lang/invoke/MethodType;->-assertionsDisabled:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/invoke/MethodType;->hasPrimitives()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_0
    iget-object v0, p0, Ljava/lang/invoke/MethodType;->wrapAlt:Ljava/lang/invoke/MethodType;

    if-nez v0, :cond_2

    invoke-static {p0, v2, v2}, Ljava/lang/invoke/MethodTypeForm;->canonicalize(Ljava/lang/invoke/MethodType;II)Ljava/lang/invoke/MethodType;

    move-result-object v0

    if-nez v0, :cond_1

    move-object v0, p0

    :cond_1
    iput-object v0, p0, Ljava/lang/invoke/MethodType;->wrapAlt:Ljava/lang/invoke/MethodType;

    :cond_2
    return-object v0
.end method

.method private static wrapWithPrims(Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodType;
    .locals 3

    const/4 v2, 0x2

    sget-boolean v1, Ljava/lang/invoke/MethodType;->-assertionsDisabled:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/invoke/MethodType;->hasPrimitives()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_0
    iget-object v0, p0, Ljava/lang/invoke/MethodType;->wrapAlt:Ljava/lang/invoke/MethodType;

    if-nez v0, :cond_2

    invoke-static {p0, v2, v2}, Ljava/lang/invoke/MethodTypeForm;->canonicalize(Ljava/lang/invoke/MethodType;II)Ljava/lang/invoke/MethodType;

    move-result-object v0

    sget-boolean v1, Ljava/lang/invoke/MethodType;->-assertionsDisabled:Z

    if-nez v1, :cond_1

    if-nez v0, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_1
    iput-object v0, p0, Ljava/lang/invoke/MethodType;->wrapAlt:Ljava/lang/invoke/MethodType;

    :cond_2
    return-object v0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    invoke-virtual {p0}, Ljava/lang/invoke/MethodType;->returnType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    invoke-virtual {p0}, Ljava/lang/invoke/MethodType;->parameterArray()[Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public appendParameterTypes(Ljava/util/List;)Ljava/lang/invoke/MethodType;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class",
            "<*>;>;)",
            "Ljava/lang/invoke/MethodType;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/invoke/MethodType;->parameterCount()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Ljava/lang/invoke/MethodType;->insertParameterTypes(ILjava/util/List;)Ljava/lang/invoke/MethodType;

    move-result-object v0

    return-object v0
.end method

.method public varargs appendParameterTypes([Ljava/lang/Class;)Ljava/lang/invoke/MethodType;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/invoke/MethodType;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/invoke/MethodType;->parameterCount()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Ljava/lang/invoke/MethodType;->insertParameterTypes(I[Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v0

    return-object v0
.end method

.method asCollectorType(Ljava/lang/Class;I)Ljava/lang/invoke/MethodType;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;I)",
            "Ljava/lang/invoke/MethodType;"
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v4, 0x0

    sget-boolean v2, Ljava/lang/invoke/MethodType;->-assertionsDisabled:Z

    if-nez v2, :cond_0

    invoke-virtual {p0}, Ljava/lang/invoke/MethodType;->parameterCount()I

    move-result v2

    if-ge v2, v5, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    :cond_0
    sget-boolean v2, Ljava/lang/invoke/MethodType;->-assertionsDisabled:Z

    if-nez v2, :cond_1

    invoke-virtual {p0}, Ljava/lang/invoke/MethodType;->lastParameterType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    :cond_1
    const-class v2, [Ljava/lang/Object;

    if-ne p1, v2, :cond_3

    invoke-static {p2}, Ljava/lang/invoke/MethodType;->genericMethodType(I)Ljava/lang/invoke/MethodType;

    move-result-object v1

    iget-object v2, p0, Ljava/lang/invoke/MethodType;->rtype:Ljava/lang/Class;

    const-class v3, Ljava/lang/Object;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Ljava/lang/invoke/MethodType;->rtype:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/invoke/MethodType;->changeReturnType(Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v1

    :cond_2
    :goto_0
    iget-object v2, p0, Ljava/lang/invoke/MethodType;->ptypes:[Ljava/lang/Class;

    array-length v2, v2

    if-ne v2, v5, :cond_5

    return-object v1

    :cond_3
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    sget-boolean v2, Ljava/lang/invoke/MethodType;->-assertionsDisabled:Z

    if-nez v2, :cond_4

    if-nez v0, :cond_4

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    :cond_4
    iget-object v2, p0, Ljava/lang/invoke/MethodType;->rtype:Ljava/lang/Class;

    invoke-static {p2, v0}, Ljava/util/Collections;->nCopies(ILjava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;Ljava/util/List;)Ljava/lang/invoke/MethodType;

    move-result-object v1

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Ljava/lang/invoke/MethodType;->parameterList()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Ljava/lang/invoke/MethodType;->ptypes:[Ljava/lang/Class;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v4, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Ljava/lang/invoke/MethodType;->insertParameterTypes(ILjava/util/List;)Ljava/lang/invoke/MethodType;

    move-result-object v2

    return-object v2
.end method

.method asSpreaderType(Ljava/lang/Class;I)Ljava/lang/invoke/MethodType;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;I)",
            "Ljava/lang/invoke/MethodType;"
        }
    .end annotation

    sget-boolean v5, Ljava/lang/invoke/MethodType;->-assertionsDisabled:Z

    if-nez v5, :cond_0

    invoke-virtual {p0}, Ljava/lang/invoke/MethodType;->parameterCount()I

    move-result v5

    if-ge v5, p2, :cond_0

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    :cond_0
    iget-object v5, p0, Ljava/lang/invoke/MethodType;->ptypes:[Ljava/lang/Class;

    array-length v5, v5

    sub-int v4, v5, p2

    if-nez p2, :cond_1

    return-object p0

    :cond_1
    const-class v5, [Ljava/lang/Object;

    if-ne p1, v5, :cond_4

    invoke-virtual {p0}, Ljava/lang/invoke/MethodType;->isGeneric()Z

    move-result v5

    if-eqz v5, :cond_2

    return-object p0

    :cond_2
    if-nez v4, :cond_4

    invoke-static {p2}, Ljava/lang/invoke/MethodType;->genericMethodType(I)Ljava/lang/invoke/MethodType;

    move-result-object v3

    iget-object v5, p0, Ljava/lang/invoke/MethodType;->rtype:Ljava/lang/Class;

    const-class v6, Ljava/lang/Object;

    if-eq v5, v6, :cond_3

    iget-object v5, p0, Ljava/lang/invoke/MethodType;->rtype:Ljava/lang/Class;

    invoke-virtual {v3, v5}, Ljava/lang/invoke/MethodType;->changeReturnType(Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v3

    :cond_3
    return-object v3

    :cond_4
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    sget-boolean v5, Ljava/lang/invoke/MethodType;->-assertionsDisabled:Z

    if-nez v5, :cond_5

    if-nez v0, :cond_5

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    :cond_5
    move v2, v4

    :goto_0
    iget-object v5, p0, Ljava/lang/invoke/MethodType;->ptypes:[Ljava/lang/Class;

    array-length v5, v5

    if-ge v2, v5, :cond_7

    iget-object v5, p0, Ljava/lang/invoke/MethodType;->ptypes:[Ljava/lang/Class;

    aget-object v5, v5, v2

    if-eq v5, v0, :cond_6

    iget-object v5, p0, Ljava/lang/invoke/MethodType;->ptypes:[Ljava/lang/Class;

    invoke-virtual {v5}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Class;

    iget-object v5, p0, Ljava/lang/invoke/MethodType;->ptypes:[Ljava/lang/Class;

    array-length v5, v5

    invoke-static {v1, v2, v5, v0}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    iget-object v5, p0, Ljava/lang/invoke/MethodType;->rtype:Ljava/lang/Class;

    invoke-static {v5, v1}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v5

    return-object v5

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_7
    return-object p0
.end method

.method basicType()Ljava/lang/invoke/MethodType;
    .locals 1

    iget-object v0, p0, Ljava/lang/invoke/MethodType;->form:Ljava/lang/invoke/MethodTypeForm;

    invoke-virtual {v0}, Ljava/lang/invoke/MethodTypeForm;->basicType()Ljava/lang/invoke/MethodType;

    move-result-object v0

    return-object v0
.end method

.method public changeParameterType(ILjava/lang/Class;)Ljava/lang/invoke/MethodType;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/invoke/MethodType;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Ljava/lang/invoke/MethodType;->parameterType(I)Ljava/lang/Class;

    move-result-object v1

    if-ne v1, p2, :cond_0

    return-object p0

    :cond_0
    invoke-static {p2}, Ljava/lang/invoke/MethodType;->checkPtype(Ljava/lang/Class;)V

    iget-object v1, p0, Ljava/lang/invoke/MethodType;->ptypes:[Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Class;

    aput-object p2, v0, p1

    iget-object v1, p0, Ljava/lang/invoke/MethodType;->rtype:Ljava/lang/Class;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Ljava/lang/invoke/MethodType;->makeImpl(Ljava/lang/Class;[Ljava/lang/Class;Z)Ljava/lang/invoke/MethodType;

    move-result-object v1

    return-object v1
.end method

.method public changeReturnType(Ljava/lang/Class;)Ljava/lang/invoke/MethodType;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/invoke/MethodType;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/invoke/MethodType;->returnType()Ljava/lang/Class;

    move-result-object v0

    if-ne v0, p1, :cond_0

    return-object p0

    :cond_0
    iget-object v0, p0, Ljava/lang/invoke/MethodType;->ptypes:[Ljava/lang/Class;

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Ljava/lang/invoke/MethodType;->makeImpl(Ljava/lang/Class;[Ljava/lang/Class;Z)Ljava/lang/invoke/MethodType;

    move-result-object v0

    return-object v0
.end method

.method public dropParameterTypes(II)Ljava/lang/invoke/MethodType;
    .locals 6

    const/4 v5, 0x0

    iget-object v3, p0, Ljava/lang/invoke/MethodType;->ptypes:[Ljava/lang/Class;

    array-length v0, v3

    if-ltz p1, :cond_0

    if-le p1, p2, :cond_1

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "start="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " end="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/invoke/MethodType;->newIndexOutOfBoundsException(Ljava/lang/Object;)Ljava/lang/IndexOutOfBoundsException;

    move-result-object v3

    throw v3

    :cond_1
    if-gt p2, v0, :cond_0

    if-ne p1, p2, :cond_2

    return-object p0

    :cond_2
    if-nez p1, :cond_4

    if-ne p2, v0, :cond_3

    sget-object v1, Ljava/lang/invoke/MethodType;->NO_PTYPES:[Ljava/lang/Class;

    :goto_0
    iget-object v3, p0, Ljava/lang/invoke/MethodType;->rtype:Ljava/lang/Class;

    const/4 v4, 0x1

    invoke-static {v3, v1, v4}, Ljava/lang/invoke/MethodType;->makeImpl(Ljava/lang/Class;[Ljava/lang/Class;Z)Ljava/lang/invoke/MethodType;

    move-result-object v3

    return-object v3

    :cond_3
    iget-object v3, p0, Ljava/lang/invoke/MethodType;->ptypes:[Ljava/lang/Class;

    invoke-static {v3, p2, v0}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Class;

    goto :goto_0

    :cond_4
    if-ne p2, v0, :cond_5

    iget-object v3, p0, Ljava/lang/invoke/MethodType;->ptypes:[Ljava/lang/Class;

    invoke-static {v3, v5, p1}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Class;

    goto :goto_0

    :cond_5
    sub-int v2, v0, p2

    iget-object v3, p0, Ljava/lang/invoke/MethodType;->ptypes:[Ljava/lang/Class;

    add-int v4, p1, v2

    invoke-static {v3, v5, v4}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Class;

    iget-object v3, p0, Ljava/lang/invoke/MethodType;->ptypes:[Ljava/lang/Class;

    invoke-static {v3, p2, v1, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p0, p1, :cond_0

    instance-of v0, p1, Ljava/lang/invoke/MethodType;

    if-eqz v0, :cond_1

    check-cast p1, Ljava/lang/invoke/MethodType;

    invoke-direct {p0, p1}, Ljava/lang/invoke/MethodType;->equals(Ljava/lang/invoke/MethodType;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public erase()Ljava/lang/invoke/MethodType;
    .locals 1

    iget-object v0, p0, Ljava/lang/invoke/MethodType;->form:Ljava/lang/invoke/MethodTypeForm;

    invoke-virtual {v0}, Ljava/lang/invoke/MethodTypeForm;->erasedType()Ljava/lang/invoke/MethodType;

    move-result-object v0

    return-object v0
.end method

.method explicitCastEquivalentToAsType(Ljava/lang/invoke/MethodType;)Z
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    if-ne p0, p1, :cond_0

    return v5

    :cond_0
    iget-object v3, p0, Ljava/lang/invoke/MethodType;->rtype:Ljava/lang/Class;

    iget-object v4, p1, Ljava/lang/invoke/MethodType;->rtype:Ljava/lang/Class;

    invoke-static {v3, v4}, Ljava/lang/invoke/MethodType;->explicitCastEquivalentToAsType(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_1

    return v6

    :cond_1
    iget-object v2, p1, Ljava/lang/invoke/MethodType;->ptypes:[Ljava/lang/Class;

    iget-object v0, p0, Ljava/lang/invoke/MethodType;->ptypes:[Ljava/lang/Class;

    if-ne v0, v2, :cond_2

    return v5

    :cond_2
    sget-boolean v3, Ljava/lang/invoke/MethodType;->-assertionsDisabled:Z

    if-nez v3, :cond_3

    array-length v3, v0

    array-length v4, v2

    if-eq v3, v4, :cond_3

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    :cond_3
    const/4 v1, 0x0

    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_5

    aget-object v3, v2, v1

    aget-object v4, v0, v1

    invoke-static {v3, v4}, Ljava/lang/invoke/MethodType;->explicitCastEquivalentToAsType(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_4

    return v6

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    return v5
.end method

.method form()Ljava/lang/invoke/MethodTypeForm;
    .locals 1

    iget-object v0, p0, Ljava/lang/invoke/MethodType;->form:Ljava/lang/invoke/MethodTypeForm;

    return-object v0
.end method

.method public generic()Ljava/lang/invoke/MethodType;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/invoke/MethodType;->parameterCount()I

    move-result v0

    invoke-static {v0}, Ljava/lang/invoke/MethodType;->genericMethodType(I)Ljava/lang/invoke/MethodType;

    move-result-object v0

    return-object v0
.end method

.method public hasPrimitives()Z
    .locals 1

    iget-object v0, p0, Ljava/lang/invoke/MethodType;->form:Ljava/lang/invoke/MethodTypeForm;

    invoke-virtual {v0}, Ljava/lang/invoke/MethodTypeForm;->hasPrimitives()Z

    move-result v0

    return v0
.end method

.method public hasWrappers()Z
    .locals 1

    invoke-virtual {p0}, Ljava/lang/invoke/MethodType;->unwrap()Ljava/lang/invoke/MethodType;

    move-result-object v0

    if-eq v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 7

    iget-object v2, p0, Ljava/lang/invoke/MethodType;->rtype:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->hashCode()I

    move-result v2

    add-int/lit8 v0, v2, 0x1f

    iget-object v3, p0, Ljava/lang/invoke/MethodType;->ptypes:[Ljava/lang/Class;

    const/4 v2, 0x0

    array-length v4, v3

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v1, v3, v2

    mul-int/lit8 v5, v0, 0x1f

    invoke-virtual {v1}, Ljava/lang/Class;->hashCode()I

    move-result v6

    add-int v0, v5, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public insertParameterTypes(ILjava/util/List;)Ljava/lang/invoke/MethodType;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class",
            "<*>;>;)",
            "Ljava/lang/invoke/MethodType;"
        }
    .end annotation

    invoke-static {p2}, Ljava/lang/invoke/MethodType;->listToArray(Ljava/util/List;)[Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/lang/invoke/MethodType;->insertParameterTypes(I[Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v0

    return-object v0
.end method

.method public varargs insertParameterTypes(I[Ljava/lang/Class;)Ljava/lang/invoke/MethodType;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/invoke/MethodType;"
        }
    .end annotation

    const/4 v6, 0x0

    iget-object v4, p0, Ljava/lang/invoke/MethodType;->ptypes:[Ljava/lang/Class;

    array-length v2, v4

    if-ltz p1, :cond_0

    if-le p1, v2, :cond_1

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/invoke/MethodType;->newIndexOutOfBoundsException(Ljava/lang/Object;)Ljava/lang/IndexOutOfBoundsException;

    move-result-object v4

    throw v4

    :cond_1
    invoke-static {p2}, Ljava/lang/invoke/MethodType;->checkPtypes([Ljava/lang/Class;)I

    move-result v1

    invoke-virtual {p0}, Ljava/lang/invoke/MethodType;->parameterSlotCount()I

    move-result v4

    array-length v5, p2

    add-int/2addr v4, v5

    add-int/2addr v4, v1

    invoke-static {v4}, Ljava/lang/invoke/MethodType;->checkSlotCount(I)V

    array-length v0, p2

    if-nez v0, :cond_2

    return-object p0

    :cond_2
    iget-object v4, p0, Ljava/lang/invoke/MethodType;->ptypes:[Ljava/lang/Class;

    add-int v5, v2, v0

    invoke-static {v4, v6, v5}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Class;

    add-int v4, p1, v0

    sub-int v5, v2, p1

    invoke-static {v3, p1, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {p2, v6, v3, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, p0, Ljava/lang/invoke/MethodType;->rtype:Ljava/lang/Class;

    const/4 v5, 0x1

    invoke-static {v4, v3, v5}, Ljava/lang/invoke/MethodType;->makeImpl(Ljava/lang/Class;[Ljava/lang/Class;Z)Ljava/lang/invoke/MethodType;

    move-result-object v4

    return-object v4
.end method

.method invokerType()Ljava/lang/invoke/MethodType;
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Ljava/lang/invoke/MethodHandle;

    aput-object v1, v0, v2

    invoke-virtual {p0, v2, v0}, Ljava/lang/invoke/MethodType;->insertParameterTypes(I[Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v0

    return-object v0
.end method

.method isConvertibleTo(Ljava/lang/invoke/MethodType;)Z
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-virtual {p0}, Ljava/lang/invoke/MethodType;->form()Ljava/lang/invoke/MethodTypeForm;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/invoke/MethodType;->form()Ljava/lang/invoke/MethodTypeForm;

    move-result-object v2

    if-ne v3, v2, :cond_0

    return v8

    :cond_0
    invoke-virtual {p0}, Ljava/lang/invoke/MethodType;->returnType()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {p1}, Ljava/lang/invoke/MethodType;->returnType()Ljava/lang/Class;

    move-result-object v6

    invoke-static {v5, v6}, Ljava/lang/invoke/MethodType;->canConvert(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v5

    if-nez v5, :cond_1

    return v7

    :cond_1
    iget-object v4, p1, Ljava/lang/invoke/MethodType;->ptypes:[Ljava/lang/Class;

    iget-object v1, p0, Ljava/lang/invoke/MethodType;->ptypes:[Ljava/lang/Class;

    if-ne v4, v1, :cond_2

    return v8

    :cond_2
    array-length v0, v4

    array-length v5, v1

    if-eq v0, v5, :cond_3

    return v7

    :cond_3
    if-gt v0, v8, :cond_5

    if-ne v0, v8, :cond_4

    aget-object v5, v4, v7

    aget-object v6, v1, v7

    invoke-static {v5, v6}, Ljava/lang/invoke/MethodType;->canConvert(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_4

    return v7

    :cond_4
    return v8

    :cond_5
    invoke-virtual {v3}, Ljava/lang/invoke/MethodTypeForm;->primitiveParameterCount()I

    move-result v5

    if-nez v5, :cond_7

    iget-object v5, v3, Ljava/lang/invoke/MethodTypeForm;->erasedType:Ljava/lang/invoke/MethodType;

    if-ne v5, p0, :cond_7

    :cond_6
    sget-boolean v5, Ljava/lang/invoke/MethodType;->-assertionsDisabled:Z

    if-nez v5, :cond_9

    invoke-direct {p0, v4, v1}, Ljava/lang/invoke/MethodType;->canConvertParameters([Ljava/lang/Class;[Ljava/lang/Class;)Z

    move-result v5

    if-nez v5, :cond_9

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    :cond_7
    invoke-virtual {v2}, Ljava/lang/invoke/MethodTypeForm;->primitiveParameterCount()I

    move-result v5

    if-nez v5, :cond_8

    iget-object v5, v2, Ljava/lang/invoke/MethodTypeForm;->erasedType:Ljava/lang/invoke/MethodType;

    if-eq v5, p1, :cond_6

    :cond_8
    invoke-direct {p0, v4, v1}, Ljava/lang/invoke/MethodType;->canConvertParameters([Ljava/lang/Class;[Ljava/lang/Class;)Z

    move-result v5

    return v5

    :cond_9
    return v8
.end method

.method isGeneric()Z
    .locals 1

    invoke-virtual {p0}, Ljava/lang/invoke/MethodType;->erase()Ljava/lang/invoke/MethodType;

    move-result-object v0

    if-ne p0, v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/invoke/MethodType;->hasPrimitives()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method lastParameterType()Ljava/lang/Class;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    iget-object v1, p0, Ljava/lang/invoke/MethodType;->ptypes:[Ljava/lang/Class;

    array-length v0, v1

    if-nez v0, :cond_0

    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Ljava/lang/invoke/MethodType;->ptypes:[Ljava/lang/Class;

    add-int/lit8 v2, v0, -0x1

    aget-object v1, v1, v2

    goto :goto_0
.end method

.method leadingReferenceParameter()Ljava/lang/Class;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v1, p0, Ljava/lang/invoke/MethodType;->ptypes:[Ljava/lang/Class;

    array-length v1, v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Ljava/lang/invoke/MethodType;->ptypes:[Ljava/lang/Class;

    aget-object v0, v1, v2

    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string/jumbo v1, "no leading reference parameter"

    invoke-static {v1}, Ljava/lang/invoke/MethodHandleStatics;->newIllegalArgumentException(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_1
    return-object v0
.end method

.method public parameterArray()[Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    iget-object v0, p0, Ljava/lang/invoke/MethodType;->ptypes:[Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Class;

    return-object v0
.end method

.method public parameterCount()I
    .locals 1

    iget-object v0, p0, Ljava/lang/invoke/MethodType;->ptypes:[Ljava/lang/Class;

    array-length v0, v0

    return v0
.end method

.method public parameterList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation

    iget-object v0, p0, Ljava/lang/invoke/MethodType;->ptypes:[Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Class;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method parameterSlotCount()I
    .locals 1

    iget-object v0, p0, Ljava/lang/invoke/MethodType;->form:Ljava/lang/invoke/MethodTypeForm;

    invoke-virtual {v0}, Ljava/lang/invoke/MethodTypeForm;->parameterSlotCount()I

    move-result v0

    return v0
.end method

.method public parameterType(I)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    iget-object v0, p0, Ljava/lang/invoke/MethodType;->ptypes:[Ljava/lang/Class;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public ptypes()[Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    iget-object v0, p0, Ljava/lang/invoke/MethodType;->ptypes:[Ljava/lang/Class;

    return-object v0
.end method

.method varargs replaceParameterTypes(II[Ljava/lang/Class;)Ljava/lang/invoke/MethodType;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/invoke/MethodType;"
        }
    .end annotation

    if-ne p1, p2, :cond_0

    invoke-virtual {p0, p1, p3}, Ljava/lang/invoke/MethodType;->insertParameterTypes(I[Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v2

    return-object v2

    :cond_0
    iget-object v2, p0, Ljava/lang/invoke/MethodType;->ptypes:[Ljava/lang/Class;

    array-length v1, v2

    if-ltz p1, :cond_1

    if-le p1, p2, :cond_2

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "start="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " end="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/invoke/MethodType;->newIndexOutOfBoundsException(Ljava/lang/Object;)Ljava/lang/IndexOutOfBoundsException;

    move-result-object v2

    throw v2

    :cond_2
    if-gt p2, v1, :cond_1

    array-length v0, p3

    if-nez v0, :cond_3

    invoke-virtual {p0, p1, p2}, Ljava/lang/invoke/MethodType;->dropParameterTypes(II)Ljava/lang/invoke/MethodType;

    move-result-object v2

    return-object v2

    :cond_3
    invoke-virtual {p0, p1, p2}, Ljava/lang/invoke/MethodType;->dropParameterTypes(II)Ljava/lang/invoke/MethodType;

    move-result-object v2

    invoke-virtual {v2, p1, p3}, Ljava/lang/invoke/MethodType;->insertParameterTypes(I[Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v2

    return-object v2
.end method

.method public returnType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    iget-object v0, p0, Ljava/lang/invoke/MethodType;->rtype:Ljava/lang/Class;

    return-object v0
.end method

.method public rtype()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    iget-object v0, p0, Ljava/lang/invoke/MethodType;->rtype:Ljava/lang/Class;

    return-object v0
.end method

.method public toMethodDescriptorString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/lang/invoke/MethodType;->methodDescriptor:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-static {p0}, Lsun/invoke/util/BytecodeDescriptor;->unparse(Ljava/lang/invoke/MethodType;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/lang/invoke/MethodType;->methodDescriptor:Ljava/lang/String;

    :cond_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Ljava/lang/invoke/MethodType;->ptypes:[Ljava/lang/Class;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    if-lez v0, :cond_0

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v2, p0, Ljava/lang/invoke/MethodType;->ptypes:[Ljava/lang/Class;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ljava/lang/invoke/MethodType;->rtype:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public unwrap()Ljava/lang/invoke/MethodType;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/invoke/MethodType;->hasPrimitives()Z

    move-result v1

    if-nez v1, :cond_0

    move-object v0, p0

    :goto_0
    invoke-static {v0}, Ljava/lang/invoke/MethodType;->unwrapWithNoPrims(Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodType;

    move-result-object v1

    return-object v1

    :cond_0
    invoke-static {p0}, Ljava/lang/invoke/MethodType;->wrapWithPrims(Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodType;

    move-result-object v0

    goto :goto_0
.end method

.method public wrap()Ljava/lang/invoke/MethodType;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/invoke/MethodType;->hasPrimitives()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Ljava/lang/invoke/MethodType;->wrapWithPrims(Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodType;

    move-result-object p0

    :cond_0
    return-object p0
.end method
