.class public Ljava/lang/invoke/Transformers$PermuteArguments;
.super Ljava/lang/invoke/Transformers$Transformer;
.source "Transformers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/invoke/Transformers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PermuteArguments"
.end annotation


# instance fields
.field private final reorder:[I

.field private final target:Ljava/lang/invoke/MethodHandle;


# direct methods
.method public constructor <init>(Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodHandle;[I)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/lang/invoke/Transformers$Transformer;-><init>(Ljava/lang/invoke/MethodType;)V

    iput-object p2, p0, Ljava/lang/invoke/Transformers$PermuteArguments;->target:Ljava/lang/invoke/MethodHandle;

    iput-object p3, p0, Ljava/lang/invoke/Transformers$PermuteArguments;->reorder:[I

    return-void
.end method


# virtual methods
.method public transform(Ldalvik/system/EmulatedStackFrame;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    new-instance v7, Ldalvik/system/EmulatedStackFrame$StackFrameReader;

    invoke-direct {v7}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;-><init>()V

    invoke-virtual {v7, p1}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->attach(Ldalvik/system/EmulatedStackFrame;)Ldalvik/system/EmulatedStackFrame$StackFrameAccessor;

    iget-object v9, p0, Ljava/lang/invoke/Transformers$PermuteArguments;->reorder:[I

    array-length v9, v9

    new-array v1, v9, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/invoke/Transformers$PermuteArguments;->type()Ljava/lang/invoke/MethodType;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/invoke/MethodType;->ptypes()[Ljava/lang/Class;

    move-result-object v6

    const/4 v3, 0x0

    :goto_0
    array-length v9, v6

    if-ge v3, v9, :cond_9

    aget-object v5, v6, v3

    invoke-virtual {v5}, Ljava/lang/Class;->isPrimitive()Z

    move-result v9

    if-nez v9, :cond_0

    invoke-virtual {v7, v5}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextReference(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v9

    aput-object v9, v1, v3

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v5, v9, :cond_1

    invoke-virtual {v7}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextBoolean()Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v1, v3

    goto :goto_1

    :cond_1
    sget-object v9, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v5, v9, :cond_2

    invoke-virtual {v7}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextByte()B

    move-result v9

    invoke-static {v9}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v9

    aput-object v9, v1, v3

    goto :goto_1

    :cond_2
    sget-object v9, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v5, v9, :cond_3

    invoke-virtual {v7}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextChar()C

    move-result v9

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    aput-object v9, v1, v3

    goto :goto_1

    :cond_3
    sget-object v9, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v5, v9, :cond_4

    invoke-virtual {v7}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextShort()S

    move-result v9

    invoke-static {v9}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v9

    aput-object v9, v1, v3

    goto :goto_1

    :cond_4
    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v5, v9, :cond_5

    invoke-virtual {v7}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextInt()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v1, v3

    goto :goto_1

    :cond_5
    sget-object v9, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v5, v9, :cond_6

    invoke-virtual {v7}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextLong()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v1, v3

    goto :goto_1

    :cond_6
    sget-object v9, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v5, v9, :cond_7

    invoke-virtual {v7}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextFloat()F

    move-result v9

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v1, v3

    goto :goto_1

    :cond_7
    sget-object v9, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v5, v9, :cond_8

    invoke-virtual {v7}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextDouble()D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    aput-object v9, v1, v3

    goto :goto_1

    :cond_8
    new-instance v9, Ljava/lang/AssertionError;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Unexpected type: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v9

    :cond_9
    iget-object v9, p0, Ljava/lang/invoke/Transformers$PermuteArguments;->target:Ljava/lang/invoke/MethodHandle;

    invoke-virtual {v9}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v9

    invoke-static {v9}, Ldalvik/system/EmulatedStackFrame;->create(Ljava/lang/invoke/MethodType;)Ldalvik/system/EmulatedStackFrame;

    move-result-object v2

    new-instance v8, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;

    invoke-direct {v8}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;-><init>()V

    invoke-virtual {v8, v2}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->attach(Ldalvik/system/EmulatedStackFrame;)Ldalvik/system/EmulatedStackFrame$StackFrameAccessor;

    const/4 v3, 0x0

    :goto_2
    array-length v9, v6

    if-ge v3, v9, :cond_13

    iget-object v9, p0, Ljava/lang/invoke/Transformers$PermuteArguments;->reorder:[I

    aget v4, v9, v3

    aget-object v5, v6, v4

    aget-object v0, v1, v4

    invoke-virtual {v5}, Ljava/lang/Class;->isPrimitive()Z

    move-result v9

    if-nez v9, :cond_a

    invoke-virtual {v8, v0, v5}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextReference(Ljava/lang/Object;Ljava/lang/Class;)V

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_a
    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v5, v9, :cond_b

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    invoke-virtual {v8, v9}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextBoolean(Z)V

    goto :goto_3

    :cond_b
    sget-object v9, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v5, v9, :cond_c

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v9

    invoke-virtual {v8, v9}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextByte(B)V

    goto :goto_3

    :cond_c
    sget-object v9, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v5, v9, :cond_d

    check-cast v0, Ljava/lang/Character;

    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v9

    invoke-virtual {v8, v9}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextChar(C)V

    goto :goto_3

    :cond_d
    sget-object v9, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v5, v9, :cond_e

    check-cast v0, Ljava/lang/Short;

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v9

    invoke-virtual {v8, v9}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextShort(S)V

    goto :goto_3

    :cond_e
    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v5, v9, :cond_f

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v8, v9}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextInt(I)V

    goto :goto_3

    :cond_f
    sget-object v9, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v5, v9, :cond_10

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextLong(J)V

    goto :goto_3

    :cond_10
    sget-object v9, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v5, v9, :cond_11

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v9

    invoke-virtual {v8, v9}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextFloat(F)V

    goto :goto_3

    :cond_11
    sget-object v9, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v5, v9, :cond_12

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextDouble(D)V

    goto :goto_3

    :cond_12
    new-instance v9, Ljava/lang/AssertionError;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Unexpected type: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v9

    :cond_13
    iget-object v9, p0, Ljava/lang/invoke/Transformers$PermuteArguments;->target:Ljava/lang/invoke/MethodHandle;

    invoke-polymorphic {v9, v2}, Ljava/lang/invoke/MethodHandle;->invoke([Ljava/lang/Object;)Ljava/lang/Object;, (Ldalvik/system/EmulatedStackFrame;)V

    invoke-virtual {v2, p1}, Ldalvik/system/EmulatedStackFrame;->copyReturnValueTo(Ldalvik/system/EmulatedStackFrame;)V

    return-void
.end method
