.class final Lsun/misc/FloatingDecimal$1;
.super Ljava/lang/ThreadLocal;
.source "FloatingDecimal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/misc/FloatingDecimal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal",
        "<",
        "Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lsun/misc/FloatingDecimal$1;->initialValue()Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;

    move-result-object v0

    return-object v0
.end method

.method protected initialValue()Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;
    .locals 1

    new-instance v0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;

    invoke-direct {v0}, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;-><init>()V

    return-object v0
.end method
