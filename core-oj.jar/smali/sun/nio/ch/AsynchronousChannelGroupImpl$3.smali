.class Lsun/nio/ch/AsynchronousChannelGroupImpl$3;
.super Ljava/lang/Object;
.source "AsynchronousChannelGroupImpl.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsun/nio/ch/AsynchronousChannelGroupImpl;->shutdownExecutors()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lsun/nio/ch/AsynchronousChannelGroupImpl;


# direct methods
.method constructor <init>(Lsun/nio/ch/AsynchronousChannelGroupImpl;)V
    .locals 0

    iput-object p1, p0, Lsun/nio/ch/AsynchronousChannelGroupImpl$3;->this$0:Lsun/nio/ch/AsynchronousChannelGroupImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lsun/nio/ch/AsynchronousChannelGroupImpl$3;->run()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public run()Ljava/lang/Void;
    .locals 1

    iget-object v0, p0, Lsun/nio/ch/AsynchronousChannelGroupImpl$3;->this$0:Lsun/nio/ch/AsynchronousChannelGroupImpl;

    invoke-static {v0}, Lsun/nio/ch/AsynchronousChannelGroupImpl;->-get0(Lsun/nio/ch/AsynchronousChannelGroupImpl;)Lsun/nio/ch/ThreadPool;

    move-result-object v0

    invoke-virtual {v0}, Lsun/nio/ch/ThreadPool;->executor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    iget-object v0, p0, Lsun/nio/ch/AsynchronousChannelGroupImpl$3;->this$0:Lsun/nio/ch/AsynchronousChannelGroupImpl;

    invoke-static {v0}, Lsun/nio/ch/AsynchronousChannelGroupImpl;->-get1(Lsun/nio/ch/AsynchronousChannelGroupImpl;)Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->shutdown()V

    const/4 v0, 0x0

    return-object v0
.end method
