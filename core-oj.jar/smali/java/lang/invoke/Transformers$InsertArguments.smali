.class Ljava/lang/invoke/Transformers$InsertArguments;
.super Ljava/lang/invoke/Transformers$Transformer;
.source "Transformers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/invoke/Transformers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "InsertArguments"
.end annotation


# instance fields
.field private final pos:I

.field private final range1:Ldalvik/system/EmulatedStackFrame$Range;

.field private final range2:Ldalvik/system/EmulatedStackFrame$Range;

.field private final target:Ljava/lang/invoke/MethodHandle;

.field private final values:[Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/invoke/MethodHandle;I[Ljava/lang/Object;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v1

    array-length v2, p3

    add-int/2addr v2, p2

    invoke-virtual {v1, p2, v2}, Ljava/lang/invoke/MethodType;->dropParameterTypes(II)Ljava/lang/invoke/MethodType;

    move-result-object v1

    invoke-direct {p0, v1}, Ljava/lang/invoke/Transformers$Transformer;-><init>(Ljava/lang/invoke/MethodType;)V

    iput-object p1, p0, Ljava/lang/invoke/Transformers$InsertArguments;->target:Ljava/lang/invoke/MethodHandle;

    iput p2, p0, Ljava/lang/invoke/Transformers$InsertArguments;->pos:I

    iput-object p3, p0, Ljava/lang/invoke/Transformers$InsertArguments;->values:[Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/invoke/Transformers$InsertArguments;->type()Ljava/lang/invoke/MethodType;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, p2}, Ldalvik/system/EmulatedStackFrame$Range;->of(Ljava/lang/invoke/MethodType;II)Ldalvik/system/EmulatedStackFrame$Range;

    move-result-object v1

    iput-object v1, p0, Ljava/lang/invoke/Transformers$InsertArguments;->range1:Ldalvik/system/EmulatedStackFrame$Range;

    invoke-virtual {v0}, Ljava/lang/invoke/MethodType;->parameterCount()I

    move-result v1

    invoke-static {v0, p2, v1}, Ldalvik/system/EmulatedStackFrame$Range;->of(Ljava/lang/invoke/MethodType;II)Ldalvik/system/EmulatedStackFrame$Range;

    move-result-object v1

    iput-object v1, p0, Ljava/lang/invoke/Transformers$InsertArguments;->range2:Ldalvik/system/EmulatedStackFrame$Range;

    return-void
.end method


# virtual methods
.method public transform(Ldalvik/system/EmulatedStackFrame;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v8, 0x0

    iget-object v7, p0, Ljava/lang/invoke/Transformers$InsertArguments;->target:Ljava/lang/invoke/MethodHandle;

    invoke-virtual {v7}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v7

    invoke-static {v7}, Ldalvik/system/EmulatedStackFrame;->create(Ljava/lang/invoke/MethodType;)Ldalvik/system/EmulatedStackFrame;

    move-result-object v1

    iget-object v7, p0, Ljava/lang/invoke/Transformers$InsertArguments;->range1:Ldalvik/system/EmulatedStackFrame$Range;

    invoke-virtual {p1, v1, v7, v8, v8}, Ldalvik/system/EmulatedStackFrame;->copyRangeTo(Ldalvik/system/EmulatedStackFrame;Ldalvik/system/EmulatedStackFrame$Range;II)V

    new-instance v6, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;

    invoke-direct {v6}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;-><init>()V

    iget v7, p0, Ljava/lang/invoke/Transformers$InsertArguments;->pos:I

    iget-object v8, p0, Ljava/lang/invoke/Transformers$InsertArguments;->range1:Ldalvik/system/EmulatedStackFrame$Range;

    iget v8, v8, Ldalvik/system/EmulatedStackFrame$Range;->numReferences:I

    iget-object v9, p0, Ljava/lang/invoke/Transformers$InsertArguments;->range1:Ldalvik/system/EmulatedStackFrame$Range;

    iget v9, v9, Ldalvik/system/EmulatedStackFrame$Range;->numBytes:I

    invoke-virtual {v6, v1, v7, v8, v9}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->attach(Ldalvik/system/EmulatedStackFrame;III)Ldalvik/system/EmulatedStackFrame$StackFrameAccessor;

    const/4 v5, 0x0

    const/4 v0, 0x0

    iget-object v7, p0, Ljava/lang/invoke/Transformers$InsertArguments;->target:Ljava/lang/invoke/MethodHandle;

    invoke-virtual {v7}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/invoke/MethodType;->ptypes()[Ljava/lang/Class;

    move-result-object v4

    const/4 v2, 0x0

    :goto_0
    iget-object v7, p0, Ljava/lang/invoke/Transformers$InsertArguments;->values:[Ljava/lang/Object;

    array-length v7, v7

    if-ge v2, v7, :cond_9

    iget v7, p0, Ljava/lang/invoke/Transformers$InsertArguments;->pos:I

    add-int/2addr v7, v2

    aget-object v3, v4, v7

    invoke-virtual {v3}, Ljava/lang/Class;->isPrimitive()Z

    move-result v7

    if-eqz v7, :cond_8

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v3, v7, :cond_1

    iget-object v7, p0, Ljava/lang/invoke/Transformers$InsertArguments;->values:[Ljava/lang/Object;

    aget-object v7, v7, v2

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-virtual {v6, v7}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextBoolean(Z)V

    :cond_0
    :goto_1
    invoke-static {v3}, Ldalvik/system/EmulatedStackFrame;->getSize(Ljava/lang/Class;)I

    move-result v7

    add-int/2addr v0, v7

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    sget-object v7, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v3, v7, :cond_2

    iget-object v7, p0, Ljava/lang/invoke/Transformers$InsertArguments;->values:[Ljava/lang/Object;

    aget-object v7, v7, v2

    check-cast v7, Ljava/lang/Byte;

    invoke-virtual {v7}, Ljava/lang/Byte;->byteValue()B

    move-result v7

    invoke-virtual {v6, v7}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextByte(B)V

    goto :goto_1

    :cond_2
    sget-object v7, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v3, v7, :cond_3

    iget-object v7, p0, Ljava/lang/invoke/Transformers$InsertArguments;->values:[Ljava/lang/Object;

    aget-object v7, v7, v2

    check-cast v7, Ljava/lang/Character;

    invoke-virtual {v7}, Ljava/lang/Character;->charValue()C

    move-result v7

    invoke-virtual {v6, v7}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextChar(C)V

    goto :goto_1

    :cond_3
    sget-object v7, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v3, v7, :cond_4

    iget-object v7, p0, Ljava/lang/invoke/Transformers$InsertArguments;->values:[Ljava/lang/Object;

    aget-object v7, v7, v2

    check-cast v7, Ljava/lang/Short;

    invoke-virtual {v7}, Ljava/lang/Short;->shortValue()S

    move-result v7

    invoke-virtual {v6, v7}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextShort(S)V

    goto :goto_1

    :cond_4
    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v3, v7, :cond_5

    iget-object v7, p0, Ljava/lang/invoke/Transformers$InsertArguments;->values:[Ljava/lang/Object;

    aget-object v7, v7, v2

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v6, v7}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextInt(I)V

    goto :goto_1

    :cond_5
    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v3, v7, :cond_6

    iget-object v7, p0, Ljava/lang/invoke/Transformers$InsertArguments;->values:[Ljava/lang/Object;

    aget-object v7, v7, v2

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextLong(J)V

    goto :goto_1

    :cond_6
    sget-object v7, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v3, v7, :cond_7

    iget-object v7, p0, Ljava/lang/invoke/Transformers$InsertArguments;->values:[Ljava/lang/Object;

    aget-object v7, v7, v2

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    invoke-virtual {v6, v7}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextFloat(F)V

    goto :goto_1

    :cond_7
    sget-object v7, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v3, v7, :cond_0

    iget-object v7, p0, Ljava/lang/invoke/Transformers$InsertArguments;->values:[Ljava/lang/Object;

    aget-object v7, v7, v2

    check-cast v7, Ljava/lang/Double;

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextDouble(D)V

    goto/16 :goto_1

    :cond_8
    iget-object v7, p0, Ljava/lang/invoke/Transformers$InsertArguments;->values:[Ljava/lang/Object;

    aget-object v7, v7, v2

    invoke-virtual {v6, v7, v3}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextReference(Ljava/lang/Object;Ljava/lang/Class;)V

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2

    :cond_9
    iget-object v7, p0, Ljava/lang/invoke/Transformers$InsertArguments;->range2:Ldalvik/system/EmulatedStackFrame$Range;

    if-eqz v7, :cond_a

    iget-object v7, p0, Ljava/lang/invoke/Transformers$InsertArguments;->range2:Ldalvik/system/EmulatedStackFrame$Range;

    iget-object v8, p0, Ljava/lang/invoke/Transformers$InsertArguments;->range1:Ldalvik/system/EmulatedStackFrame$Range;

    iget v8, v8, Ldalvik/system/EmulatedStackFrame$Range;->numReferences:I

    add-int/2addr v8, v5

    iget-object v9, p0, Ljava/lang/invoke/Transformers$InsertArguments;->range1:Ldalvik/system/EmulatedStackFrame$Range;

    iget v9, v9, Ldalvik/system/EmulatedStackFrame$Range;->numBytes:I

    add-int/2addr v9, v0

    invoke-virtual {p1, v1, v7, v8, v9}, Ldalvik/system/EmulatedStackFrame;->copyRangeTo(Ldalvik/system/EmulatedStackFrame;Ldalvik/system/EmulatedStackFrame$Range;II)V

    :cond_a
    iget-object v7, p0, Ljava/lang/invoke/Transformers$InsertArguments;->target:Ljava/lang/invoke/MethodHandle;

    invoke-polymorphic {v7, v1}, Ljava/lang/invoke/MethodHandle;->invoke([Ljava/lang/Object;)Ljava/lang/Object;, (Ldalvik/system/EmulatedStackFrame;)V

    invoke-virtual {v1, p1}, Ldalvik/system/EmulatedStackFrame;->copyReturnValueTo(Ldalvik/system/EmulatedStackFrame;)V

    return-void
.end method
