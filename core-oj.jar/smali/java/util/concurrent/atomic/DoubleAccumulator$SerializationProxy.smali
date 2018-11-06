.class Ljava/util/concurrent/atomic/DoubleAccumulator$SerializationProxy;
.super Ljava/lang/Object;
.source "DoubleAccumulator.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/atomic/DoubleAccumulator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SerializationProxy"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x6499de12a37d0a3dL


# instance fields
.field private final function:Ljava/util/function/DoubleBinaryOperator;

.field private final identity:J

.field private final value:D


# direct methods
.method constructor <init>(DLjava/util/function/DoubleBinaryOperator;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Ljava/util/concurrent/atomic/DoubleAccumulator$SerializationProxy;->value:D

    iput-object p3, p0, Ljava/util/concurrent/atomic/DoubleAccumulator$SerializationProxy;->function:Ljava/util/function/DoubleBinaryOperator;

    iput-wide p4, p0, Ljava/util/concurrent/atomic/DoubleAccumulator$SerializationProxy;->identity:J

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 6

    iget-wide v4, p0, Ljava/util/concurrent/atomic/DoubleAccumulator$SerializationProxy;->identity:J

    invoke-static {v4, v5}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v2

    new-instance v0, Ljava/util/concurrent/atomic/DoubleAccumulator;

    iget-object v1, p0, Ljava/util/concurrent/atomic/DoubleAccumulator$SerializationProxy;->function:Ljava/util/function/DoubleBinaryOperator;

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/atomic/DoubleAccumulator;-><init>(Ljava/util/function/DoubleBinaryOperator;D)V

    iget-wide v4, p0, Ljava/util/concurrent/atomic/DoubleAccumulator$SerializationProxy;->value:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v4

    iput-wide v4, v0, Ljava/util/concurrent/atomic/DoubleAccumulator;->base:J

    return-object v0
.end method
