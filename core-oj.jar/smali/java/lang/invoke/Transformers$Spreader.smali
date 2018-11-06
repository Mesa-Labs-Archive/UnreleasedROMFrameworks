.class Ljava/lang/invoke/Transformers$Spreader;
.super Ljava/lang/invoke/Transformers$Transformer;
.source "Transformers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/invoke/Transformers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Spreader"
.end annotation


# instance fields
.field private final arrayOffset:I

.field private final arrayTypeChar:C

.field private final copyRange:Ldalvik/system/EmulatedStackFrame$Range;

.field private final numArrayArgs:I

.field private final target:Ljava/lang/invoke/MethodHandle;


# direct methods
.method constructor <init>(Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;I)V
    .locals 3

    invoke-direct {p0, p2}, Ljava/lang/invoke/Transformers$Transformer;-><init>(Ljava/lang/invoke/MethodType;)V

    iput-object p1, p0, Ljava/lang/invoke/Transformers$Spreader;->target:Ljava/lang/invoke/MethodHandle;

    invoke-virtual {p2}, Ljava/lang/invoke/MethodType;->parameterCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Ljava/lang/invoke/Transformers$Spreader;->arrayOffset:I

    invoke-virtual {p2}, Ljava/lang/invoke/MethodType;->ptypes()[Ljava/lang/Class;

    move-result-object v1

    iget v2, p0, Ljava/lang/invoke/Transformers$Spreader;->arrayOffset:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    const-string/jumbo v2, "Trailing argument must be an array."

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    :cond_0
    invoke-static {v0}, Lsun/invoke/util/Wrapper;->basicTypeChar(Ljava/lang/Class;)C

    move-result v1

    iput-char v1, p0, Ljava/lang/invoke/Transformers$Spreader;->arrayTypeChar:C

    iput p3, p0, Ljava/lang/invoke/Transformers$Spreader;->numArrayArgs:I

    iget v1, p0, Ljava/lang/invoke/Transformers$Spreader;->arrayOffset:I

    const/4 v2, 0x0

    invoke-static {p2, v2, v1}, Ldalvik/system/EmulatedStackFrame$Range;->of(Ljava/lang/invoke/MethodType;II)Ldalvik/system/EmulatedStackFrame$Range;

    move-result-object v1

    iput-object v1, p0, Ljava/lang/invoke/Transformers$Spreader;->copyRange:Ldalvik/system/EmulatedStackFrame$Range;

    return-void
.end method

.method public static spreadArray([BLdalvik/system/EmulatedStackFrame$StackFrameWriter;Ljava/lang/invoke/MethodType;II)V
    .locals 6

    invoke-virtual {p2}, Ljava/lang/invoke/MethodType;->ptypes()[Ljava/lang/Class;

    move-result-object v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p3, :cond_0

    add-int v4, v2, p4

    aget-object v0, v3, v4

    aget-byte v1, p0, v2

    invoke-static {v0}, Lsun/invoke/util/Wrapper;->basicTypeChar(Ljava/lang/Class;)C

    move-result v4

    sparse-switch v4, :sswitch_data_0

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    :sswitch_0
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-virtual {p1, v4, v0}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextReference(Ljava/lang/Object;Ljava/lang/Class;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :sswitch_1
    invoke-virtual {p1, v1}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextInt(I)V

    goto :goto_1

    :sswitch_2
    int-to-long v4, v1

    invoke-virtual {p1, v4, v5}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextLong(J)V

    goto :goto_1

    :sswitch_3
    invoke-virtual {p1, v1}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextByte(B)V

    goto :goto_1

    :sswitch_4
    int-to-short v4, v1

    invoke-virtual {p1, v4}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextShort(S)V

    goto :goto_1

    :sswitch_5
    int-to-float v4, v1

    invoke-virtual {p1, v4}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextFloat(F)V

    goto :goto_1

    :sswitch_6
    int-to-double v4, v1

    invoke-virtual {p1, v4, v5}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextDouble(D)V

    goto :goto_1

    :cond_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x42 -> :sswitch_3
        0x44 -> :sswitch_6
        0x46 -> :sswitch_5
        0x49 -> :sswitch_1
        0x4a -> :sswitch_2
        0x4c -> :sswitch_0
        0x53 -> :sswitch_4
    .end sparse-switch
.end method

.method public static spreadArray([CLdalvik/system/EmulatedStackFrame$StackFrameWriter;Ljava/lang/invoke/MethodType;II)V
    .locals 6

    invoke-virtual {p2}, Ljava/lang/invoke/MethodType;->ptypes()[Ljava/lang/Class;

    move-result-object v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p3, :cond_0

    add-int v4, v2, p4

    aget-object v0, v3, v4

    aget-char v1, p0, v2

    invoke-static {v0}, Lsun/invoke/util/Wrapper;->basicTypeChar(Ljava/lang/Class;)C

    move-result v4

    packed-switch v4, :pswitch_data_0

    :pswitch_0
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    :pswitch_1
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-virtual {p1, v4, v0}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextReference(Ljava/lang/Object;Ljava/lang/Class;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :pswitch_2
    invoke-virtual {p1, v1}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextInt(I)V

    goto :goto_1

    :pswitch_3
    int-to-long v4, v1

    invoke-virtual {p1, v4, v5}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextLong(J)V

    goto :goto_1

    :pswitch_4
    invoke-virtual {p1, v1}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextChar(C)V

    goto :goto_1

    :pswitch_5
    int-to-float v4, v1

    invoke-virtual {p1, v4}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextFloat(F)V

    goto :goto_1

    :pswitch_6
    int-to-double v4, v1

    invoke-virtual {p1, v4, v5}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextDouble(D)V

    goto :goto_1

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x43
        :pswitch_4
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static spreadArray([DLdalvik/system/EmulatedStackFrame$StackFrameWriter;Ljava/lang/invoke/MethodType;II)V
    .locals 6

    invoke-virtual {p2}, Ljava/lang/invoke/MethodType;->ptypes()[Ljava/lang/Class;

    move-result-object v4

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p3, :cond_0

    add-int v5, v1, p4

    aget-object v0, v4, v5

    aget-wide v2, p0, v1

    invoke-static {v0}, Lsun/invoke/util/Wrapper;->basicTypeChar(Ljava/lang/Class;)C

    move-result v5

    sparse-switch v5, :sswitch_data_0

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    :sswitch_0
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {p1, v5, v0}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextReference(Ljava/lang/Object;Ljava/lang/Class;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :sswitch_1
    invoke-virtual {p1, v2, v3}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextDouble(D)V

    goto :goto_1

    :cond_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x44 -> :sswitch_1
        0x4c -> :sswitch_0
    .end sparse-switch
.end method

.method public static spreadArray([FLdalvik/system/EmulatedStackFrame$StackFrameWriter;Ljava/lang/invoke/MethodType;II)V
    .locals 6

    invoke-virtual {p2}, Ljava/lang/invoke/MethodType;->ptypes()[Ljava/lang/Class;

    move-result-object v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p3, :cond_0

    add-int v4, v2, p4

    aget-object v0, v3, v4

    aget v1, p0, v2

    invoke-static {v0}, Lsun/invoke/util/Wrapper;->basicTypeChar(Ljava/lang/Class;)C

    move-result v4

    sparse-switch v4, :sswitch_data_0

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    :sswitch_0
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {p1, v4, v0}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextReference(Ljava/lang/Object;Ljava/lang/Class;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :sswitch_1
    float-to-double v4, v1

    invoke-virtual {p1, v4, v5}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextDouble(D)V

    goto :goto_1

    :sswitch_2
    invoke-virtual {p1, v1}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextFloat(F)V

    goto :goto_1

    :cond_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x44 -> :sswitch_1
        0x46 -> :sswitch_2
        0x4c -> :sswitch_0
    .end sparse-switch
.end method

.method public static spreadArray([ILdalvik/system/EmulatedStackFrame$StackFrameWriter;Ljava/lang/invoke/MethodType;II)V
    .locals 6

    invoke-virtual {p2}, Ljava/lang/invoke/MethodType;->ptypes()[Ljava/lang/Class;

    move-result-object v3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p3, :cond_0

    add-int v4, v1, p4

    aget-object v0, v3, v4

    aget v2, p0, v1

    invoke-static {v0}, Lsun/invoke/util/Wrapper;->basicTypeChar(Ljava/lang/Class;)C

    move-result v4

    packed-switch v4, :pswitch_data_0

    :pswitch_0
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    :pswitch_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v4, v0}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextReference(Ljava/lang/Object;Ljava/lang/Class;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :pswitch_2
    invoke-virtual {p1, v2}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextInt(I)V

    goto :goto_1

    :pswitch_3
    int-to-long v4, v2

    invoke-virtual {p1, v4, v5}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextLong(J)V

    goto :goto_1

    :pswitch_4
    int-to-float v4, v2

    invoke-virtual {p1, v4}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextFloat(F)V

    goto :goto_1

    :pswitch_5
    int-to-double v4, v2

    invoke-virtual {p1, v4, v5}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextDouble(D)V

    goto :goto_1

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x44
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static spreadArray([JLdalvik/system/EmulatedStackFrame$StackFrameWriter;Ljava/lang/invoke/MethodType;II)V
    .locals 8

    invoke-virtual {p2}, Ljava/lang/invoke/MethodType;->ptypes()[Ljava/lang/Class;

    move-result-object v4

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p3, :cond_0

    add-int v5, v1, p4

    aget-object v0, v4, v5

    aget-wide v2, p0, v1

    invoke-static {v0}, Lsun/invoke/util/Wrapper;->basicTypeChar(Ljava/lang/Class;)C

    move-result v5

    packed-switch v5, :pswitch_data_0

    :pswitch_0
    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    :pswitch_1
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {p1, v5, v0}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextReference(Ljava/lang/Object;Ljava/lang/Class;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :pswitch_2
    invoke-virtual {p1, v2, v3}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextLong(J)V

    goto :goto_1

    :pswitch_3
    long-to-float v5, v2

    invoke-virtual {p1, v5}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextFloat(F)V

    goto :goto_1

    :pswitch_4
    long-to-double v6, v2

    invoke-virtual {p1, v6, v7}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextDouble(D)V

    goto :goto_1

    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x44
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static spreadArray([Ljava/lang/Object;Ldalvik/system/EmulatedStackFrame$StackFrameWriter;Ljava/lang/invoke/MethodType;II)V
    .locals 6

    invoke-virtual {p2}, Ljava/lang/invoke/MethodType;->ptypes()[Ljava/lang/Class;

    move-result-object v3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p3, :cond_0

    add-int v4, v1, p4

    aget-object v0, v3, v4

    aget-object v2, p0, v1

    invoke-static {v0}, Lsun/invoke/util/Wrapper;->basicTypeChar(Ljava/lang/Class;)C

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :sswitch_0
    invoke-virtual {p1, v2, v0}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextReference(Ljava/lang/Object;Ljava/lang/Class;)V

    goto :goto_1

    :sswitch_1
    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p1, v4}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextInt(I)V

    goto :goto_1

    :sswitch_2
    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextLong(J)V

    goto :goto_1

    :sswitch_3
    check-cast v2, Ljava/lang/Byte;

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v4

    invoke-virtual {p1, v4}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextByte(B)V

    goto :goto_1

    :sswitch_4
    check-cast v2, Ljava/lang/Short;

    invoke-virtual {v2}, Ljava/lang/Short;->shortValue()S

    move-result v4

    invoke-virtual {p1, v4}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextShort(S)V

    goto :goto_1

    :sswitch_5
    check-cast v2, Ljava/lang/Character;

    invoke-virtual {v2}, Ljava/lang/Character;->charValue()C

    move-result v4

    invoke-virtual {p1, v4}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextChar(C)V

    goto :goto_1

    :sswitch_6
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {p1, v4}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextBoolean(Z)V

    goto :goto_1

    :sswitch_7
    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-virtual {p1, v4}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextFloat(F)V

    goto :goto_1

    :sswitch_8
    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextDouble(D)V

    goto :goto_1

    :cond_0
    return-void

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

.method public static spreadArray([SLdalvik/system/EmulatedStackFrame$StackFrameWriter;Ljava/lang/invoke/MethodType;II)V
    .locals 6

    invoke-virtual {p2}, Ljava/lang/invoke/MethodType;->ptypes()[Ljava/lang/Class;

    move-result-object v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p3, :cond_0

    add-int v4, v1, p4

    aget-object v0, v2, v4

    aget-short v3, p0, v1

    invoke-static {v0}, Lsun/invoke/util/Wrapper;->basicTypeChar(Ljava/lang/Class;)C

    move-result v4

    sparse-switch v4, :sswitch_data_0

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    :sswitch_0
    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v4

    invoke-virtual {p1, v4, v0}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextReference(Ljava/lang/Object;Ljava/lang/Class;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :sswitch_1
    invoke-virtual {p1, v3}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextInt(I)V

    goto :goto_1

    :sswitch_2
    int-to-long v4, v3

    invoke-virtual {p1, v4, v5}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextLong(J)V

    goto :goto_1

    :sswitch_3
    invoke-virtual {p1, v3}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextShort(S)V

    goto :goto_1

    :sswitch_4
    int-to-float v4, v3

    invoke-virtual {p1, v4}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextFloat(F)V

    goto :goto_1

    :sswitch_5
    int-to-double v4, v3

    invoke-virtual {p1, v4, v5}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextDouble(D)V

    goto :goto_1

    :cond_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x44 -> :sswitch_5
        0x46 -> :sswitch_4
        0x49 -> :sswitch_1
        0x4a -> :sswitch_2
        0x4c -> :sswitch_0
        0x53 -> :sswitch_3
    .end sparse-switch
.end method

.method public static spreadArray([ZLdalvik/system/EmulatedStackFrame$StackFrameWriter;Ljava/lang/invoke/MethodType;II)V
    .locals 5

    invoke-virtual {p2}, Ljava/lang/invoke/MethodType;->ptypes()[Ljava/lang/Class;

    move-result-object v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p3, :cond_0

    add-int v4, v1, p4

    aget-object v0, v2, v4

    aget-boolean v3, p0, v1

    invoke-static {v0}, Lsun/invoke/util/Wrapper;->basicTypeChar(Ljava/lang/Class;)C

    move-result v4

    sparse-switch v4, :sswitch_data_0

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    :sswitch_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p1, v4, v0}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextReference(Ljava/lang/Object;Ljava/lang/Class;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :sswitch_1
    invoke-virtual {p1, v3}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextBoolean(Z)V

    goto :goto_1

    :cond_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x4c -> :sswitch_0
        0x5a -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method public transform(Ldalvik/system/EmulatedStackFrame;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v6, 0x0

    iget-object v5, p0, Ljava/lang/invoke/Transformers$Spreader;->target:Ljava/lang/invoke/MethodHandle;

    invoke-virtual {v5}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v5

    invoke-static {v5}, Ldalvik/system/EmulatedStackFrame;->create(Ljava/lang/invoke/MethodType;)Ldalvik/system/EmulatedStackFrame;

    move-result-object v2

    iget-object v5, p0, Ljava/lang/invoke/Transformers$Spreader;->copyRange:Ldalvik/system/EmulatedStackFrame$Range;

    invoke-virtual {p1, v2, v5, v6, v6}, Ldalvik/system/EmulatedStackFrame;->copyRangeTo(Ldalvik/system/EmulatedStackFrame;Ldalvik/system/EmulatedStackFrame$Range;II)V

    new-instance v4, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;

    invoke-direct {v4}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;-><init>()V

    iget v5, p0, Ljava/lang/invoke/Transformers$Spreader;->arrayOffset:I

    iget-object v6, p0, Ljava/lang/invoke/Transformers$Spreader;->copyRange:Ldalvik/system/EmulatedStackFrame$Range;

    iget v6, v6, Ldalvik/system/EmulatedStackFrame$Range;->numReferences:I

    iget-object v7, p0, Ljava/lang/invoke/Transformers$Spreader;->copyRange:Ldalvik/system/EmulatedStackFrame$Range;

    iget v7, v7, Ldalvik/system/EmulatedStackFrame$Range;->numBytes:I

    invoke-virtual {v4, v2, v5, v6, v7}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->attach(Ldalvik/system/EmulatedStackFrame;III)Ldalvik/system/EmulatedStackFrame$StackFrameAccessor;

    iget-object v5, p0, Ljava/lang/invoke/Transformers$Spreader;->copyRange:Ldalvik/system/EmulatedStackFrame$Range;

    iget v5, v5, Ldalvik/system/EmulatedStackFrame$Range;->numReferences:I

    invoke-virtual {p0}, Ljava/lang/invoke/Transformers$Spreader;->type()Ljava/lang/invoke/MethodType;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/invoke/MethodType;->ptypes()[Ljava/lang/Class;

    move-result-object v6

    iget v7, p0, Ljava/lang/invoke/Transformers$Spreader;->arrayOffset:I

    aget-object v6, v6, v7

    invoke-virtual {p1, v5, v6}, Ldalvik/system/EmulatedStackFrame;->getReference(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    iget v5, p0, Ljava/lang/invoke/Transformers$Spreader;->numArrayArgs:I

    if-eq v0, v5, :cond_0

    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Invalid array length: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_0
    iget-object v5, p0, Ljava/lang/invoke/Transformers$Spreader;->target:Ljava/lang/invoke/MethodHandle;

    invoke-virtual {v5}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v3

    iget-char v5, p0, Ljava/lang/invoke/Transformers$Spreader;->arrayTypeChar:C

    sparse-switch v5, :sswitch_data_0

    :goto_0
    iget-object v5, p0, Ljava/lang/invoke/Transformers$Spreader;->target:Ljava/lang/invoke/MethodHandle;

    invoke-polymorphic {v5, v2}, Ljava/lang/invoke/MethodHandle;->invoke([Ljava/lang/Object;)Ljava/lang/Object;, (Ldalvik/system/EmulatedStackFrame;)V

    invoke-virtual {v2, p1}, Ldalvik/system/EmulatedStackFrame;->copyReturnValueTo(Ldalvik/system/EmulatedStackFrame;)V

    return-void

    :sswitch_0
    check-cast v1, [Ljava/lang/Object;

    iget v5, p0, Ljava/lang/invoke/Transformers$Spreader;->numArrayArgs:I

    iget v6, p0, Ljava/lang/invoke/Transformers$Spreader;->arrayOffset:I

    invoke-static {v1, v4, v3, v5, v6}, Ljava/lang/invoke/Transformers$Spreader;->spreadArray([Ljava/lang/Object;Ldalvik/system/EmulatedStackFrame$StackFrameWriter;Ljava/lang/invoke/MethodType;II)V

    goto :goto_0

    :sswitch_1
    check-cast v1, [I

    iget v5, p0, Ljava/lang/invoke/Transformers$Spreader;->numArrayArgs:I

    iget v6, p0, Ljava/lang/invoke/Transformers$Spreader;->arrayOffset:I

    invoke-static {v1, v4, v3, v5, v6}, Ljava/lang/invoke/Transformers$Spreader;->spreadArray([ILdalvik/system/EmulatedStackFrame$StackFrameWriter;Ljava/lang/invoke/MethodType;II)V

    goto :goto_0

    :sswitch_2
    check-cast v1, [J

    iget v5, p0, Ljava/lang/invoke/Transformers$Spreader;->numArrayArgs:I

    iget v6, p0, Ljava/lang/invoke/Transformers$Spreader;->arrayOffset:I

    invoke-static {v1, v4, v3, v5, v6}, Ljava/lang/invoke/Transformers$Spreader;->spreadArray([JLdalvik/system/EmulatedStackFrame$StackFrameWriter;Ljava/lang/invoke/MethodType;II)V

    goto :goto_0

    :sswitch_3
    check-cast v1, [B

    iget v5, p0, Ljava/lang/invoke/Transformers$Spreader;->numArrayArgs:I

    iget v6, p0, Ljava/lang/invoke/Transformers$Spreader;->arrayOffset:I

    invoke-static {v1, v4, v3, v5, v6}, Ljava/lang/invoke/Transformers$Spreader;->spreadArray([BLdalvik/system/EmulatedStackFrame$StackFrameWriter;Ljava/lang/invoke/MethodType;II)V

    goto :goto_0

    :sswitch_4
    check-cast v1, [S

    iget v5, p0, Ljava/lang/invoke/Transformers$Spreader;->numArrayArgs:I

    iget v6, p0, Ljava/lang/invoke/Transformers$Spreader;->arrayOffset:I

    invoke-static {v1, v4, v3, v5, v6}, Ljava/lang/invoke/Transformers$Spreader;->spreadArray([SLdalvik/system/EmulatedStackFrame$StackFrameWriter;Ljava/lang/invoke/MethodType;II)V

    goto :goto_0

    :sswitch_5
    check-cast v1, [C

    iget v5, p0, Ljava/lang/invoke/Transformers$Spreader;->numArrayArgs:I

    iget v6, p0, Ljava/lang/invoke/Transformers$Spreader;->arrayOffset:I

    invoke-static {v1, v4, v3, v5, v6}, Ljava/lang/invoke/Transformers$Spreader;->spreadArray([CLdalvik/system/EmulatedStackFrame$StackFrameWriter;Ljava/lang/invoke/MethodType;II)V

    goto :goto_0

    :sswitch_6
    check-cast v1, [Z

    iget v5, p0, Ljava/lang/invoke/Transformers$Spreader;->numArrayArgs:I

    iget v6, p0, Ljava/lang/invoke/Transformers$Spreader;->arrayOffset:I

    invoke-static {v1, v4, v3, v5, v6}, Ljava/lang/invoke/Transformers$Spreader;->spreadArray([ZLdalvik/system/EmulatedStackFrame$StackFrameWriter;Ljava/lang/invoke/MethodType;II)V

    goto :goto_0

    :sswitch_7
    check-cast v1, [F

    iget v5, p0, Ljava/lang/invoke/Transformers$Spreader;->numArrayArgs:I

    iget v6, p0, Ljava/lang/invoke/Transformers$Spreader;->arrayOffset:I

    invoke-static {v1, v4, v3, v5, v6}, Ljava/lang/invoke/Transformers$Spreader;->spreadArray([FLdalvik/system/EmulatedStackFrame$StackFrameWriter;Ljava/lang/invoke/MethodType;II)V

    goto :goto_0

    :sswitch_8
    check-cast v1, [D

    iget v5, p0, Ljava/lang/invoke/Transformers$Spreader;->numArrayArgs:I

    iget v6, p0, Ljava/lang/invoke/Transformers$Spreader;->arrayOffset:I

    invoke-static {v1, v4, v3, v5, v6}, Ljava/lang/invoke/Transformers$Spreader;->spreadArray([DLdalvik/system/EmulatedStackFrame$StackFrameWriter;Ljava/lang/invoke/MethodType;II)V

    goto :goto_0

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
