.class final Ljava/util/concurrent/ConcurrentSkipListMap$Node;
.super Ljava/lang/Object;
.source "ConcurrentSkipListMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ConcurrentSkipListMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Node"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final NEXT:J

.field private static final U:Lsun/misc/Unsafe;

.field private static final VALUE:J


# instance fields
.field final key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field volatile next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentSkipListMap$Node",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field volatile value:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v1

    sput-object v1, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->U:Lsun/misc/Unsafe;

    :try_start_0
    sget-object v1, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->U:Lsun/misc/Unsafe;

    const-class v2, Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    const-string/jumbo v3, "value"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->VALUE:J

    sget-object v1, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->U:Lsun/misc/Unsafe;

    const-class v2, Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    const-string/jumbo v3, "next"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->NEXT:J
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/concurrent/ConcurrentSkipListMap$Node;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Object;",
            "Ljava/util/concurrent/ConcurrentSkipListMap$Node",
            "<TK;TV;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    iput-object p2, p0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->value:Ljava/lang/Object;

    iput-object p3, p0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    return-void
.end method

.method constructor <init>(Ljava/util/concurrent/ConcurrentSkipListMap$Node;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentSkipListMap$Node",
            "<TK;TV;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    iput-object p0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->value:Ljava/lang/Object;

    iput-object p1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    return-void
.end method


# virtual methods
.method appendMarker(Ljava/util/concurrent/ConcurrentSkipListMap$Node;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentSkipListMap$Node",
            "<TK;TV;>;)Z"
        }
    .end annotation

    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    invoke-direct {v0, p1}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;-><init>(Ljava/util/concurrent/ConcurrentSkipListMap$Node;)V

    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->casNext(Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/util/concurrent/ConcurrentSkipListMap$Node;)Z

    move-result v0

    return v0
.end method

.method casNext(Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/util/concurrent/ConcurrentSkipListMap$Node;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentSkipListMap$Node",
            "<TK;TV;>;",
            "Ljava/util/concurrent/ConcurrentSkipListMap$Node",
            "<TK;TV;>;)Z"
        }
    .end annotation

    sget-object v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->NEXT:J

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method casValue(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 6

    sget-object v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->VALUE:J

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method createSnapshot()Ljava/util/AbstractMap$SimpleImmutableEntry;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/AbstractMap$SimpleImmutableEntry",
            "<TK;TV;>;"
        }
    .end annotation

    const/4 v3, 0x0

    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->value:Ljava/lang/Object;

    if-eqz v0, :cond_0

    if-ne v0, p0, :cond_1

    :cond_0
    return-object v3

    :cond_1
    sget-object v2, Ljava/util/concurrent/ConcurrentSkipListMap;->BASE_HEADER:Ljava/lang/Object;

    if-eq v0, v2, :cond_0

    move-object v1, v0

    new-instance v2, Ljava/util/AbstractMap$SimpleImmutableEntry;

    iget-object v3, p0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    invoke-direct {v2, v3, v0}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2
.end method

.method getValidValue()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->value:Ljava/lang/Object;

    if-eq v0, p0, :cond_0

    sget-object v2, Ljava/util/concurrent/ConcurrentSkipListMap;->BASE_HEADER:Ljava/lang/Object;

    if-ne v0, v2, :cond_1

    :cond_0
    const/4 v2, 0x0

    return-object v2

    :cond_1
    move-object v1, v0

    return-object v0
.end method

.method helpDelete(Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/util/concurrent/ConcurrentSkipListMap$Node;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentSkipListMap$Node",
            "<TK;TV;>;",
            "Ljava/util/concurrent/ConcurrentSkipListMap$Node",
            "<TK;TV;>;)V"
        }
    .end annotation

    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    if-ne p2, v0, :cond_1

    iget-object v0, p1, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    if-ne p0, v0, :cond_1

    if-eqz p2, :cond_0

    iget-object v0, p2, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->value:Ljava/lang/Object;

    if-eq v0, p2, :cond_2

    :cond_0
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    invoke-direct {v0, p2}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;-><init>(Ljava/util/concurrent/ConcurrentSkipListMap$Node;)V

    invoke-virtual {p0, p2, v0}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->casNext(Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/util/concurrent/ConcurrentSkipListMap$Node;)Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p2, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    invoke-virtual {p1, p0, v0}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->casNext(Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/util/concurrent/ConcurrentSkipListMap$Node;)Z

    goto :goto_0
.end method

.method isBaseHeader()Z
    .locals 2

    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->value:Ljava/lang/Object;

    sget-object v1, Ljava/util/concurrent/ConcurrentSkipListMap;->BASE_HEADER:Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isMarker()Z
    .locals 1

    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->value:Ljava/lang/Object;

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
