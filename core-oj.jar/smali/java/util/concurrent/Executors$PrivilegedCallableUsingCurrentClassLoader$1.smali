.class Ljava/util/concurrent/Executors$PrivilegedCallableUsingCurrentClassLoader$1;
.super Ljava/lang/Object;
.source "Executors.java"

# interfaces
.implements Ljava/security/PrivilegedExceptionAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/concurrent/Executors$PrivilegedCallableUsingCurrentClassLoader;->call()Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedExceptionAction",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Ljava/util/concurrent/Executors$PrivilegedCallableUsingCurrentClassLoader;


# direct methods
.method constructor <init>(Ljava/util/concurrent/Executors$PrivilegedCallableUsingCurrentClassLoader;)V
    .locals 0

    iput-object p1, p0, Ljava/util/concurrent/Executors$PrivilegedCallableUsingCurrentClassLoader$1;->this$1:Ljava/util/concurrent/Executors$PrivilegedCallableUsingCurrentClassLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    iget-object v2, p0, Ljava/util/concurrent/Executors$PrivilegedCallableUsingCurrentClassLoader$1;->this$1:Ljava/util/concurrent/Executors$PrivilegedCallableUsingCurrentClassLoader;

    iget-object v2, v2, Ljava/util/concurrent/Executors$PrivilegedCallableUsingCurrentClassLoader;->ccl:Ljava/lang/ClassLoader;

    if-ne v2, v0, :cond_0

    iget-object v2, p0, Ljava/util/concurrent/Executors$PrivilegedCallableUsingCurrentClassLoader$1;->this$1:Ljava/util/concurrent/Executors$PrivilegedCallableUsingCurrentClassLoader;

    iget-object v2, v2, Ljava/util/concurrent/Executors$PrivilegedCallableUsingCurrentClassLoader;->task:Ljava/util/concurrent/Callable;

    invoke-interface {v2}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v2

    return-object v2

    :cond_0
    iget-object v2, p0, Ljava/util/concurrent/Executors$PrivilegedCallableUsingCurrentClassLoader$1;->this$1:Ljava/util/concurrent/Executors$PrivilegedCallableUsingCurrentClassLoader;

    iget-object v2, v2, Ljava/util/concurrent/Executors$PrivilegedCallableUsingCurrentClassLoader;->ccl:Ljava/lang/ClassLoader;

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    :try_start_0
    iget-object v2, p0, Ljava/util/concurrent/Executors$PrivilegedCallableUsingCurrentClassLoader$1;->this$1:Ljava/util/concurrent/Executors$PrivilegedCallableUsingCurrentClassLoader;

    iget-object v2, v2, Ljava/util/concurrent/Executors$PrivilegedCallableUsingCurrentClassLoader;->task:Ljava/util/concurrent/Callable;

    invoke-interface {v2}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    return-object v2

    :catchall_0
    move-exception v2

    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    throw v2
.end method
