.class public abstract Ljava/lang/invoke/Transformers$Transformer;
.super Ljava/lang/invoke/MethodHandle;
.source "Transformers.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/invoke/Transformers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Transformer"
.end annotation


# direct methods
.method protected constructor <init>(Ljava/lang/invoke/MethodType;)V
    .locals 3

    invoke-static {}, Ljava/lang/invoke/Transformers;->-get0()Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getArtMethod()J

    move-result-wide v0

    const/4 v2, 0x5

    invoke-direct {p0, v0, v1, v2, p1}, Ljava/lang/invoke/MethodHandle;-><init>(JILjava/lang/invoke/MethodType;)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/invoke/MethodType;I)V
    .locals 2

    invoke-static {}, Ljava/lang/invoke/Transformers;->-get0()Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getArtMethod()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p2, p1}, Ljava/lang/invoke/MethodHandle;-><init>(JILjava/lang/invoke/MethodType;)V

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
