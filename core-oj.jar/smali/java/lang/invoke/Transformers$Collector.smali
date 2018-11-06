.class Ljava/lang/invoke/Transformers$Collector;
.super Ljava/lang/invoke/Transformers$Transformer;
.source "Transformers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/invoke/Transformers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Collector"
.end annotation


# instance fields
.field private final arrayOffset:I

.field private final arrayTypeChar:C

.field private final copyRange:Ldalvik/system/EmulatedStackFrame$Range;

.field private final numArrayArgs:I

.field private final target:Ljava/lang/invoke/MethodHandle;


# direct methods
.method constructor <init>(Ljava/lang/invoke/MethodHandle;Ljava/lang/Class;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/invoke/MethodHandle;",
            "Ljava/lang/Class",
            "<*>;I)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/invoke/MethodType;->asCollectorType(Ljava/lang/Class;I)Ljava/lang/invoke/MethodType;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/invoke/Transformers$Transformer;-><init>(Ljava/lang/invoke/MethodType;)V

    iput-object p1, p0, Ljava/lang/invoke/Transformers$Collector;->target:Ljava/lang/invoke/MethodHandle;

    invoke-virtual {p1}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/invoke/MethodType;->parameterCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Ljava/lang/invoke/Transformers$Collector;->arrayOffset:I

    invoke-virtual {p2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lsun/invoke/util/Wrapper;->basicTypeChar(Ljava/lang/Class;)C

    move-result v0

    iput-char v0, p0, Ljava/lang/invoke/Transformers$Collector;->arrayTypeChar:C

    iput p3, p0, Ljava/lang/invoke/Transformers$Collector;->numArrayArgs:I

    invoke-virtual {p1}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v0

    iget v1, p0, Ljava/lang/invoke/Transformers$Collector;->arrayOffset:I

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Ldalvik/system/EmulatedStackFrame$Range;->of(Ljava/lang/invoke/MethodType;II)Ldalvik/system/EmulatedStackFrame$Range;

    move-result-object v0

    iput-object v0, p0, Ljava/lang/invoke/Transformers$Collector;->copyRange:Ldalvik/system/EmulatedStackFrame$Range;

    return-void
.end method


# virtual methods
.method public transform(Ldalvik/system/EmulatedStackFrame;)V
    .locals 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/lang/invoke/Transformers$Collector;->target:Ljava/lang/invoke/MethodHandle;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ldalvik/system/EmulatedStackFrame;->create(Ljava/lang/invoke/MethodType;)Ldalvik/system/EmulatedStackFrame;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/lang/invoke/Transformers$Collector;->copyRange:Ldalvik/system/EmulatedStackFrame$Range;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move-object/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Ldalvik/system/EmulatedStackFrame;->copyRangeTo(Ldalvik/system/EmulatedStackFrame;Ldalvik/system/EmulatedStackFrame$Range;II)V

    new-instance v21, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;

    invoke-direct/range {v21 .. v21}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;-><init>()V

    move-object/from16 v0, p0

    iget v0, v0, Ljava/lang/invoke/Transformers$Collector;->arrayOffset:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/lang/invoke/Transformers$Collector;->copyRange:Ldalvik/system/EmulatedStackFrame$Range;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Ldalvik/system/EmulatedStackFrame$Range;->numReferences:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/lang/invoke/Transformers$Collector;->copyRange:Ldalvik/system/EmulatedStackFrame$Range;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Ldalvik/system/EmulatedStackFrame$Range;->numBytes:I

    move/from16 v24, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    move/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->attach(Ldalvik/system/EmulatedStackFrame;III)Ldalvik/system/EmulatedStackFrame$StackFrameAccessor;

    new-instance v17, Ldalvik/system/EmulatedStackFrame$StackFrameReader;

    invoke-direct/range {v17 .. v17}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;-><init>()V

    move-object/from16 v0, p0

    iget v0, v0, Ljava/lang/invoke/Transformers$Collector;->arrayOffset:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/lang/invoke/Transformers$Collector;->copyRange:Ldalvik/system/EmulatedStackFrame$Range;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Ldalvik/system/EmulatedStackFrame$Range;->numReferences:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/lang/invoke/Transformers$Collector;->copyRange:Ldalvik/system/EmulatedStackFrame$Range;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Ldalvik/system/EmulatedStackFrame$Range;->numBytes:I

    move/from16 v24, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->attach(Ldalvik/system/EmulatedStackFrame;III)Ldalvik/system/EmulatedStackFrame$StackFrameAccessor;

    move-object/from16 v0, p0

    iget-char v0, v0, Ljava/lang/invoke/Transformers$Collector;->arrayTypeChar:C

    move/from16 v22, v0

    sparse-switch v22, :sswitch_data_0

    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/lang/invoke/Transformers$Collector;->target:Ljava/lang/invoke/MethodHandle;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-polymorphic {v0, v1}, Ljava/lang/invoke/MethodHandle;->invoke([Ljava/lang/Object;)Ljava/lang/Object;, (Ldalvik/system/EmulatedStackFrame;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ldalvik/system/EmulatedStackFrame;->copyReturnValueTo(Ldalvik/system/EmulatedStackFrame;)V

    return-void

    :sswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/lang/invoke/Transformers$Collector;->target:Ljava/lang/invoke/MethodHandle;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/invoke/MethodType;->ptypes()[Ljava/lang/Class;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Ljava/lang/invoke/Transformers$Collector;->arrayOffset:I

    move/from16 v23, v0

    aget-object v20, v22, v23

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v18

    invoke-virtual/range {p0 .. p0}, Ljava/lang/invoke/Transformers$Collector;->type()Ljava/lang/invoke/MethodType;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/invoke/MethodType;->lastParameterType()Ljava/lang/Class;

    move-result-object v6

    move-object/from16 v0, p0

    iget v0, v0, Ljava/lang/invoke/Transformers$Collector;->numArrayArgs:I

    move/from16 v22, v0

    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/Object;

    const/16 v16, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Ljava/lang/invoke/Transformers$Collector;->numArrayArgs:I

    move/from16 v22, v0

    move/from16 v0, v16

    move/from16 v1, v22

    if-ge v0, v1, :cond_0

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextReference(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v22

    aput-object v22, v7, v16

    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    :cond_0
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v7, v1}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextReference(Ljava/lang/Object;Ljava/lang/Class;)V

    goto :goto_0

    :sswitch_1
    move-object/from16 v0, p0

    iget v0, v0, Ljava/lang/invoke/Transformers$Collector;->numArrayArgs:I

    move/from16 v22, v0

    move/from16 v0, v22

    new-array v12, v0, [I

    const/16 v16, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Ljava/lang/invoke/Transformers$Collector;->numArrayArgs:I

    move/from16 v22, v0

    move/from16 v0, v16

    move/from16 v1, v22

    if-ge v0, v1, :cond_1

    invoke-virtual/range {v17 .. v17}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextInt()I

    move-result v22

    aput v22, v12, v16

    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    :cond_1
    const-class v22, [I

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v12, v1}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextReference(Ljava/lang/Object;Ljava/lang/Class;)V

    goto/16 :goto_0

    :sswitch_2
    move-object/from16 v0, p0

    iget v0, v0, Ljava/lang/invoke/Transformers$Collector;->numArrayArgs:I

    move/from16 v22, v0

    move/from16 v0, v22

    new-array v13, v0, [J

    const/16 v16, 0x0

    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Ljava/lang/invoke/Transformers$Collector;->numArrayArgs:I

    move/from16 v22, v0

    move/from16 v0, v16

    move/from16 v1, v22

    if-ge v0, v1, :cond_2

    invoke-virtual/range {v17 .. v17}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextLong()J

    move-result-wide v22

    aput-wide v22, v13, v16

    add-int/lit8 v16, v16, 0x1

    goto :goto_3

    :cond_2
    const-class v22, [J

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v13, v1}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextReference(Ljava/lang/Object;Ljava/lang/Class;)V

    goto/16 :goto_0

    :sswitch_3
    move-object/from16 v0, p0

    iget v0, v0, Ljava/lang/invoke/Transformers$Collector;->numArrayArgs:I

    move/from16 v22, v0

    move/from16 v0, v22

    new-array v8, v0, [B

    const/16 v16, 0x0

    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Ljava/lang/invoke/Transformers$Collector;->numArrayArgs:I

    move/from16 v22, v0

    move/from16 v0, v16

    move/from16 v1, v22

    if-ge v0, v1, :cond_3

    invoke-virtual/range {v17 .. v17}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextByte()B

    move-result v22

    aput-byte v22, v8, v16

    add-int/lit8 v16, v16, 0x1

    goto :goto_4

    :cond_3
    const-class v22, [B

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v8, v1}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextReference(Ljava/lang/Object;Ljava/lang/Class;)V

    goto/16 :goto_0

    :sswitch_4
    move-object/from16 v0, p0

    iget v0, v0, Ljava/lang/invoke/Transformers$Collector;->numArrayArgs:I

    move/from16 v22, v0

    move/from16 v0, v22

    new-array v14, v0, [S

    const/16 v16, 0x0

    :goto_5
    move-object/from16 v0, p0

    iget v0, v0, Ljava/lang/invoke/Transformers$Collector;->numArrayArgs:I

    move/from16 v22, v0

    move/from16 v0, v16

    move/from16 v1, v22

    if-ge v0, v1, :cond_4

    invoke-virtual/range {v17 .. v17}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextShort()S

    move-result v22

    aput-short v22, v14, v16

    add-int/lit8 v16, v16, 0x1

    goto :goto_5

    :cond_4
    const-class v22, [S

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v14, v1}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextReference(Ljava/lang/Object;Ljava/lang/Class;)V

    goto/16 :goto_0

    :sswitch_5
    move-object/from16 v0, p0

    iget v0, v0, Ljava/lang/invoke/Transformers$Collector;->numArrayArgs:I

    move/from16 v22, v0

    move/from16 v0, v22

    new-array v9, v0, [C

    const/16 v16, 0x0

    :goto_6
    move-object/from16 v0, p0

    iget v0, v0, Ljava/lang/invoke/Transformers$Collector;->numArrayArgs:I

    move/from16 v22, v0

    move/from16 v0, v16

    move/from16 v1, v22

    if-ge v0, v1, :cond_5

    invoke-virtual/range {v17 .. v17}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextChar()C

    move-result v22

    aput-char v22, v9, v16

    add-int/lit8 v16, v16, 0x1

    goto :goto_6

    :cond_5
    const-class v22, [C

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v9, v1}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextReference(Ljava/lang/Object;Ljava/lang/Class;)V

    goto/16 :goto_0

    :sswitch_6
    move-object/from16 v0, p0

    iget v0, v0, Ljava/lang/invoke/Transformers$Collector;->numArrayArgs:I

    move/from16 v22, v0

    move/from16 v0, v22

    new-array v15, v0, [Z

    const/16 v16, 0x0

    :goto_7
    move-object/from16 v0, p0

    iget v0, v0, Ljava/lang/invoke/Transformers$Collector;->numArrayArgs:I

    move/from16 v22, v0

    move/from16 v0, v16

    move/from16 v1, v22

    if-ge v0, v1, :cond_6

    invoke-virtual/range {v17 .. v17}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextBoolean()Z

    move-result v22

    aput-boolean v22, v15, v16

    add-int/lit8 v16, v16, 0x1

    goto :goto_7

    :cond_6
    const-class v22, [Z

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v15, v1}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextReference(Ljava/lang/Object;Ljava/lang/Class;)V

    goto/16 :goto_0

    :sswitch_7
    move-object/from16 v0, p0

    iget v0, v0, Ljava/lang/invoke/Transformers$Collector;->numArrayArgs:I

    move/from16 v22, v0

    move/from16 v0, v22

    new-array v11, v0, [F

    const/16 v16, 0x0

    :goto_8
    move-object/from16 v0, p0

    iget v0, v0, Ljava/lang/invoke/Transformers$Collector;->numArrayArgs:I

    move/from16 v22, v0

    move/from16 v0, v16

    move/from16 v1, v22

    if-ge v0, v1, :cond_7

    invoke-virtual/range {v17 .. v17}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextFloat()F

    move-result v22

    aput v22, v11, v16

    add-int/lit8 v16, v16, 0x1

    goto :goto_8

    :cond_7
    const-class v22, [F

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v11, v1}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextReference(Ljava/lang/Object;Ljava/lang/Class;)V

    goto/16 :goto_0

    :sswitch_8
    move-object/from16 v0, p0

    iget v0, v0, Ljava/lang/invoke/Transformers$Collector;->numArrayArgs:I

    move/from16 v22, v0

    move/from16 v0, v22

    new-array v10, v0, [D

    const/16 v16, 0x0

    :goto_9
    move-object/from16 v0, p0

    iget v0, v0, Ljava/lang/invoke/Transformers$Collector;->numArrayArgs:I

    move/from16 v22, v0

    move/from16 v0, v16

    move/from16 v1, v22

    if-ge v0, v1, :cond_8

    invoke-virtual/range {v17 .. v17}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextDouble()D

    move-result-wide v22

    aput-wide v22, v10, v16

    add-int/lit8 v16, v16, 0x1

    goto :goto_9

    :cond_8
    const-class v22, [D

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v10, v1}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextReference(Ljava/lang/Object;Ljava/lang/Class;)V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x42 -> :sswitch_3
        0x43 -> :sswitch_5
        0x44 -> :sswitch_8
        0x46 -> :sswitch_7
        0x49 -> :sswitch_1
        0x4a -> :sswitch_2
        0x4c -> :sswitch_0
        0x53 -> :sswitch_4
        0x5a -> :sswitch_6
    .end sparse-switch
.end method
