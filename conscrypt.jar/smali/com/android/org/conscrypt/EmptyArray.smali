.class final Lcom/android/org/conscrypt/EmptyArray;
.super Ljava/lang/Object;
.source "EmptyArray.java"


# static fields
.field static final BOOLEAN:[Z

.field static final BYTE:[B

.field static final CHAR:[C

.field static final CLASS:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field static final DOUBLE:[D

.field static final INT:[I

.field static final OBJECT:[Ljava/lang/Object;

.field static final STACK_TRACE_ELEMENT:[Ljava/lang/StackTraceElement;

.field static final STRING:[Ljava/lang/String;

.field static final THROWABLE:[Ljava/lang/Throwable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    new-array v0, v1, [Z

    sput-object v0, Lcom/android/org/conscrypt/EmptyArray;->BOOLEAN:[Z

    new-array v0, v1, [B

    sput-object v0, Lcom/android/org/conscrypt/EmptyArray;->BYTE:[B

    new-array v0, v1, [C

    sput-object v0, Lcom/android/org/conscrypt/EmptyArray;->CHAR:[C

    new-array v0, v1, [D

    sput-object v0, Lcom/android/org/conscrypt/EmptyArray;->DOUBLE:[D

    new-array v0, v1, [I

    sput-object v0, Lcom/android/org/conscrypt/EmptyArray;->INT:[I

    new-array v0, v1, [Ljava/lang/Class;

    sput-object v0, Lcom/android/org/conscrypt/EmptyArray;->CLASS:[Ljava/lang/Class;

    new-array v0, v1, [Ljava/lang/Object;

    sput-object v0, Lcom/android/org/conscrypt/EmptyArray;->OBJECT:[Ljava/lang/Object;

    new-array v0, v1, [Ljava/lang/String;

    sput-object v0, Lcom/android/org/conscrypt/EmptyArray;->STRING:[Ljava/lang/String;

    new-array v0, v1, [Ljava/lang/Throwable;

    sput-object v0, Lcom/android/org/conscrypt/EmptyArray;->THROWABLE:[Ljava/lang/Throwable;

    new-array v0, v1, [Ljava/lang/StackTraceElement;

    sput-object v0, Lcom/android/org/conscrypt/EmptyArray;->STACK_TRACE_ELEMENT:[Ljava/lang/StackTraceElement;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
