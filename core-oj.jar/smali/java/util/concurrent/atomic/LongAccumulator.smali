.class public Ljava/util/concurrent/atomic/LongAccumulator;
.super Ljava/util/concurrent/atomic/Striped64;
.source "LongAccumulator.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/atomic/LongAccumulator$SerializationProxy;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x6499de12a37d0a3dL


# instance fields
.field private final function:Ljava/util/function/LongBinaryOperator;

.field private final identity:J


# direct methods
.method public constructor <init>(Ljava/util/function/LongBinaryOperator;J)V
    .locals 0

    invoke-direct {p0}, Ljava/util/concurrent/atomic/Striped64;-><init>()V

    iput-object p1, p0, Ljava/util/concurrent/atomic/LongAccumulator;->function:Ljava/util/function/LongBinaryOperator;

    iput-wide p2, p0, Ljava/util/concurrent/atomic/LongAccumulator;->identity:J

    iput-wide p2, p0, Ljava/util/concurrent/atomic/LongAccumulator;->base:J

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
    .locals 6

    new-instance v0, Ljava/util/concurrent/atomic/LongAccumulator$SerializationProxy;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/LongAccumulator;->get()J

    move-result-wide v1

    iget-object v3, p0, Ljava/util/concurrent/atomic/LongAccumulator;->function:Ljava/util/function/LongBinaryOperator;

    iget-wide v4, p0, Ljava/util/concurrent/atomic/LongAccumulator;->identity:J

    invoke-direct/range {v0 .. v5}, Ljava/util/concurrent/atomic/LongAccumulator$SerializationProxy;-><init>(JLjava/util/function/LongBinaryOperator;J)V

    return-object v0
.end method


# virtual methods
.method public accumulate(J)V
    .locals 11

    iget-object v1, p0, Ljava/util/concurrent/atomic/LongAccumulator;->cells:[Ljava/util/concurrent/atomic/Striped64$Cell;

    if-nez v1, :cond_0

    iget-object v10, p0, Ljava/util/concurrent/atomic/LongAccumulator;->function:Ljava/util/function/LongBinaryOperator;

    iget-wide v2, p0, Ljava/util/concurrent/atomic/LongAccumulator;->base:J

    invoke-interface {v10, v2, v3, p1, p2}, Ljava/util/function/LongBinaryOperator;->applyAsLong(JJ)J

    move-result-wide v6

    cmp-long v10, v6, v2

    if-eqz v10, :cond_2

    invoke-virtual {p0, v2, v3, v6, v7}, Ljava/util/concurrent/atomic/LongAccumulator;->casBase(JJ)Z

    move-result v10

    xor-int/lit8 v10, v10, 0x1

    if-eqz v10, :cond_2

    :cond_0
    const/4 v5, 0x1

    if-eqz v1, :cond_1

    array-length v10, v1

    add-int/lit8 v4, v10, -0x1

    if-gez v4, :cond_3

    :cond_1
    :goto_0
    iget-object v10, p0, Ljava/util/concurrent/atomic/LongAccumulator;->function:Ljava/util/function/LongBinaryOperator;

    invoke-virtual {p0, p1, p2, v10, v5}, Ljava/util/concurrent/atomic/LongAccumulator;->longAccumulate(JLjava/util/function/LongBinaryOperator;Z)V

    :cond_2
    return-void

    :cond_3
    invoke-static {}, Ljava/util/concurrent/atomic/LongAccumulator;->getProbe()I

    move-result v10

    and-int/2addr v10, v4

    aget-object v0, v1, v10

    if-eqz v0, :cond_1

    iget-object v10, p0, Ljava/util/concurrent/atomic/LongAccumulator;->function:Ljava/util/function/LongBinaryOperator;

    iget-wide v8, v0, Ljava/util/concurrent/atomic/Striped64$Cell;->value:J

    invoke-interface {v10, v8, v9, p1, p2}, Ljava/util/function/LongBinaryOperator;->applyAsLong(JJ)J

    move-result-wide v6

    cmp-long v10, v6, v8

    if-eqz v10, :cond_4

    invoke-virtual {v0, v8, v9, v6, v7}, Ljava/util/concurrent/atomic/Striped64$Cell;->cas(JJ)Z

    move-result v5

    :goto_1
    xor-int/lit8 v10, v5, 0x1

    if-eqz v10, :cond_2

    goto :goto_0

    :cond_4
    const/4 v5, 0x1

    goto :goto_1
.end method

.method public doubleValue()D
    .locals 2

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/LongAccumulator;->get()J

    move-result-wide v0

    long-to-double v0, v0

    return-wide v0
.end method

.method public floatValue()F
    .locals 2

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/LongAccumulator;->get()J

    move-result-wide v0

    long-to-float v0, v0

    return v0
.end method

.method public get()J
    .locals 10

    iget-object v1, p0, Ljava/util/concurrent/atomic/LongAccumulator;->cells:[Ljava/util/concurrent/atomic/Striped64$Cell;

    iget-wide v2, p0, Ljava/util/concurrent/atomic/LongAccumulator;->base:J

    if-eqz v1, :cond_1

    const/4 v4, 0x0

    array-length v5, v1

    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v0, v1, v4

    if-eqz v0, :cond_0

    iget-object v6, p0, Ljava/util/concurrent/atomic/LongAccumulator;->function:Ljava/util/function/LongBinaryOperator;

    iget-wide v8, v0, Ljava/util/concurrent/atomic/Striped64$Cell;->value:J

    invoke-interface {v6, v2, v3, v8, v9}, Ljava/util/function/LongBinaryOperator;->applyAsLong(JJ)J

    move-result-wide v2

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-wide v2
.end method

.method public getThenReset()J
    .locals 10

    iget-object v1, p0, Ljava/util/concurrent/atomic/LongAccumulator;->cells:[Ljava/util/concurrent/atomic/Striped64$Cell;

    iget-wide v2, p0, Ljava/util/concurrent/atomic/LongAccumulator;->base:J

    iget-wide v6, p0, Ljava/util/concurrent/atomic/LongAccumulator;->identity:J

    iput-wide v6, p0, Ljava/util/concurrent/atomic/LongAccumulator;->base:J

    if-eqz v1, :cond_1

    const/4 v6, 0x0

    array-length v7, v1

    :goto_0
    if-ge v6, v7, :cond_1

    aget-object v0, v1, v6

    if-eqz v0, :cond_0

    iget-wide v4, v0, Ljava/util/concurrent/atomic/Striped64$Cell;->value:J

    iget-wide v8, p0, Ljava/util/concurrent/atomic/LongAccumulator;->identity:J

    invoke-virtual {v0, v8, v9}, Ljava/util/concurrent/atomic/Striped64$Cell;->reset(J)V

    iget-object v8, p0, Ljava/util/concurrent/atomic/LongAccumulator;->function:Ljava/util/function/LongBinaryOperator;

    invoke-interface {v8, v2, v3, v4, v5}, Ljava/util/function/LongBinaryOperator;->applyAsLong(JJ)J

    move-result-wide v2

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    return-wide v2
.end method

.method public intValue()I
    .locals 2

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/LongAccumulator;->get()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public longValue()J
    .locals 2

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/LongAccumulator;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public reset()V
    .locals 6

    iget-object v1, p0, Ljava/util/concurrent/atomic/LongAccumulator;->cells:[Ljava/util/concurrent/atomic/Striped64$Cell;

    iget-wide v2, p0, Ljava/util/concurrent/atomic/LongAccumulator;->identity:J

    iput-wide v2, p0, Ljava/util/concurrent/atomic/LongAccumulator;->base:J

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    array-length v3, v1

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v0, v1, v2

    if-eqz v0, :cond_0

    iget-wide v4, p0, Ljava/util/concurrent/atomic/LongAccumulator;->identity:J

    invoke-virtual {v0, v4, v5}, Ljava/util/concurrent/atomic/Striped64$Cell;->reset(J)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/LongAccumulator;->get()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
