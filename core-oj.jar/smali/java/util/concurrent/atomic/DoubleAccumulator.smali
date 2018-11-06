.class public Ljava/util/concurrent/atomic/DoubleAccumulator;
.super Ljava/util/concurrent/atomic/Striped64;
.source "DoubleAccumulator.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/atomic/DoubleAccumulator$SerializationProxy;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x6499de12a37d0a3dL


# instance fields
.field private final function:Ljava/util/function/DoubleBinaryOperator;

.field private final identity:J


# direct methods
.method public constructor <init>(Ljava/util/function/DoubleBinaryOperator;D)V
    .locals 2

    invoke-direct {p0}, Ljava/util/concurrent/atomic/Striped64;-><init>()V

    iput-object p1, p0, Ljava/util/concurrent/atomic/DoubleAccumulator;->function:Ljava/util/function/DoubleBinaryOperator;

    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    iput-wide v0, p0, Ljava/util/concurrent/atomic/DoubleAccumulator;->identity:J

    iput-wide v0, p0, Ljava/util/concurrent/atomic/DoubleAccumulator;->base:J

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

    new-instance v0, Ljava/util/concurrent/atomic/DoubleAccumulator$SerializationProxy;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/DoubleAccumulator;->get()D

    move-result-wide v1

    iget-object v3, p0, Ljava/util/concurrent/atomic/DoubleAccumulator;->function:Ljava/util/function/DoubleBinaryOperator;

    iget-wide v4, p0, Ljava/util/concurrent/atomic/DoubleAccumulator;->identity:J

    invoke-direct/range {v0 .. v5}, Ljava/util/concurrent/atomic/DoubleAccumulator$SerializationProxy;-><init>(DLjava/util/function/DoubleBinaryOperator;J)V

    return-object v0
.end method


# virtual methods
.method public accumulate(D)V
    .locals 19

    move-object/from16 v0, p0

    iget-object v5, v0, Ljava/util/concurrent/atomic/DoubleAccumulator;->cells:[Ljava/util/concurrent/atomic/Striped64$Cell;

    if-nez v5, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Ljava/util/concurrent/atomic/DoubleAccumulator;->function:Ljava/util/function/DoubleBinaryOperator;

    move-object/from16 v0, p0

    iget-wide v6, v0, Ljava/util/concurrent/atomic/DoubleAccumulator;->base:J

    invoke-static {v6, v7}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v16

    move-wide/from16 v0, v16

    move-wide/from16 v2, p1

    invoke-interface {v14, v0, v1, v2, v3}, Ljava/util/function/DoubleBinaryOperator;->applyAsDouble(DD)D

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v10

    cmp-long v14, v10, v6

    if-eqz v14, :cond_2

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7, v10, v11}, Ljava/util/concurrent/atomic/DoubleAccumulator;->casBase(JJ)Z

    move-result v14

    xor-int/lit8 v14, v14, 0x1

    if-eqz v14, :cond_2

    :cond_0
    const/4 v9, 0x1

    if-eqz v5, :cond_1

    array-length v14, v5

    add-int/lit8 v8, v14, -0x1

    if-gez v8, :cond_3

    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget-object v14, v0, Ljava/util/concurrent/atomic/DoubleAccumulator;->function:Ljava/util/function/DoubleBinaryOperator;

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2, v14, v9}, Ljava/util/concurrent/atomic/DoubleAccumulator;->doubleAccumulate(DLjava/util/function/DoubleBinaryOperator;Z)V

    :cond_2
    return-void

    :cond_3
    invoke-static {}, Ljava/util/concurrent/atomic/DoubleAccumulator;->getProbe()I

    move-result v14

    and-int/2addr v14, v8

    aget-object v4, v5, v14

    if-eqz v4, :cond_1

    move-object/from16 v0, p0

    iget-object v14, v0, Ljava/util/concurrent/atomic/DoubleAccumulator;->function:Ljava/util/function/DoubleBinaryOperator;

    iget-wide v12, v4, Ljava/util/concurrent/atomic/Striped64$Cell;->value:J

    invoke-static {v12, v13}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v16

    move-wide/from16 v0, v16

    move-wide/from16 v2, p1

    invoke-interface {v14, v0, v1, v2, v3}, Ljava/util/function/DoubleBinaryOperator;->applyAsDouble(DD)D

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v10

    cmp-long v14, v10, v12

    if-eqz v14, :cond_4

    invoke-virtual {v4, v12, v13, v10, v11}, Ljava/util/concurrent/atomic/Striped64$Cell;->cas(JJ)Z

    move-result v9

    :goto_1
    xor-int/lit8 v14, v9, 0x1

    if-eqz v14, :cond_2

    goto :goto_0

    :cond_4
    const/4 v9, 0x1

    goto :goto_1
.end method

.method public doubleValue()D
    .locals 2

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/DoubleAccumulator;->get()D

    move-result-wide v0

    return-wide v0
.end method

.method public floatValue()F
    .locals 2

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/DoubleAccumulator;->get()D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public get()D
    .locals 10

    iget-object v1, p0, Ljava/util/concurrent/atomic/DoubleAccumulator;->cells:[Ljava/util/concurrent/atomic/Striped64$Cell;

    iget-wide v4, p0, Ljava/util/concurrent/atomic/DoubleAccumulator;->base:J

    invoke-static {v4, v5}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v2

    if-eqz v1, :cond_1

    const/4 v4, 0x0

    array-length v5, v1

    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v0, v1, v4

    if-eqz v0, :cond_0

    iget-object v6, p0, Ljava/util/concurrent/atomic/DoubleAccumulator;->function:Ljava/util/function/DoubleBinaryOperator;

    iget-wide v8, v0, Ljava/util/concurrent/atomic/Striped64$Cell;->value:J

    invoke-static {v8, v9}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v8

    invoke-interface {v6, v2, v3, v8, v9}, Ljava/util/function/DoubleBinaryOperator;->applyAsDouble(DD)D

    move-result-wide v2

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-wide v2
.end method

.method public getThenReset()D
    .locals 10

    iget-object v1, p0, Ljava/util/concurrent/atomic/DoubleAccumulator;->cells:[Ljava/util/concurrent/atomic/Striped64$Cell;

    iget-wide v6, p0, Ljava/util/concurrent/atomic/DoubleAccumulator;->base:J

    invoke-static {v6, v7}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v2

    iget-wide v6, p0, Ljava/util/concurrent/atomic/DoubleAccumulator;->identity:J

    iput-wide v6, p0, Ljava/util/concurrent/atomic/DoubleAccumulator;->base:J

    if-eqz v1, :cond_1

    const/4 v6, 0x0

    array-length v7, v1

    :goto_0
    if-ge v6, v7, :cond_1

    aget-object v0, v1, v6

    if-eqz v0, :cond_0

    iget-wide v8, v0, Ljava/util/concurrent/atomic/Striped64$Cell;->value:J

    invoke-static {v8, v9}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v4

    iget-wide v8, p0, Ljava/util/concurrent/atomic/DoubleAccumulator;->identity:J

    invoke-virtual {v0, v8, v9}, Ljava/util/concurrent/atomic/Striped64$Cell;->reset(J)V

    iget-object v8, p0, Ljava/util/concurrent/atomic/DoubleAccumulator;->function:Ljava/util/function/DoubleBinaryOperator;

    invoke-interface {v8, v2, v3, v4, v5}, Ljava/util/function/DoubleBinaryOperator;->applyAsDouble(DD)D

    move-result-wide v2

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    return-wide v2
.end method

.method public intValue()I
    .locals 2

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/DoubleAccumulator;->get()D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public longValue()J
    .locals 2

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/DoubleAccumulator;->get()D

    move-result-wide v0

    double-to-long v0, v0

    return-wide v0
.end method

.method public reset()V
    .locals 6

    iget-object v1, p0, Ljava/util/concurrent/atomic/DoubleAccumulator;->cells:[Ljava/util/concurrent/atomic/Striped64$Cell;

    iget-wide v2, p0, Ljava/util/concurrent/atomic/DoubleAccumulator;->identity:J

    iput-wide v2, p0, Ljava/util/concurrent/atomic/DoubleAccumulator;->base:J

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    array-length v3, v1

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v0, v1, v2

    if-eqz v0, :cond_0

    iget-wide v4, p0, Ljava/util/concurrent/atomic/DoubleAccumulator;->identity:J

    invoke-virtual {v0, v4, v5}, Ljava/util/concurrent/atomic/Striped64$Cell;->reset(J)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/DoubleAccumulator;->get()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
