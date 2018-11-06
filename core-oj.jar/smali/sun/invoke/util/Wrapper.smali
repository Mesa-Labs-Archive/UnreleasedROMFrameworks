.class public final enum Lsun/invoke/util/Wrapper;
.super Ljava/lang/Enum;
.source "Wrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/invoke/util/Wrapper$Format;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lsun/invoke/util/Wrapper;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lsun/invoke/util/Wrapper;

.field static final synthetic -assertionsDisabled:Z

.field public static final enum BOOLEAN:Lsun/invoke/util/Wrapper;

.field public static final enum BYTE:Lsun/invoke/util/Wrapper;

.field public static final enum CHAR:Lsun/invoke/util/Wrapper;

.field public static final enum DOUBLE:Lsun/invoke/util/Wrapper;

.field public static final enum FLOAT:Lsun/invoke/util/Wrapper;

.field private static final FROM_CHAR:[Lsun/invoke/util/Wrapper;

.field private static final FROM_PRIM:[Lsun/invoke/util/Wrapper;

.field private static final FROM_WRAP:[Lsun/invoke/util/Wrapper;

.field public static final enum INT:Lsun/invoke/util/Wrapper;

.field public static final enum LONG:Lsun/invoke/util/Wrapper;

.field public static final enum OBJECT:Lsun/invoke/util/Wrapper;

.field public static final enum SHORT:Lsun/invoke/util/Wrapper;

.field public static final enum VOID:Lsun/invoke/util/Wrapper;


# instance fields
.field private final basicTypeChar:C

.field private final emptyArray:Ljava/lang/Object;

.field private final format:I

.field private final primitiveSimpleName:Ljava/lang/String;

.field private final primitiveType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private final wrapperSimpleName:Ljava/lang/String;

.field private final wrapperType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private final zero:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    const-class v0, Lsun/invoke/util/Wrapper;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lsun/invoke/util/Wrapper;->-assertionsDisabled:Z

    new-instance v0, Lsun/invoke/util/Wrapper;

    const-string/jumbo v1, "BOOLEAN"

    const-class v3, Ljava/lang/Boolean;

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v2, 0x0

    new-array v7, v2, [Z

    const/4 v2, 0x1

    invoke-static {v2}, Lsun/invoke/util/Wrapper$Format;->unsigned(I)I

    move-result v8

    const/4 v2, 0x0

    const/16 v5, 0x5a

    invoke-direct/range {v0 .. v8}, Lsun/invoke/util/Wrapper;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;CLjava/lang/Object;Ljava/lang/Object;I)V

    sput-object v0, Lsun/invoke/util/Wrapper;->BOOLEAN:Lsun/invoke/util/Wrapper;

    new-instance v0, Lsun/invoke/util/Wrapper;

    const-string/jumbo v1, "BYTE"

    const-class v3, Ljava/lang/Byte;

    sget-object v4, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    const/4 v2, 0x0

    new-array v7, v2, [B

    const/16 v2, 0x8

    invoke-static {v2}, Lsun/invoke/util/Wrapper$Format;->signed(I)I

    move-result v8

    const/4 v2, 0x1

    const/16 v5, 0x42

    invoke-direct/range {v0 .. v8}, Lsun/invoke/util/Wrapper;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;CLjava/lang/Object;Ljava/lang/Object;I)V

    sput-object v0, Lsun/invoke/util/Wrapper;->BYTE:Lsun/invoke/util/Wrapper;

    new-instance v0, Lsun/invoke/util/Wrapper;

    const-string/jumbo v1, "SHORT"

    const-class v3, Ljava/lang/Short;

    sget-object v4, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v6

    const/4 v2, 0x0

    new-array v7, v2, [S

    const/16 v2, 0x10

    invoke-static {v2}, Lsun/invoke/util/Wrapper$Format;->signed(I)I

    move-result v8

    const/4 v2, 0x2

    const/16 v5, 0x53

    invoke-direct/range {v0 .. v8}, Lsun/invoke/util/Wrapper;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;CLjava/lang/Object;Ljava/lang/Object;I)V

    sput-object v0, Lsun/invoke/util/Wrapper;->SHORT:Lsun/invoke/util/Wrapper;

    new-instance v0, Lsun/invoke/util/Wrapper;

    const-string/jumbo v1, "CHAR"

    const-class v3, Ljava/lang/Character;

    sget-object v4, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v6

    const/4 v2, 0x0

    new-array v7, v2, [C

    const/16 v2, 0x10

    invoke-static {v2}, Lsun/invoke/util/Wrapper$Format;->unsigned(I)I

    move-result v8

    const/4 v2, 0x3

    const/16 v5, 0x43

    invoke-direct/range {v0 .. v8}, Lsun/invoke/util/Wrapper;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;CLjava/lang/Object;Ljava/lang/Object;I)V

    sput-object v0, Lsun/invoke/util/Wrapper;->CHAR:Lsun/invoke/util/Wrapper;

    new-instance v0, Lsun/invoke/util/Wrapper;

    const-string/jumbo v1, "INT"

    const-class v3, Ljava/lang/Integer;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v2, 0x0

    new-array v7, v2, [I

    const/16 v2, 0x20

    invoke-static {v2}, Lsun/invoke/util/Wrapper$Format;->signed(I)I

    move-result v8

    const/4 v2, 0x4

    const/16 v5, 0x49

    invoke-direct/range {v0 .. v8}, Lsun/invoke/util/Wrapper;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;CLjava/lang/Object;Ljava/lang/Object;I)V

    sput-object v0, Lsun/invoke/util/Wrapper;->INT:Lsun/invoke/util/Wrapper;

    new-instance v0, Lsun/invoke/util/Wrapper;

    const-string/jumbo v1, "LONG"

    const-class v3, Ljava/lang/Long;

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-wide/16 v6, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v2, 0x0

    new-array v7, v2, [J

    const/16 v2, 0x40

    invoke-static {v2}, Lsun/invoke/util/Wrapper$Format;->signed(I)I

    move-result v8

    const/4 v2, 0x5

    const/16 v5, 0x4a

    invoke-direct/range {v0 .. v8}, Lsun/invoke/util/Wrapper;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;CLjava/lang/Object;Ljava/lang/Object;I)V

    sput-object v0, Lsun/invoke/util/Wrapper;->LONG:Lsun/invoke/util/Wrapper;

    new-instance v0, Lsun/invoke/util/Wrapper;

    const-string/jumbo v1, "FLOAT"

    const-class v3, Ljava/lang/Float;

    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    const/4 v2, 0x0

    new-array v7, v2, [F

    const/16 v2, 0x20

    invoke-static {v2}, Lsun/invoke/util/Wrapper$Format;->floating(I)I

    move-result v8

    const/4 v2, 0x6

    const/16 v5, 0x46

    invoke-direct/range {v0 .. v8}, Lsun/invoke/util/Wrapper;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;CLjava/lang/Object;Ljava/lang/Object;I)V

    sput-object v0, Lsun/invoke/util/Wrapper;->FLOAT:Lsun/invoke/util/Wrapper;

    new-instance v0, Lsun/invoke/util/Wrapper;

    const-string/jumbo v1, "DOUBLE"

    const-class v3, Ljava/lang/Double;

    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const-wide/16 v6, 0x0

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    const/4 v2, 0x0

    new-array v7, v2, [D

    const/16 v2, 0x40

    invoke-static {v2}, Lsun/invoke/util/Wrapper$Format;->floating(I)I

    move-result v8

    const/4 v2, 0x7

    const/16 v5, 0x44

    invoke-direct/range {v0 .. v8}, Lsun/invoke/util/Wrapper;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;CLjava/lang/Object;Ljava/lang/Object;I)V

    sput-object v0, Lsun/invoke/util/Wrapper;->DOUBLE:Lsun/invoke/util/Wrapper;

    new-instance v0, Lsun/invoke/util/Wrapper;

    const-string/jumbo v1, "OBJECT"

    const-class v3, Ljava/lang/Object;

    const-class v4, Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v7, v2, [Ljava/lang/Object;

    const/4 v2, 0x1

    invoke-static {v2}, Lsun/invoke/util/Wrapper$Format;->other(I)I

    move-result v8

    const/16 v2, 0x8

    const/16 v5, 0x4c

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v8}, Lsun/invoke/util/Wrapper;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;CLjava/lang/Object;Ljava/lang/Object;I)V

    sput-object v0, Lsun/invoke/util/Wrapper;->OBJECT:Lsun/invoke/util/Wrapper;

    new-instance v0, Lsun/invoke/util/Wrapper;

    const-string/jumbo v1, "VOID"

    const-class v3, Ljava/lang/Void;

    sget-object v4, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-static {v2}, Lsun/invoke/util/Wrapper$Format;->other(I)I

    move-result v8

    const/16 v2, 0x9

    const/16 v5, 0x56

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v8}, Lsun/invoke/util/Wrapper;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;CLjava/lang/Object;Ljava/lang/Object;I)V

    sput-object v0, Lsun/invoke/util/Wrapper;->VOID:Lsun/invoke/util/Wrapper;

    const/16 v0, 0xa

    new-array v0, v0, [Lsun/invoke/util/Wrapper;

    sget-object v1, Lsun/invoke/util/Wrapper;->BOOLEAN:Lsun/invoke/util/Wrapper;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lsun/invoke/util/Wrapper;->BYTE:Lsun/invoke/util/Wrapper;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lsun/invoke/util/Wrapper;->SHORT:Lsun/invoke/util/Wrapper;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lsun/invoke/util/Wrapper;->CHAR:Lsun/invoke/util/Wrapper;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lsun/invoke/util/Wrapper;->INT:Lsun/invoke/util/Wrapper;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lsun/invoke/util/Wrapper;->LONG:Lsun/invoke/util/Wrapper;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lsun/invoke/util/Wrapper;->FLOAT:Lsun/invoke/util/Wrapper;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lsun/invoke/util/Wrapper;->DOUBLE:Lsun/invoke/util/Wrapper;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lsun/invoke/util/Wrapper;->OBJECT:Lsun/invoke/util/Wrapper;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lsun/invoke/util/Wrapper;->VOID:Lsun/invoke/util/Wrapper;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sput-object v0, Lsun/invoke/util/Wrapper;->$VALUES:[Lsun/invoke/util/Wrapper;

    sget-boolean v0, Lsun/invoke/util/Wrapper;->-assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-static {}, Lsun/invoke/util/Wrapper;->checkConvertibleFrom()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    const/16 v0, 0x10

    new-array v0, v0, [Lsun/invoke/util/Wrapper;

    sput-object v0, Lsun/invoke/util/Wrapper;->FROM_PRIM:[Lsun/invoke/util/Wrapper;

    const/16 v0, 0x10

    new-array v0, v0, [Lsun/invoke/util/Wrapper;

    sput-object v0, Lsun/invoke/util/Wrapper;->FROM_WRAP:[Lsun/invoke/util/Wrapper;

    const/16 v0, 0x10

    new-array v0, v0, [Lsun/invoke/util/Wrapper;

    sput-object v0, Lsun/invoke/util/Wrapper;->FROM_CHAR:[Lsun/invoke/util/Wrapper;

    invoke-static {}, Lsun/invoke/util/Wrapper;->values()[Lsun/invoke/util/Wrapper;

    move-result-object v1

    const/4 v0, 0x0

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_4

    aget-object v11, v1, v0

    iget-object v3, v11, Lsun/invoke/util/Wrapper;->primitiveType:Ljava/lang/Class;

    invoke-static {v3}, Lsun/invoke/util/Wrapper;->hashPrim(Ljava/lang/Class;)I

    move-result v10

    iget-object v3, v11, Lsun/invoke/util/Wrapper;->wrapperType:Ljava/lang/Class;

    invoke-static {v3}, Lsun/invoke/util/Wrapper;->hashWrap(Ljava/lang/Class;)I

    move-result v12

    iget-char v3, v11, Lsun/invoke/util/Wrapper;->basicTypeChar:C

    invoke-static {v3}, Lsun/invoke/util/Wrapper;->hashChar(C)I

    move-result v9

    sget-boolean v3, Lsun/invoke/util/Wrapper;->-assertionsDisabled:Z

    if-nez v3, :cond_1

    sget-object v3, Lsun/invoke/util/Wrapper;->FROM_PRIM:[Lsun/invoke/util/Wrapper;

    aget-object v3, v3, v10

    if-eqz v3, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    sget-boolean v3, Lsun/invoke/util/Wrapper;->-assertionsDisabled:Z

    if-nez v3, :cond_2

    sget-object v3, Lsun/invoke/util/Wrapper;->FROM_WRAP:[Lsun/invoke/util/Wrapper;

    aget-object v3, v3, v12

    if-eqz v3, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_2
    sget-boolean v3, Lsun/invoke/util/Wrapper;->-assertionsDisabled:Z

    if-nez v3, :cond_3

    sget-object v3, Lsun/invoke/util/Wrapper;->FROM_CHAR:[Lsun/invoke/util/Wrapper;

    aget-object v3, v3, v9

    if-eqz v3, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_3
    sget-object v3, Lsun/invoke/util/Wrapper;->FROM_PRIM:[Lsun/invoke/util/Wrapper;

    aput-object v11, v3, v10

    sget-object v3, Lsun/invoke/util/Wrapper;->FROM_WRAP:[Lsun/invoke/util/Wrapper;

    aput-object v11, v3, v12

    sget-object v3, Lsun/invoke/util/Wrapper;->FROM_CHAR:[Lsun/invoke/util/Wrapper;

    aput-object v11, v3, v9

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;CLjava/lang/Object;Ljava/lang/Object;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;C",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lsun/invoke/util/Wrapper;->wrapperType:Ljava/lang/Class;

    iput-object p4, p0, Lsun/invoke/util/Wrapper;->primitiveType:Ljava/lang/Class;

    iput-char p5, p0, Lsun/invoke/util/Wrapper;->basicTypeChar:C

    iput-object p6, p0, Lsun/invoke/util/Wrapper;->zero:Ljava/lang/Object;

    iput-object p7, p0, Lsun/invoke/util/Wrapper;->emptyArray:Ljava/lang/Object;

    iput p8, p0, Lsun/invoke/util/Wrapper;->format:I

    invoke-virtual {p3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsun/invoke/util/Wrapper;->wrapperSimpleName:Ljava/lang/String;

    invoke-virtual {p4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsun/invoke/util/Wrapper;->primitiveSimpleName:Ljava/lang/String;

    return-void
.end method

.method public static asPrimitiveType(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation

    invoke-static {p0}, Lsun/invoke/util/Wrapper;->findWrapperType(Ljava/lang/Class;)Lsun/invoke/util/Wrapper;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lsun/invoke/util/Wrapper;->primitiveType()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, p0}, Lsun/invoke/util/Wrapper;->forceType(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    return-object v1

    :cond_0
    return-object p0
.end method

.method public static asWrapperType(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lsun/invoke/util/Wrapper;->forPrimitiveType(Ljava/lang/Class;)Lsun/invoke/util/Wrapper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lsun/invoke/util/Wrapper;->wrapperType(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    return-object v0

    :cond_0
    return-object p0
.end method

.method public static basicTypeChar(Ljava/lang/Class;)C
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)C"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x4c

    return v0

    :cond_0
    invoke-static {p0}, Lsun/invoke/util/Wrapper;->forPrimitiveType(Ljava/lang/Class;)Lsun/invoke/util/Wrapper;

    move-result-object v0

    invoke-virtual {v0}, Lsun/invoke/util/Wrapper;->basicTypeChar()C

    move-result v0

    return v0
.end method

.method private static boolValue(B)Z
    .locals 2

    const/4 v0, 0x0

    and-int/lit8 v1, p0, 0x1

    int-to-byte p0, v1

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private static checkConvertibleFrom()Z
    .locals 10

    const/4 v3, 0x0

    invoke-static {}, Lsun/invoke/util/Wrapper;->values()[Lsun/invoke/util/Wrapper;

    move-result-object v5

    array-length v6, v5

    move v4, v3

    :goto_0
    if-ge v4, v6, :cond_12

    aget-object v0, v5, v4

    sget-boolean v2, Lsun/invoke/util/Wrapper;->-assertionsDisabled:Z

    if-nez v2, :cond_0

    invoke-virtual {v0, v0}, Lsun/invoke/util/Wrapper;->isConvertibleFrom(Lsun/invoke/util/Wrapper;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    :cond_0
    sget-boolean v2, Lsun/invoke/util/Wrapper;->-assertionsDisabled:Z

    if-nez v2, :cond_1

    sget-object v2, Lsun/invoke/util/Wrapper;->VOID:Lsun/invoke/util/Wrapper;

    invoke-virtual {v2, v0}, Lsun/invoke/util/Wrapper;->isConvertibleFrom(Lsun/invoke/util/Wrapper;)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    :cond_1
    sget-object v2, Lsun/invoke/util/Wrapper;->VOID:Lsun/invoke/util/Wrapper;

    if-eq v0, v2, :cond_3

    sget-boolean v2, Lsun/invoke/util/Wrapper;->-assertionsDisabled:Z

    if-nez v2, :cond_2

    sget-object v2, Lsun/invoke/util/Wrapper;->OBJECT:Lsun/invoke/util/Wrapper;

    invoke-virtual {v2, v0}, Lsun/invoke/util/Wrapper;->isConvertibleFrom(Lsun/invoke/util/Wrapper;)Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    :cond_2
    sget-boolean v2, Lsun/invoke/util/Wrapper;->-assertionsDisabled:Z

    if-nez v2, :cond_3

    sget-object v2, Lsun/invoke/util/Wrapper;->VOID:Lsun/invoke/util/Wrapper;

    invoke-virtual {v0, v2}, Lsun/invoke/util/Wrapper;->isConvertibleFrom(Lsun/invoke/util/Wrapper;)Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    :cond_3
    sget-object v2, Lsun/invoke/util/Wrapper;->CHAR:Lsun/invoke/util/Wrapper;

    if-eq v0, v2, :cond_5

    sget-boolean v2, Lsun/invoke/util/Wrapper;->-assertionsDisabled:Z

    if-nez v2, :cond_4

    sget-object v2, Lsun/invoke/util/Wrapper;->CHAR:Lsun/invoke/util/Wrapper;

    invoke-virtual {v2, v0}, Lsun/invoke/util/Wrapper;->isConvertibleFrom(Lsun/invoke/util/Wrapper;)Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    :cond_4
    sget-object v2, Lsun/invoke/util/Wrapper;->INT:Lsun/invoke/util/Wrapper;

    invoke-virtual {v0, v2}, Lsun/invoke/util/Wrapper;->isConvertibleFrom(Lsun/invoke/util/Wrapper;)Z

    move-result v2

    if-nez v2, :cond_5

    sget-boolean v2, Lsun/invoke/util/Wrapper;->-assertionsDisabled:Z

    if-nez v2, :cond_5

    sget-object v2, Lsun/invoke/util/Wrapper;->CHAR:Lsun/invoke/util/Wrapper;

    invoke-virtual {v0, v2}, Lsun/invoke/util/Wrapper;->isConvertibleFrom(Lsun/invoke/util/Wrapper;)Z

    move-result v2

    if-eqz v2, :cond_5

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    :cond_5
    sget-object v2, Lsun/invoke/util/Wrapper;->BOOLEAN:Lsun/invoke/util/Wrapper;

    if-eq v0, v2, :cond_7

    sget-boolean v2, Lsun/invoke/util/Wrapper;->-assertionsDisabled:Z

    if-nez v2, :cond_6

    sget-object v2, Lsun/invoke/util/Wrapper;->BOOLEAN:Lsun/invoke/util/Wrapper;

    invoke-virtual {v2, v0}, Lsun/invoke/util/Wrapper;->isConvertibleFrom(Lsun/invoke/util/Wrapper;)Z

    move-result v2

    if-eqz v2, :cond_6

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    :cond_6
    sget-object v2, Lsun/invoke/util/Wrapper;->VOID:Lsun/invoke/util/Wrapper;

    if-eq v0, v2, :cond_7

    sget-object v2, Lsun/invoke/util/Wrapper;->OBJECT:Lsun/invoke/util/Wrapper;

    if-eq v0, v2, :cond_7

    sget-boolean v2, Lsun/invoke/util/Wrapper;->-assertionsDisabled:Z

    if-nez v2, :cond_7

    sget-object v2, Lsun/invoke/util/Wrapper;->BOOLEAN:Lsun/invoke/util/Wrapper;

    invoke-virtual {v0, v2}, Lsun/invoke/util/Wrapper;->isConvertibleFrom(Lsun/invoke/util/Wrapper;)Z

    move-result v2

    if-eqz v2, :cond_7

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    :cond_7
    invoke-virtual {v0}, Lsun/invoke/util/Wrapper;->isSigned()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-static {}, Lsun/invoke/util/Wrapper;->values()[Lsun/invoke/util/Wrapper;

    move-result-object v7

    array-length v8, v7

    move v2, v3

    :goto_1
    if-ge v2, v8, :cond_c

    aget-object v1, v7, v2

    if-ne v0, v1, :cond_9

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_9
    invoke-virtual {v1}, Lsun/invoke/util/Wrapper;->isFloating()Z

    move-result v9

    if-eqz v9, :cond_a

    sget-boolean v9, Lsun/invoke/util/Wrapper;->-assertionsDisabled:Z

    if-nez v9, :cond_8

    invoke-virtual {v0, v1}, Lsun/invoke/util/Wrapper;->isConvertibleFrom(Lsun/invoke/util/Wrapper;)Z

    move-result v9

    if-eqz v9, :cond_8

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    :cond_a
    invoke-virtual {v1}, Lsun/invoke/util/Wrapper;->isSigned()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-virtual {v0, v1}, Lsun/invoke/util/Wrapper;->compareTo(Ljava/lang/Enum;)I

    move-result v9

    if-gez v9, :cond_b

    sget-boolean v9, Lsun/invoke/util/Wrapper;->-assertionsDisabled:Z

    if-nez v9, :cond_8

    invoke-virtual {v0, v1}, Lsun/invoke/util/Wrapper;->isConvertibleFrom(Lsun/invoke/util/Wrapper;)Z

    move-result v9

    if-eqz v9, :cond_8

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    :cond_b
    sget-boolean v9, Lsun/invoke/util/Wrapper;->-assertionsDisabled:Z

    if-nez v9, :cond_8

    invoke-virtual {v0, v1}, Lsun/invoke/util/Wrapper;->isConvertibleFrom(Lsun/invoke/util/Wrapper;)Z

    move-result v9

    if-nez v9, :cond_8

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    :cond_c
    invoke-virtual {v0}, Lsun/invoke/util/Wrapper;->isFloating()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-static {}, Lsun/invoke/util/Wrapper;->values()[Lsun/invoke/util/Wrapper;

    move-result-object v7

    array-length v8, v7

    move v2, v3

    :goto_2
    if-ge v2, v8, :cond_11

    aget-object v1, v7, v2

    if-ne v0, v1, :cond_e

    :cond_d
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_e
    invoke-virtual {v1}, Lsun/invoke/util/Wrapper;->isSigned()Z

    move-result v9

    if-eqz v9, :cond_f

    sget-boolean v9, Lsun/invoke/util/Wrapper;->-assertionsDisabled:Z

    if-nez v9, :cond_d

    invoke-virtual {v0, v1}, Lsun/invoke/util/Wrapper;->isConvertibleFrom(Lsun/invoke/util/Wrapper;)Z

    move-result v9

    if-nez v9, :cond_d

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    :cond_f
    invoke-virtual {v1}, Lsun/invoke/util/Wrapper;->isFloating()Z

    move-result v9

    if-eqz v9, :cond_d

    invoke-virtual {v0, v1}, Lsun/invoke/util/Wrapper;->compareTo(Ljava/lang/Enum;)I

    move-result v9

    if-gez v9, :cond_10

    sget-boolean v9, Lsun/invoke/util/Wrapper;->-assertionsDisabled:Z

    if-nez v9, :cond_d

    invoke-virtual {v0, v1}, Lsun/invoke/util/Wrapper;->isConvertibleFrom(Lsun/invoke/util/Wrapper;)Z

    move-result v9

    if-eqz v9, :cond_d

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    :cond_10
    sget-boolean v9, Lsun/invoke/util/Wrapper;->-assertionsDisabled:Z

    if-nez v9, :cond_d

    invoke-virtual {v0, v1}, Lsun/invoke/util/Wrapper;->isConvertibleFrom(Lsun/invoke/util/Wrapper;)Z

    move-result v9

    if-nez v9, :cond_d

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    :cond_11
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto/16 :goto_0

    :cond_12
    const/4 v2, 0x1

    return v2
.end method

.method private convert(Ljava/lang/Object;Ljava/lang/Class;Z)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<TT;>;Z)TT;"
        }
    .end annotation

    sget-object v5, Lsun/invoke/util/Wrapper;->OBJECT:Lsun/invoke/util/Wrapper;

    if-ne p0, v5, :cond_2

    sget-boolean v5, Lsun/invoke/util/Wrapper;->-assertionsDisabled:Z

    if-nez v5, :cond_0

    invoke-virtual {p2}, Ljava/lang/Class;->isPrimitive()Z

    move-result v5

    if-eqz v5, :cond_0

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Class;->isInterface()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {p2, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    move-object v0, p1

    return-object p1

    :cond_2
    invoke-virtual {p0, p2}, Lsun/invoke/util/Wrapper;->wrapperType(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v3, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    return-object v5

    :cond_3
    if-nez p3, :cond_5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lsun/invoke/util/Wrapper;->findWrapperType(Ljava/lang/Class;)Lsun/invoke/util/Wrapper;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {p0, v1}, Lsun/invoke/util/Wrapper;->isConvertibleFrom(Lsun/invoke/util/Wrapper;)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_6

    :cond_4
    invoke-static {v3, v2}, Lsun/invoke/util/Wrapper;->newClassCastException(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/ClassCastException;

    move-result-object v5

    throw v5

    :cond_5
    if-nez p1, :cond_6

    iget-object v4, p0, Lsun/invoke/util/Wrapper;->zero:Ljava/lang/Object;

    return-object v4

    :cond_6
    invoke-virtual {p0, p1}, Lsun/invoke/util/Wrapper;->wrap(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-boolean v5, Lsun/invoke/util/Wrapper;->-assertionsDisabled:Z

    if-nez v5, :cond_8

    if-nez v0, :cond_7

    const-class v5, Ljava/lang/Void;

    :goto_0
    if-eq v5, v3, :cond_8

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    :cond_7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    goto :goto_0

    :cond_8
    return-object v0
.end method

.method static findPrimitiveType(Ljava/lang/Class;)Lsun/invoke/util/Wrapper;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lsun/invoke/util/Wrapper;"
        }
    .end annotation

    const/4 v3, 0x0

    sget-object v1, Lsun/invoke/util/Wrapper;->FROM_PRIM:[Lsun/invoke/util/Wrapper;

    invoke-static {p0}, Lsun/invoke/util/Wrapper;->hashPrim(Ljava/lang/Class;)I

    move-result v2

    aget-object v0, v1, v2

    if-eqz v0, :cond_0

    iget-object v1, v0, Lsun/invoke/util/Wrapper;->primitiveType:Ljava/lang/Class;

    if-ne v1, p0, :cond_0

    return-object v0

    :cond_0
    return-object v3
.end method

.method static findWrapperType(Ljava/lang/Class;)Lsun/invoke/util/Wrapper;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lsun/invoke/util/Wrapper;"
        }
    .end annotation

    const/4 v3, 0x0

    sget-object v1, Lsun/invoke/util/Wrapper;->FROM_WRAP:[Lsun/invoke/util/Wrapper;

    invoke-static {p0}, Lsun/invoke/util/Wrapper;->hashWrap(Ljava/lang/Class;)I

    move-result v2

    aget-object v0, v1, v2

    if-eqz v0, :cond_0

    iget-object v1, v0, Lsun/invoke/util/Wrapper;->wrapperType:Ljava/lang/Class;

    if-ne v1, p0, :cond_0

    return-object v0

    :cond_0
    return-object v3
.end method

.method public static forBasicType(C)Lsun/invoke/util/Wrapper;
    .locals 6

    sget-object v2, Lsun/invoke/util/Wrapper;->FROM_CHAR:[Lsun/invoke/util/Wrapper;

    invoke-static {p0}, Lsun/invoke/util/Wrapper;->hashChar(C)I

    move-result v3

    aget-object v0, v2, v3

    if-eqz v0, :cond_0

    iget-char v2, v0, Lsun/invoke/util/Wrapper;->basicTypeChar:C

    if-ne v2, p0, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Lsun/invoke/util/Wrapper;->values()[Lsun/invoke/util/Wrapper;

    move-result-object v3

    const/4 v2, 0x0

    array-length v4, v3

    :goto_0
    if-ge v2, v4, :cond_2

    aget-object v1, v3, v2

    iget-char v5, v0, Lsun/invoke/util/Wrapper;->basicTypeChar:C

    if-ne v5, p0, :cond_1

    new-instance v2, Ljava/lang/InternalError;

    invoke-direct {v2}, Ljava/lang/InternalError;-><init>()V

    throw v2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "not basic type char: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lsun/invoke/util/Wrapper;->newIllegalArgumentException(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public static forBasicType(Ljava/lang/Class;)Lsun/invoke/util/Wrapper;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lsun/invoke/util/Wrapper;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lsun/invoke/util/Wrapper;->forPrimitiveType(Ljava/lang/Class;)Lsun/invoke/util/Wrapper;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Lsun/invoke/util/Wrapper;->OBJECT:Lsun/invoke/util/Wrapper;

    return-object v0
.end method

.method public static forPrimitiveType(Ljava/lang/Class;)Lsun/invoke/util/Wrapper;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lsun/invoke/util/Wrapper;"
        }
    .end annotation

    invoke-static {p0}, Lsun/invoke/util/Wrapper;->findPrimitiveType(Ljava/lang/Class;)Lsun/invoke/util/Wrapper;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/InternalError;

    invoke-direct {v1}, Ljava/lang/InternalError;-><init>()V

    throw v1

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "not primitive: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lsun/invoke/util/Wrapper;->newIllegalArgumentException(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public static forWrapperType(Ljava/lang/Class;)Lsun/invoke/util/Wrapper;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lsun/invoke/util/Wrapper;"
        }
    .end annotation

    invoke-static {p0}, Lsun/invoke/util/Wrapper;->findWrapperType(Ljava/lang/Class;)Lsun/invoke/util/Wrapper;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Lsun/invoke/util/Wrapper;->values()[Lsun/invoke/util/Wrapper;

    move-result-object v3

    const/4 v2, 0x0

    array-length v4, v3

    :goto_0
    if-ge v2, v4, :cond_2

    aget-object v1, v3, v2

    iget-object v5, v1, Lsun/invoke/util/Wrapper;->wrapperType:Ljava/lang/Class;

    if-ne v5, p0, :cond_1

    new-instance v2, Ljava/lang/InternalError;

    invoke-direct {v2}, Ljava/lang/InternalError;-><init>()V

    throw v2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "not wrapper: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lsun/invoke/util/Wrapper;->newIllegalArgumentException(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method static forceType(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Class;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation

    if-eq p0, p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {p0}, Lsun/invoke/util/Wrapper;->forPrimitiveType(Ljava/lang/Class;)Lsun/invoke/util/Wrapper;

    move-result-object v2

    invoke-static {p1}, Lsun/invoke/util/Wrapper;->findWrapperType(Ljava/lang/Class;)Lsun/invoke/util/Wrapper;

    move-result-object v3

    if-ne v2, v3, :cond_3

    :cond_0
    const/4 v1, 0x1

    :goto_0
    if-nez v1, :cond_1

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " <= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1
    sget-boolean v2, Lsun/invoke/util/Wrapper;->-assertionsDisabled:Z

    if-nez v2, :cond_9

    if-eq p0, p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {p0}, Lsun/invoke/util/Wrapper;->forPrimitiveType(Ljava/lang/Class;)Lsun/invoke/util/Wrapper;

    move-result-object v2

    invoke-static {p1}, Lsun/invoke/util/Wrapper;->findWrapperType(Ljava/lang/Class;)Lsun/invoke/util/Wrapper;

    move-result-object v3

    if-ne v2, v3, :cond_6

    :cond_2
    const/4 v2, 0x1

    :goto_1
    if-nez v2, :cond_9

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    :cond_3
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {p1}, Lsun/invoke/util/Wrapper;->forPrimitiveType(Ljava/lang/Class;)Lsun/invoke/util/Wrapper;

    move-result-object v2

    invoke-static {p0}, Lsun/invoke/util/Wrapper;->findWrapperType(Ljava/lang/Class;)Lsun/invoke/util/Wrapper;

    move-result-object v3

    if-eq v2, v3, :cond_0

    :cond_4
    const-class v2, Ljava/lang/Object;

    if-ne p0, v2, :cond_5

    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v2

    xor-int/lit8 v1, v2, 0x1

    goto :goto_0

    :cond_5
    const/4 v1, 0x0

    goto :goto_0

    :cond_6
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-static {p1}, Lsun/invoke/util/Wrapper;->forPrimitiveType(Ljava/lang/Class;)Lsun/invoke/util/Wrapper;

    move-result-object v2

    invoke-static {p0}, Lsun/invoke/util/Wrapper;->findWrapperType(Ljava/lang/Class;)Lsun/invoke/util/Wrapper;

    move-result-object v3

    if-eq v2, v3, :cond_2

    :cond_7
    const-class v2, Ljava/lang/Object;

    if-ne p0, v2, :cond_8

    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_8
    const/4 v2, 0x0

    goto :goto_1

    :cond_9
    move-object v0, p0

    return-object p0
.end method

.method private static hashChar(C)I
    .locals 1

    shr-int/lit8 v0, p0, 0x1

    add-int/2addr v0, p0

    rem-int/lit8 v0, v0, 0x10

    return v0
.end method

.method private static hashPrim(Ljava/lang/Class;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)I"
        }
    .end annotation

    const/4 v3, 0x0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x3

    if-ge v1, v2, :cond_0

    return v3

    :cond_0
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int/2addr v1, v2

    rem-int/lit8 v1, v1, 0x10

    return v1
.end method

.method private static hashWrap(Ljava/lang/Class;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)I"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v0, 0xa

    sget-boolean v2, Lsun/invoke/util/Wrapper;->-assertionsDisabled:Z

    if-nez v2, :cond_0

    const-string/jumbo v2, "java.lang."

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xa

    if-eq v3, v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xd

    if-ge v2, v3, :cond_1

    const/4 v2, 0x0

    return v2

    :cond_1
    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    mul-int/lit8 v2, v2, 0x3

    const/16 v3, 0xc

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int/2addr v2, v3

    rem-int/lit8 v2, v2, 0x10

    return v2
.end method

.method public static isPrimitiveType(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    return v0
.end method

.method public static isWrapperType(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    invoke-static {p0}, Lsun/invoke/util/Wrapper;->findWrapperType(Ljava/lang/Class;)Lsun/invoke/util/Wrapper;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static newClassCastException(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/ClassCastException;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/ClassCastException;"
        }
    .end annotation

    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is not compatible with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static newIllegalArgumentException(Ljava/lang/String;)Ljava/lang/RuntimeException;
    .locals 1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static newIllegalArgumentException(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/RuntimeException;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lsun/invoke/util/Wrapper;->newIllegalArgumentException(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    return-object v0
.end method

.method private static numberValue(Ljava/lang/Object;)Ljava/lang/Number;
    .locals 1

    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/Number;

    return-object p0

    :cond_0
    instance-of v0, p0, Ljava/lang/Character;

    if-eqz v0, :cond_1

    check-cast p0, Ljava/lang/Character;

    invoke-virtual {p0}, Ljava/lang/Character;->charValue()C

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_1
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    check-cast p0, Ljava/lang/Number;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lsun/invoke/util/Wrapper;
    .locals 1

    const-class v0, Lsun/invoke/util/Wrapper;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lsun/invoke/util/Wrapper;

    return-object v0
.end method

.method public static values()[Lsun/invoke/util/Wrapper;
    .locals 1

    sget-object v0, Lsun/invoke/util/Wrapper;->$VALUES:[Lsun/invoke/util/Wrapper;

    return-object v0
.end method


# virtual methods
.method public arrayType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    iget-object v0, p0, Lsun/invoke/util/Wrapper;->emptyArray:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public basicTypeChar()C
    .locals 1

    iget-char v0, p0, Lsun/invoke/util/Wrapper;->basicTypeChar:C

    return v0
.end method

.method public bitWidth()I
    .locals 1

    iget v0, p0, Lsun/invoke/util/Wrapper;->format:I

    shr-int/lit8 v0, v0, 0x2

    and-int/lit16 v0, v0, 0x3ff

    return v0
.end method

.method public cast(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lsun/invoke/util/Wrapper;->convert(Ljava/lang/Object;Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public convert(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lsun/invoke/util/Wrapper;->convert(Ljava/lang/Object;Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public copyArrayBoxing(Ljava/lang/Object;I[Ljava/lang/Object;II)V
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Lsun/invoke/util/Wrapper;->arrayType()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_0

    invoke-virtual {p0}, Lsun/invoke/util/Wrapper;->arrayType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p5, :cond_2

    add-int v2, v0, p2

    invoke-static {p1, v2}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    sget-boolean v2, Lsun/invoke/util/Wrapper;->-assertionsDisabled:Z

    if-nez v2, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    iget-object v3, p0, Lsun/invoke/util/Wrapper;->wrapperType:Ljava/lang/Class;

    if-eq v2, v3, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    :cond_1
    add-int v2, v0, p4

    aput-object v1, p3, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public copyArrayUnboxing([Ljava/lang/Object;ILjava/lang/Object;II)V
    .locals 4

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Lsun/invoke/util/Wrapper;->arrayType()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_0

    invoke-virtual {p0}, Lsun/invoke/util/Wrapper;->arrayType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p5, :cond_1

    add-int v2, v0, p2

    aget-object v1, p1, v2

    iget-object v2, p0, Lsun/invoke/util/Wrapper;->primitiveType:Ljava/lang/Class;

    invoke-virtual {p0, v1, v2}, Lsun/invoke/util/Wrapper;->convert(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    add-int v2, v0, p4

    invoke-static {p3, v2, v1}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public detailString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lsun/invoke/util/Wrapper;->wrapperSimpleName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lsun/invoke/util/Wrapper;->wrapperType:Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lsun/invoke/util/Wrapper;->primitiveType:Ljava/lang/Class;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-char v2, p0, Lsun/invoke/util/Wrapper;->basicTypeChar:C

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget-object v2, p0, Lsun/invoke/util/Wrapper;->zero:Ljava/lang/Object;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lsun/invoke/util/Wrapper;->format:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isConvertibleFrom(Lsun/invoke/util/Wrapper;)Z
    .locals 5

    const/4 v4, 0x0

    const/4 v2, 0x1

    if-ne p0, p1, :cond_0

    return v2

    :cond_0
    invoke-virtual {p0, p1}, Lsun/invoke/util/Wrapper;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-gez v1, :cond_1

    return v4

    :cond_1
    iget v1, p0, Lsun/invoke/util/Wrapper;->format:I

    iget v3, p1, Lsun/invoke/util/Wrapper;->format:I

    and-int/2addr v1, v3

    and-int/lit16 v1, v1, -0x1000

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_5

    invoke-virtual {p0}, Lsun/invoke/util/Wrapper;->isOther()Z

    move-result v1

    if-eqz v1, :cond_3

    return v2

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    iget v1, p1, Lsun/invoke/util/Wrapper;->format:I

    const/16 v3, 0x41

    if-ne v1, v3, :cond_4

    return v2

    :cond_4
    return v4

    :cond_5
    sget-boolean v1, Lsun/invoke/util/Wrapper;->-assertionsDisabled:Z

    if-nez v1, :cond_7

    invoke-virtual {p0}, Lsun/invoke/util/Wrapper;->isFloating()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {p0}, Lsun/invoke/util/Wrapper;->isSigned()Z

    move-result v1

    :goto_1
    if-nez v1, :cond_7

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_6
    move v1, v2

    goto :goto_1

    :cond_7
    sget-boolean v1, Lsun/invoke/util/Wrapper;->-assertionsDisabled:Z

    if-nez v1, :cond_9

    invoke-virtual {p1}, Lsun/invoke/util/Wrapper;->isFloating()Z

    move-result v1

    if-nez v1, :cond_8

    invoke-virtual {p1}, Lsun/invoke/util/Wrapper;->isSigned()Z

    move-result v1

    :goto_2
    if-nez v1, :cond_9

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_8
    move v1, v2

    goto :goto_2

    :cond_9
    return v2
.end method

.method public isDoubleWord()Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lsun/invoke/util/Wrapper;->format:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isFloating()Z
    .locals 2

    iget v0, p0, Lsun/invoke/util/Wrapper;->format:I

    const/16 v1, 0x1081

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isIntegral()Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lsun/invoke/util/Wrapper;->isNumeric()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lsun/invoke/util/Wrapper;->format:I

    const/16 v2, 0x1081

    if-ge v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isNumeric()Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lsun/invoke/util/Wrapper;->format:I

    and-int/lit8 v1, v1, -0x4

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isOther()Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lsun/invoke/util/Wrapper;->format:I

    and-int/lit8 v1, v1, -0x4

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isSigned()Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lsun/invoke/util/Wrapper;->format:I

    if-gez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isSingleWord()Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lsun/invoke/util/Wrapper;->format:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isSubwordOrInt()Z
    .locals 1

    invoke-virtual {p0}, Lsun/invoke/util/Wrapper;->isIntegral()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lsun/invoke/util/Wrapper;->isSingleWord()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUnsigned()Z
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Lsun/invoke/util/Wrapper;->format:I

    const/4 v2, 0x5

    if-lt v1, v2, :cond_0

    iget v1, p0, Lsun/invoke/util/Wrapper;->format:I

    const/16 v2, 0x1081

    if-ge v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public makeArray(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lsun/invoke/util/Wrapper;->primitiveType:Ljava/lang/Class;

    invoke-static {v0, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public primitiveSimpleName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsun/invoke/util/Wrapper;->primitiveSimpleName:Ljava/lang/String;

    return-object v0
.end method

.method public primitiveType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    iget-object v0, p0, Lsun/invoke/util/Wrapper;->primitiveType:Ljava/lang/Class;

    return-object v0
.end method

.method public stackSlots()I
    .locals 1

    iget v0, p0, Lsun/invoke/util/Wrapper;->format:I

    shr-int/lit8 v0, v0, 0x0

    and-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public wrap(I)Ljava/lang/Object;
    .locals 2

    iget-char v0, p0, Lsun/invoke/util/Wrapper;->basicTypeChar:C

    const/16 v1, 0x4c

    if-ne v0, v1, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_0
    iget-char v0, p0, Lsun/invoke/util/Wrapper;->basicTypeChar:C

    sparse-switch v0, :sswitch_data_0

    new-instance v0, Ljava/lang/InternalError;

    const-string/jumbo v1, "bad wrapper"

    invoke-direct {v0, v1}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    const-string/jumbo v0, "cannot wrap to object type"

    invoke-static {v0}, Lsun/invoke/util/Wrapper;->newIllegalArgumentException(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :sswitch_1
    const/4 v0, 0x0

    return-object v0

    :sswitch_2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :sswitch_3
    int-to-long v0, p1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    :sswitch_4
    int-to-float v0, p1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    :sswitch_5
    int-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    :sswitch_6
    int-to-short v0, p1

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    return-object v0

    :sswitch_7
    int-to-byte v0, p1

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    :sswitch_8
    int-to-char v0, p1

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    return-object v0

    :sswitch_9
    int-to-byte v0, p1

    invoke-static {v0}, Lsun/invoke/util/Wrapper;->boolValue(B)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x42 -> :sswitch_7
        0x43 -> :sswitch_8
        0x44 -> :sswitch_5
        0x46 -> :sswitch_4
        0x49 -> :sswitch_2
        0x4a -> :sswitch_3
        0x4c -> :sswitch_0
        0x53 -> :sswitch_6
        0x56 -> :sswitch_1
        0x5a -> :sswitch_9
    .end sparse-switch
.end method

.method public wrap(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget-char v1, p0, Lsun/invoke/util/Wrapper;->basicTypeChar:C

    sparse-switch v1, :sswitch_data_0

    invoke-static {p1}, Lsun/invoke/util/Wrapper;->numberValue(Ljava/lang/Object;)Ljava/lang/Number;

    move-result-object v0

    iget-char v1, p0, Lsun/invoke/util/Wrapper;->basicTypeChar:C

    sparse-switch v1, :sswitch_data_1

    new-instance v1, Ljava/lang/InternalError;

    const-string/jumbo v2, "bad wrapper"

    invoke-direct {v1, v2}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v1

    :sswitch_0
    return-object p1

    :sswitch_1
    const/4 v1, 0x0

    return-object v1

    :sswitch_2
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1

    :sswitch_3
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    return-object v1

    :sswitch_4
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    return-object v1

    :sswitch_5
    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    return-object v1

    :sswitch_6
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v1

    int-to-short v1, v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    return-object v1

    :sswitch_7
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v1

    int-to-byte v1, v1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    return-object v1

    :sswitch_8
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v1

    int-to-char v1, v1

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    return-object v1

    :sswitch_9
    invoke-virtual {v0}, Ljava/lang/Number;->byteValue()B

    move-result v1

    invoke-static {v1}, Lsun/invoke/util/Wrapper;->boolValue(B)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x4c -> :sswitch_0
        0x56 -> :sswitch_1
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x42 -> :sswitch_7
        0x43 -> :sswitch_8
        0x44 -> :sswitch_5
        0x46 -> :sswitch_4
        0x49 -> :sswitch_2
        0x4a -> :sswitch_3
        0x53 -> :sswitch_6
        0x5a -> :sswitch_9
    .end sparse-switch
.end method

.method public wrapperSimpleName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsun/invoke/util/Wrapper;->wrapperSimpleName:Ljava/lang/String;

    return-object v0
.end method

.method public wrapperType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    iget-object v0, p0, Lsun/invoke/util/Wrapper;->wrapperType:Ljava/lang/Class;

    return-object v0
.end method

.method public wrapperType(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lsun/invoke/util/Wrapper;->wrapperType:Ljava/lang/Class;

    if-ne p1, v0, :cond_0

    return-object p1

    :cond_0
    iget-object v0, p0, Lsun/invoke/util/Wrapper;->primitiveType:Ljava/lang/Class;

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lsun/invoke/util/Wrapper;->wrapperType:Ljava/lang/Class;

    const-class v1, Ljava/lang/Object;

    if-ne v0, v1, :cond_2

    :cond_1
    iget-object v0, p0, Lsun/invoke/util/Wrapper;->wrapperType:Ljava/lang/Class;

    invoke-static {v0, p1}, Lsun/invoke/util/Wrapper;->forceType(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    return-object v0

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lsun/invoke/util/Wrapper;->primitiveType:Ljava/lang/Class;

    invoke-static {p1, v0}, Lsun/invoke/util/Wrapper;->newClassCastException(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/ClassCastException;

    move-result-object v0

    throw v0
.end method

.method public zero()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lsun/invoke/util/Wrapper;->zero:Ljava/lang/Object;

    return-object v0
.end method

.method public zero(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lsun/invoke/util/Wrapper;->zero:Ljava/lang/Object;

    invoke-virtual {p0, v0, p1}, Lsun/invoke/util/Wrapper;->convert(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
