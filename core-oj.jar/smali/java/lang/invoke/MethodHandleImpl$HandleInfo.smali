.class Ljava/lang/invoke/MethodHandleImpl$HandleInfo;
.super Ljava/lang/Object;
.source "MethodHandleImpl.java"

# interfaces
.implements Ljava/lang/invoke/MethodHandleInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/invoke/MethodHandleImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "HandleInfo"
.end annotation


# instance fields
.field private final handle:Ljava/lang/invoke/MethodHandle;

.field private final member:Ljava/lang/reflect/Member;


# direct methods
.method constructor <init>(Ljava/lang/reflect/Member;Ljava/lang/invoke/MethodHandle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/lang/invoke/MethodHandleImpl$HandleInfo;->member:Ljava/lang/reflect/Member;

    iput-object p2, p0, Ljava/lang/invoke/MethodHandleImpl$HandleInfo;->handle:Ljava/lang/invoke/MethodHandle;

    return-void
.end method


# virtual methods
.method public getDeclaringClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    iget-object v0, p0, Ljava/lang/invoke/MethodHandleImpl$HandleInfo;->member:Ljava/lang/reflect/Member;

    invoke-interface {v0}, Ljava/lang/reflect/Member;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public getMethodType()Ljava/lang/invoke/MethodType;
    .locals 4

    iget-object v2, p0, Ljava/lang/invoke/MethodHandleImpl$HandleInfo;->handle:Ljava/lang/invoke/MethodHandle;

    invoke-virtual {v2}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Ljava/lang/invoke/MethodHandleImpl$HandleInfo;->member:Ljava/lang/reflect/Member;

    instance-of v2, v2, Ljava/lang/reflect/Constructor;

    if-eqz v2, :cond_0

    sget-object v2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/invoke/MethodType;->changeReturnType(Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v0

    const/4 v1, 0x1

    :cond_0
    iget-object v2, p0, Ljava/lang/invoke/MethodHandleImpl$HandleInfo;->handle:Ljava/lang/invoke/MethodHandle;

    invoke-virtual {v2}, Ljava/lang/invoke/MethodHandle;->getHandleKind()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :goto_0
    :pswitch_0
    if-eqz v1, :cond_1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/lang/invoke/MethodType;->dropParameterTypes(II)Ljava/lang/invoke/MethodType;

    move-result-object v0

    :cond_1
    return-object v0

    :pswitch_1
    const/4 v1, 0x1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public getModifiers()I
    .locals 1

    iget-object v0, p0, Ljava/lang/invoke/MethodHandleImpl$HandleInfo;->member:Ljava/lang/reflect/Member;

    invoke-interface {v0}, Ljava/lang/reflect/Member;->getModifiers()I

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/lang/invoke/MethodHandleImpl$HandleInfo;->member:Ljava/lang/reflect/Member;

    instance-of v0, v0, Ljava/lang/reflect/Constructor;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "<init>"

    return-object v0

    :cond_0
    iget-object v0, p0, Ljava/lang/invoke/MethodHandleImpl$HandleInfo;->member:Ljava/lang/reflect/Member;

    invoke-interface {v0}, Ljava/lang/reflect/Member;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getReferenceKind()I
    .locals 3

    const/4 v1, 0x7

    iget-object v0, p0, Ljava/lang/invoke/MethodHandleImpl$HandleInfo;->handle:Ljava/lang/invoke/MethodHandle;

    invoke-virtual {v0}, Ljava/lang/invoke/MethodHandle;->getHandleKind()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unexpected handle kind: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/lang/invoke/MethodHandleImpl$HandleInfo;->handle:Ljava/lang/invoke/MethodHandle;

    invoke-virtual {v2}, Ljava/lang/invoke/MethodHandle;->getHandleKind()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :pswitch_1
    iget-object v0, p0, Ljava/lang/invoke/MethodHandleImpl$HandleInfo;->member:Ljava/lang/reflect/Member;

    invoke-interface {v0}, Ljava/lang/reflect/Member;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    return v0

    :cond_0
    const/4 v0, 0x5

    return v0

    :pswitch_2
    iget-object v0, p0, Ljava/lang/invoke/MethodHandleImpl$HandleInfo;->member:Ljava/lang/reflect/Member;

    instance-of v0, v0, Ljava/lang/reflect/Constructor;

    if-eqz v0, :cond_1

    const/16 v0, 0x8

    return v0

    :cond_1
    return v1

    :pswitch_3
    return v1

    :pswitch_4
    const/4 v0, 0x6

    return v0

    :pswitch_5
    const/4 v0, 0x1

    return v0

    :pswitch_6
    const/4 v0, 0x3

    return v0

    :pswitch_7
    const/4 v0, 0x2

    return v0

    :pswitch_8
    const/4 v0, 0x4

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public reflectAs(Ljava/lang/Class;Ljava/lang/invoke/MethodHandles$Lookup;)Ljava/lang/reflect/Member;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/reflect/Member;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/invoke/MethodHandles$Lookup;",
            ")TT;"
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Ljava/lang/invoke/MethodHandleImpl$HandleInfo;->member:Ljava/lang/reflect/Member;

    invoke-interface {v1}, Ljava/lang/reflect/Member;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    iget-object v2, p0, Ljava/lang/invoke/MethodHandleImpl$HandleInfo;->member:Ljava/lang/reflect/Member;

    invoke-interface {v2}, Ljava/lang/reflect/Member;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v2

    iget-object v3, p0, Ljava/lang/invoke/MethodHandleImpl$HandleInfo;->member:Ljava/lang/reflect/Member;

    invoke-interface {v3}, Ljava/lang/reflect/Member;->getModifiers()I

    move-result v3

    iget-object v4, p0, Ljava/lang/invoke/MethodHandleImpl$HandleInfo;->member:Ljava/lang/reflect/Member;

    invoke-interface {v4}, Ljava/lang/reflect/Member;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v1, v2, v3, v4}, Ljava/lang/invoke/MethodHandles$Lookup;->checkAccess(Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v1, p0, Ljava/lang/invoke/MethodHandleImpl$HandleInfo;->member:Ljava/lang/reflect/Member;

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Unable to access member."

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
