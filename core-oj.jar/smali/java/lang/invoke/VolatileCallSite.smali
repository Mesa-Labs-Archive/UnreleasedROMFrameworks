.class public Ljava/lang/invoke/VolatileCallSite;
.super Ljava/lang/invoke/CallSite;
.source "VolatileCallSite.java"


# direct methods
.method public constructor <init>(Ljava/lang/invoke/MethodHandle;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/lang/invoke/CallSite;-><init>(Ljava/lang/invoke/MethodHandle;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/invoke/MethodType;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/lang/invoke/CallSite;-><init>(Ljava/lang/invoke/MethodType;)V

    return-void
.end method


# virtual methods
.method public final dynamicInvoker()Ljava/lang/invoke/MethodHandle;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/invoke/VolatileCallSite;->makeDynamicInvoker()Ljava/lang/invoke/MethodHandle;

    move-result-object v0

    return-object v0
.end method

.method public final getTarget()Ljava/lang/invoke/MethodHandle;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/invoke/VolatileCallSite;->getTargetVolatile()Ljava/lang/invoke/MethodHandle;

    move-result-object v0

    return-object v0
.end method

.method public setTarget(Ljava/lang/invoke/MethodHandle;)V
    .locals 1

    invoke-virtual {p0}, Ljava/lang/invoke/VolatileCallSite;->getTargetVolatile()Ljava/lang/invoke/MethodHandle;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Ljava/lang/invoke/VolatileCallSite;->checkTargetChange(Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodHandle;)V

    invoke-virtual {p0, p1}, Ljava/lang/invoke/VolatileCallSite;->setTargetVolatile(Ljava/lang/invoke/MethodHandle;)V

    return-void
.end method
