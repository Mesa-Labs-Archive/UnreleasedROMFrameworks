.class final Ljava/util/concurrent/ForkJoinWorkerThread$InnocuousForkJoinWorkerThread;
.super Ljava/util/concurrent/ForkJoinWorkerThread;
.source "ForkJoinWorkerThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ForkJoinWorkerThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "InnocuousForkJoinWorkerThread"
.end annotation


# static fields
.field private static final INNOCUOUS_ACC:Ljava/security/AccessControlContext;

.field private static final innocuousThreadGroup:Ljava/lang/ThreadGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Ljava/util/concurrent/ForkJoinWorkerThread$InnocuousForkJoinWorkerThread;->createThreadGroup()Ljava/lang/ThreadGroup;

    move-result-object v0

    sput-object v0, Ljava/util/concurrent/ForkJoinWorkerThread$InnocuousForkJoinWorkerThread;->innocuousThreadGroup:Ljava/lang/ThreadGroup;

    new-instance v0, Ljava/security/AccessControlContext;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/security/ProtectionDomain;

    new-instance v2, Ljava/security/ProtectionDomain;

    invoke-direct {v2, v3, v3}, Ljava/security/ProtectionDomain;-><init>(Ljava/security/CodeSource;Ljava/security/PermissionCollection;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Ljava/security/AccessControlContext;-><init>([Ljava/security/ProtectionDomain;)V

    sput-object v0, Ljava/util/concurrent/ForkJoinWorkerThread$InnocuousForkJoinWorkerThread;->INNOCUOUS_ACC:Ljava/security/AccessControlContext;

    return-void
.end method

.method constructor <init>(Ljava/util/concurrent/ForkJoinPool;)V
    .locals 2

    sget-object v0, Ljava/util/concurrent/ForkJoinWorkerThread$InnocuousForkJoinWorkerThread;->innocuousThreadGroup:Ljava/lang/ThreadGroup;

    sget-object v1, Ljava/util/concurrent/ForkJoinWorkerThread$InnocuousForkJoinWorkerThread;->INNOCUOUS_ACC:Ljava/security/AccessControlContext;

    invoke-direct {p0, p1, v0, v1}, Ljava/util/concurrent/ForkJoinWorkerThread;-><init>(Ljava/util/concurrent/ForkJoinPool;Ljava/lang/ThreadGroup;Ljava/security/AccessControlContext;)V

    return-void
.end method

.method private static createThreadGroup()Ljava/lang/ThreadGroup;
    .locals 10

    :try_start_0
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v5

    const-class v8, Ljava/lang/Thread;

    const-string/jumbo v9, "group"

    invoke-virtual {v8, v9}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v8

    invoke-virtual {v5, v8}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v6

    const-class v8, Ljava/lang/ThreadGroup;

    const-string/jumbo v9, "parent"

    invoke-virtual {v8, v9}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v8

    invoke-virtual {v5, v8}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-virtual {v5, v8, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ThreadGroup;

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v5, v1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ThreadGroup;

    if-nez v4, :cond_0

    new-instance v8, Ljava/lang/ThreadGroup;

    const-string/jumbo v9, "InnocuousForkJoinWorkerThreadGroup"

    invoke-direct {v8, v1, v9}, Ljava/lang/ThreadGroup;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v8

    :cond_0
    move-object v1, v4

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v8, Ljava/lang/Error;

    invoke-direct {v8, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v8

    :cond_1
    new-instance v8, Ljava/lang/Error;

    const-string/jumbo v9, "Cannot create ThreadGroup"

    invoke-direct {v8, v9}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v8
.end method


# virtual methods
.method afterTopLevelExec()V
    .locals 0

    invoke-virtual {p0}, Ljava/util/concurrent/ForkJoinWorkerThread$InnocuousForkJoinWorkerThread;->eraseThreadLocals()V

    return-void
.end method

.method public getContextClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method public setContextClassLoader(Ljava/lang/ClassLoader;)V
    .locals 2

    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "setContextClassLoader"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .locals 0

    return-void
.end method
