.class public Lcom/android/server/wifi/util/BitMask;
.super Ljava/lang/Object;
.source "BitMask.java"


# instance fields
.field public value:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/wifi/util/BitMask;->value:I

    return-void
.end method


# virtual methods
.method public testAndClear(I)Z
    .locals 3

    iget v1, p0, Lcom/android/server/wifi/util/BitMask;->value:I

    and-int/2addr v1, p1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget v1, p0, Lcom/android/server/wifi/util/BitMask;->value:I

    not-int v2, p1

    and-int/2addr v1, v2

    iput v1, p0, Lcom/android/server/wifi/util/BitMask;->value:I

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
