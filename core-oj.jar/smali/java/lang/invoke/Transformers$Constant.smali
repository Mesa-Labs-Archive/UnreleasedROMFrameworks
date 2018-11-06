.class public Ljava/lang/invoke/Transformers$Constant;
.super Ljava/lang/invoke/Transformers$Transformer;
.source "Transformers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/invoke/Transformers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Constant"
.end annotation


# instance fields
.field private asDouble:D

.field private asFloat:F

.field private asInt:I

.field private asLong:J

.field private asReference:Ljava/lang/Object;

.field private final type:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private typeChar:C


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    invoke-static {p1}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/invoke/Transformers$Transformer;-><init>(Ljava/lang/invoke/MethodType;)V

    iput-object p1, p0, Ljava/lang/invoke/Transformers$Constant;->type:Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p2, p0, Ljava/lang/invoke/Transformers$Constant;->asReference:Ljava/lang/Object;

    const/16 v0, 0x4c

    iput-char v0, p0, Ljava/lang/invoke/Transformers$Constant;->typeChar:C

    :goto_0
    return-void

    :cond_0
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_1

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Ljava/lang/invoke/Transformers$Constant;->asInt:I

    const/16 v0, 0x49

    iput-char v0, p0, Ljava/lang/invoke/Transformers$Constant;->typeChar:C

    goto :goto_0

    :cond_1
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_2

    check-cast p2, Ljava/lang/Character;

    invoke-virtual {p2}, Ljava/lang/Character;->charValue()C

    move-result v0

    iput v0, p0, Ljava/lang/invoke/Transformers$Constant;->asInt:I

    const/16 v0, 0x43

    iput-char v0, p0, Ljava/lang/invoke/Transformers$Constant;->typeChar:C

    goto :goto_0

    :cond_2
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_3

    check-cast p2, Ljava/lang/Short;

    invoke-virtual {p2}, Ljava/lang/Short;->shortValue()S

    move-result v0

    iput v0, p0, Ljava/lang/invoke/Transformers$Constant;->asInt:I

    const/16 v0, 0x53

    iput-char v0, p0, Ljava/lang/invoke/Transformers$Constant;->typeChar:C

    goto :goto_0

    :cond_3
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_4

    check-cast p2, Ljava/lang/Byte;

    invoke-virtual {p2}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    iput v0, p0, Ljava/lang/invoke/Transformers$Constant;->asInt:I

    const/16 v0, 0x42

    iput-char v0, p0, Ljava/lang/invoke/Transformers$Constant;->typeChar:C

    goto :goto_0

    :cond_4
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_6

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    :goto_1
    iput v0, p0, Ljava/lang/invoke/Transformers$Constant;->asInt:I

    const/16 v0, 0x5a

    iput-char v0, p0, Ljava/lang/invoke/Transformers$Constant;->typeChar:C

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    goto :goto_1

    :cond_6
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_7

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Ljava/lang/invoke/Transformers$Constant;->asLong:J

    const/16 v0, 0x4a

    iput-char v0, p0, Ljava/lang/invoke/Transformers$Constant;->typeChar:C

    goto :goto_0

    :cond_7
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_8

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Ljava/lang/invoke/Transformers$Constant;->asFloat:F

    const/16 v0, 0x46

    iput-char v0, p0, Ljava/lang/invoke/Transformers$Constant;->typeChar:C

    goto :goto_0

    :cond_8
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_9

    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    iput-wide v0, p0, Ljava/lang/invoke/Transformers$Constant;->asDouble:D

    const/16 v0, 0x44

    iput-char v0, p0, Ljava/lang/invoke/Transformers$Constant;->typeChar:C

    goto/16 :goto_0

    :cond_9
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-char v2, p0, Ljava/lang/invoke/Transformers$Constant;->typeChar:C

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method


# virtual methods
.method public transform(Ldalvik/system/EmulatedStackFrame;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v1, 0x1

    new-instance v0, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;

    invoke-direct {v0}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;-><init>()V

    invoke-virtual {v0, p1}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->attach(Ldalvik/system/EmulatedStackFrame;)Ldalvik/system/EmulatedStackFrame$StackFrameAccessor;

    invoke-virtual {v0}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->makeReturnValueAccessor()V

    iget-char v2, p0, Ljava/lang/invoke/Transformers$Constant;->typeChar:C

    sparse-switch v2, :sswitch_data_0

    new-instance v1, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unexpected typeChar: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-char v3, p0, Ljava/lang/invoke/Transformers$Constant;->typeChar:C

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    :sswitch_0
    iget-object v1, p0, Ljava/lang/invoke/Transformers$Constant;->asReference:Ljava/lang/Object;

    iget-object v2, p0, Ljava/lang/invoke/Transformers$Constant;->type:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextReference(Ljava/lang/Object;Ljava/lang/Class;)V

    :goto_0
    return-void

    :sswitch_1
    iget v1, p0, Ljava/lang/invoke/Transformers$Constant;->asInt:I

    invoke-virtual {v0, v1}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextInt(I)V

    goto :goto_0

    :sswitch_2
    iget v1, p0, Ljava/lang/invoke/Transformers$Constant;->asInt:I

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextChar(C)V

    goto :goto_0

    :sswitch_3
    iget v1, p0, Ljava/lang/invoke/Transformers$Constant;->asInt:I

    int-to-short v1, v1

    invoke-virtual {v0, v1}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextShort(S)V

    goto :goto_0

    :sswitch_4
    iget v1, p0, Ljava/lang/invoke/Transformers$Constant;->asInt:I

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextByte(B)V

    goto :goto_0

    :sswitch_5
    iget v2, p0, Ljava/lang/invoke/Transformers$Constant;->asInt:I

    if-ne v2, v1, :cond_0

    :goto_1
    invoke-virtual {v0, v1}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextBoolean(Z)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :sswitch_6
    iget-wide v2, p0, Ljava/lang/invoke/Transformers$Constant;->asLong:J

    invoke-virtual {v0, v2, v3}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextLong(J)V

    goto :goto_0

    :sswitch_7
    iget v1, p0, Ljava/lang/invoke/Transformers$Constant;->asFloat:F

    invoke-virtual {v0, v1}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextFloat(F)V

    goto :goto_0

    :sswitch_8
    iget-wide v2, p0, Ljava/lang/invoke/Transformers$Constant;->asDouble:D

    invoke-virtual {v0, v2, v3}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextDouble(D)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x42 -> :sswitch_4
        0x43 -> :sswitch_2
        0x44 -> :sswitch_8
        0x46 -> :sswitch_7
        0x49 -> :sswitch_1
        0x4a -> :sswitch_6
        0x4c -> :sswitch_0
        0x53 -> :sswitch_3
        0x5a -> :sswitch_5
    .end sparse-switch
.end method
