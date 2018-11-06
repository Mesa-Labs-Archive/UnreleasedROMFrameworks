.class public Ljava/util/concurrent/atomic/DoubleAdder;
.super Ljava/util/concurrent/atomic/Striped64;
.source "DoubleAdder.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/atomic/DoubleAdder$SerializationProxy;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x6499de12a37d0a3dL


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/util/concurrent/atomic/Striped64;-><init>()V

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidObjectException;
        }
    .end annotation

    new-instance v0, Ljava/io/InvalidObjectException;

    const-string/jumbo v1, "Proxy required"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 1

    new-instance v0, Ljava/util/concurrent/atomic/DoubleAdder$SerializationProxy;

    invoke-direct {v0, p0}, Ljava/util/concurrent/atomic/DoubleAdder$SerializationProxy;-><init>(Ljava/util/concurrent/atomic/DoubleAdder;)V

    return-object v0
.end method


# virtual methods
.method public add(D)V
    .locals 11

    const/4 v10, 0x0

    iget-object v1, p0, Ljava/util/concurrent/atomic/DoubleAdder;->cells:[Ljava/util/concurrent/atomic/Striped64$Cell;

    if-nez v1, :cond_0

    iget-wide v2, p0, Ljava/util/concurrent/atomic/DoubleAdder;->base:J

    invoke-static {v2, v3}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v8

    add-double/2addr v8, p1

    invoke-static {v8, v9}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v8

    invoke-virtual {p0, v2, v3, v8, v9}, Ljava/util/concurrent/atomic/DoubleAdder;->casBase(JJ)Z

    move-result v8

    xor-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_2

    :cond_0
    const/4 v5, 0x1

    if-eqz v1, :cond_1

    array-length v8, v1

    add-int/lit8 v4, v8, -0x1

    if-gez v4, :cond_3

    :cond_1
    :goto_0
    invoke-virtual {p0, p1, p2, v10, v5}, Ljava/util/concurrent/atomic/DoubleAdder;->doubleAccumulate(DLjava/util/function/DoubleBinaryOperator;Z)V

    :cond_2
    return-void

    :cond_3
    invoke-static {}, Ljava/util/concurrent/atomic/DoubleAdder;->getProbe()I

    move-result v8

    and-int/2addr v8, v4

    aget-object v0, v1, v8

    if-eqz v0, :cond_1

    iget-wide v6, v0, Ljava/util/concurrent/atomic/Striped64$Cell;->value:J

    invoke-static {v6, v7}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v8

    add-double/2addr v8, p1

    invoke-static {v8, v9}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v8

    invoke-virtual {v0, v6, v7, v8, v9}, Ljava/util/concurrent/atomic/Striped64$Cell;->cas(JJ)Z

    move-result v5

    xor-int/lit8 v8, v5, 0x1

    if-eqz v8, :cond_2

    goto :goto_0
.end method

.method public doubleValue()D
    .locals 2

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/DoubleAdder;->sum()D

    move-result-wide v0

    return-wide v0
.end method

.method public floatValue()F
    .locals 2

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/DoubleAdder;->sum()D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public intValue()I
    .locals 2

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/DoubleAdder;->sum()D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public longValue()J
    .locals 2

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/DoubleAdder;->sum()D

    move-result-wide v0

    double-to-long v0, v0

    return-wide v0
.end method

.method public reset()V
    .locals 4

    iget-object v1, p0, Ljava/util/concurrent/atomic/DoubleAdder;->cells:[Ljava/util/concurrent/atomic/Striped64$Cell;

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Ljava/util/concurrent/atomic/DoubleAdder;->base:J

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    array-length v3, v1

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v0, v1, v2

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/Striped64$Cell;->reset()V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public sum()D
    .locals 8

    iget-object v1, p0, Ljava/util/concurrent/atomic/DoubleAdder;->cells:[Ljava/util/concurrent/atomic/Striped64$Cell;

    iget-wide v4, p0, Ljava/util/concurrent/atomic/DoubleAdder;->base:J

    invoke-static {v4, v5}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v2

    if-eqz v1, :cond_1

    const/4 v4, 0x0

    array-length v5, v1

    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v0, v1, v4

    if-eqz v0, :cond_0

    iget-wide v6, v0, Ljava/util/concurrent/atomic/Striped64$Cell;->value:J

    invoke-static {v6, v7}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v6

    add-double/2addr v2, v6

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-wide v2
.end method

.method public sumThenReset()D
    .locals 10

    iget-object v1, p0, Ljava/util/concurrent/atomic/DoubleAdder;->cells:[Ljava/util/concurrent/atomic/Striped64$Cell;

    iget-wide v6, p0, Ljava/util/concurrent/atomic/DoubleAdder;->base:J

    invoke-static {v6, v7}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v2

    const-wide/16 v6, 0x0

    iput-wide v6, p0, Ljava/util/concurrent/atomic/DoubleAdder;->base:J

    if-eqz v1, :cond_1

    const/4 v6, 0x0

    array-length v7, v1

    :goto_0
    if-ge v6, v7, :cond_1

    aget-object v0, v1, v6

    if-eqz v0, :cond_0

    iget-wide v4, v0, Ljava/util/concurrent/atomic/Striped64$Cell;->value:J

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/Striped64$Cell;->reset()V

    invoke-static {v4, v5}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v8

    add-double/2addr v2, v8

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    return-wide v2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/DoubleAdder;->sum()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
