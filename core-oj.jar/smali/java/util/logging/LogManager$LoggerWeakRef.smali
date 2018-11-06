.class final Ljava/util/logging/LogManager$LoggerWeakRef;
.super Ljava/lang/ref/WeakReference;
.source "LogManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/logging/LogManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "LoggerWeakRef"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ref/WeakReference",
        "<",
        "Ljava/util/logging/Logger;",
        ">;"
    }
.end annotation


# instance fields
.field private disposed:Z

.field private name:Ljava/lang/String;

.field private node:Ljava/util/logging/LogManager$LogNode;

.field private parentRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljava/util/logging/Logger;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Ljava/util/logging/LogManager;


# direct methods
.method constructor <init>(Ljava/util/logging/LogManager;Ljava/util/logging/Logger;)V
    .locals 1

    iput-object p1, p0, Ljava/util/logging/LogManager$LoggerWeakRef;->this$0:Ljava/util/logging/LogManager;

    invoke-static {p1}, Ljava/util/logging/LogManager;->-get3(Ljava/util/logging/LogManager;)Ljava/lang/ref/ReferenceQueue;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/logging/LogManager$LoggerWeakRef;->disposed:Z

    invoke-virtual {p2}, Ljava/util/logging/Logger;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/util/logging/LogManager$LoggerWeakRef;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method dispose()V
    .locals 6

    const/4 v5, 0x0

    monitor-enter p0

    :try_start_0
    iget-boolean v2, p0, Ljava/util/logging/LogManager$LoggerWeakRef;->disposed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v2, 0x1

    :try_start_1
    iput-boolean v2, p0, Ljava/util/logging/LogManager$LoggerWeakRef;->disposed:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    iget-object v0, p0, Ljava/util/logging/LogManager$LoggerWeakRef;->node:Ljava/util/logging/LogManager$LogNode;

    if-eqz v0, :cond_2

    iget-object v3, v0, Ljava/util/logging/LogManager$LogNode;->context:Ljava/util/logging/LogManager$LoggerContext;

    monitor-enter v3

    :try_start_2
    iget-object v2, v0, Ljava/util/logging/LogManager$LogNode;->context:Ljava/util/logging/LogManager$LoggerContext;

    iget-object v4, p0, Ljava/util/logging/LogManager$LoggerWeakRef;->name:Ljava/lang/String;

    invoke-virtual {v2, v4, p0}, Ljava/util/logging/LogManager$LoggerContext;->removeLoggerRef(Ljava/lang/String;Ljava/util/logging/LogManager$LoggerWeakRef;)V

    const/4 v2, 0x0

    iput-object v2, p0, Ljava/util/logging/LogManager$LoggerWeakRef;->name:Ljava/lang/String;

    iget-object v2, v0, Ljava/util/logging/LogManager$LogNode;->loggerRef:Ljava/util/logging/LogManager$LoggerWeakRef;

    if-ne v2, p0, :cond_1

    const/4 v2, 0x0

    iput-object v2, v0, Ljava/util/logging/LogManager$LogNode;->loggerRef:Ljava/util/logging/LogManager$LoggerWeakRef;

    :cond_1
    const/4 v2, 0x0

    iput-object v2, p0, Ljava/util/logging/LogManager$LoggerWeakRef;->node:Ljava/util/logging/LogManager$LogNode;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v3

    :cond_2
    iget-object v2, p0, Ljava/util/logging/LogManager$LoggerWeakRef;->parentRef:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_4

    iget-object v2, p0, Ljava/util/logging/LogManager$LoggerWeakRef;->parentRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/logging/Logger;

    if-eqz v1, :cond_3

    invoke-virtual {v1, p0}, Ljava/util/logging/Logger;->removeChildLogger(Ljava/util/logging/LogManager$LoggerWeakRef;)V

    :cond_3
    iput-object v5, p0, Ljava/util/logging/LogManager$LoggerWeakRef;->parentRef:Ljava/lang/ref/WeakReference;

    :cond_4
    return-void

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    :catchall_1
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method setNode(Ljava/util/logging/LogManager$LogNode;)V
    .locals 0

    iput-object p1, p0, Ljava/util/logging/LogManager$LoggerWeakRef;->node:Ljava/util/logging/LogManager$LogNode;

    return-void
.end method

.method setParentRef(Ljava/lang/ref/WeakReference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljava/util/logging/Logger;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Ljava/util/logging/LogManager$LoggerWeakRef;->parentRef:Ljava/lang/ref/WeakReference;

    return-void
.end method
