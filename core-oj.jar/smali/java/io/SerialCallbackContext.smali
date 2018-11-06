.class final Ljava/io/SerialCallbackContext;
.super Ljava/lang/Object;
.source "SerialCallbackContext.java"


# instance fields
.field private final desc:Ljava/io/ObjectStreamClass;

.field private final obj:Ljava/lang/Object;

.field private thread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/io/ObjectStreamClass;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/io/SerialCallbackContext;->obj:Ljava/lang/Object;

    iput-object p2, p0, Ljava/io/SerialCallbackContext;->desc:Ljava/io/ObjectStreamClass;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Ljava/io/SerialCallbackContext;->thread:Ljava/lang/Thread;

    return-void
.end method

.method private checkAndSetUsed()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/NotActiveException;
        }
    .end annotation

    iget-object v0, p0, Ljava/io/SerialCallbackContext;->thread:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/io/NotActiveException;

    const-string/jumbo v1, "not in readObject invocation or fields already read"

    invoke-direct {v0, v1}, Ljava/io/NotActiveException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/io/SerialCallbackContext;->thread:Ljava/lang/Thread;

    return-void
.end method


# virtual methods
.method public check()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/NotActiveException;
        }
    .end annotation

    iget-object v0, p0, Ljava/io/SerialCallbackContext;->thread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava/io/SerialCallbackContext;->thread:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/io/NotActiveException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "expected thread: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/io/SerialCallbackContext;->thread:Ljava/lang/Thread;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", but got: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/NotActiveException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public getDesc()Ljava/io/ObjectStreamClass;
    .locals 1

    iget-object v0, p0, Ljava/io/SerialCallbackContext;->desc:Ljava/io/ObjectStreamClass;

    return-object v0
.end method

.method public getObj()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/NotActiveException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/io/SerialCallbackContext;->checkAndSetUsed()V

    iget-object v0, p0, Ljava/io/SerialCallbackContext;->obj:Ljava/lang/Object;

    return-object v0
.end method

.method public setUsed()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Ljava/io/SerialCallbackContext;->thread:Ljava/lang/Thread;

    return-void
.end method
