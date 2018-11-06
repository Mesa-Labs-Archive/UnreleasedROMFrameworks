.class public abstract Ljava/lang/invoke/CallSite;
.super Ljava/lang/Object;
.source "CallSite.java"


# static fields
.field private static GET_TARGET:Ljava/lang/invoke/MethodHandle;

.field private static final TARGET_OFFSET:J


# instance fields
.field target:Ljava/lang/invoke/MethodHandle;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v1, 0x0

    sput-object v1, Ljava/lang/invoke/CallSite;->GET_TARGET:Ljava/lang/invoke/MethodHandle;

    :try_start_0
    sget-object v1, Ljava/lang/invoke/MethodHandleStatics;->UNSAFE:Lsun/misc/Unsafe;

    const-class v2, Ljava/lang/invoke/CallSite;

    const-string/jumbo v3, "target"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Ljava/lang/invoke/CallSite;->TARGET_OFFSET:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method constructor <init>(Ljava/lang/invoke/MethodHandle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    iput-object p1, p0, Ljava/lang/invoke/CallSite;->target:Ljava/lang/invoke/MethodHandle;

    invoke-direct {p0}, Ljava/lang/invoke/CallSite;->initializeGetTarget()V

    return-void
.end method

.method constructor <init>(Ljava/lang/invoke/MethodType;)V
    .locals 5

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/invoke/MethodType;->returnType()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/IllegalStateException;

    invoke-static {v0, v1}, Ljava/lang/invoke/MethodHandles;->throwException(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/invoke/MethodHandle;

    move-result-object v0

    iput-object v0, p0, Ljava/lang/invoke/CallSite;->target:Ljava/lang/invoke/MethodHandle;

    iget-object v0, p0, Ljava/lang/invoke/CallSite;->target:Ljava/lang/invoke/MethodHandle;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "uninitialized call site"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    aput-object v2, v1, v4

    invoke-static {v0, v4, v1}, Ljava/lang/invoke/MethodHandles;->insertArguments(Ljava/lang/invoke/MethodHandle;I[Ljava/lang/Object;)Ljava/lang/invoke/MethodHandle;

    move-result-object v0

    iput-object v0, p0, Ljava/lang/invoke/CallSite;->target:Ljava/lang/invoke/MethodHandle;

    invoke-virtual {p1}, Ljava/lang/invoke/MethodType;->parameterCount()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Ljava/lang/invoke/CallSite;->target:Ljava/lang/invoke/MethodHandle;

    invoke-virtual {p1}, Ljava/lang/invoke/MethodType;->ptypes()[Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0, v4, v1}, Ljava/lang/invoke/MethodHandles;->dropArguments(Ljava/lang/invoke/MethodHandle;I[Ljava/lang/Class;)Ljava/lang/invoke/MethodHandle;

    move-result-object v0

    iput-object v0, p0, Ljava/lang/invoke/CallSite;->target:Ljava/lang/invoke/MethodHandle;

    :cond_0
    invoke-direct {p0}, Ljava/lang/invoke/CallSite;->initializeGetTarget()V

    return-void
.end method

.method constructor <init>(Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodHandle;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-direct {p0, p1}, Ljava/lang/invoke/CallSite;-><init>(Ljava/lang/invoke/MethodType;)V

    move-object v1, p0

    check-cast v1, Ljava/lang/invoke/ConstantCallSite;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-virtual {p2, v2}, Ljava/lang/invoke/MethodHandle;->invokeWithArguments([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/invoke/MethodHandle;

    iget-object v2, p0, Ljava/lang/invoke/CallSite;->target:Ljava/lang/invoke/MethodHandle;

    invoke-virtual {p0, v2, v0}, Ljava/lang/invoke/CallSite;->checkTargetChange(Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodHandle;)V

    iput-object v0, p0, Ljava/lang/invoke/CallSite;->target:Ljava/lang/invoke/MethodHandle;

    invoke-direct {p0}, Ljava/lang/invoke/CallSite;->initializeGetTarget()V

    return-void
.end method

.method private initializeGetTarget()V
    .locals 6

    const-class v2, Ljava/lang/invoke/CallSite;

    monitor-enter v2

    :try_start_0
    sget-object v1, Ljava/lang/invoke/CallSite;->GET_TARGET:Ljava/lang/invoke/MethodHandle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    :try_start_1
    sget-object v1, Ljava/lang/invoke/MethodHandles$Lookup;->IMPL_LOOKUP:Ljava/lang/invoke/MethodHandles$Lookup;

    const-class v3, Ljava/lang/invoke/CallSite;

    const-string/jumbo v4, "getTarget"

    const-class v5, Ljava/lang/invoke/MethodHandle;

    invoke-static {v5}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v5

    invoke-virtual {v1, v3, v4, v5}, Ljava/lang/invoke/MethodHandles$Lookup;->findVirtual(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v1

    sput-object v1, Ljava/lang/invoke/CallSite;->GET_TARGET:Ljava/lang/invoke/MethodHandle;
    :try_end_1
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    monitor-exit v2

    return-void

    :catch_0
    move-exception v0

    :try_start_2
    new-instance v1, Ljava/lang/InternalError;

    invoke-direct {v1, v0}, Ljava/lang/InternalError;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private static wrongTargetType(Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/WrongMethodTypeException;
    .locals 3

    new-instance v0, Ljava/lang/invoke/WrongMethodTypeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " should be of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/invoke/WrongMethodTypeException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method checkTargetChange(Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodHandle;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/invoke/MethodType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p2, v1}, Ljava/lang/invoke/CallSite;->wrongTargetType(Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/WrongMethodTypeException;

    move-result-object v2

    throw v2

    :cond_0
    return-void
.end method

.method public abstract dynamicInvoker()Ljava/lang/invoke/MethodHandle;
.end method

.method public abstract getTarget()Ljava/lang/invoke/MethodHandle;
.end method

.method getTargetVolatile()Ljava/lang/invoke/MethodHandle;
    .locals 4

    sget-object v0, Ljava/lang/invoke/MethodHandleStatics;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/lang/invoke/CallSite;->TARGET_OFFSET:J

    invoke-virtual {v0, p0, v2, v3}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/invoke/MethodHandle;

    return-object v0
.end method

.method makeDynamicInvoker()Ljava/lang/invoke/MethodHandle;
    .locals 3

    sget-object v2, Ljava/lang/invoke/CallSite;->GET_TARGET:Ljava/lang/invoke/MethodHandle;

    invoke-virtual {v2, p0}, Ljava/lang/invoke/MethodHandle;->bindTo(Ljava/lang/Object;)Ljava/lang/invoke/MethodHandle;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/invoke/CallSite;->type()Ljava/lang/invoke/MethodType;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/invoke/MethodHandles;->exactInvoker(Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v1

    invoke-static {v1, v0}, Ljava/lang/invoke/MethodHandles;->foldArguments(Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodHandle;)Ljava/lang/invoke/MethodHandle;

    move-result-object v2

    return-object v2
.end method

.method public abstract setTarget(Ljava/lang/invoke/MethodHandle;)V
.end method

.method setTargetNormal(Ljava/lang/invoke/MethodHandle;)V
    .locals 0

    iput-object p1, p0, Ljava/lang/invoke/CallSite;->target:Ljava/lang/invoke/MethodHandle;

    return-void
.end method

.method setTargetVolatile(Ljava/lang/invoke/MethodHandle;)V
    .locals 4

    sget-object v0, Ljava/lang/invoke/MethodHandleStatics;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/lang/invoke/CallSite;->TARGET_OFFSET:J

    invoke-virtual {v0, p0, v2, v3, p1}, Lsun/misc/Unsafe;->putObjectVolatile(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method

.method public type()Ljava/lang/invoke/MethodType;
    .locals 1

    iget-object v0, p0, Ljava/lang/invoke/CallSite;->target:Ljava/lang/invoke/MethodHandle;

    invoke-virtual {v0}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v0

    return-object v0
.end method
