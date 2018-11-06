.class Lsun/nio/ch/Invoker;
.super Ljava/lang/Object;
.source "Invoker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/nio/ch/Invoker$1;,
        Lsun/nio/ch/Invoker$GroupAndInvokeCount;
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static final maxHandlerInvokeCount:I

.field private static final myGroupAndInvokeCount:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lsun/nio/ch/Invoker$GroupAndInvokeCount;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0()Ljava/lang/ThreadLocal;
    .locals 1

    sget-object v0, Lsun/nio/ch/Invoker;->myGroupAndInvokeCount:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lsun/nio/ch/Invoker;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lsun/nio/ch/Invoker;->-assertionsDisabled:Z

    new-instance v0, Lsun/security/action/GetIntegerAction;

    const-string/jumbo v1, "sun.nio.ch.maxCompletionHandlersOnStack"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lsun/security/action/GetIntegerAction;-><init>(Ljava/lang/String;I)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lsun/nio/ch/Invoker;->maxHandlerInvokeCount:I

    new-instance v0, Lsun/nio/ch/Invoker$1;

    invoke-direct {v0}, Lsun/nio/ch/Invoker$1;-><init>()V

    sput-object v0, Lsun/nio/ch/Invoker;->myGroupAndInvokeCount:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static bindToGroup(Lsun/nio/ch/AsynchronousChannelGroupImpl;)V
    .locals 2

    sget-object v0, Lsun/nio/ch/Invoker;->myGroupAndInvokeCount:Ljava/lang/ThreadLocal;

    new-instance v1, Lsun/nio/ch/Invoker$GroupAndInvokeCount;

    invoke-direct {v1, p0}, Lsun/nio/ch/Invoker$GroupAndInvokeCount;-><init>(Lsun/nio/ch/AsynchronousChannelGroupImpl;)V

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-void
.end method

.method static getGroupAndInvokeCount()Lsun/nio/ch/Invoker$GroupAndInvokeCount;
    .locals 1

    sget-object v0, Lsun/nio/ch/Invoker;->myGroupAndInvokeCount:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/nio/ch/Invoker$GroupAndInvokeCount;

    return-object v0
.end method

.method static invoke(Ljava/nio/channels/AsynchronousChannel;Ljava/nio/channels/CompletionHandler;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            "A:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/nio/channels/AsynchronousChannel;",
            "Ljava/nio/channels/CompletionHandler",
            "<TV;-TA;>;TA;TV;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v0, 0x0

    sget-object v4, Lsun/nio/ch/Invoker;->myGroupAndInvokeCount:Ljava/lang/ThreadLocal;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lsun/nio/ch/Invoker$GroupAndInvokeCount;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lsun/nio/ch/Invoker$GroupAndInvokeCount;->group()Lsun/nio/ch/AsynchronousChannelGroupImpl;

    move-result-object v5

    move-object v4, p0

    check-cast v4, Lsun/nio/ch/Groupable;

    invoke-interface {v4}, Lsun/nio/ch/Groupable;->group()Lsun/nio/ch/AsynchronousChannelGroupImpl;

    move-result-object v4

    if-ne v5, v4, :cond_0

    const/4 v0, 0x1

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v3}, Lsun/nio/ch/Invoker$GroupAndInvokeCount;->invokeCount()I

    move-result v4

    sget v5, Lsun/nio/ch/Invoker;->maxHandlerInvokeCount:I

    if-ge v4, v5, :cond_1

    const/4 v1, 0x1

    :cond_1
    if-eqz v1, :cond_2

    invoke-static {v3, p1, p2, p3, p4}, Lsun/nio/ch/Invoker;->invokeDirect(Lsun/nio/ch/Invoker$GroupAndInvokeCount;Ljava/nio/channels/CompletionHandler;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    :goto_0
    return-void

    :cond_2
    :try_start_0
    invoke-static {p0, p1, p2, p3, p4}, Lsun/nio/ch/Invoker;->invokeIndirectly(Ljava/nio/channels/AsynchronousChannel;Ljava/nio/channels/CompletionHandler;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    if-eqz v0, :cond_3

    invoke-static {v3, p1, p2, p3, p4}, Lsun/nio/ch/Invoker;->invokeDirect(Lsun/nio/ch/Invoker$GroupAndInvokeCount;Ljava/nio/channels/CompletionHandler;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_3
    new-instance v4, Ljava/nio/channels/ShutdownChannelGroupException;

    invoke-direct {v4}, Ljava/nio/channels/ShutdownChannelGroupException;-><init>()V

    throw v4
.end method

.method static invoke(Lsun/nio/ch/PendingFuture;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            "A:",
            "Ljava/lang/Object;",
            ">(",
            "Lsun/nio/ch/PendingFuture",
            "<TV;TA;>;)V"
        }
    .end annotation

    sget-boolean v1, Lsun/nio/ch/Invoker;->-assertionsDisabled:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lsun/nio/ch/PendingFuture;->isDone()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_0
    invoke-virtual {p0}, Lsun/nio/ch/PendingFuture;->handler()Ljava/nio/channels/CompletionHandler;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lsun/nio/ch/PendingFuture;->channel()Ljava/nio/channels/AsynchronousChannel;

    move-result-object v1

    invoke-virtual {p0}, Lsun/nio/ch/PendingFuture;->attachment()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0}, Lsun/nio/ch/PendingFuture;->value()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0}, Lsun/nio/ch/PendingFuture;->exception()Ljava/lang/Throwable;

    move-result-object v4

    invoke-static {v1, v0, v2, v3, v4}, Lsun/nio/ch/Invoker;->invoke(Ljava/nio/channels/AsynchronousChannel;Ljava/nio/channels/CompletionHandler;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method static invokeDirect(Lsun/nio/ch/Invoker$GroupAndInvokeCount;Ljava/nio/channels/CompletionHandler;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            "A:",
            "Ljava/lang/Object;",
            ">(",
            "Lsun/nio/ch/Invoker$GroupAndInvokeCount;",
            "Ljava/nio/channels/CompletionHandler",
            "<TV;-TA;>;TA;TV;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    invoke-virtual {p0}, Lsun/nio/ch/Invoker$GroupAndInvokeCount;->incrementInvokeCount()V

    invoke-static {p1, p2, p3, p4}, Lsun/nio/ch/Invoker;->invokeUnchecked(Ljava/nio/channels/CompletionHandler;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method static invokeIndirectly(Ljava/nio/channels/AsynchronousChannel;Ljava/nio/channels/CompletionHandler;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            "A:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/nio/channels/AsynchronousChannel;",
            "Ljava/nio/channels/CompletionHandler",
            "<TV;-TA;>;TA;TV;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    :try_start_0
    check-cast p0, Lsun/nio/ch/Groupable;

    invoke-interface {p0}, Lsun/nio/ch/Groupable;->group()Lsun/nio/ch/AsynchronousChannelGroupImpl;

    move-result-object v1

    new-instance v2, Lsun/nio/ch/Invoker$2;

    invoke-direct {v2, p1, p2, p3, p4}, Lsun/nio/ch/Invoker$2;-><init>(Ljava/nio/channels/CompletionHandler;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lsun/nio/ch/AsynchronousChannelGroupImpl;->executeOnPooledThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/nio/channels/ShutdownChannelGroupException;

    invoke-direct {v1}, Ljava/nio/channels/ShutdownChannelGroupException;-><init>()V

    throw v1
.end method

.method static invokeIndirectly(Ljava/nio/channels/CompletionHandler;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;Ljava/util/concurrent/Executor;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            "A:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/nio/channels/CompletionHandler",
            "<TV;-TA;>;TA;TV;",
            "Ljava/lang/Throwable;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    :try_start_0
    new-instance v1, Lsun/nio/ch/Invoker$3;

    invoke-direct {v1, p0, p1, p2, p3}, Lsun/nio/ch/Invoker$3;-><init>(Ljava/nio/channels/CompletionHandler;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-interface {p4, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/nio/channels/ShutdownChannelGroupException;

    invoke-direct {v1}, Ljava/nio/channels/ShutdownChannelGroupException;-><init>()V

    throw v1
.end method

.method static invokeIndirectly(Lsun/nio/ch/PendingFuture;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            "A:",
            "Ljava/lang/Object;",
            ">(",
            "Lsun/nio/ch/PendingFuture",
            "<TV;TA;>;)V"
        }
    .end annotation

    sget-boolean v1, Lsun/nio/ch/Invoker;->-assertionsDisabled:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lsun/nio/ch/PendingFuture;->isDone()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_0
    invoke-virtual {p0}, Lsun/nio/ch/PendingFuture;->handler()Ljava/nio/channels/CompletionHandler;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lsun/nio/ch/PendingFuture;->channel()Ljava/nio/channels/AsynchronousChannel;

    move-result-object v1

    invoke-virtual {p0}, Lsun/nio/ch/PendingFuture;->attachment()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0}, Lsun/nio/ch/PendingFuture;->value()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0}, Lsun/nio/ch/PendingFuture;->exception()Ljava/lang/Throwable;

    move-result-object v4

    invoke-static {v1, v0, v2, v3, v4}, Lsun/nio/ch/Invoker;->invokeIndirectly(Ljava/nio/channels/AsynchronousChannel;Ljava/nio/channels/CompletionHandler;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method static invokeOnThreadInThreadPool(Lsun/nio/ch/Groupable;Ljava/lang/Runnable;)V
    .locals 5

    sget-object v4, Lsun/nio/ch/Invoker;->myGroupAndInvokeCount:Ljava/lang/ThreadLocal;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lsun/nio/ch/Invoker$GroupAndInvokeCount;

    invoke-interface {p0}, Lsun/nio/ch/Groupable;->group()Lsun/nio/ch/AsynchronousChannelGroupImpl;

    move-result-object v2

    if-nez v3, :cond_0

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    :try_start_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :cond_0
    invoke-static {v3}, Lsun/nio/ch/Invoker$GroupAndInvokeCount;->-get0(Lsun/nio/ch/Invoker$GroupAndInvokeCount;)Lsun/nio/ch/AsynchronousChannelGroupImpl;

    move-result-object v4

    if-ne v4, v2, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    :try_start_1
    invoke-virtual {v2, p1}, Lsun/nio/ch/AsynchronousChannelGroupImpl;->executeOnPooledThread(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    new-instance v4, Ljava/nio/channels/ShutdownChannelGroupException;

    invoke-direct {v4}, Ljava/nio/channels/ShutdownChannelGroupException;-><init>()V

    throw v4
.end method

.method static invokeUnchecked(Ljava/nio/channels/CompletionHandler;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            "A:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/nio/channels/CompletionHandler",
            "<TV;-TA;>;TA;TV;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    if-nez p3, :cond_0

    invoke-interface {p0, p2, p1}, Ljava/nio/channels/CompletionHandler;->completed(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    return-void

    :cond_0
    invoke-interface {p0, p3, p1}, Ljava/nio/channels/CompletionHandler;->failed(Ljava/lang/Throwable;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method static invokeUnchecked(Lsun/nio/ch/PendingFuture;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            "A:",
            "Ljava/lang/Object;",
            ">(",
            "Lsun/nio/ch/PendingFuture",
            "<TV;TA;>;)V"
        }
    .end annotation

    sget-boolean v1, Lsun/nio/ch/Invoker;->-assertionsDisabled:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lsun/nio/ch/PendingFuture;->isDone()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_0
    invoke-virtual {p0}, Lsun/nio/ch/PendingFuture;->handler()Ljava/nio/channels/CompletionHandler;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lsun/nio/ch/PendingFuture;->attachment()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0}, Lsun/nio/ch/PendingFuture;->value()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0}, Lsun/nio/ch/PendingFuture;->exception()Ljava/lang/Throwable;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lsun/nio/ch/Invoker;->invokeUnchecked(Ljava/nio/channels/CompletionHandler;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method static isBoundToAnyGroup()Z
    .locals 1

    sget-object v0, Lsun/nio/ch/Invoker;->myGroupAndInvokeCount:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static mayInvokeDirect(Lsun/nio/ch/Invoker$GroupAndInvokeCount;Lsun/nio/ch/AsynchronousChannelGroupImpl;)Z
    .locals 2

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lsun/nio/ch/Invoker$GroupAndInvokeCount;->group()Lsun/nio/ch/AsynchronousChannelGroupImpl;

    move-result-object v0

    if-ne v0, p1, :cond_0

    invoke-virtual {p0}, Lsun/nio/ch/Invoker$GroupAndInvokeCount;->invokeCount()I

    move-result v0

    sget v1, Lsun/nio/ch/Invoker;->maxHandlerInvokeCount:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
