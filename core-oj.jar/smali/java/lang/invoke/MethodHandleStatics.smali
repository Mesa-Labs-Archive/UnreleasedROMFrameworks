.class Ljava/lang/invoke/MethodHandleStatics;
.super Ljava/lang/Object;
.source "MethodHandleStatics.java"


# static fields
.field static final UNSAFE:Lsun/misc/Unsafe;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Ljava/lang/invoke/MethodHandleStatics;->UNSAFE:Lsun/misc/Unsafe;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static NYI()Ljava/lang/Error;
    .locals 2

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "NYI"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method private static message(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method private static message(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method static newIllegalArgumentException(Ljava/lang/String;)Ljava/lang/RuntimeException;
    .locals 1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static newIllegalArgumentException(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/RuntimeException;
    .locals 2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p0, p1}, Ljava/lang/invoke/MethodHandleStatics;->message(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static newIllegalArgumentException(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/RuntimeException;
    .locals 2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p0, p1, p2}, Ljava/lang/invoke/MethodHandleStatics;->message(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static newIllegalStateException(Ljava/lang/String;)Ljava/lang/RuntimeException;
    .locals 1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static newIllegalStateException(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/RuntimeException;
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {p0, p1}, Ljava/lang/invoke/MethodHandleStatics;->message(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static newInternalError(Ljava/lang/String;)Ljava/lang/InternalError;
    .locals 1

    new-instance v0, Ljava/lang/InternalError;

    invoke-direct {v0, p0}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static newInternalError(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/InternalError;
    .locals 1

    new-instance v0, Ljava/lang/InternalError;

    invoke-direct {v0, p0, p1}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method static newInternalError(Ljava/lang/Throwable;)Ljava/lang/InternalError;
    .locals 1

    new-instance v0, Ljava/lang/InternalError;

    invoke-direct {v0, p0}, Ljava/lang/InternalError;-><init>(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method static uncaughtException(Ljava/lang/Throwable;)Ljava/lang/Error;
    .locals 1

    instance-of v0, p0, Ljava/lang/Error;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/Error;

    throw p0

    :cond_0
    instance-of v0, p0, Ljava/lang/RuntimeException;

    if-eqz v0, :cond_1

    check-cast p0, Ljava/lang/RuntimeException;

    throw p0

    :cond_1
    const-string/jumbo v0, "uncaught exception"

    invoke-static {v0, p0}, Ljava/lang/invoke/MethodHandleStatics;->newInternalError(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/InternalError;

    move-result-object v0

    throw v0
.end method
