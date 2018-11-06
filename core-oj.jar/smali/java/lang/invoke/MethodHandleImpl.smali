.class public Ljava/lang/invoke/MethodHandleImpl;
.super Ljava/lang/invoke/MethodHandle;
.source "MethodHandleImpl.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/lang/invoke/MethodHandleImpl$HandleInfo;
    }
.end annotation


# instance fields
.field private info:Ljava/lang/invoke/MethodHandleImpl$HandleInfo;


# direct methods
.method constructor <init>(JILjava/lang/invoke/MethodType;)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Ljava/lang/invoke/MethodHandle;-><init>(JILjava/lang/invoke/MethodType;)V

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Ljava/lang/invoke/MethodHandle;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public native getMemberInternal()Ljava/lang/reflect/Member;
.end method

.method reveal()Ljava/lang/invoke/MethodHandleInfo;
    .locals 2

    iget-object v1, p0, Ljava/lang/invoke/MethodHandleImpl;->info:Ljava/lang/invoke/MethodHandleImpl$HandleInfo;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/invoke/MethodHandleImpl;->getMemberInternal()Ljava/lang/reflect/Member;

    move-result-object v0

    new-instance v1, Ljava/lang/invoke/MethodHandleImpl$HandleInfo;

    invoke-direct {v1, v0, p0}, Ljava/lang/invoke/MethodHandleImpl$HandleInfo;-><init>(Ljava/lang/reflect/Member;Ljava/lang/invoke/MethodHandle;)V

    iput-object v1, p0, Ljava/lang/invoke/MethodHandleImpl;->info:Ljava/lang/invoke/MethodHandleImpl$HandleInfo;

    :cond_0
    iget-object v1, p0, Ljava/lang/invoke/MethodHandleImpl;->info:Ljava/lang/invoke/MethodHandleImpl$HandleInfo;

    return-object v1
.end method
