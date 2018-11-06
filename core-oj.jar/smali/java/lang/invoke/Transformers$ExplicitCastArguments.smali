.class public Ljava/lang/invoke/Transformers$ExplicitCastArguments;
.super Ljava/lang/invoke/Transformers$Transformer;
.source "Transformers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/invoke/Transformers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExplicitCastArguments"
.end annotation


# instance fields
.field private final target:Ljava/lang/invoke/MethodHandle;


# direct methods
.method public constructor <init>(Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;)V
    .locals 0

    invoke-direct {p0, p2}, Ljava/lang/invoke/Transformers$Transformer;-><init>(Ljava/lang/invoke/MethodType;)V

    iput-object p1, p0, Ljava/lang/invoke/Transformers$ExplicitCastArguments;->target:Ljava/lang/invoke/MethodHandle;

    return-void
.end method

.method private static box(Ldalvik/system/EmulatedStackFrame$StackFrameReader;Ljava/lang/Class;Ldalvik/system/EmulatedStackFrame$StackFrameWriter;Ljava/lang/Class;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldalvik/system/EmulatedStackFrame$StackFrameReader;",
            "Ljava/lang/Class",
            "<*>;",
            "Ldalvik/system/EmulatedStackFrame$StackFrameWriter;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p1, v1, :cond_0

    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextBoolean()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    invoke-virtual {p3, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v1, p3}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextReference(Ljava/lang/Object;Ljava/lang/Class;)V

    return-void

    :cond_0
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p1, v1, :cond_1

    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextByte()B

    move-result v1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    goto :goto_0

    :cond_1
    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p1, v1, :cond_2

    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextChar()C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    goto :goto_0

    :cond_2
    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p1, v1, :cond_3

    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextShort()S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    goto :goto_0

    :cond_3
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p1, v1, :cond_4

    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_4
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p1, v1, :cond_5

    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextLong()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    :cond_5
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p1, v1, :cond_6

    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextFloat()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0

    :cond_6
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p1, v1, :cond_7

    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextDouble()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_0

    :cond_7
    invoke-static {p1}, Ljava/lang/invoke/Transformers$ExplicitCastArguments;->throwUnexpectedType(Ljava/lang/Class;)V

    goto :goto_0
.end method

.method private static explicitCast(Ldalvik/system/EmulatedStackFrame$StackFrameReader;Ljava/lang/Class;Ldalvik/system/EmulatedStackFrame$StackFrameWriter;Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldalvik/system/EmulatedStackFrame$StackFrameReader;",
            "Ljava/lang/Class",
            "<*>;",
            "Ldalvik/system/EmulatedStackFrame$StackFrameWriter;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    invoke-virtual {p1, p3}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0, p2, p1}, Ldalvik/system/EmulatedStackFrame$StackFrameAccessor;->copyNext(Ldalvik/system/EmulatedStackFrame$StackFrameReader;Ldalvik/system/EmulatedStackFrame$StackFrameWriter;Ljava/lang/Class;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0, p1}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextReference(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p3}, Ljava/lang/Class;->isInterface()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p2, v0, p3}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextReference(Ljava/lang/Object;Ljava/lang/Class;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p3}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p3, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v1, p3}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextReference(Ljava/lang/Object;Ljava/lang/Class;)V

    goto :goto_0

    :cond_2
    invoke-static {v0, p1, p2, p3}, Ljava/lang/invoke/Transformers$ExplicitCastArguments;->unbox(Ljava/lang/Object;Ljava/lang/Class;Ldalvik/system/EmulatedStackFrame$StackFrameWriter;Ljava/lang/Class;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p3}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_6

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p1, v1, :cond_4

    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextBoolean()Z

    move-result v1

    invoke-static {v1, p2, p3}, Ljava/lang/invoke/Transformers$ExplicitCastArguments;->explicitCastFromBoolean(ZLdalvik/system/EmulatedStackFrame$StackFrameWriter;Ljava/lang/Class;)V

    goto :goto_0

    :cond_4
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p3, v1, :cond_5

    invoke-static {p0, p1, p2}, Ljava/lang/invoke/Transformers$ExplicitCastArguments;->explicitCastToBoolean(Ldalvik/system/EmulatedStackFrame$StackFrameReader;Ljava/lang/Class;Ldalvik/system/EmulatedStackFrame$StackFrameWriter;)V

    goto :goto_0

    :cond_5
    invoke-static {p0, p1, p2, p3}, Ljava/lang/invoke/Transformers$ExplicitCastArguments;->explicitCastPrimitives(Ldalvik/system/EmulatedStackFrame$StackFrameReader;Ljava/lang/Class;Ldalvik/system/EmulatedStackFrame$StackFrameWriter;Ljava/lang/Class;)V

    goto :goto_0

    :cond_6
    invoke-static {p0, p1, p2, p3}, Ljava/lang/invoke/Transformers$ExplicitCastArguments;->box(Ldalvik/system/EmulatedStackFrame$StackFrameReader;Ljava/lang/Class;Ldalvik/system/EmulatedStackFrame$StackFrameWriter;Ljava/lang/Class;)V

    goto :goto_0
.end method

.method private explicitCastArguments(Ldalvik/system/EmulatedStackFrame;Ldalvik/system/EmulatedStackFrame;)V
    .locals 7

    new-instance v2, Ldalvik/system/EmulatedStackFrame$StackFrameReader;

    invoke-direct {v2}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;-><init>()V

    invoke-virtual {v2, p1}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->attach(Ldalvik/system/EmulatedStackFrame;)Ldalvik/system/EmulatedStackFrame$StackFrameAccessor;

    new-instance v4, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;

    invoke-direct {v4}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;-><init>()V

    invoke-virtual {v4, p2}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->attach(Ldalvik/system/EmulatedStackFrame;)Ldalvik/system/EmulatedStackFrame$StackFrameAccessor;

    invoke-virtual {p0}, Ljava/lang/invoke/Transformers$ExplicitCastArguments;->type()Ljava/lang/invoke/MethodType;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/invoke/MethodType;->ptypes()[Ljava/lang/Class;

    move-result-object v0

    iget-object v5, p0, Ljava/lang/invoke/Transformers$ExplicitCastArguments;->target:Ljava/lang/invoke/MethodHandle;

    invoke-virtual {v5}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/invoke/MethodType;->ptypes()[Ljava/lang/Class;

    move-result-object v3

    const/4 v1, 0x0

    :goto_0
    array-length v5, v0

    if-ge v1, v5, :cond_0

    aget-object v5, v0, v1

    aget-object v6, v3, v1

    invoke-static {v2, v5, v4, v6}, Ljava/lang/invoke/Transformers$ExplicitCastArguments;->explicitCast(Ldalvik/system/EmulatedStackFrame$StackFrameReader;Ljava/lang/Class;Ldalvik/system/EmulatedStackFrame$StackFrameWriter;Ljava/lang/Class;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static explicitCastFromBoolean(ZLdalvik/system/EmulatedStackFrame$StackFrameWriter;Ljava/lang/Class;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ldalvik/system/EmulatedStackFrame$StackFrameWriter;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p2, v1, :cond_1

    int-to-byte v1, v0

    invoke-virtual {p1, v1}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextByte(B)V

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p2, v1, :cond_2

    int-to-char v1, v0

    invoke-virtual {p1, v1}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextChar(C)V

    goto :goto_1

    :cond_2
    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p2, v1, :cond_3

    int-to-short v1, v0

    invoke-virtual {p1, v1}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextShort(S)V

    goto :goto_1

    :cond_3
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p2, v1, :cond_4

    invoke-virtual {p1, v0}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextInt(I)V

    goto :goto_1

    :cond_4
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p2, v1, :cond_5

    int-to-long v2, v0

    invoke-virtual {p1, v2, v3}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextLong(J)V

    goto :goto_1

    :cond_5
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p2, v1, :cond_6

    int-to-float v1, v0

    invoke-virtual {p1, v1}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextFloat(F)V

    goto :goto_1

    :cond_6
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p2, v1, :cond_7

    int-to-double v2, v0

    invoke-virtual {p1, v2, v3}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextDouble(D)V

    goto :goto_1

    :cond_7
    invoke-static {p2}, Ljava/lang/invoke/Transformers$ExplicitCastArguments;->throwUnexpectedType(Ljava/lang/Class;)V

    goto :goto_1
.end method

.method private static explicitCastPrimitives(Ldalvik/system/EmulatedStackFrame$StackFrameReader;Ljava/lang/Class;Ldalvik/system/EmulatedStackFrame$StackFrameWriter;Ljava/lang/Class;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldalvik/system/EmulatedStackFrame$StackFrameReader;",
            "Ljava/lang/Class",
            "<*>;",
            "Ldalvik/system/EmulatedStackFrame$StackFrameWriter;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    sget-object v9, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p3, v9, :cond_0

    invoke-static {p0, p1}, Ljava/lang/invoke/Transformers$ExplicitCastArguments;->readPrimitiveAsByte(Ldalvik/system/EmulatedStackFrame$StackFrameReader;Ljava/lang/Class;)B

    move-result v0

    invoke-virtual {p2, v0}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextByte(B)V

    :goto_0
    return-void

    :cond_0
    sget-object v9, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p3, v9, :cond_1

    invoke-static {p0, p1}, Ljava/lang/invoke/Transformers$ExplicitCastArguments;->readPrimitiveAsChar(Ldalvik/system/EmulatedStackFrame$StackFrameReader;Ljava/lang/Class;)C

    move-result v1

    invoke-virtual {p2, v1}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextChar(C)V

    goto :goto_0

    :cond_1
    sget-object v9, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p3, v9, :cond_2

    invoke-static {p0, p1}, Ljava/lang/invoke/Transformers$ExplicitCastArguments;->readPrimitiveAsShort(Ldalvik/system/EmulatedStackFrame$StackFrameReader;Ljava/lang/Class;)S

    move-result v8

    invoke-virtual {p2, v8}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextShort(S)V

    goto :goto_0

    :cond_2
    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p3, v9, :cond_3

    invoke-static {p0, p1}, Ljava/lang/invoke/Transformers$ExplicitCastArguments;->readPrimitiveAsInt(Ldalvik/system/EmulatedStackFrame$StackFrameReader;Ljava/lang/Class;)I

    move-result v5

    invoke-virtual {p2, v5}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextInt(I)V

    goto :goto_0

    :cond_3
    sget-object v9, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p3, v9, :cond_4

    invoke-static {p0, p1}, Ljava/lang/invoke/Transformers$ExplicitCastArguments;->readPrimitiveAsLong(Ldalvik/system/EmulatedStackFrame$StackFrameReader;Ljava/lang/Class;)J

    move-result-wide v6

    invoke-virtual {p2, v6, v7}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextLong(J)V

    goto :goto_0

    :cond_4
    sget-object v9, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p3, v9, :cond_5

    invoke-static {p0, p1}, Ljava/lang/invoke/Transformers$ExplicitCastArguments;->readPrimitiveAsFloat(Ldalvik/system/EmulatedStackFrame$StackFrameReader;Ljava/lang/Class;)F

    move-result v4

    invoke-virtual {p2, v4}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextFloat(F)V

    goto :goto_0

    :cond_5
    sget-object v9, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p3, v9, :cond_6

    invoke-static {p0, p1}, Ljava/lang/invoke/Transformers$ExplicitCastArguments;->readPrimitiveAsDouble(Ldalvik/system/EmulatedStackFrame$StackFrameReader;Ljava/lang/Class;)D

    move-result-wide v2

    invoke-virtual {p2, v2, v3}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextDouble(D)V

    goto :goto_0

    :cond_6
    invoke-static {p3}, Ljava/lang/invoke/Transformers$ExplicitCastArguments;->throwUnexpectedType(Ljava/lang/Class;)V

    goto :goto_0
.end method

.method private explicitCastReturnValue(Ldalvik/system/EmulatedStackFrame;Ldalvik/system/EmulatedStackFrame;)V
    .locals 6

    iget-object v4, p0, Ljava/lang/invoke/Transformers$ExplicitCastArguments;->target:Ljava/lang/invoke/MethodHandle;

    invoke-virtual {v4}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/invoke/MethodType;->rtype()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/invoke/Transformers$ExplicitCastArguments;->type()Ljava/lang/invoke/MethodType;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/invoke/MethodType;->rtype()Ljava/lang/Class;

    move-result-object v2

    sget-object v4, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-eq v2, v4, :cond_0

    new-instance v3, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;

    invoke-direct {v3}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;-><init>()V

    invoke-virtual {v3, p1}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->attach(Ldalvik/system/EmulatedStackFrame;)Ldalvik/system/EmulatedStackFrame$StackFrameAccessor;

    invoke-virtual {v3}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->makeReturnValueAccessor()V

    sget-object v4, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne v0, v4, :cond_2

    invoke-virtual {v2}, Ljava/lang/Class;->isPrimitive()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {v3, v2}, Ljava/lang/invoke/Transformers$ExplicitCastArguments;->unboxNull(Ldalvik/system/EmulatedStackFrame$StackFrameWriter;Ljava/lang/Class;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v4, 0x0

    invoke-virtual {v3, v4, v2}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextReference(Ljava/lang/Object;Ljava/lang/Class;)V

    goto :goto_0

    :cond_2
    new-instance v1, Ldalvik/system/EmulatedStackFrame$StackFrameReader;

    invoke-direct {v1}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;-><init>()V

    invoke-virtual {v1, p2}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->attach(Ldalvik/system/EmulatedStackFrame;)Ldalvik/system/EmulatedStackFrame$StackFrameAccessor;

    invoke-virtual {v1}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->makeReturnValueAccessor()V

    iget-object v4, p0, Ljava/lang/invoke/Transformers$ExplicitCastArguments;->target:Ljava/lang/invoke/MethodHandle;

    invoke-virtual {v4}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/invoke/MethodType;->rtype()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {p0}, Ljava/lang/invoke/Transformers$ExplicitCastArguments;->type()Ljava/lang/invoke/MethodType;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/invoke/MethodType;->rtype()Ljava/lang/Class;

    move-result-object v5

    invoke-static {v1, v4, v3, v5}, Ljava/lang/invoke/Transformers$ExplicitCastArguments;->explicitCast(Ldalvik/system/EmulatedStackFrame$StackFrameReader;Ljava/lang/Class;Ldalvik/system/EmulatedStackFrame$StackFrameWriter;Ljava/lang/Class;)V

    goto :goto_0
.end method

.method private static explicitCastToBoolean(Ldalvik/system/EmulatedStackFrame$StackFrameReader;Ljava/lang/Class;Ldalvik/system/EmulatedStackFrame$StackFrameWriter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldalvik/system/EmulatedStackFrame$StackFrameReader;",
            "Ljava/lang/Class",
            "<*>;",
            "Ldalvik/system/EmulatedStackFrame$StackFrameWriter;",
            ")V"
        }
    .end annotation

    invoke-static {p0, p1}, Ljava/lang/invoke/Transformers$ExplicitCastArguments;->readPrimitiveAsByte(Ldalvik/system/EmulatedStackFrame$StackFrameReader;Ljava/lang/Class;)B

    move-result v0

    invoke-static {v0}, Ljava/lang/invoke/Transformers$ExplicitCastArguments;->toBoolean(B)Z

    move-result v1

    invoke-virtual {p2, v1}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextBoolean(Z)V

    return-void
.end method

.method private static readPrimitiveAsByte(Ldalvik/system/EmulatedStackFrame$StackFrameReader;Ljava/lang/Class;)B
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldalvik/system/EmulatedStackFrame$StackFrameReader;",
            "Ljava/lang/Class",
            "<*>;)B"
        }
    .end annotation

    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextByte()B

    move-result v0

    return v0

    :cond_0
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextChar()C

    move-result v0

    int-to-byte v0, v0

    return v0

    :cond_1
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_2

    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextShort()S

    move-result v0

    int-to-byte v0, v0

    return v0

    :cond_2
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_3

    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextInt()I

    move-result v0

    int-to-byte v0, v0

    return v0

    :cond_3
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_4

    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextLong()J

    move-result-wide v0

    long-to-int v0, v0

    int-to-byte v0, v0

    return v0

    :cond_4
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_5

    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextFloat()F

    move-result v0

    float-to-int v0, v0

    int-to-byte v0, v0

    return v0

    :cond_5
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_6

    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextDouble()D

    move-result-wide v0

    double-to-int v0, v0

    int-to-byte v0, v0

    return v0

    :cond_6
    invoke-static {p1}, Ljava/lang/invoke/Transformers$ExplicitCastArguments;->throwUnexpectedType(Ljava/lang/Class;)V

    const/4 v0, 0x0

    return v0
.end method

.method private static readPrimitiveAsChar(Ldalvik/system/EmulatedStackFrame$StackFrameReader;Ljava/lang/Class;)C
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldalvik/system/EmulatedStackFrame$StackFrameReader;",
            "Ljava/lang/Class",
            "<*>;)C"
        }
    .end annotation

    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextByte()B

    move-result v0

    int-to-char v0, v0

    return v0

    :cond_0
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextChar()C

    move-result v0

    return v0

    :cond_1
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_2

    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextShort()S

    move-result v0

    int-to-char v0, v0

    return v0

    :cond_2
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_3

    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextInt()I

    move-result v0

    int-to-char v0, v0

    return v0

    :cond_3
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_4

    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextLong()J

    move-result-wide v0

    long-to-int v0, v0

    int-to-char v0, v0

    return v0

    :cond_4
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_5

    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextFloat()F

    move-result v0

    float-to-int v0, v0

    int-to-char v0, v0

    return v0

    :cond_5
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_6

    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextDouble()D

    move-result-wide v0

    double-to-int v0, v0

    int-to-char v0, v0

    return v0

    :cond_6
    invoke-static {p1}, Ljava/lang/invoke/Transformers$ExplicitCastArguments;->throwUnexpectedType(Ljava/lang/Class;)V

    const/4 v0, 0x0

    return v0
.end method

.method private static readPrimitiveAsDouble(Ldalvik/system/EmulatedStackFrame$StackFrameReader;Ljava/lang/Class;)D
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldalvik/system/EmulatedStackFrame$StackFrameReader;",
            "Ljava/lang/Class",
            "<*>;)D"
        }
    .end annotation

    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextByte()B

    move-result v0

    int-to-double v0, v0

    return-wide v0

    :cond_0
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextChar()C

    move-result v0

    int-to-double v0, v0

    return-wide v0

    :cond_1
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_2

    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextShort()S

    move-result v0

    int-to-double v0, v0

    return-wide v0

    :cond_2
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_3

    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextInt()I

    move-result v0

    int-to-double v0, v0

    return-wide v0

    :cond_3
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_4

    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextLong()J

    move-result-wide v0

    long-to-double v0, v0

    return-wide v0

    :cond_4
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_5

    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextFloat()F

    move-result v0

    float-to-double v0, v0

    return-wide v0

    :cond_5
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_6

    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextDouble()D

    move-result-wide v0

    return-wide v0

    :cond_6
    invoke-static {p1}, Ljava/lang/invoke/Transformers$ExplicitCastArguments;->throwUnexpectedType(Ljava/lang/Class;)V

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private static readPrimitiveAsFloat(Ldalvik/system/EmulatedStackFrame$StackFrameReader;Ljava/lang/Class;)F
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldalvik/system/EmulatedStackFrame$StackFrameReader;",
            "Ljava/lang/Class",
            "<*>;)F"
        }
    .end annotation

    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextByte()B

    move-result v0

    int-to-float v0, v0

    return v0

    :cond_0
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextChar()C

    move-result v0

    int-to-float v0, v0

    return v0

    :cond_1
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_2

    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextShort()S

    move-result v0

    int-to-float v0, v0

    return v0

    :cond_2
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_3

    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextInt()I

    move-result v0

    int-to-float v0, v0

    return v0

    :cond_3
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_4

    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextLong()J

    move-result-wide v0

    long-to-float v0, v0

    return v0

    :cond_4
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_5

    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextFloat()F

    move-result v0

    return v0

    :cond_5
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_6

    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextDouble()D

    move-result-wide v0

    double-to-float v0, v0

    return v0

    :cond_6
    invoke-static {p1}, Ljava/lang/invoke/Transformers$ExplicitCastArguments;->throwUnexpectedType(Ljava/lang/Class;)V

    const/4 v0, 0x0

    return v0
.end method

.method private static readPrimitiveAsInt(Ldalvik/system/EmulatedStackFrame$StackFrameReader;Ljava/lang/Class;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldalvik/system/EmulatedStackFrame$StackFrameReader;",
            "Ljava/lang/Class",
            "<*>;)I"
        }
    .end annotation

    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextByte()B

    move-result v0

    return v0

    :cond_0
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextChar()C

    move-result v0

    return v0

    :cond_1
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_2

    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextShort()S

    move-result v0

    return v0

    :cond_2
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_3

    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextInt()I

    move-result v0

    return v0

    :cond_3
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_4

    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextLong()J

    move-result-wide v0

    long-to-int v0, v0

    return v0

    :cond_4
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_5

    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextFloat()F

    move-result v0

    float-to-int v0, v0

    return v0

    :cond_5
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_6

    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextDouble()D

    move-result-wide v0

    double-to-int v0, v0

    return v0

    :cond_6
    invoke-static {p1}, Ljava/lang/invoke/Transformers$ExplicitCastArguments;->throwUnexpectedType(Ljava/lang/Class;)V

    const/4 v0, 0x0

    return v0
.end method

.method private static readPrimitiveAsLong(Ldalvik/system/EmulatedStackFrame$StackFrameReader;Ljava/lang/Class;)J
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldalvik/system/EmulatedStackFrame$StackFrameReader;",
            "Ljava/lang/Class",
            "<*>;)J"
        }
    .end annotation

    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextByte()B

    move-result v0

    int-to-long v0, v0

    return-wide v0

    :cond_0
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextChar()C

    move-result v0

    int-to-long v0, v0

    return-wide v0

    :cond_1
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_2

    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextShort()S

    move-result v0

    int-to-long v0, v0

    return-wide v0

    :cond_2
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_3

    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextInt()I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    :cond_3
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_4

    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextLong()J

    move-result-wide v0

    return-wide v0

    :cond_4
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_5

    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextFloat()F

    move-result v0

    float-to-long v0, v0

    return-wide v0

    :cond_5
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_6

    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextDouble()D

    move-result-wide v0

    double-to-long v0, v0

    return-wide v0

    :cond_6
    invoke-static {p1}, Ljava/lang/invoke/Transformers$ExplicitCastArguments;->throwUnexpectedType(Ljava/lang/Class;)V

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private static readPrimitiveAsShort(Ldalvik/system/EmulatedStackFrame$StackFrameReader;Ljava/lang/Class;)S
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldalvik/system/EmulatedStackFrame$StackFrameReader;",
            "Ljava/lang/Class",
            "<*>;)S"
        }
    .end annotation

    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextByte()B

    move-result v0

    int-to-short v0, v0

    return v0

    :cond_0
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextChar()C

    move-result v0

    int-to-short v0, v0

    return v0

    :cond_1
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_2

    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextShort()S

    move-result v0

    return v0

    :cond_2
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_3

    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextInt()I

    move-result v0

    int-to-short v0, v0

    return v0

    :cond_3
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_4

    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextLong()J

    move-result-wide v0

    long-to-int v0, v0

    int-to-short v0, v0

    return v0

    :cond_4
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_5

    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextFloat()F

    move-result v0

    float-to-int v0, v0

    int-to-short v0, v0

    return v0

    :cond_5
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_6

    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextDouble()D

    move-result-wide v0

    double-to-int v0, v0

    int-to-short v0, v0

    return v0

    :cond_6
    invoke-static {p1}, Ljava/lang/invoke/Transformers$ExplicitCastArguments;->throwUnexpectedType(Ljava/lang/Class;)V

    const/4 v0, 0x0

    return v0
.end method

.method private static throwUnexpectedType(Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/InternalError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unexpected type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static toBoolean(B)Z
    .locals 2

    const/4 v0, 0x1

    and-int/lit8 v1, p0, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static unbox(Ljava/lang/Object;Ljava/lang/Class;Ldalvik/system/EmulatedStackFrame$StackFrameWriter;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;",
            "Ldalvik/system/EmulatedStackFrame$StackFrameWriter;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    if-nez p0, :cond_0

    invoke-static {p2, p3}, Ljava/lang/invoke/Transformers$ExplicitCastArguments;->unboxNull(Ldalvik/system/EmulatedStackFrame$StackFrameWriter;Ljava/lang/Class;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {p0, p1, p2, p3}, Ljava/lang/invoke/Transformers$ExplicitCastArguments;->unboxNonNull(Ljava/lang/Object;Ljava/lang/Class;Ldalvik/system/EmulatedStackFrame$StackFrameWriter;Ljava/lang/Class;)V

    goto :goto_0
.end method

.method private static unboxNonNull(Ljava/lang/Object;Ljava/lang/Class;Ldalvik/system/EmulatedStackFrame$StackFrameWriter;Ljava/lang/Class;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;",
            "Ldalvik/system/EmulatedStackFrame$StackFrameWriter;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p3, v1, :cond_3

    const-class v1, Ljava/lang/Boolean;

    if-ne p1, v1, :cond_0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p2, v1}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextBoolean(Z)V

    :goto_0
    return-void

    :cond_0
    const-class v1, Ljava/lang/Float;

    if-eq p1, v1, :cond_1

    const-class v1, Ljava/lang/Double;

    if-ne p1, v1, :cond_2

    :cond_1
    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    double-to-int v1, v2

    int-to-byte v0, v1

    invoke-static {v0}, Ljava/lang/invoke/Transformers$ExplicitCastArguments;->toBoolean(B)Z

    move-result v1

    invoke-virtual {p2, v1}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextBoolean(Z)V

    goto :goto_0

    :cond_2
    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    long-to-int v1, v2

    int-to-byte v0, v1

    invoke-static {v0}, Ljava/lang/invoke/Transformers$ExplicitCastArguments;->toBoolean(B)Z

    move-result v1

    invoke-virtual {p2, v1}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextBoolean(Z)V

    goto :goto_0

    :cond_3
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p3, v1, :cond_4

    check-cast p0, Ljava/lang/Byte;

    invoke-virtual {p0}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    invoke-virtual {p2, v1}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextByte(B)V

    goto :goto_0

    :cond_4
    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p3, v1, :cond_5

    check-cast p0, Ljava/lang/Character;

    invoke-virtual {p0}, Ljava/lang/Character;->charValue()C

    move-result v1

    invoke-virtual {p2, v1}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextChar(C)V

    goto :goto_0

    :cond_5
    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p3, v1, :cond_6

    check-cast p0, Ljava/lang/Short;

    invoke-virtual {p0}, Ljava/lang/Short;->shortValue()S

    move-result v1

    invoke-virtual {p2, v1}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextShort(S)V

    goto :goto_0

    :cond_6
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p3, v1, :cond_7

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p2, v1}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextInt(I)V

    goto :goto_0

    :cond_7
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p3, v1, :cond_8

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p2, v2, v3}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextLong(J)V

    goto :goto_0

    :cond_8
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p3, v1, :cond_9

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p2, v1}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextFloat(F)V

    goto :goto_0

    :cond_9
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p3, v1, :cond_a

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p2, v2, v3}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextDouble(D)V

    goto/16 :goto_0

    :cond_a
    invoke-static {p3}, Ljava/lang/invoke/Transformers$ExplicitCastArguments;->throwUnexpectedType(Ljava/lang/Class;)V

    goto/16 :goto_0
.end method

.method private static unboxNull(Ldalvik/system/EmulatedStackFrame$StackFrameWriter;Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldalvik/system/EmulatedStackFrame$StackFrameWriter;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    const/4 v1, 0x0

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0, v1}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextBoolean(Z)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_1

    invoke-virtual {p0, v1}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextByte(B)V

    goto :goto_0

    :cond_1
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_2

    invoke-virtual {p0, v1}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextChar(C)V

    goto :goto_0

    :cond_2
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_3

    invoke-virtual {p0, v1}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextShort(S)V

    goto :goto_0

    :cond_3
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_4

    invoke-virtual {p0, v1}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextInt(I)V

    goto :goto_0

    :cond_4
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_5

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextLong(J)V

    goto :goto_0

    :cond_5
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_6

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextFloat(F)V

    goto :goto_0

    :cond_6
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_7

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextDouble(D)V

    goto :goto_0

    :cond_7
    invoke-static {p1}, Ljava/lang/invoke/Transformers$ExplicitCastArguments;->throwUnexpectedType(Ljava/lang/Class;)V

    goto :goto_0
.end method


# virtual methods
.method public transform(Ldalvik/system/EmulatedStackFrame;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-object v1, p0, Ljava/lang/invoke/Transformers$ExplicitCastArguments;->target:Ljava/lang/invoke/MethodHandle;

    invoke-virtual {v1}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v1

    invoke-static {v1}, Ldalvik/system/EmulatedStackFrame;->create(Ljava/lang/invoke/MethodType;)Ldalvik/system/EmulatedStackFrame;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Ljava/lang/invoke/Transformers$ExplicitCastArguments;->explicitCastArguments(Ldalvik/system/EmulatedStackFrame;Ldalvik/system/EmulatedStackFrame;)V

    iget-object v1, p0, Ljava/lang/invoke/Transformers$ExplicitCastArguments;->target:Ljava/lang/invoke/MethodHandle;

    invoke-polymorphic {v1, v0}, Ljava/lang/invoke/MethodHandle;->invoke([Ljava/lang/Object;)Ljava/lang/Object;, (Ldalvik/system/EmulatedStackFrame;)V

    invoke-direct {p0, p1, v0}, Ljava/lang/invoke/Transformers$ExplicitCastArguments;->explicitCastReturnValue(Ldalvik/system/EmulatedStackFrame;Ldalvik/system/EmulatedStackFrame;)V

    return-void
.end method
