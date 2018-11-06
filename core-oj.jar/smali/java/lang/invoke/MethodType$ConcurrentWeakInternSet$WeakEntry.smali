.class Ljava/lang/invoke/MethodType$ConcurrentWeakInternSet$WeakEntry;
.super Ljava/lang/ref/WeakReference;
.source "MethodType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/invoke/MethodType$ConcurrentWeakInternSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WeakEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/ref/WeakReference",
        "<TT;>;"
    }
.end annotation


# instance fields
.field public final hashcode:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iput v0, p0, Ljava/lang/invoke/MethodType$ConcurrentWeakInternSet$WeakEntry;->hashcode:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/ref/ReferenceQueue",
            "<TT;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iput v0, p0, Ljava/lang/invoke/MethodType$ConcurrentWeakInternSet$WeakEntry;->hashcode:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v3, 0x0

    instance-of v2, p1, Ljava/lang/invoke/MethodType$ConcurrentWeakInternSet$WeakEntry;

    if-eqz v2, :cond_3

    move-object v2, p1

    check-cast v2, Ljava/lang/invoke/MethodType$ConcurrentWeakInternSet$WeakEntry;

    invoke-virtual {v2}, Ljava/lang/invoke/MethodType$ConcurrentWeakInternSet$WeakEntry;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/invoke/MethodType$ConcurrentWeakInternSet$WeakEntry;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v1, :cond_0

    if-nez v0, :cond_2

    :cond_0
    if-ne p0, p1, :cond_1

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    move v2, v3

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0

    :cond_3
    return v3
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Ljava/lang/invoke/MethodType$ConcurrentWeakInternSet$WeakEntry;->hashcode:I

    return v0
.end method
