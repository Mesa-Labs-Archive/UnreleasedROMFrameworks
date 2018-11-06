.class public Ljava/lang/invoke/ConstantCallSite;
.super Ljava/lang/invoke/CallSite;
.source "ConstantCallSite.java"


# instance fields
.field private final isFrozen:Z


# direct methods
.method public constructor <init>(Ljava/lang/invoke/MethodHandle;)V
    .locals 1

    invoke-direct {p0, p1}, Ljava/lang/invoke/CallSite;-><init>(Ljava/lang/invoke/MethodHandle;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/lang/invoke/ConstantCallSite;->isFrozen:Z

    return-void
.end method

.method protected constructor <init>(Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodHandle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/invoke/CallSite;-><init>(Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodHandle;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/lang/invoke/ConstantCallSite;->isFrozen:Z

    return-void
.end method


# virtual methods
.method public final dynamicInvoker()Ljava/lang/invoke/MethodHandle;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/invoke/ConstantCallSite;->getTarget()Ljava/lang/invoke/MethodHandle;

    move-result-object v0

    return-object v0
.end method

.method public final getTarget()Ljava/lang/invoke/MethodHandle;
    .locals 1

    iget-boolean v0, p0, Ljava/lang/invoke/ConstantCallSite;->isFrozen:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Ljava/lang/invoke/ConstantCallSite;->target:Ljava/lang/invoke/MethodHandle;

    return-object v0
.end method

.method public final setTarget(Ljava/lang/invoke/MethodHandle;)V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
