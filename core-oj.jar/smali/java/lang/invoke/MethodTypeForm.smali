.class final Ljava/lang/invoke/MethodTypeForm;
.super Ljava/lang/Object;
.source "MethodTypeForm.java"


# static fields
.field static final synthetic -assertionsDisabled:Z

.field public static final ERASE:I = 0x1

.field public static final INTS:I = 0x4

.field public static final LONGS:I = 0x5

.field public static final NO_CHANGE:I = 0x0

.field public static final RAW_RETURN:I = 0x6

.field public static final UNWRAP:I = 0x3

.field public static final WRAP:I = 0x2


# instance fields
.field final argCounts:J

.field final argToSlotTable:[I

.field final basicType:Ljava/lang/invoke/MethodType;

.field final erasedType:Ljava/lang/invoke/MethodType;

.field final primCounts:J

.field final slotToArgTable:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Ljava/lang/invoke/MethodTypeForm;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Ljava/lang/invoke/MethodTypeForm;->-assertionsDisabled:Z

    return-void
.end method

.method protected constructor <init>(Ljava/lang/invoke/MethodType;)V
    .locals 26

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/lang/invoke/MethodTypeForm;->erasedType:Ljava/lang/invoke/MethodType;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/invoke/MethodType;->ptypes()[Ljava/lang/Class;

    move-result-object v16

    move-object/from16 v0, v16

    array-length v15, v0

    move v13, v15

    const/16 v19, 0x1

    const/16 v17, 0x1

    const/4 v4, 0x0

    const/16 v21, 0x0

    const/4 v11, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v10, 0x0

    move-object/from16 v7, v16

    move-object/from16 v5, v16

    const/4 v8, 0x0

    :goto_0
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    if-ge v8, v0, :cond_3

    aget-object v14, v16, v8

    const-class v24, Ljava/lang/Object;

    move-object/from16 v0, v24

    if-eq v14, v0, :cond_2

    add-int/lit8 v11, v11, 0x1

    invoke-static {v14}, Lsun/invoke/util/Wrapper;->forPrimitiveType(Ljava/lang/Class;)Lsun/invoke/util/Wrapper;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lsun/invoke/util/Wrapper;->isDoubleWord()Z

    move-result v24

    if-eqz v24, :cond_0

    add-int/lit8 v9, v9, 0x1

    :cond_0
    invoke-virtual/range {v23 .. v23}, Lsun/invoke/util/Wrapper;->isSubwordOrInt()Z

    move-result v24

    if-eqz v24, :cond_2

    sget-object v24, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v24

    if-eq v14, v0, :cond_2

    move-object/from16 v0, v16

    if-ne v5, v0, :cond_1

    invoke-virtual {v5}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/Class;

    :cond_1
    sget-object v24, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v24, v5, v8

    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_3
    add-int v13, v15, v9

    invoke-virtual/range {p1 .. p1}, Ljava/lang/invoke/MethodType;->returnType()Ljava/lang/Class;

    move-result-object v18

    move-object/from16 v6, v18

    const-class v24, Ljava/lang/Object;

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    if-eq v0, v1, :cond_6

    const/4 v12, 0x1

    invoke-static/range {v18 .. v18}, Lsun/invoke/util/Wrapper;->forPrimitiveType(Ljava/lang/Class;)Lsun/invoke/util/Wrapper;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lsun/invoke/util/Wrapper;->isDoubleWord()Z

    move-result v24

    if-eqz v24, :cond_4

    const/4 v10, 0x1

    :cond_4
    invoke-virtual/range {v23 .. v23}, Lsun/invoke/util/Wrapper;->isSubwordOrInt()Z

    move-result v24

    if-eqz v24, :cond_5

    sget-object v24, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    if-eq v0, v1, :cond_5

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    :cond_5
    sget-object v24, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_8

    const/16 v17, 0x0

    const/16 v19, 0x0

    :cond_6
    :goto_1
    move-object/from16 v0, v16

    if-ne v0, v5, :cond_9

    move-object/from16 v0, v18

    if-ne v6, v0, :cond_9

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/lang/invoke/MethodTypeForm;->basicType:Ljava/lang/invoke/MethodType;

    if-eqz v9, :cond_c

    add-int v20, v15, v9

    add-int/lit8 v24, v20, 0x1

    move/from16 v0, v24

    new-array v0, v0, [I

    move-object/from16 v21, v0

    add-int/lit8 v24, v15, 0x1

    move/from16 v0, v24

    new-array v4, v0, [I

    const/16 v24, 0x0

    aput v20, v4, v24

    const/4 v8, 0x0

    :goto_2
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    if-ge v8, v0, :cond_b

    aget-object v14, v16, v8

    invoke-static {v14}, Lsun/invoke/util/Wrapper;->forBasicType(Ljava/lang/Class;)Lsun/invoke/util/Wrapper;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lsun/invoke/util/Wrapper;->isDoubleWord()Z

    move-result v24

    if-eqz v24, :cond_7

    add-int/lit8 v20, v20, -0x1

    :cond_7
    add-int/lit8 v20, v20, -0x1

    add-int/lit8 v24, v8, 0x1

    aput v24, v21, v20

    add-int/lit8 v24, v8, 0x1

    aput v20, v4, v24

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_8
    add-int/lit8 v17, v10, 0x1

    goto :goto_1

    :cond_9
    const/16 v24, 0x1

    move/from16 v0, v24

    invoke-static {v6, v5, v0}, Ljava/lang/invoke/MethodType;->makeImpl(Ljava/lang/Class;[Ljava/lang/Class;Z)Ljava/lang/invoke/MethodType;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/lang/invoke/MethodTypeForm;->basicType:Ljava/lang/invoke/MethodType;

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/lang/invoke/MethodTypeForm;->basicType:Ljava/lang/invoke/MethodType;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/lang/invoke/MethodType;->form()Ljava/lang/invoke/MethodTypeForm;

    move-result-object v22

    sget-boolean v24, Ljava/lang/invoke/MethodTypeForm;->-assertionsDisabled:Z

    if-nez v24, :cond_a

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_a

    new-instance v24, Ljava/lang/AssertionError;

    invoke-direct/range {v24 .. v24}, Ljava/lang/AssertionError;-><init>()V

    throw v24

    :cond_a
    move-object/from16 v0, v22

    iget-wide v0, v0, Ljava/lang/invoke/MethodTypeForm;->primCounts:J

    move-wide/from16 v24, v0

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Ljava/lang/invoke/MethodTypeForm;->primCounts:J

    move-object/from16 v0, v22

    iget-wide v0, v0, Ljava/lang/invoke/MethodTypeForm;->argCounts:J

    move-wide/from16 v24, v0

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Ljava/lang/invoke/MethodTypeForm;->argCounts:J

    move-object/from16 v0, v22

    iget-object v0, v0, Ljava/lang/invoke/MethodTypeForm;->argToSlotTable:[I

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/lang/invoke/MethodTypeForm;->argToSlotTable:[I

    move-object/from16 v0, v22

    iget-object v0, v0, Ljava/lang/invoke/MethodTypeForm;->slotToArgTable:[I

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/lang/invoke/MethodTypeForm;->slotToArgTable:[I

    return-void

    :cond_b
    sget-boolean v24, Ljava/lang/invoke/MethodTypeForm;->-assertionsDisabled:Z

    if-nez v24, :cond_f

    if-eqz v20, :cond_f

    new-instance v24, Ljava/lang/AssertionError;

    invoke-direct/range {v24 .. v24}, Ljava/lang/AssertionError;-><init>()V

    throw v24

    :cond_c
    if-eqz v11, :cond_10

    sget-boolean v24, Ljava/lang/invoke/MethodTypeForm;->-assertionsDisabled:Z

    if-nez v24, :cond_d

    if-eq v15, v13, :cond_d

    new-instance v24, Ljava/lang/AssertionError;

    invoke-direct/range {v24 .. v24}, Ljava/lang/AssertionError;-><init>()V

    throw v24

    :cond_d
    invoke-static {v15}, Ljava/lang/invoke/MethodType;->genericMethodType(I)Ljava/lang/invoke/MethodType;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/invoke/MethodType;->form()Ljava/lang/invoke/MethodTypeForm;

    move-result-object v22

    sget-boolean v24, Ljava/lang/invoke/MethodTypeForm;->-assertionsDisabled:Z

    if-nez v24, :cond_e

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_e

    new-instance v24, Ljava/lang/AssertionError;

    invoke-direct/range {v24 .. v24}, Ljava/lang/AssertionError;-><init>()V

    throw v24

    :cond_e
    move-object/from16 v0, v22

    iget-object v0, v0, Ljava/lang/invoke/MethodTypeForm;->slotToArgTable:[I

    move-object/from16 v21, v0

    move-object/from16 v0, v22

    iget-object v4, v0, Ljava/lang/invoke/MethodTypeForm;->argToSlotTable:[I

    :cond_f
    invoke-static {v10, v12, v9, v11}, Ljava/lang/invoke/MethodTypeForm;->pack(IIII)J

    move-result-wide v24

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Ljava/lang/invoke/MethodTypeForm;->primCounts:J

    move/from16 v0, v17

    move/from16 v1, v19

    invoke-static {v0, v1, v13, v15}, Ljava/lang/invoke/MethodTypeForm;->pack(IIII)J

    move-result-wide v24

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Ljava/lang/invoke/MethodTypeForm;->argCounts:J

    move-object/from16 v0, p0

    iput-object v4, v0, Ljava/lang/invoke/MethodTypeForm;->argToSlotTable:[I

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/lang/invoke/MethodTypeForm;->slotToArgTable:[I

    const/16 v24, 0x100

    move/from16 v0, v24

    if-lt v13, v0, :cond_11

    const-string/jumbo v24, "too many arguments"

    invoke-static/range {v24 .. v24}, Ljava/lang/invoke/MethodHandleStatics;->newIllegalArgumentException(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v24

    throw v24

    :cond_10
    move/from16 v20, v15

    add-int/lit8 v24, v15, 0x1

    move/from16 v0, v24

    new-array v0, v0, [I

    move-object/from16 v21, v0

    add-int/lit8 v24, v15, 0x1

    move/from16 v0, v24

    new-array v4, v0, [I

    const/16 v24, 0x0

    aput v15, v4, v24

    const/4 v8, 0x0

    :goto_3
    if-ge v8, v15, :cond_f

    add-int/lit8 v20, v20, -0x1

    add-int/lit8 v24, v8, 0x1

    aput v24, v21, v20

    add-int/lit8 v24, v8, 0x1

    aput v20, v4, v24

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_11
    sget-boolean v24, Ljava/lang/invoke/MethodTypeForm;->-assertionsDisabled:Z

    if-nez v24, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/lang/invoke/MethodTypeForm;->basicType:Ljava/lang/invoke/MethodType;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    if-eq v0, v1, :cond_12

    new-instance v24, Ljava/lang/AssertionError;

    invoke-direct/range {v24 .. v24}, Ljava/lang/AssertionError;-><init>()V

    throw v24

    :cond_12
    return-void
.end method

.method private assertIsBasicType()Z
    .locals 3

    sget-boolean v0, Ljava/lang/invoke/MethodTypeForm;->-assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Ljava/lang/invoke/MethodTypeForm;->erasedType:Ljava/lang/invoke/MethodType;

    iget-object v1, p0, Ljava/lang/invoke/MethodTypeForm;->basicType:Ljava/lang/invoke/MethodType;

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "erasedType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/lang/invoke/MethodTypeForm;->erasedType:Ljava/lang/invoke/MethodType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " != basicType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/lang/invoke/MethodTypeForm;->basicType:Ljava/lang/invoke/MethodType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method static canonicalize(Ljava/lang/Class;I)Ljava/lang/Class;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;I)",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    const/4 v2, 0x0

    const-class v1, Ljava/lang/Object;

    if-ne p0, v1, :cond_1

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-nez v1, :cond_2

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    const-class v1, Ljava/lang/Object;

    return-object v1

    :pswitch_2
    invoke-static {p0}, Lsun/invoke/util/Wrapper;->asPrimitiveType(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    if-eq v0, p0, :cond_0

    return-object v0

    :cond_2
    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne p0, v1, :cond_3

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-class v1, Ljava/lang/Void;

    return-object v1

    :sswitch_1
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    return-object v1

    :cond_3
    packed-switch p1, :pswitch_data_1

    :pswitch_3
    goto :goto_0

    :pswitch_4
    invoke-static {p0}, Lsun/invoke/util/Wrapper;->asWrapperType(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    return-object v1

    :pswitch_5
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq p0, v1, :cond_4

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p0, v1, :cond_5

    :cond_4
    return-object v2

    :cond_5
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p0, v1, :cond_6

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    return-object v1

    :cond_6
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    return-object v1

    :pswitch_6
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p0, v1, :cond_7

    return-object v2

    :cond_7
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    return-object v1

    :pswitch_7
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq p0, v1, :cond_8

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p0, v1, :cond_9

    :cond_8
    return-object v2

    :cond_9
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq p0, v1, :cond_8

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq p0, v1, :cond_8

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    return-object v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x6 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public static canonicalize(Ljava/lang/invoke/MethodType;II)Ljava/lang/invoke/MethodType;
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0}, Ljava/lang/invoke/MethodType;->ptypes()[Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, p2}, Ljava/lang/invoke/MethodTypeForm;->canonicalizeAll([Ljava/lang/Class;I)[Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/invoke/MethodType;->returnType()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3, p1}, Ljava/lang/invoke/MethodTypeForm;->canonicalize(Ljava/lang/Class;I)Ljava/lang/Class;

    move-result-object v2

    if-nez v0, :cond_0

    if-nez v2, :cond_0

    return-object v4

    :cond_0
    if-nez v2, :cond_1

    move-object v2, v3

    :cond_1
    if-nez v0, :cond_2

    move-object v0, v1

    :cond_2
    const/4 v4, 0x1

    invoke-static {v2, v0, v4}, Ljava/lang/invoke/MethodType;->makeImpl(Ljava/lang/Class;[Ljava/lang/Class;Z)Ljava/lang/invoke/MethodType;

    move-result-object v4

    return-object v4
.end method

.method static canonicalizeAll([Ljava/lang/Class;I)[Ljava/lang/Class;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<*>;I)[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    const/4 v1, 0x0

    array-length v3, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_3

    aget-object v4, p0, v2

    invoke-static {v4, p1}, Ljava/lang/invoke/MethodTypeForm;->canonicalize(Ljava/lang/Class;I)Ljava/lang/Class;

    move-result-object v0

    sget-object v4, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne v0, v4, :cond_0

    const/4 v0, 0x0

    :cond_0
    if-eqz v0, :cond_2

    if-nez v1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Class;

    :cond_1
    aput-object v0, v1, v2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method static findForm(Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodTypeForm;
    .locals 2

    const/4 v1, 0x1

    invoke-static {p0, v1, v1}, Ljava/lang/invoke/MethodTypeForm;->canonicalize(Ljava/lang/invoke/MethodType;II)Ljava/lang/invoke/MethodType;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/invoke/MethodTypeForm;

    invoke-direct {v1, p0}, Ljava/lang/invoke/MethodTypeForm;-><init>(Ljava/lang/invoke/MethodType;)V

    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/invoke/MethodType;->form()Ljava/lang/invoke/MethodTypeForm;

    move-result-object v1

    return-object v1
.end method

.method private static pack(IIII)J
    .locals 6

    sget-boolean v4, Ljava/lang/invoke/MethodTypeForm;->-assertionsDisabled:Z

    if-nez v4, :cond_0

    or-int v4, p0, p1

    or-int/2addr v4, p2

    or-int/2addr v4, p3

    const/high16 v5, -0x10000

    and-int/2addr v4, v5

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    :cond_0
    shl-int/lit8 v4, p0, 0x10

    or-int/2addr v4, p1

    int-to-long v0, v4

    shl-int/lit8 v4, p2, 0x10

    or-int/2addr v4, p3

    int-to-long v2, v4

    const/16 v4, 0x20

    shl-long v4, v0, v4

    or-long/2addr v4, v2

    return-wide v4
.end method

.method private static unpack(JI)C
    .locals 2

    sget-boolean v0, Ljava/lang/invoke/MethodTypeForm;->-assertionsDisabled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x3

    if-le p2, v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    rsub-int/lit8 v0, p2, 0x3

    mul-int/lit8 v0, v0, 0x10

    shr-long v0, p0, v0

    long-to-int v0, v0

    int-to-char v0, v0

    return v0
.end method


# virtual methods
.method public argSlotToParameter(I)I
    .locals 1

    iget-object v0, p0, Ljava/lang/invoke/MethodTypeForm;->slotToArgTable:[I

    aget v0, v0, p1

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public basicType()Ljava/lang/invoke/MethodType;
    .locals 1

    iget-object v0, p0, Ljava/lang/invoke/MethodTypeForm;->basicType:Ljava/lang/invoke/MethodType;

    return-object v0
.end method

.method public erasedType()Ljava/lang/invoke/MethodType;
    .locals 1

    iget-object v0, p0, Ljava/lang/invoke/MethodTypeForm;->erasedType:Ljava/lang/invoke/MethodType;

    return-object v0
.end method

.method public hasLongPrimitives()Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/invoke/MethodTypeForm;->longPrimitiveParameterCount()I

    move-result v1

    invoke-virtual {p0}, Ljava/lang/invoke/MethodTypeForm;->longPrimitiveReturnCount()I

    move-result v2

    or-int/2addr v1, v2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public hasNonVoidPrimitives()Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-wide v2, p0, Ljava/lang/invoke/MethodTypeForm;->primCounts:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Ljava/lang/invoke/MethodTypeForm;->primitiveParameterCount()I

    move-result v2

    if-eqz v2, :cond_1

    return v0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/invoke/MethodTypeForm;->primitiveReturnCount()I

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Ljava/lang/invoke/MethodTypeForm;->returnCount()I

    move-result v2

    if-eqz v2, :cond_2

    :goto_0
    return v0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public hasPrimitives()Z
    .locals 4

    iget-wide v0, p0, Ljava/lang/invoke/MethodTypeForm;->primCounts:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public longPrimitiveParameterCount()I
    .locals 3

    iget-wide v0, p0, Ljava/lang/invoke/MethodTypeForm;->primCounts:J

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Ljava/lang/invoke/MethodTypeForm;->unpack(JI)C

    move-result v0

    return v0
.end method

.method public longPrimitiveReturnCount()I
    .locals 3

    iget-wide v0, p0, Ljava/lang/invoke/MethodTypeForm;->primCounts:J

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Ljava/lang/invoke/MethodTypeForm;->unpack(JI)C

    move-result v0

    return v0
.end method

.method public parameterCount()I
    .locals 3

    iget-wide v0, p0, Ljava/lang/invoke/MethodTypeForm;->argCounts:J

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Ljava/lang/invoke/MethodTypeForm;->unpack(JI)C

    move-result v0

    return v0
.end method

.method public parameterSlotCount()I
    .locals 3

    iget-wide v0, p0, Ljava/lang/invoke/MethodTypeForm;->argCounts:J

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Ljava/lang/invoke/MethodTypeForm;->unpack(JI)C

    move-result v0

    return v0
.end method

.method public parameterToArgSlot(I)I
    .locals 2

    iget-object v0, p0, Ljava/lang/invoke/MethodTypeForm;->argToSlotTable:[I

    add-int/lit8 v1, p1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public primitiveParameterCount()I
    .locals 3

    iget-wide v0, p0, Ljava/lang/invoke/MethodTypeForm;->primCounts:J

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Ljava/lang/invoke/MethodTypeForm;->unpack(JI)C

    move-result v0

    return v0
.end method

.method public primitiveReturnCount()I
    .locals 3

    iget-wide v0, p0, Ljava/lang/invoke/MethodTypeForm;->primCounts:J

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Ljava/lang/invoke/MethodTypeForm;->unpack(JI)C

    move-result v0

    return v0
.end method

.method public returnCount()I
    .locals 3

    iget-wide v0, p0, Ljava/lang/invoke/MethodTypeForm;->argCounts:J

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Ljava/lang/invoke/MethodTypeForm;->unpack(JI)C

    move-result v0

    return v0
.end method

.method public returnSlotCount()I
    .locals 3

    iget-wide v0, p0, Ljava/lang/invoke/MethodTypeForm;->argCounts:J

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Ljava/lang/invoke/MethodTypeForm;->unpack(JI)C

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Form"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/lang/invoke/MethodTypeForm;->erasedType:Ljava/lang/invoke/MethodType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
