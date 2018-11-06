.class public Ljava/util/concurrent/ConcurrentHashMap;
.super Ljava/util/AbstractMap;
.source "ConcurrentHashMap.java"

# interfaces
.implements Ljava/util/concurrent/ConcurrentMap;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/ConcurrentHashMap$BaseIterator;,
        Ljava/util/concurrent/ConcurrentHashMap$BulkTask;,
        Ljava/util/concurrent/ConcurrentHashMap$CollectionView;,
        Ljava/util/concurrent/ConcurrentHashMap$CounterCell;,
        Ljava/util/concurrent/ConcurrentHashMap$EntryIterator;,
        Ljava/util/concurrent/ConcurrentHashMap$EntrySetView;,
        Ljava/util/concurrent/ConcurrentHashMap$EntrySpliterator;,
        Ljava/util/concurrent/ConcurrentHashMap$ForEachEntryTask;,
        Ljava/util/concurrent/ConcurrentHashMap$ForEachKeyTask;,
        Ljava/util/concurrent/ConcurrentHashMap$ForEachMappingTask;,
        Ljava/util/concurrent/ConcurrentHashMap$ForEachTransformedEntryTask;,
        Ljava/util/concurrent/ConcurrentHashMap$ForEachTransformedKeyTask;,
        Ljava/util/concurrent/ConcurrentHashMap$ForEachTransformedMappingTask;,
        Ljava/util/concurrent/ConcurrentHashMap$ForEachTransformedValueTask;,
        Ljava/util/concurrent/ConcurrentHashMap$ForEachValueTask;,
        Ljava/util/concurrent/ConcurrentHashMap$ForwardingNode;,
        Ljava/util/concurrent/ConcurrentHashMap$KeyIterator;,
        Ljava/util/concurrent/ConcurrentHashMap$KeySetView;,
        Ljava/util/concurrent/ConcurrentHashMap$KeySpliterator;,
        Ljava/util/concurrent/ConcurrentHashMap$MapEntry;,
        Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask;,
        Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask;,
        Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToIntTask;,
        Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToLongTask;,
        Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysTask;,
        Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToDoubleTask;,
        Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToIntTask;,
        Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToLongTask;,
        Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsTask;,
        Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;,
        Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask;,
        Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;,
        Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesTask;,
        Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToDoubleTask;,
        Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask;,
        Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToLongTask;,
        Ljava/util/concurrent/ConcurrentHashMap$Node;,
        Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;,
        Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask;,
        Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask;,
        Ljava/util/concurrent/ConcurrentHashMap$ReservationNode;,
        Ljava/util/concurrent/ConcurrentHashMap$SearchEntriesTask;,
        Ljava/util/concurrent/ConcurrentHashMap$SearchKeysTask;,
        Ljava/util/concurrent/ConcurrentHashMap$SearchMappingsTask;,
        Ljava/util/concurrent/ConcurrentHashMap$SearchValuesTask;,
        Ljava/util/concurrent/ConcurrentHashMap$Segment;,
        Ljava/util/concurrent/ConcurrentHashMap$TableStack;,
        Ljava/util/concurrent/ConcurrentHashMap$Traverser;,
        Ljava/util/concurrent/ConcurrentHashMap$TreeBin;,
        Ljava/util/concurrent/ConcurrentHashMap$TreeNode;,
        Ljava/util/concurrent/ConcurrentHashMap$ValueIterator;,
        Ljava/util/concurrent/ConcurrentHashMap$ValueSpliterator;,
        Ljava/util/concurrent/ConcurrentHashMap$ValuesView;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap",
        "<TK;TV;>;",
        "Ljava/util/concurrent/ConcurrentMap",
        "<TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final ABASE:I

.field private static final ASHIFT:I

.field private static final BASECOUNT:J

.field private static final CELLSBUSY:J

.field private static final CELLVALUE:J

.field private static final DEFAULT_CAPACITY:I = 0x10

.field private static final DEFAULT_CONCURRENCY_LEVEL:I = 0x10

.field static final HASH_BITS:I = 0x7fffffff

.field private static final LOAD_FACTOR:F = 0.75f

.field private static final MAXIMUM_CAPACITY:I = 0x40000000

.field static final MAX_ARRAY_SIZE:I = 0x7ffffff7

.field private static final MAX_RESIZERS:I = 0xffff

.field private static final MIN_TRANSFER_STRIDE:I = 0x10

.field static final MIN_TREEIFY_CAPACITY:I = 0x40

.field static final MOVED:I = -0x1

.field static final NCPU:I

.field static final RESERVED:I = -0x3

.field private static final RESIZE_STAMP_BITS:I = 0x10

.field private static final RESIZE_STAMP_SHIFT:I = 0x10

.field private static final SIZECTL:J

.field private static final TRANSFERINDEX:J

.field static final TREEBIN:I = -0x2

.field static final TREEIFY_THRESHOLD:I = 0x8

.field private static final U:Lsun/misc/Unsafe;

.field static final UNTREEIFY_THRESHOLD:I = 0x6

.field private static final serialPersistentFields:[Ljava/io/ObjectStreamField;

.field private static final serialVersionUID:J = 0x6499de129d87293dL


# instance fields
.field private volatile transient baseCount:J

.field private volatile transient cellsBusy:I

.field private volatile transient counterCells:[Ljava/util/concurrent/ConcurrentHashMap$CounterCell;

.field private transient entrySet:Ljava/util/concurrent/ConcurrentHashMap$EntrySetView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap$EntrySetView",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private transient keySet:Ljava/util/concurrent/ConcurrentHashMap$KeySetView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap$KeySetView",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private volatile transient nextTable:[Ljava/util/concurrent/ConcurrentHashMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/concurrent/ConcurrentHashMap$Node",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private volatile transient sizeCtl:I

.field volatile transient table:[Ljava/util/concurrent/ConcurrentHashMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/concurrent/ConcurrentHashMap$Node",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private volatile transient transferIndex:I

.field private transient values:Ljava/util/concurrent/ConcurrentHashMap$ValuesView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap$ValuesView",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x0

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v3

    sput v3, Ljava/util/concurrent/ConcurrentHashMap;->NCPU:I

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/io/ObjectStreamField;

    new-instance v4, Ljava/io/ObjectStreamField;

    const-string/jumbo v5, "segments"

    const-class v6, [Ljava/util/concurrent/ConcurrentHashMap$Segment;

    invoke-direct {v4, v5, v6}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v4, v3, v7

    new-instance v4, Ljava/io/ObjectStreamField;

    const-string/jumbo v5, "segmentMask"

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v4, v5, v6}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v5, 0x1

    aput-object v4, v3, v5

    new-instance v4, Ljava/io/ObjectStreamField;

    const-string/jumbo v5, "segmentShift"

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v4, v5, v6}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v5, 0x2

    aput-object v4, v3, v5

    sput-object v3, Ljava/util/concurrent/ConcurrentHashMap;->serialPersistentFields:[Ljava/io/ObjectStreamField;

    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v3

    sput-object v3, Ljava/util/concurrent/ConcurrentHashMap;->U:Lsun/misc/Unsafe;

    :try_start_0
    sget-object v3, Ljava/util/concurrent/ConcurrentHashMap;->U:Lsun/misc/Unsafe;

    const-class v4, Ljava/util/concurrent/ConcurrentHashMap;

    const-string/jumbo v5, "sizeCtl"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    invoke-virtual {v3, v4}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v4

    sput-wide v4, Ljava/util/concurrent/ConcurrentHashMap;->SIZECTL:J

    sget-object v3, Ljava/util/concurrent/ConcurrentHashMap;->U:Lsun/misc/Unsafe;

    const-class v4, Ljava/util/concurrent/ConcurrentHashMap;

    const-string/jumbo v5, "transferIndex"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    invoke-virtual {v3, v4}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v4

    sput-wide v4, Ljava/util/concurrent/ConcurrentHashMap;->TRANSFERINDEX:J

    sget-object v3, Ljava/util/concurrent/ConcurrentHashMap;->U:Lsun/misc/Unsafe;

    const-class v4, Ljava/util/concurrent/ConcurrentHashMap;

    const-string/jumbo v5, "baseCount"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    invoke-virtual {v3, v4}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v4

    sput-wide v4, Ljava/util/concurrent/ConcurrentHashMap;->BASECOUNT:J

    sget-object v3, Ljava/util/concurrent/ConcurrentHashMap;->U:Lsun/misc/Unsafe;

    const-class v4, Ljava/util/concurrent/ConcurrentHashMap;

    const-string/jumbo v5, "cellsBusy"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    invoke-virtual {v3, v4}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v4

    sput-wide v4, Ljava/util/concurrent/ConcurrentHashMap;->CELLSBUSY:J

    sget-object v3, Ljava/util/concurrent/ConcurrentHashMap;->U:Lsun/misc/Unsafe;

    const-class v4, Ljava/util/concurrent/ConcurrentHashMap$CounterCell;

    const-string/jumbo v5, "value"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    invoke-virtual {v3, v4}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v4

    sput-wide v4, Ljava/util/concurrent/ConcurrentHashMap;->CELLVALUE:J

    sget-object v3, Ljava/util/concurrent/ConcurrentHashMap;->U:Lsun/misc/Unsafe;

    const-class v4, [Ljava/util/concurrent/ConcurrentHashMap$Node;

    invoke-virtual {v3, v4}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v3

    sput v3, Ljava/util/concurrent/ConcurrentHashMap;->ABASE:I

    sget-object v3, Ljava/util/concurrent/ConcurrentHashMap;->U:Lsun/misc/Unsafe;

    const-class v4, [Ljava/util/concurrent/ConcurrentHashMap$Node;

    invoke-virtual {v3, v4}, Lsun/misc/Unsafe;->arrayIndexScale(Ljava/lang/Class;)I

    move-result v2

    add-int/lit8 v3, v2, -0x1

    and-int/2addr v3, v2

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/Error;

    const-string/jumbo v4, "array index scale not a power of two"

    invoke-direct {v3, v4}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v3, Ljava/lang/Error;

    invoke-direct {v3, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v3

    :cond_0
    :try_start_1
    invoke-static {v2}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v3

    rsub-int/lit8 v3, v3, 0x1f

    sput v3, Ljava/util/concurrent/ConcurrentHashMap;->ASHIFT:I
    :try_end_1
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_1 .. :try_end_1} :catch_0

    const-class v1, Ljava/util/concurrent/locks/LockSupport;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    if-gez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    :cond_0
    const/high16 v1, 0x20000000

    if-lt p1, v1, :cond_1

    const/high16 v0, 0x40000000    # 2.0f

    :goto_0
    iput v0, p0, Ljava/util/concurrent/ConcurrentHashMap;->sizeCtl:I

    return-void

    :cond_1
    ushr-int/lit8 v1, p1, 0x1

    add-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/util/concurrent/ConcurrentHashMap;->tableSizeFor(I)I

    move-result v0

    goto :goto_0
.end method

.method public constructor <init>(IF)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    return-void
.end method

.method public constructor <init>(IFI)V
    .locals 8

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    const/4 v4, 0x0

    cmpl-float v4, p2, v4

    if-lez v4, :cond_0

    const/4 v1, 0x1

    :cond_0
    if-eqz v1, :cond_1

    if-gez p1, :cond_2

    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    :cond_2
    if-lez p3, :cond_1

    if-ge p1, p3, :cond_3

    move p1, p3

    :cond_3
    int-to-long v4, p1

    long-to-float v1, v4

    div-float/2addr v1, p2

    float-to-double v4, v1

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    add-double/2addr v4, v6

    double-to-long v2, v4

    const-wide/32 v4, 0x40000000

    cmp-long v1, v2, v4

    if-ltz v1, :cond_4

    const/high16 v0, 0x40000000    # 2.0f

    :goto_0
    iput v0, p0, Ljava/util/concurrent/ConcurrentHashMap;->sizeCtl:I

    return-void

    :cond_4
    long-to-int v1, v2

    invoke-static {v1}, Ljava/util/concurrent/ConcurrentHashMap;->tableSizeFor(I)I

    move-result v0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    const/16 v0, 0x10

    iput v0, p0, Ljava/util/concurrent/ConcurrentHashMap;->sizeCtl:I

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method private final addCount(JI)V
    .locals 31

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap;->counterCells:[Ljava/util/concurrent/ConcurrentHashMap$CounterCell;

    move-object/from16 v24, v0

    if-nez v24, :cond_0

    sget-object v4, Ljava/util/concurrent/ConcurrentHashMap;->U:Lsun/misc/Unsafe;

    sget-wide v6, Ljava/util/concurrent/ConcurrentHashMap;->BASECOUNT:J

    move-object/from16 v0, p0

    iget-wide v8, v0, Ljava/util/concurrent/ConcurrentHashMap;->baseCount:J

    add-long v10, v8, p1

    move-object/from16 v5, p0

    invoke-virtual/range {v4 .. v11}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_4

    :cond_0
    const/16 v30, 0x1

    if-eqz v24, :cond_1

    move-object/from16 v0, v24

    array-length v4, v0

    add-int/lit8 v25, v4, -0x1

    if-gez v25, :cond_2

    :cond_1
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move/from16 v3, v30

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->fullAddCount(JZ)V

    return-void

    :cond_2
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->getProbe()I

    move-result v4

    and-int v4, v4, v25

    aget-object v13, v24, v4

    if-eqz v13, :cond_1

    sget-object v12, Ljava/util/concurrent/ConcurrentHashMap;->U:Lsun/misc/Unsafe;

    sget-wide v14, Ljava/util/concurrent/ConcurrentHashMap;->CELLVALUE:J

    iget-wide v0, v13, Ljava/util/concurrent/ConcurrentHashMap$CounterCell;->value:J

    move-wide/from16 v16, v0

    add-long v18, v16, p1

    invoke-virtual/range {v12 .. v19}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v30

    xor-int/lit8 v4, v30, 0x1

    if-nez v4, :cond_1

    const/4 v4, 0x1

    move/from16 v0, p3

    if-gt v0, v4, :cond_3

    return-void

    :cond_3
    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/ConcurrentHashMap;->sumCount()J

    move-result-wide v10

    :cond_4
    if-ltz p3, :cond_5

    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/concurrent/ConcurrentHashMap;->sizeCtl:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-long v4, v0

    cmp-long v4, v10, v4

    if-ltz v4, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-object/from16 v29, v0

    if-eqz v29, :cond_5

    move-object/from16 v0, v29

    array-length v0, v0

    move/from16 v26, v0

    const/high16 v4, 0x40000000    # 2.0f

    move/from16 v0, v26

    if-ge v0, v4, :cond_5

    invoke-static/range {v26 .. v26}, Ljava/util/concurrent/ConcurrentHashMap;->resizeStamp(I)I

    move-result v28

    if-gez v22, :cond_8

    ushr-int/lit8 v4, v22, 0x10

    move/from16 v0, v28

    if-ne v4, v0, :cond_5

    add-int/lit8 v4, v28, 0x1

    move/from16 v0, v22

    if-ne v0, v4, :cond_6

    :cond_5
    return-void

    :cond_6
    const v4, 0xffff

    add-int v4, v4, v28

    move/from16 v0, v22

    if-eq v0, v4, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap;->nextTable:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-object/from16 v27, v0

    if-eqz v27, :cond_5

    move-object/from16 v0, p0

    iget v4, v0, Ljava/util/concurrent/ConcurrentHashMap;->transferIndex:I

    if-lez v4, :cond_5

    sget-object v18, Ljava/util/concurrent/ConcurrentHashMap;->U:Lsun/misc/Unsafe;

    sget-wide v20, Ljava/util/concurrent/ConcurrentHashMap;->SIZECTL:J

    add-int/lit8 v23, v22, 0x1

    move-object/from16 v19, p0

    invoke-virtual/range {v18 .. v23}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v4

    if-eqz v4, :cond_7

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->transfer([Ljava/util/concurrent/ConcurrentHashMap$Node;[Ljava/util/concurrent/ConcurrentHashMap$Node;)V

    :cond_7
    :goto_1
    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/ConcurrentHashMap;->sumCount()J

    move-result-wide v10

    goto :goto_0

    :cond_8
    sget-object v18, Ljava/util/concurrent/ConcurrentHashMap;->U:Lsun/misc/Unsafe;

    sget-wide v20, Ljava/util/concurrent/ConcurrentHashMap;->SIZECTL:J

    shl-int/lit8 v4, v28, 0x10

    add-int/lit8 v23, v4, 0x2

    move-object/from16 v19, p0

    invoke-virtual/range {v18 .. v23}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v4

    if-eqz v4, :cond_7

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1, v4}, Ljava/util/concurrent/ConcurrentHashMap;->transfer([Ljava/util/concurrent/ConcurrentHashMap$Node;[Ljava/util/concurrent/ConcurrentHashMap$Node;)V

    goto :goto_1
.end method

.method static final casTabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;ILjava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$Node;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/util/concurrent/ConcurrentHashMap$Node",
            "<TK;TV;>;I",
            "Ljava/util/concurrent/ConcurrentHashMap$Node",
            "<TK;TV;>;",
            "Ljava/util/concurrent/ConcurrentHashMap$Node",
            "<TK;TV;>;)Z"
        }
    .end annotation

    sget-object v0, Ljava/util/concurrent/ConcurrentHashMap;->U:Lsun/misc/Unsafe;

    int-to-long v2, p1

    sget v1, Ljava/util/concurrent/ConcurrentHashMap;->ASHIFT:I

    shl-long/2addr v2, v1

    sget v1, Ljava/util/concurrent/ConcurrentHashMap;->ABASE:I

    int-to-long v4, v1

    add-long/2addr v2, v4

    move-object v1, p0

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static comparableClassFor(Ljava/lang/Object;)Ljava/lang/Class;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    const/4 v8, 0x0

    instance-of v6, p0, Ljava/lang/Comparable;

    if-eqz v6, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v6, Ljava/lang/String;

    if-ne v1, v6, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Class;->getGenericInterfaces()[Ljava/lang/reflect/Type;

    move-result-object v5

    if-eqz v5, :cond_2

    const/4 v2, 0x0

    :goto_0
    array-length v6, v5

    if-ge v2, v6, :cond_2

    aget-object v4, v5, v2

    instance-of v6, v4, Ljava/lang/reflect/ParameterizedType;

    if-eqz v6, :cond_1

    move-object v3, v4

    check-cast v3, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v3}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v6

    const-class v7, Ljava/lang/Comparable;

    if-ne v6, v7, :cond_1

    invoke-interface {v3}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    if-eqz v0, :cond_1

    array-length v6, v0

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    const/4 v6, 0x0

    aget-object v6, v0, v6

    if-ne v6, v1, :cond_1

    return-object v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v8
.end method

.method static compareComparables(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")I"
        }
    .end annotation

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-eq v0, p0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    check-cast p1, Ljava/lang/Comparable;

    invoke-interface {p1, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0
.end method

.method private final fullAddCount(JZ)V
    .locals 29

    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->getProbe()I

    move-result v21

    if-nez v21, :cond_0

    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->localInit()V

    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->getProbe()I

    move-result v21

    const/16 p3, 0x1

    :cond_0
    const/16 v19, 0x0

    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap;->counterCells:[Ljava/util/concurrent/ConcurrentHashMap$CounterCell;

    move-object/from16 v18, v0

    if-eqz v18, :cond_d

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v26, v0

    if-lez v26, :cond_d

    add-int/lit8 v4, v26, -0x1

    and-int v4, v4, v21

    aget-object v5, v18, v4

    if-nez v5, :cond_6

    move-object/from16 v0, p0

    iget v4, v0, Ljava/util/concurrent/ConcurrentHashMap;->cellsBusy:I

    if-nez v4, :cond_4

    new-instance v27, Ljava/util/concurrent/ConcurrentHashMap$CounterCell;

    move-object/from16 v0, v27

    move-wide/from16 v1, p1

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap$CounterCell;-><init>(J)V

    move-object/from16 v0, p0

    iget v4, v0, Ljava/util/concurrent/ConcurrentHashMap;->cellsBusy:I

    if-nez v4, :cond_4

    sget-object v4, Ljava/util/concurrent/ConcurrentHashMap;->U:Lsun/misc/Unsafe;

    sget-wide v6, Ljava/util/concurrent/ConcurrentHashMap;->CELLSBUSY:J

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object/from16 v5, p0

    invoke-virtual/range {v4 .. v9}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v4

    if-eqz v4, :cond_4

    const/16 v20, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap;->counterCells:[Ljava/util/concurrent/ConcurrentHashMap$CounterCell;

    move-object/from16 v28, v0

    if-eqz v28, :cond_2

    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v25, v0

    if-lez v25, :cond_2

    add-int/lit8 v4, v25, -0x1

    and-int v24, v4, v21

    aget-object v4, v28, v24

    if-nez v4, :cond_2

    aput-object v27, v28, v24
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v20, 0x1

    :cond_2
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Ljava/util/concurrent/ConcurrentHashMap;->cellsBusy:I

    if-eqz v20, :cond_1

    :cond_3
    :goto_1
    return-void

    :catchall_0
    move-exception v4

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput v6, v0, Ljava/util/concurrent/ConcurrentHashMap;->cellsBusy:I

    throw v4

    :cond_4
    const/16 v19, 0x0

    :cond_5
    :goto_2
    invoke-static/range {v21 .. v21}, Ljava/util/concurrent/ThreadLocalRandom;->advanceProbe(I)I

    move-result v21

    goto :goto_0

    :cond_6
    if-nez p3, :cond_7

    const/16 p3, 0x1

    goto :goto_2

    :cond_7
    sget-object v4, Ljava/util/concurrent/ConcurrentHashMap;->U:Lsun/misc/Unsafe;

    sget-wide v6, Ljava/util/concurrent/ConcurrentHashMap;->CELLVALUE:J

    iget-wide v8, v5, Ljava/util/concurrent/ConcurrentHashMap$CounterCell;->value:J

    add-long v10, v8, p1

    invoke-virtual/range {v4 .. v11}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v4

    if-nez v4, :cond_3

    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/util/concurrent/ConcurrentHashMap;->counterCells:[Ljava/util/concurrent/ConcurrentHashMap$CounterCell;

    move-object/from16 v0, v18

    if-ne v4, v0, :cond_8

    sget v4, Ljava/util/concurrent/ConcurrentHashMap;->NCPU:I

    move/from16 v0, v26

    if-lt v0, v4, :cond_9

    :cond_8
    const/16 v19, 0x0

    goto :goto_2

    :cond_9
    if-nez v19, :cond_a

    const/16 v19, 0x1

    goto :goto_2

    :cond_a
    move-object/from16 v0, p0

    iget v4, v0, Ljava/util/concurrent/ConcurrentHashMap;->cellsBusy:I

    if-nez v4, :cond_5

    sget-object v10, Ljava/util/concurrent/ConcurrentHashMap;->U:Lsun/misc/Unsafe;

    sget-wide v12, Ljava/util/concurrent/ConcurrentHashMap;->CELLSBUSY:J

    const/4 v14, 0x0

    const/4 v15, 0x1

    move-object/from16 v11, p0

    invoke-virtual/range {v10 .. v15}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v4

    if-eqz v4, :cond_5

    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/util/concurrent/ConcurrentHashMap;->counterCells:[Ljava/util/concurrent/ConcurrentHashMap$CounterCell;

    move-object/from16 v0, v18

    if-ne v4, v0, :cond_c

    shl-int/lit8 v4, v26, 0x1

    new-array v0, v4, [Ljava/util/concurrent/ConcurrentHashMap$CounterCell;

    move-object/from16 v28, v0

    const/16 v22, 0x0

    :goto_3
    move/from16 v0, v22

    move/from16 v1, v26

    if-ge v0, v1, :cond_b

    aget-object v4, v18, v22

    aput-object v4, v28, v22

    add-int/lit8 v22, v22, 0x1

    goto :goto_3

    :cond_b
    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/util/concurrent/ConcurrentHashMap;->counterCells:[Ljava/util/concurrent/ConcurrentHashMap$CounterCell;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_c
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Ljava/util/concurrent/ConcurrentHashMap;->cellsBusy:I

    const/16 v19, 0x0

    goto/16 :goto_0

    :catchall_1
    move-exception v4

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput v6, v0, Ljava/util/concurrent/ConcurrentHashMap;->cellsBusy:I

    throw v4

    :cond_d
    move-object/from16 v0, p0

    iget v4, v0, Ljava/util/concurrent/ConcurrentHashMap;->cellsBusy:I

    if-nez v4, :cond_f

    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/util/concurrent/ConcurrentHashMap;->counterCells:[Ljava/util/concurrent/ConcurrentHashMap$CounterCell;

    move-object/from16 v0, v18

    if-ne v4, v0, :cond_f

    sget-object v10, Ljava/util/concurrent/ConcurrentHashMap;->U:Lsun/misc/Unsafe;

    sget-wide v12, Ljava/util/concurrent/ConcurrentHashMap;->CELLSBUSY:J

    const/4 v14, 0x0

    const/4 v15, 0x1

    move-object/from16 v11, p0

    invoke-virtual/range {v10 .. v15}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v4

    if-eqz v4, :cond_f

    const/16 v23, 0x0

    :try_start_2
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/util/concurrent/ConcurrentHashMap;->counterCells:[Ljava/util/concurrent/ConcurrentHashMap$CounterCell;

    move-object/from16 v0, v18

    if-ne v4, v0, :cond_e

    const/4 v4, 0x2

    new-array v0, v4, [Ljava/util/concurrent/ConcurrentHashMap$CounterCell;

    move-object/from16 v28, v0

    and-int/lit8 v4, v21, 0x1

    new-instance v6, Ljava/util/concurrent/ConcurrentHashMap$CounterCell;

    move-wide/from16 v0, p1

    invoke-direct {v6, v0, v1}, Ljava/util/concurrent/ConcurrentHashMap$CounterCell;-><init>(J)V

    aput-object v6, v28, v4

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/util/concurrent/ConcurrentHashMap;->counterCells:[Ljava/util/concurrent/ConcurrentHashMap$CounterCell;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    const/16 v23, 0x1

    :cond_e
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Ljava/util/concurrent/ConcurrentHashMap;->cellsBusy:I

    if-eqz v23, :cond_1

    goto/16 :goto_1

    :catchall_2
    move-exception v4

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput v6, v0, Ljava/util/concurrent/ConcurrentHashMap;->cellsBusy:I

    throw v4

    :cond_f
    sget-object v10, Ljava/util/concurrent/ConcurrentHashMap;->U:Lsun/misc/Unsafe;

    sget-wide v12, Ljava/util/concurrent/ConcurrentHashMap;->BASECOUNT:J

    move-object/from16 v0, p0

    iget-wide v8, v0, Ljava/util/concurrent/ConcurrentHashMap;->baseCount:J

    add-long v16, v8, p1

    move-object/from16 v11, p0

    move-wide v14, v8

    invoke-virtual/range {v10 .. v17}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v4

    if-eqz v4, :cond_1

    goto/16 :goto_1
.end method

.method private final initTable()[Ljava/util/concurrent/ConcurrentHashMap$Node;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/util/concurrent/ConcurrentHashMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    :cond_0
    :goto_0
    iget-object v8, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    if-eqz v8, :cond_1

    array-length v0, v8

    if-nez v0, :cond_5

    :cond_1
    iget v4, p0, Ljava/util/concurrent/ConcurrentHashMap;->sizeCtl:I

    if-gez v4, :cond_2

    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto :goto_0

    :cond_2
    sget-object v0, Ljava/util/concurrent/ConcurrentHashMap;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/ConcurrentHashMap;->SIZECTL:J

    const/4 v5, -0x1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v8, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    if-eqz v8, :cond_3

    array-length v0, v8

    if-nez v0, :cond_4

    :cond_3
    if-lez v4, :cond_6

    move v6, v4

    :goto_1
    new-array v7, v6, [Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-object v8, v7

    iput-object v7, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    ushr-int/lit8 v0, v6, 0x2

    sub-int v4, v6, v0

    :cond_4
    iput v4, p0, Ljava/util/concurrent/ConcurrentHashMap;->sizeCtl:I

    :cond_5
    return-object v8

    :cond_6
    const/16 v6, 0x10

    goto :goto_1

    :catchall_0
    move-exception v0

    iput v4, p0, Ljava/util/concurrent/ConcurrentHashMap;->sizeCtl:I

    throw v0
.end method

.method public static newKeySet()Ljava/util/concurrent/ConcurrentHashMap$KeySetView;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/concurrent/ConcurrentHashMap$KeySetView",
            "<TK;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap$KeySetView;-><init>(Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static newKeySet(I)Ljava/util/concurrent/ConcurrentHashMap$KeySetView;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(I)",
            "Ljava/util/concurrent/ConcurrentHashMap$KeySetView",
            "<TK;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap$KeySetView;-><init>(Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/Object;)V

    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 33
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    const/4 v5, -0x1

    move-object/from16 v0, p0

    iput v5, v0, Ljava/util/concurrent/ConcurrentHashMap;->sizeCtl:I

    invoke-virtual/range {p1 .. p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    const-wide/16 v26, 0x0

    const/16 v22, 0x0

    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v18

    invoke-virtual/range {p1 .. p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v32

    if-eqz v18, :cond_0

    if-eqz v32, :cond_0

    new-instance v23, Ljava/util/concurrent/ConcurrentHashMap$Node;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-static {v5}, Ljava/util/concurrent/ConcurrentHashMap;->spread(I)I

    move-result v5

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    move-object/from16 v2, v32

    move-object/from16 v3, v22

    invoke-direct {v0, v5, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap$Node;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/concurrent/ConcurrentHashMap$Node;)V

    const-wide/16 v6, 0x1

    add-long v26, v26, v6

    move-object/from16 v22, v23

    goto :goto_0

    :cond_0
    const-wide/16 v6, 0x0

    cmp-long v5, v26, v6

    if-nez v5, :cond_1

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Ljava/util/concurrent/ConcurrentHashMap;->sizeCtl:I

    :goto_1
    return-void

    :cond_1
    const-wide/32 v6, 0x20000000

    cmp-long v5, v26, v6

    if-ltz v5, :cond_4

    const/high16 v20, 0x40000000    # 2.0f

    :goto_2
    move/from16 v0, v20

    new-array v0, v0, [Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-object/from16 v30, v0

    add-int/lit8 v19, v20, -0x1

    const-wide/16 v10, 0x0

    :goto_3
    if-eqz v22, :cond_d

    move-object/from16 v0, v22

    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-object/from16 v21, v0

    move-object/from16 v0, v22

    iget v14, v0, Ljava/util/concurrent/ConcurrentHashMap$Node;->hash:I

    and-int v17, v14, v19

    move-object/from16 v0, v30

    move/from16 v1, v17

    invoke-static {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->tabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;I)Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v13

    if-nez v13, :cond_5

    const/16 v16, 0x1

    :cond_2
    :goto_4
    if-eqz v16, :cond_3

    const-wide/16 v6, 0x1

    add-long/2addr v10, v6

    move-object/from16 v0, v22

    iput-object v13, v0, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-object/from16 v0, v30

    move/from16 v1, v17

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->setTabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;ILjava/util/concurrent/ConcurrentHashMap$Node;)V

    :cond_3
    move-object/from16 v22, v21

    goto :goto_3

    :cond_4
    move-wide/from16 v0, v26

    long-to-int v0, v0

    move/from16 v28, v0

    ushr-int/lit8 v5, v28, 0x1

    add-int v5, v5, v28

    add-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Ljava/util/concurrent/ConcurrentHashMap;->tableSizeFor(I)I

    move-result v20

    goto :goto_2

    :cond_5
    move-object/from16 v0, v22

    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    move-object/from16 v18, v0

    iget v5, v13, Ljava/util/concurrent/ConcurrentHashMap$Node;->hash:I

    if-gez v5, :cond_7

    move-object/from16 v29, v13

    check-cast v29, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;

    move-object/from16 v0, v22

    iget-object v5, v0, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    move-object/from16 v0, v29

    move-object/from16 v1, v18

    invoke-virtual {v0, v14, v1, v5}, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->putTreeVal(ILjava/lang/Object;Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    move-result-object v5

    if-nez v5, :cond_6

    const-wide/16 v6, 0x1

    add-long/2addr v10, v6

    :cond_6
    const/16 v16, 0x0

    goto :goto_4

    :cond_7
    const/4 v12, 0x0

    const/16 v16, 0x1

    move-object/from16 v24, v13

    :goto_5
    if-eqz v24, :cond_9

    move-object/from16 v0, v24

    iget v5, v0, Ljava/util/concurrent/ConcurrentHashMap$Node;->hash:I

    if-ne v5, v14, :cond_a

    move-object/from16 v0, v24

    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_8

    if-eqz v25, :cond_a

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    :cond_8
    const/16 v16, 0x0

    :cond_9
    if-eqz v16, :cond_2

    const/16 v5, 0x8

    if-lt v12, v5, :cond_2

    const/16 v16, 0x0

    const-wide/16 v6, 0x1

    add-long/2addr v10, v6

    move-object/from16 v0, v22

    iput-object v13, v0, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    const/4 v15, 0x0

    const/16 v31, 0x0

    move-object/from16 v24, v22

    :goto_6
    if-eqz v24, :cond_c

    new-instance v4, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    move-object/from16 v0, v24

    iget v5, v0, Ljava/util/concurrent/ConcurrentHashMap$Node;->hash:I

    move-object/from16 v0, v24

    iget-object v6, v0, Ljava/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    move-object/from16 v0, v24

    iget-object v7, v0, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v4 .. v9}, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$TreeNode;)V

    move-object/from16 v0, v31

    iput-object v0, v4, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->prev:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    if-nez v31, :cond_b

    move-object v15, v4

    :goto_7
    move-object/from16 v31, v4

    move-object/from16 v0, v24

    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-object/from16 v24, v0

    goto :goto_6

    :cond_a
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, v24

    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-object/from16 v24, v0

    goto :goto_5

    :cond_b
    move-object/from16 v0, v31

    iput-object v4, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    goto :goto_7

    :cond_c
    new-instance v5, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;

    invoke-direct {v5, v15}, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;-><init>(Ljava/util/concurrent/ConcurrentHashMap$TreeNode;)V

    move-object/from16 v0, v30

    move/from16 v1, v17

    invoke-static {v0, v1, v5}, Ljava/util/concurrent/ConcurrentHashMap;->setTabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;ILjava/util/concurrent/ConcurrentHashMap$Node;)V

    goto/16 :goto_4

    :cond_d
    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    ushr-int/lit8 v5, v20, 0x2

    sub-int v5, v20, v5

    move-object/from16 v0, p0

    iput v5, v0, Ljava/util/concurrent/ConcurrentHashMap;->sizeCtl:I

    move-object/from16 v0, p0

    iput-wide v10, v0, Ljava/util/concurrent/ConcurrentHashMap;->baseCount:J

    goto/16 :goto_1
.end method

.method static final resizeStamp(I)I
    .locals 2

    invoke-static {p0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v0

    const v1, 0x8000

    or-int/2addr v0, v1

    return v0
.end method

.method static final setTabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;ILjava/util/concurrent/ConcurrentHashMap$Node;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/util/concurrent/ConcurrentHashMap$Node",
            "<TK;TV;>;I",
            "Ljava/util/concurrent/ConcurrentHashMap$Node",
            "<TK;TV;>;)V"
        }
    .end annotation

    sget-object v0, Ljava/util/concurrent/ConcurrentHashMap;->U:Lsun/misc/Unsafe;

    int-to-long v2, p1

    sget v1, Ljava/util/concurrent/ConcurrentHashMap;->ASHIFT:I

    shl-long/2addr v2, v1

    sget v1, Ljava/util/concurrent/ConcurrentHashMap;->ABASE:I

    int-to-long v4, v1

    add-long/2addr v2, v4

    invoke-virtual {v0, p0, v2, v3, p2}, Lsun/misc/Unsafe;->putObjectVolatile(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method

.method static final spread(I)I
    .locals 2

    ushr-int/lit8 v0, p0, 0x10

    xor-int/2addr v0, p0

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    return v0
.end method

.method static final tabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;I)Ljava/util/concurrent/ConcurrentHashMap$Node;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/util/concurrent/ConcurrentHashMap$Node",
            "<TK;TV;>;I)",
            "Ljava/util/concurrent/ConcurrentHashMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    sget-object v0, Ljava/util/concurrent/ConcurrentHashMap;->U:Lsun/misc/Unsafe;

    int-to-long v2, p1

    sget v1, Ljava/util/concurrent/ConcurrentHashMap;->ASHIFT:I

    shl-long/2addr v2, v1

    sget v1, Ljava/util/concurrent/ConcurrentHashMap;->ABASE:I

    int-to-long v4, v1

    add-long/2addr v2, v4

    invoke-virtual {v0, p0, v2, v3}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap$Node;

    return-object v0
.end method

.method private static final tableSizeFor(I)I
    .locals 3

    const/high16 v1, 0x40000000    # 2.0f

    add-int/lit8 v0, p0, -0x1

    ushr-int/lit8 v2, v0, 0x1

    or-int/2addr v0, v2

    ushr-int/lit8 v2, v0, 0x2

    or-int/2addr v0, v2

    ushr-int/lit8 v2, v0, 0x4

    or-int/2addr v0, v2

    ushr-int/lit8 v2, v0, 0x8

    or-int/2addr v0, v2

    ushr-int/lit8 v2, v0, 0x10

    or-int/2addr v0, v2

    if-gez v0, :cond_1

    const/4 v1, 0x1

    :cond_0
    :goto_0
    return v1

    :cond_1
    if-ge v0, v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    goto :goto_0
.end method

.method private final transfer([Ljava/util/concurrent/ConcurrentHashMap$Node;[Ljava/util/concurrent/ConcurrentHashMap$Node;)V
    .locals 54
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/concurrent/ConcurrentHashMap$Node",
            "<TK;TV;>;[",
            "Ljava/util/concurrent/ConcurrentHashMap$Node",
            "<TK;TV;>;)V"
        }
    .end annotation

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v44, v0

    sget v6, Ljava/util/concurrent/ConcurrentHashMap;->NCPU:I

    const/4 v7, 0x1

    if-le v6, v7, :cond_4

    ushr-int/lit8 v6, v44, 0x3

    sget v7, Ljava/util/concurrent/ConcurrentHashMap;->NCPU:I

    div-int v52, v6, v7

    :goto_0
    const/16 v6, 0x10

    move/from16 v0, v52

    if-ge v0, v6, :cond_0

    const/16 v52, 0x10

    :cond_0
    if-nez p2, :cond_1

    shl-int/lit8 v6, v44, 0x1

    :try_start_0
    new-array v0, v6, [Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-object/from16 v46, v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 p2, v46

    move-object/from16 v0, v46

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/util/concurrent/ConcurrentHashMap;->nextTable:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    move/from16 v0, v44

    move-object/from16 v1, p0

    iput v0, v1, Ljava/util/concurrent/ConcurrentHashMap;->transferIndex:I

    :cond_1
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v45, v0

    new-instance v31, Ljava/util/concurrent/ConcurrentHashMap$ForwardingNode;

    move-object/from16 v0, v31

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap$ForwardingNode;-><init>([Ljava/util/concurrent/ConcurrentHashMap$Node;)V

    const/16 v23, 0x1

    const/16 v30, 0x0

    const/16 v37, 0x0

    const/16 v25, 0x0

    :cond_2
    :goto_1
    if-eqz v23, :cond_8

    add-int/lit8 v37, v37, -0x1

    move/from16 v0, v37

    move/from16 v1, v25

    if-ge v0, v1, :cond_3

    if-eqz v30, :cond_5

    :cond_3
    const/16 v23, 0x0

    goto :goto_1

    :cond_4
    move/from16 v52, v44

    goto :goto_0

    :catch_0
    move-exception v27

    const v6, 0x7fffffff

    move-object/from16 v0, p0

    iput v6, v0, Ljava/util/concurrent/ConcurrentHashMap;->sizeCtl:I

    return-void

    :cond_5
    move-object/from16 v0, p0

    iget v10, v0, Ljava/util/concurrent/ConcurrentHashMap;->transferIndex:I

    if-gtz v10, :cond_6

    const/16 v37, -0x1

    const/16 v23, 0x0

    goto :goto_1

    :cond_6
    sget-object v6, Ljava/util/concurrent/ConcurrentHashMap;->U:Lsun/misc/Unsafe;

    sget-wide v8, Ljava/util/concurrent/ConcurrentHashMap;->TRANSFERINDEX:J

    move/from16 v0, v52

    if-le v10, v0, :cond_7

    sub-int v11, v10, v52

    :goto_2
    move-object/from16 v7, p0

    invoke-virtual/range {v6 .. v11}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v6

    if-eqz v6, :cond_2

    move/from16 v25, v11

    add-int/lit8 v37, v10, -0x1

    const/16 v23, 0x0

    goto :goto_1

    :cond_7
    const/4 v11, 0x0

    goto :goto_2

    :cond_8
    if-ltz v37, :cond_9

    move/from16 v0, v37

    move/from16 v1, v44

    if-lt v0, v1, :cond_a

    :cond_9
    if-eqz v30, :cond_b

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput-object v6, v0, Ljava/util/concurrent/ConcurrentHashMap;->nextTable:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    shl-int/lit8 v6, v44, 0x1

    ushr-int/lit8 v7, v44, 0x1

    sub-int/2addr v6, v7

    move-object/from16 v0, p0

    iput v6, v0, Ljava/util/concurrent/ConcurrentHashMap;->sizeCtl:I

    return-void

    :cond_a
    add-int v6, v37, v44

    move/from16 v0, v45

    if-ge v6, v0, :cond_9

    move-object/from16 v0, p1

    move/from16 v1, v37

    invoke-static {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->tabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;I)Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v28

    if-nez v28, :cond_d

    const/4 v6, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v37

    move-object/from16 v2, v31

    invoke-static {v0, v1, v6, v2}, Ljava/util/concurrent/ConcurrentHashMap;->casTabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;ILjava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$Node;)Z

    move-result v23

    goto :goto_1

    :cond_b
    sget-object v12, Ljava/util/concurrent/ConcurrentHashMap;->U:Lsun/misc/Unsafe;

    sget-wide v14, Ljava/util/concurrent/ConcurrentHashMap;->SIZECTL:J

    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/concurrent/ConcurrentHashMap;->sizeCtl:I

    move/from16 v16, v0

    add-int/lit8 v17, v16, -0x1

    move-object/from16 v13, p0

    invoke-virtual/range {v12 .. v17}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v6

    if-eqz v6, :cond_2

    add-int/lit8 v6, v16, -0x2

    invoke-static/range {v44 .. v44}, Ljava/util/concurrent/ConcurrentHashMap;->resizeStamp(I)I

    move-result v7

    shl-int/lit8 v7, v7, 0x10

    if-eq v6, v7, :cond_c

    return-void

    :cond_c
    const/16 v23, 0x1

    const/16 v30, 0x1

    move/from16 v37, v44

    goto/16 :goto_1

    :cond_d
    move-object/from16 v0, v28

    iget v0, v0, Ljava/util/concurrent/ConcurrentHashMap$Node;->hash:I

    move/from16 v29, v0

    const/4 v6, -0x1

    move/from16 v0, v29

    if-ne v0, v6, :cond_e

    const/16 v23, 0x1

    goto/16 :goto_1

    :cond_e
    monitor-enter v28

    :try_start_1
    move-object/from16 v0, p1

    move/from16 v1, v37

    invoke-static {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->tabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;I)Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v6

    move-object/from16 v0, v28

    if-ne v6, v0, :cond_14

    if-ltz v29, :cond_15

    and-int v51, v29, v44

    move-object/from16 v38, v28

    move-object/from16 v0, v28

    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-object/from16 v47, v0

    :goto_3
    if-eqz v47, :cond_10

    move-object/from16 v0, v47

    iget v6, v0, Ljava/util/concurrent/ConcurrentHashMap$Node;->hash:I

    and-int v24, v6, v44

    move/from16 v0, v24

    move/from16 v1, v51

    if-eq v0, v1, :cond_f

    move/from16 v51, v24

    move-object/from16 v38, v47

    :cond_f
    move-object/from16 v0, v47

    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-object/from16 v47, v0

    goto :goto_3

    :cond_10
    if-nez v51, :cond_11

    move-object/from16 v40, v38

    const/16 v35, 0x0

    :goto_4
    move-object/from16 v47, v28

    move-object/from16 v36, v35

    move-object/from16 v41, v40

    :goto_5
    move-object/from16 v0, v47

    move-object/from16 v1, v38

    if-eq v0, v1, :cond_13

    move-object/from16 v0, v47

    iget v0, v0, Ljava/util/concurrent/ConcurrentHashMap$Node;->hash:I

    move/from16 v48, v0

    move-object/from16 v0, v47

    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    move-object/from16 v49, v0

    move-object/from16 v0, v47

    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    move-object/from16 v50, v0

    and-int v6, v48, v44

    if-nez v6, :cond_12

    new-instance v40, Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-object/from16 v0, v40

    move/from16 v1, v48

    move-object/from16 v2, v49

    move-object/from16 v3, v50

    move-object/from16 v4, v41

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ConcurrentHashMap$Node;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/concurrent/ConcurrentHashMap$Node;)V

    move-object/from16 v35, v36

    :goto_6
    move-object/from16 v0, v47

    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-object/from16 v47, v0

    move-object/from16 v36, v35

    move-object/from16 v41, v40

    goto :goto_5

    :cond_11
    move-object/from16 v35, v38

    const/16 v40, 0x0

    goto :goto_4

    :cond_12
    new-instance v35, Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-object/from16 v0, v35

    move/from16 v1, v48

    move-object/from16 v2, v49

    move-object/from16 v3, v50

    move-object/from16 v4, v36

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ConcurrentHashMap$Node;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/concurrent/ConcurrentHashMap$Node;)V

    move-object/from16 v40, v41

    goto :goto_6

    :cond_13
    move-object/from16 v0, p2

    move/from16 v1, v37

    move-object/from16 v2, v41

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->setTabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;ILjava/util/concurrent/ConcurrentHashMap$Node;)V

    add-int v6, v37, v44

    move-object/from16 v0, p2

    move-object/from16 v1, v36

    invoke-static {v0, v6, v1}, Ljava/util/concurrent/ConcurrentHashMap;->setTabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;ILjava/util/concurrent/ConcurrentHashMap$Node;)V

    move-object/from16 v0, p1

    move/from16 v1, v37

    move-object/from16 v2, v31

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->setTabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;ILjava/util/concurrent/ConcurrentHashMap$Node;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v23, 0x1

    :cond_14
    :goto_7
    monitor-exit v28

    goto/16 :goto_1

    :cond_15
    :try_start_2
    move-object/from16 v0, v28

    instance-of v6, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;

    if-eqz v6, :cond_14

    move-object/from16 v0, v28

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;

    move-object/from16 v53, v0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v39, 0x0

    const/16 v32, 0x0

    move-object/from16 v0, v53

    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->first:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    move-object/from16 v26, v0

    :goto_8
    if-eqz v26, :cond_19

    move-object/from16 v0, v26

    iget v0, v0, Ljava/util/concurrent/ConcurrentHashMap$Node;->hash:I

    move/from16 v18, v0

    new-instance v17, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    move-object/from16 v0, v26

    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    move-object/from16 v19, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-direct/range {v17 .. v22}, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$TreeNode;)V

    and-int v6, v18, v44

    if-nez v6, :cond_17

    move-object/from16 v0, v43

    move-object/from16 v1, v17

    iput-object v0, v1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->prev:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    if-nez v43, :cond_16

    move-object/from16 v42, v17

    :goto_9
    move-object/from16 v43, v17

    add-int/lit8 v39, v39, 0x1

    :goto_a
    move-object/from16 v0, v26

    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-object/from16 v26, v0

    goto :goto_8

    :cond_16
    move-object/from16 v0, v17

    move-object/from16 v1, v43

    iput-object v0, v1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_9

    :catchall_0
    move-exception v6

    monitor-exit v28

    throw v6

    :cond_17
    :try_start_3
    move-object/from16 v0, v34

    move-object/from16 v1, v17

    iput-object v0, v1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->prev:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    if-nez v34, :cond_18

    move-object/from16 v33, v17

    :goto_b
    move-object/from16 v34, v17

    add-int/lit8 v32, v32, 0x1

    goto :goto_a

    :cond_18
    move-object/from16 v0, v17

    move-object/from16 v1, v34

    iput-object v0, v1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    goto :goto_b

    :cond_19
    const/4 v6, 0x6

    move/from16 v0, v39

    if-gt v0, v6, :cond_1a

    invoke-static/range {v42 .. v42}, Ljava/util/concurrent/ConcurrentHashMap;->untreeify(Ljava/util/concurrent/ConcurrentHashMap$Node;)Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v40

    :goto_c
    const/4 v6, 0x6

    move/from16 v0, v32

    if-gt v0, v6, :cond_1c

    invoke-static/range {v33 .. v33}, Ljava/util/concurrent/ConcurrentHashMap;->untreeify(Ljava/util/concurrent/ConcurrentHashMap$Node;)Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v35

    :goto_d
    move-object/from16 v0, p2

    move/from16 v1, v37

    move-object/from16 v2, v40

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->setTabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;ILjava/util/concurrent/ConcurrentHashMap$Node;)V

    add-int v6, v37, v44

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    invoke-static {v0, v6, v1}, Ljava/util/concurrent/ConcurrentHashMap;->setTabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;ILjava/util/concurrent/ConcurrentHashMap$Node;)V

    move-object/from16 v0, p1

    move/from16 v1, v37

    move-object/from16 v2, v31

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->setTabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;ILjava/util/concurrent/ConcurrentHashMap$Node;)V

    const/16 v23, 0x1

    goto/16 :goto_7

    :cond_1a
    if-eqz v32, :cond_1b

    new-instance v40, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;

    move-object/from16 v0, v40

    move-object/from16 v1, v42

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;-><init>(Ljava/util/concurrent/ConcurrentHashMap$TreeNode;)V

    goto :goto_c

    :cond_1b
    move-object/from16 v40, v53

    goto :goto_c

    :cond_1c
    if-eqz v39, :cond_1d

    new-instance v35, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;

    move-object/from16 v0, v35

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;-><init>(Ljava/util/concurrent/ConcurrentHashMap$TreeNode;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_d

    :cond_1d
    move-object/from16 v35, v53

    goto :goto_d
.end method

.method private final treeifyBin([Ljava/util/concurrent/ConcurrentHashMap$Node;I)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/concurrent/ConcurrentHashMap$Node",
            "<TK;TV;>;I)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    array-length v9, p1

    const/16 v1, 0x40

    if-ge v9, v1, :cond_1

    shl-int/lit8 v1, v9, 0x1

    invoke-direct {p0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->tryPresize(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->tabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;I)Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v6

    if-eqz v6, :cond_0

    iget v1, v6, Ljava/util/concurrent/ConcurrentHashMap$Node;->hash:I

    if-ltz v1, :cond_0

    monitor-enter v6

    :try_start_0
    invoke-static {p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->tabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;I)Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v1

    if-ne v1, v6, :cond_4

    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object v7, v6

    :goto_1
    if-eqz v7, :cond_3

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    iget v1, v7, Ljava/util/concurrent/ConcurrentHashMap$Node;->hash:I

    iget-object v2, v7, Ljava/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    iget-object v3, v7, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$TreeNode;)V

    iput-object v10, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->prev:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    if-nez v10, :cond_2

    move-object v8, v0

    :goto_2
    move-object v10, v0

    iget-object v7, v7, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    goto :goto_1

    :cond_2
    iput-object v0, v10, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v1

    monitor-exit v6

    throw v1

    :cond_3
    :try_start_1
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;

    invoke-direct {v1, v8}, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;-><init>(Ljava/util/concurrent/ConcurrentHashMap$TreeNode;)V

    invoke-static {p1, p2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->setTabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;ILjava/util/concurrent/ConcurrentHashMap$Node;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_4
    monitor-exit v6

    goto :goto_0
.end method

.method private final tryPresize(I)V
    .locals 12

    const/4 v11, 0x0

    const/high16 v0, 0x20000000

    if-lt p1, v0, :cond_3

    const/high16 v6, 0x40000000    # 2.0f

    :cond_0
    :goto_0
    iget v4, p0, Ljava/util/concurrent/ConcurrentHashMap;->sizeCtl:I

    if-ltz v4, :cond_6

    iget-object v10, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    if-eqz v10, :cond_1

    array-length v7, v10

    if-nez v7, :cond_5

    :cond_1
    if-le v4, v6, :cond_4

    move v7, v4

    :goto_1
    sget-object v0, Ljava/util/concurrent/ConcurrentHashMap;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/ConcurrentHashMap;->SIZECTL:J

    const/4 v5, -0x1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    if-ne v0, v10, :cond_2

    new-array v8, v7, [Ljava/util/concurrent/ConcurrentHashMap$Node;

    iput-object v8, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    ushr-int/lit8 v0, v7, 0x2

    sub-int v4, v7, v0

    :cond_2
    iput v4, p0, Ljava/util/concurrent/ConcurrentHashMap;->sizeCtl:I

    goto :goto_0

    :cond_3
    ushr-int/lit8 v0, p1, 0x1

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/util/concurrent/ConcurrentHashMap;->tableSizeFor(I)I

    move-result v6

    goto :goto_0

    :cond_4
    move v7, v6

    goto :goto_1

    :catchall_0
    move-exception v0

    iput v4, p0, Ljava/util/concurrent/ConcurrentHashMap;->sizeCtl:I

    throw v0

    :cond_5
    if-le v6, v4, :cond_6

    const/high16 v0, 0x40000000    # 2.0f

    if-lt v7, v0, :cond_7

    :cond_6
    return-void

    :cond_7
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    if-ne v10, v0, :cond_0

    invoke-static {v7}, Ljava/util/concurrent/ConcurrentHashMap;->resizeStamp(I)I

    move-result v9

    sget-object v0, Ljava/util/concurrent/ConcurrentHashMap;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/ConcurrentHashMap;->SIZECTL:J

    shl-int/lit8 v1, v9, 0x10

    add-int/lit8 v5, v1, 0x2

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v10, v11}, Ljava/util/concurrent/ConcurrentHashMap;->transfer([Ljava/util/concurrent/ConcurrentHashMap$Node;[Ljava/util/concurrent/ConcurrentHashMap$Node;)V

    goto :goto_0
.end method

.method static untreeify(Ljava/util/concurrent/ConcurrentHashMap$Node;)Ljava/util/concurrent/ConcurrentHashMap$Node;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/ConcurrentHashMap$Node",
            "<TK;TV;>;)",
            "Ljava/util/concurrent/ConcurrentHashMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    const/4 v7, 0x0

    const/4 v0, 0x0

    const/4 v3, 0x0

    move-object v2, p0

    :goto_0
    if-eqz v2, :cond_1

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap$Node;

    iget v4, v2, Ljava/util/concurrent/ConcurrentHashMap$Node;->hash:I

    iget-object v5, v2, Ljava/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    iget-object v6, v2, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    invoke-direct {v1, v4, v5, v6, v7}, Ljava/util/concurrent/ConcurrentHashMap$Node;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/concurrent/ConcurrentHashMap$Node;)V

    if-nez v3, :cond_0

    move-object v0, v1

    :goto_1
    move-object v3, v1

    iget-object v2, v2, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    goto :goto_0

    :cond_0
    iput-object v1, v3, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    goto :goto_1

    :cond_1
    return-object v0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v10, 0x10

    const/4 v13, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    :goto_0
    if-ge v7, v10, :cond_0

    add-int/lit8 v6, v6, 0x1

    shl-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    rsub-int/lit8 v4, v6, 0x20

    add-int/lit8 v3, v7, -0x1

    new-array v5, v10, [Ljava/util/concurrent/ConcurrentHashMap$Segment;

    const/4 v0, 0x0

    :goto_1
    array-length v10, v5

    if-ge v0, v10, :cond_1

    new-instance v10, Ljava/util/concurrent/ConcurrentHashMap$Segment;

    const/high16 v11, 0x3f400000    # 0.75f

    invoke-direct {v10, v11}, Ljava/util/concurrent/ConcurrentHashMap$Segment;-><init>(F)V

    aput-object v10, v5, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->putFields()Ljava/io/ObjectOutputStream$PutField;

    move-result-object v8

    const-string/jumbo v10, "segments"

    invoke-virtual {v8, v10, v5}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v10, "segmentShift"

    invoke-virtual {v8, v10, v4}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    const-string/jumbo v10, "segmentMask"

    invoke-virtual {v8, v10, v3}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->writeFields()V

    iget-object v9, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    if-eqz v9, :cond_2

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap$Traverser;

    array-length v10, v9

    array-length v11, v9

    const/4 v12, 0x0

    invoke-direct {v1, v9, v10, v12, v11}, Ljava/util/concurrent/ConcurrentHashMap$Traverser;-><init>([Ljava/util/concurrent/ConcurrentHashMap$Node;III)V

    :goto_2
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->advance()Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v10, v2, Ljava/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    invoke-virtual {p1, v10}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    iget-object v10, v2, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    invoke-virtual {p1, v10}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    invoke-virtual {p1, v13}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    invoke-virtual {p1, v13}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method final batchFor(J)I
    .locals 7

    const-wide v4, 0x7fffffffffffffffL

    cmp-long v3, p1, v4

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->sumCount()J

    move-result-wide v0

    const-wide/16 v4, 0x1

    cmp-long v3, v0, v4

    if-gtz v3, :cond_1

    :cond_0
    const/4 v3, 0x0

    return v3

    :cond_1
    cmp-long v3, v0, p1

    if-ltz v3, :cond_0

    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->getCommonPoolParallelism()I

    move-result v3

    shl-int/lit8 v2, v3, 0x2

    const-wide/16 v4, 0x0

    cmp-long v3, p1, v4

    if-lez v3, :cond_2

    div-long/2addr v0, p1

    int-to-long v4, v2

    cmp-long v3, v0, v4

    if-ltz v3, :cond_3

    :cond_2
    :goto_0
    return v2

    :cond_3
    long-to-int v2, v0

    goto :goto_0
.end method

.method public clear()V
    .locals 13

    const/4 v12, -0x1

    const-wide/16 v2, 0x0

    const/4 v6, 0x0

    iget-object v9, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    move v7, v6

    :goto_0
    if-eqz v9, :cond_5

    array-length v10, v9

    if-ge v7, v10, :cond_5

    invoke-static {v9, v7}, Ljava/util/concurrent/ConcurrentHashMap;->tabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;I)Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v4

    if-nez v4, :cond_0

    add-int/lit8 v6, v7, 0x1

    :goto_1
    move v7, v6

    goto :goto_0

    :cond_0
    iget v5, v4, Ljava/util/concurrent/ConcurrentHashMap$Node;->hash:I

    if-ne v5, v12, :cond_1

    invoke-virtual {p0, v9, v4}, Ljava/util/concurrent/ConcurrentHashMap;->helpTransfer([Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$Node;)[Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v9

    const/4 v6, 0x0

    goto :goto_1

    :cond_1
    monitor-enter v4

    :try_start_0
    invoke-static {v9, v7}, Ljava/util/concurrent/ConcurrentHashMap;->tabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;I)Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v10

    if-ne v10, v4, :cond_7

    if-ltz v5, :cond_2

    move-object v8, v4

    :goto_2
    if-eqz v8, :cond_4

    const-wide/16 v10, 0x1

    sub-long/2addr v2, v10

    iget-object v8, v8, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    goto :goto_2

    :cond_2
    instance-of v10, v4, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;

    if-eqz v10, :cond_3

    move-object v0, v4

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;

    move-object v10, v0

    iget-object v8, v10, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->first:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :cond_3
    const/4 v8, 0x0

    goto :goto_2

    :cond_4
    add-int/lit8 v6, v7, 0x1

    const/4 v10, 0x0

    :try_start_1
    invoke-static {v9, v7, v10}, Ljava/util/concurrent/ConcurrentHashMap;->setTabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;ILjava/util/concurrent/ConcurrentHashMap$Node;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_3
    monitor-exit v4

    goto :goto_1

    :catchall_0
    move-exception v10

    move v6, v7

    :goto_4
    monitor-exit v4

    throw v10

    :cond_5
    const-wide/16 v10, 0x0

    cmp-long v10, v2, v10

    if-eqz v10, :cond_6

    invoke-direct {p0, v2, v3, v12}, Ljava/util/concurrent/ConcurrentHashMap;->addCount(JI)V

    :cond_6
    return-void

    :catchall_1
    move-exception v10

    goto :goto_4

    :cond_7
    move v6, v7

    goto :goto_3
.end method

.method public compute(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/function/BiFunction",
            "<-TK;-TV;+TV;>;)TV;"
        }
    .end annotation

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v24, Ljava/lang/NullPointerException;

    invoke-direct/range {v24 .. v24}, Ljava/lang/NullPointerException;-><init>()V

    throw v24

    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->hashCode()I

    move-result v24

    invoke-static/range {v24 .. v24}, Ljava/util/concurrent/ConcurrentHashMap;->spread(I)I

    move-result v11

    const/16 v23, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-object/from16 v22, v0

    :cond_2
    :goto_0
    if-eqz v22, :cond_3

    move-object/from16 v0, v22

    array-length v13, v0

    if-nez v13, :cond_4

    :cond_3
    invoke-direct/range {p0 .. p0}, Ljava/util/concurrent/ConcurrentHashMap;->initTable()[Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v22

    goto :goto_0

    :cond_4
    add-int/lit8 v24, v13, -0x1

    and-int v12, v24, v11

    move-object/from16 v0, v22

    invoke-static {v0, v12}, Ljava/util/concurrent/ConcurrentHashMap;->tabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;I)Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v9

    if-nez v9, :cond_9

    new-instance v19, Ljava/util/concurrent/ConcurrentHashMap$ReservationNode;

    invoke-direct/range {v19 .. v19}, Ljava/util/concurrent/ConcurrentHashMap$ReservationNode;-><init>()V

    monitor-enter v19

    const/16 v24, 0x0

    :try_start_0
    move-object/from16 v0, v22

    move-object/from16 v1, v24

    move-object/from16 v2, v19

    invoke-static {v0, v12, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->casTabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;ILjava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$Node;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v24

    if-eqz v24, :cond_6

    const/4 v4, 0x1

    const/4 v14, 0x0

    const/16 v24, 0x0

    :try_start_1
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    if-eqz v23, :cond_5

    const/4 v5, 0x1

    new-instance v15, Ljava/util/concurrent/ConcurrentHashMap$Node;

    const/16 v24, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-direct {v15, v11, v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap$Node;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/concurrent/ConcurrentHashMap$Node;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v14, v15

    :cond_5
    :try_start_2
    move-object/from16 v0, v22

    invoke-static {v0, v12, v14}, Ljava/util/concurrent/ConcurrentHashMap;->setTabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;ILjava/util/concurrent/ConcurrentHashMap$Node;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_6
    monitor-exit v19

    if-eqz v4, :cond_2

    :cond_7
    :goto_1
    if-eqz v5, :cond_8

    int-to-long v0, v5

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v24

    invoke-direct {v0, v1, v2, v4}, Ljava/util/concurrent/ConcurrentHashMap;->addCount(JI)V

    :cond_8
    return-object v23

    :catchall_0
    move-exception v24

    :try_start_3
    move-object/from16 v0, v22

    invoke-static {v0, v12, v14}, Ljava/util/concurrent/ConcurrentHashMap;->setTabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;ILjava/util/concurrent/ConcurrentHashMap$Node;)V

    throw v24
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v24

    monitor-exit v19

    throw v24

    :cond_9
    iget v10, v9, Ljava/util/concurrent/ConcurrentHashMap$Node;->hash:I

    const/16 v24, -0x1

    move/from16 v0, v24

    if-ne v10, v0, :cond_a

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v9}, Ljava/util/concurrent/ConcurrentHashMap;->helpTransfer([Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$Node;)[Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v22

    goto :goto_0

    :cond_a
    monitor-enter v9

    :try_start_4
    move-object/from16 v0, v22

    invoke-static {v0, v12}, Ljava/util/concurrent/ConcurrentHashMap;->tabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;I)Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v24

    move-object/from16 v0, v24

    if-ne v0, v9, :cond_c

    if-ltz v10, :cond_12

    const/4 v4, 0x1

    move-object v6, v9

    const/16 v17, 0x0

    :goto_2
    iget v0, v6, Ljava/util/concurrent/ConcurrentHashMap$Node;->hash:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-ne v0, v11, :cond_f

    iget-object v7, v6, Ljava/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    move-object/from16 v0, p1

    if-eq v7, v0, :cond_b

    if-eqz v7, :cond_f

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_f

    :cond_b
    iget-object v0, v6, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    move-object/from16 v24, v0

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    if-eqz v23, :cond_d

    move-object/from16 v0, v23

    iput-object v0, v6, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :cond_c
    :goto_3
    monitor-exit v9

    if-eqz v4, :cond_2

    const/16 v24, 0x8

    move/from16 v0, v24

    if-lt v4, v0, :cond_7

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1, v12}, Ljava/util/concurrent/ConcurrentHashMap;->treeifyBin([Ljava/util/concurrent/ConcurrentHashMap$Node;I)V

    goto :goto_1

    :cond_d
    const/4 v5, -0x1

    :try_start_5
    iget-object v8, v6, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    if-eqz v17, :cond_e

    move-object/from16 v0, v17

    iput-object v8, v0, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception v24

    monitor-exit v9

    throw v24

    :cond_e
    :try_start_6
    move-object/from16 v0, v22

    invoke-static {v0, v12, v8}, Ljava/util/concurrent/ConcurrentHashMap;->setTabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;ILjava/util/concurrent/ConcurrentHashMap$Node;)V

    goto :goto_3

    :cond_f
    move-object/from16 v17, v6

    iget-object v6, v6, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    if-nez v6, :cond_11

    const/16 v24, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    if-eqz v23, :cond_c

    move-object/from16 v0, v17

    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-object/from16 v24, v0

    if-eqz v24, :cond_10

    new-instance v24, Ljava/lang/IllegalStateException;

    const-string/jumbo v25, "Recursive update"

    invoke-direct/range {v24 .. v25}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v24

    :cond_10
    const/4 v5, 0x1

    new-instance v24, Ljava/util/concurrent/ConcurrentHashMap$Node;

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    move-object/from16 v2, v23

    move-object/from16 v3, v25

    invoke-direct {v0, v11, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap$Node;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/concurrent/ConcurrentHashMap$Node;)V

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    iput-object v0, v1, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    goto :goto_3

    :cond_11
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2

    :cond_12
    instance-of v0, v9, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;

    move/from16 v24, v0

    if-eqz v24, :cond_17

    const/4 v4, 0x1

    move-object v0, v9

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->root:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    move-object/from16 v20, v0

    if-eqz v20, :cond_13

    const/16 v24, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move-object/from16 v2, v24

    invoke-virtual {v0, v11, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->findTreeNode(ILjava/lang/Object;Ljava/lang/Class;)Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    move-result-object v16

    :goto_4
    if-nez v16, :cond_14

    const/16 v18, 0x0

    :goto_5
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    if-eqz v23, :cond_16

    if-eqz v16, :cond_15

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    iput-object v0, v1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->val:Ljava/lang/Object;

    goto/16 :goto_3

    :cond_13
    const/16 v16, 0x0

    goto :goto_4

    :cond_14
    move-object/from16 v0, v16

    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->val:Ljava/lang/Object;

    move-object/from16 v18, v0

    goto :goto_5

    :cond_15
    const/4 v5, 0x1

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    move-object/from16 v2, v23

    invoke-virtual {v0, v11, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->putTreeVal(ILjava/lang/Object;Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    goto/16 :goto_3

    :cond_16
    if-eqz v16, :cond_c

    const/4 v5, -0x1

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->removeTreeNode(Ljava/util/concurrent/ConcurrentHashMap$TreeNode;)Z

    move-result v24

    if-eqz v24, :cond_c

    move-object/from16 v0, v21

    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->first:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/util/concurrent/ConcurrentHashMap;->untreeify(Ljava/util/concurrent/ConcurrentHashMap$Node;)Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v12, v1}, Ljava/util/concurrent/ConcurrentHashMap;->setTabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;ILjava/util/concurrent/ConcurrentHashMap$Node;)V

    goto/16 :goto_3

    :cond_17
    instance-of v0, v9, Ljava/util/concurrent/ConcurrentHashMap$ReservationNode;

    move/from16 v24, v0

    if-eqz v24, :cond_c

    new-instance v24, Ljava/lang/IllegalStateException;

    const-string/jumbo v25, "Recursive update"

    invoke-direct/range {v24 .. v25}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v24
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2
.end method

.method public computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/function/Function",
            "<-TK;+TV;>;)TV;"
        }
    .end annotation

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v22, Ljava/lang/NullPointerException;

    invoke-direct/range {v22 .. v22}, Ljava/lang/NullPointerException;-><init>()V

    throw v22

    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->hashCode()I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/util/concurrent/ConcurrentHashMap;->spread(I)I

    move-result v10

    const/16 v21, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-object/from16 v20, v0

    :cond_2
    :goto_0
    if-eqz v20, :cond_3

    move-object/from16 v0, v20

    array-length v12, v0

    if-nez v12, :cond_4

    :cond_3
    invoke-direct/range {p0 .. p0}, Ljava/util/concurrent/ConcurrentHashMap;->initTable()[Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v20

    goto :goto_0

    :cond_4
    add-int/lit8 v22, v12, -0x1

    and-int v11, v22, v10

    move-object/from16 v0, v20

    invoke-static {v0, v11}, Ljava/util/concurrent/ConcurrentHashMap;->tabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;I)Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v8

    if-nez v8, :cond_9

    new-instance v17, Ljava/util/concurrent/ConcurrentHashMap$ReservationNode;

    invoke-direct/range {v17 .. v17}, Ljava/util/concurrent/ConcurrentHashMap$ReservationNode;-><init>()V

    monitor-enter v17

    const/16 v22, 0x0

    :try_start_0
    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move-object/from16 v2, v17

    invoke-static {v0, v11, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->casTabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;ILjava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$Node;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v22

    if-eqz v22, :cond_6

    const/4 v5, 0x1

    const/4 v13, 0x0

    :try_start_1
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    if-eqz v21, :cond_5

    new-instance v14, Ljava/util/concurrent/ConcurrentHashMap$Node;

    const/16 v22, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v14, v10, v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap$Node;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/concurrent/ConcurrentHashMap$Node;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v13, v14

    :cond_5
    :try_start_2
    move-object/from16 v0, v20

    invoke-static {v0, v11, v13}, Ljava/util/concurrent/ConcurrentHashMap;->setTabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;ILjava/util/concurrent/ConcurrentHashMap$Node;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_6
    monitor-exit v17

    if-eqz v5, :cond_2

    :cond_7
    if-eqz v21, :cond_8

    const-wide/16 v22, 0x1

    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-direct {v0, v1, v2, v5}, Ljava/util/concurrent/ConcurrentHashMap;->addCount(JI)V

    :cond_8
    return-object v21

    :catchall_0
    move-exception v22

    :try_start_3
    move-object/from16 v0, v20

    invoke-static {v0, v11, v13}, Ljava/util/concurrent/ConcurrentHashMap;->setTabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;ILjava/util/concurrent/ConcurrentHashMap$Node;)V

    throw v22
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v22

    monitor-exit v17

    throw v22

    :cond_9
    iget v9, v8, Ljava/util/concurrent/ConcurrentHashMap$Node;->hash:I

    const/16 v22, -0x1

    move/from16 v0, v22

    if-ne v9, v0, :cond_a

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v8}, Ljava/util/concurrent/ConcurrentHashMap;->helpTransfer([Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$Node;)[Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v20

    goto :goto_0

    :cond_a
    const/4 v4, 0x0

    monitor-enter v8

    :try_start_4
    move-object/from16 v0, v20

    invoke-static {v0, v11}, Ljava/util/concurrent/ConcurrentHashMap;->tabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;I)Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v22

    move-object/from16 v0, v22

    if-ne v0, v8, :cond_c

    if-ltz v9, :cond_11

    const/4 v5, 0x1

    move-object v6, v8

    :goto_1
    iget v0, v6, Ljava/util/concurrent/ConcurrentHashMap$Node;->hash:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-ne v0, v10, :cond_e

    iget-object v7, v6, Ljava/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    move-object/from16 v0, p1

    if-eq v7, v0, :cond_b

    if-eqz v7, :cond_e

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_e

    :cond_b
    iget-object v0, v6, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    move-object/from16 v21, v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :cond_c
    :goto_2
    monitor-exit v8

    if-eqz v5, :cond_2

    const/16 v22, 0x8

    move/from16 v0, v22

    if-lt v5, v0, :cond_d

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v11}, Ljava/util/concurrent/ConcurrentHashMap;->treeifyBin([Ljava/util/concurrent/ConcurrentHashMap$Node;I)V

    :cond_d
    if-nez v4, :cond_7

    return-object v21

    :cond_e
    move-object/from16 v16, v6

    :try_start_5
    iget-object v6, v6, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    if-nez v6, :cond_10

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    if-eqz v21, :cond_c

    move-object/from16 v0, v16

    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-object/from16 v22, v0

    if-eqz v22, :cond_f

    new-instance v22, Ljava/lang/IllegalStateException;

    const-string/jumbo v23, "Recursive update"

    invoke-direct/range {v22 .. v23}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v22
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception v22

    monitor-exit v8

    throw v22

    :cond_f
    const/4 v4, 0x1

    :try_start_6
    new-instance v22, Ljava/util/concurrent/ConcurrentHashMap$Node;

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    move-object/from16 v3, v23

    invoke-direct {v0, v10, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap$Node;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/concurrent/ConcurrentHashMap$Node;)V

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    iput-object v0, v1, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    goto :goto_2

    :cond_10
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_11
    instance-of v0, v8, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;

    move/from16 v22, v0

    if-eqz v22, :cond_13

    const/4 v5, 0x2

    move-object v0, v8

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->root:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    move-object/from16 v18, v0

    if-eqz v18, :cond_12

    const/16 v22, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move-object/from16 v2, v22

    invoke-virtual {v0, v10, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->findTreeNode(ILjava/lang/Object;Ljava/lang/Class;)Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    move-result-object v15

    if-eqz v15, :cond_12

    iget-object v0, v15, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->val:Ljava/lang/Object;

    move-object/from16 v21, v0

    goto :goto_2

    :cond_12
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    if-eqz v21, :cond_c

    const/4 v4, 0x1

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    invoke-virtual {v0, v10, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->putTreeVal(ILjava/lang/Object;Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    goto/16 :goto_2

    :cond_13
    instance-of v0, v8, Ljava/util/concurrent/ConcurrentHashMap$ReservationNode;

    move/from16 v22, v0

    if-eqz v22, :cond_c

    new-instance v22, Ljava/lang/IllegalStateException;

    const-string/jumbo v23, "Recursive update"

    invoke-direct/range {v22 .. v23}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v22
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2
.end method

.method public computeIfPresent(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/function/BiFunction",
            "<-TK;-TV;+TV;>;)TV;"
        }
    .end annotation

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v20, Ljava/lang/NullPointerException;

    invoke-direct/range {v20 .. v20}, Ljava/lang/NullPointerException;-><init>()V

    throw v20

    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->hashCode()I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/util/concurrent/ConcurrentHashMap;->spread(I)I

    move-result v11

    const/16 v19, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-object/from16 v18, v0

    :cond_2
    :goto_0
    if-eqz v18, :cond_3

    move-object/from16 v0, v18

    array-length v13, v0

    if-nez v13, :cond_4

    :cond_3
    invoke-direct/range {p0 .. p0}, Ljava/util/concurrent/ConcurrentHashMap;->initTable()[Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v18

    goto :goto_0

    :cond_4
    add-int/lit8 v20, v13, -0x1

    and-int v12, v20, v11

    move-object/from16 v0, v18

    invoke-static {v0, v12}, Ljava/util/concurrent/ConcurrentHashMap;->tabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;I)Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v9

    if-nez v9, :cond_6

    :goto_1
    if-eqz v5, :cond_5

    int-to-long v0, v5

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-direct {v0, v1, v2, v4}, Ljava/util/concurrent/ConcurrentHashMap;->addCount(JI)V

    :cond_5
    return-object v19

    :cond_6
    iget v10, v9, Ljava/util/concurrent/ConcurrentHashMap$Node;->hash:I

    const/16 v20, -0x1

    move/from16 v0, v20

    if-ne v10, v0, :cond_7

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v9}, Ljava/util/concurrent/ConcurrentHashMap;->helpTransfer([Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$Node;)[Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v18

    goto :goto_0

    :cond_7
    monitor-enter v9

    :try_start_0
    move-object/from16 v0, v18

    invoke-static {v0, v12}, Ljava/util/concurrent/ConcurrentHashMap;->tabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;I)Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v20

    move-object/from16 v0, v20

    if-ne v0, v9, :cond_9

    if-ltz v10, :cond_d

    const/4 v4, 0x1

    move-object v6, v9

    const/4 v15, 0x0

    :goto_2
    iget v0, v6, Ljava/util/concurrent/ConcurrentHashMap$Node;->hash:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-ne v0, v11, :cond_c

    iget-object v7, v6, Ljava/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    move-object/from16 v0, p1

    if-eq v7, v0, :cond_8

    if-eqz v7, :cond_c

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_c

    :cond_8
    iget-object v0, v6, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    move-object/from16 v20, v0

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    if-eqz v19, :cond_a

    move-object/from16 v0, v19

    iput-object v0, v6, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_9
    :goto_3
    monitor-exit v9

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_a
    const/4 v5, -0x1

    :try_start_1
    iget-object v8, v6, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    if-eqz v15, :cond_b

    iput-object v8, v15, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v20

    monitor-exit v9

    throw v20

    :cond_b
    :try_start_2
    move-object/from16 v0, v18

    invoke-static {v0, v12, v8}, Ljava/util/concurrent/ConcurrentHashMap;->setTabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;ILjava/util/concurrent/ConcurrentHashMap$Node;)V

    goto :goto_3

    :cond_c
    move-object v15, v6

    iget-object v6, v6, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    if-eqz v6, :cond_9

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_d
    instance-of v0, v9, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;

    move/from16 v20, v0

    if-eqz v20, :cond_f

    const/4 v4, 0x2

    move-object v0, v9

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->root:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    move-object/from16 v16, v0

    if-eqz v16, :cond_9

    const/16 v20, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    invoke-virtual {v0, v11, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->findTreeNode(ILjava/lang/Object;Ljava/lang/Class;)Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    move-result-object v14

    if-eqz v14, :cond_9

    iget-object v0, v14, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->val:Ljava/lang/Object;

    move-object/from16 v20, v0

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    if-eqz v19, :cond_e

    move-object/from16 v0, v19

    iput-object v0, v14, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->val:Ljava/lang/Object;

    goto :goto_3

    :cond_e
    const/4 v5, -0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->removeTreeNode(Ljava/util/concurrent/ConcurrentHashMap$TreeNode;)Z

    move-result v20

    if-eqz v20, :cond_9

    move-object/from16 v0, v17

    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->first:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/util/concurrent/ConcurrentHashMap;->untreeify(Ljava/util/concurrent/ConcurrentHashMap$Node;)Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-static {v0, v12, v1}, Ljava/util/concurrent/ConcurrentHashMap;->setTabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;ILjava/util/concurrent/ConcurrentHashMap$Node;)V

    goto :goto_3

    :cond_f
    instance-of v0, v9, Ljava/util/concurrent/ConcurrentHashMap$ReservationNode;

    move/from16 v20, v0

    if-eqz v20, :cond_9

    new-instance v20, Ljava/lang/IllegalStateException;

    const-string/jumbo v21, "Recursive update"

    invoke-direct/range {v20 .. v21}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v20
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 7

    const/4 v6, 0x0

    if-nez p1, :cond_0

    new-instance v4, Ljava/lang/NullPointerException;

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    throw v4

    :cond_0
    iget-object v2, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    if-eqz v2, :cond_3

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;

    array-length v4, v2

    array-length v5, v2

    invoke-direct {v0, v2, v4, v6, v5}, Ljava/util/concurrent/ConcurrentHashMap$Traverser;-><init>([Ljava/util/concurrent/ConcurrentHashMap$Node;III)V

    :cond_1
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->advance()Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v3, v1, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    if-eq v3, p1, :cond_2

    if-eqz v3, :cond_1

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_2
    const/4 v4, 0x1

    return v4

    :cond_3
    return v6
.end method

.method public elements()Ljava/util/Enumeration;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<TV;>;"
        }
    .end annotation

    iget-object v1, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    if-nez v1, :cond_0

    const/4 v2, 0x0

    :goto_0
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$ValueIterator;

    const/4 v3, 0x0

    move v4, v2

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Ljava/util/concurrent/ConcurrentHashMap$ValueIterator;-><init>([Ljava/util/concurrent/ConcurrentHashMap$Node;IIILjava/util/concurrent/ConcurrentHashMap;)V

    return-object v0

    :cond_0
    array-length v2, v1

    goto :goto_0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap;->entrySet:Ljava/util/concurrent/ConcurrentHashMap$EntrySetView;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$EntrySetView;

    invoke-direct {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap$EntrySetView;-><init>(Ljava/util/concurrent/ConcurrentHashMap;)V

    iput-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap;->entrySet:Ljava/util/concurrent/ConcurrentHashMap$EntrySetView;

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 13

    const/4 v12, 0x0

    if-eq p1, p0, :cond_8

    instance-of v11, p1, Ljava/util/Map;

    if-nez v11, :cond_0

    return v12

    :cond_0
    move-object v4, p1

    check-cast v4, Ljava/util/Map;

    iget-object v8, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    if-nez v8, :cond_3

    const/4 v2, 0x0

    :goto_0
    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap$Traverser;

    invoke-direct {v3, v8, v2, v12, v2}, Ljava/util/concurrent/ConcurrentHashMap$Traverser;-><init>([Ljava/util/concurrent/ConcurrentHashMap$Node;III)V

    :cond_1
    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->advance()Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v7

    if-eqz v7, :cond_4

    iget-object v10, v7, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    iget-object v11, v7, Ljava/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    invoke-interface {v4, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_2

    if-eq v9, v10, :cond_1

    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    xor-int/lit8 v11, v11, 0x1

    if-eqz v11, :cond_1

    :cond_2
    return v12

    :cond_3
    array-length v2, v8

    goto :goto_0

    :cond_4
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_6

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_7

    :cond_6
    :goto_1
    return v12

    :cond_7
    invoke-virtual {p0, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_6

    if-eq v6, v9, :cond_5

    invoke-virtual {v6, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    xor-int/lit8 v11, v11, 0x1

    if-eqz v11, :cond_5

    goto :goto_1

    :cond_8
    const/4 v11, 0x1

    return v11
.end method

.method public forEach(JLjava/util/function/BiConsumer;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/function/BiConsumer",
            "<-TK;-TV;>;)V"
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v3, 0x0

    if-nez p3, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$ForEachMappingTask;

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->batchFor(J)I

    move-result v2

    iget-object v5, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    move v4, v3

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ConcurrentHashMap$ForEachMappingTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/function/BiConsumer;)V

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap$ForEachMappingTask;->invoke()Ljava/lang/Object;

    return-void
.end method

.method public forEach(JLjava/util/function/BiFunction;Ljava/util/function/Consumer;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(J",
            "Ljava/util/function/BiFunction",
            "<-TK;-TV;+TU;>;",
            "Ljava/util/function/Consumer",
            "<-TU;>;)V"
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    if-nez p4, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$ForEachTransformedMappingTask;

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->batchFor(J)I

    move-result v2

    iget-object v5, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    move v4, v3

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ConcurrentHashMap$ForEachTransformedMappingTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/function/BiFunction;Ljava/util/function/Consumer;)V

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap$ForEachTransformedMappingTask;->invoke()Ljava/lang/Object;

    return-void
.end method

.method public forEach(Ljava/util/function/BiConsumer;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiConsumer",
            "<-TK;-TV;>;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    :cond_0
    iget-object v2, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    if-eqz v2, :cond_1

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;

    array-length v3, v2

    array-length v4, v2

    const/4 v5, 0x0

    invoke-direct {v0, v2, v3, v5, v4}, Ljava/util/concurrent/ConcurrentHashMap$Traverser;-><init>([Ljava/util/concurrent/ConcurrentHashMap$Node;III)V

    :goto_0
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->advance()Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v3, v1, Ljava/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    iget-object v4, v1, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    invoke-interface {p1, v3, v4}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public forEachEntry(JLjava/util/function/Consumer;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/function/Consumer",
            "<-",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;)V"
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v3, 0x0

    if-nez p3, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$ForEachEntryTask;

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->batchFor(J)I

    move-result v2

    iget-object v5, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    move v4, v3

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ConcurrentHashMap$ForEachEntryTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/function/Consumer;)V

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap$ForEachEntryTask;->invoke()Ljava/lang/Object;

    return-void
.end method

.method public forEachEntry(JLjava/util/function/Function;Ljava/util/function/Consumer;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(J",
            "Ljava/util/function/Function",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;+TU;>;",
            "Ljava/util/function/Consumer",
            "<-TU;>;)V"
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    if-nez p4, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$ForEachTransformedEntryTask;

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->batchFor(J)I

    move-result v2

    iget-object v5, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    move v4, v3

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ConcurrentHashMap$ForEachTransformedEntryTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/function/Function;Ljava/util/function/Consumer;)V

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap$ForEachTransformedEntryTask;->invoke()Ljava/lang/Object;

    return-void
.end method

.method public forEachKey(JLjava/util/function/Consumer;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/function/Consumer",
            "<-TK;>;)V"
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v3, 0x0

    if-nez p3, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$ForEachKeyTask;

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->batchFor(J)I

    move-result v2

    iget-object v5, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    move v4, v3

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ConcurrentHashMap$ForEachKeyTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/function/Consumer;)V

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap$ForEachKeyTask;->invoke()Ljava/lang/Object;

    return-void
.end method

.method public forEachKey(JLjava/util/function/Function;Ljava/util/function/Consumer;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(J",
            "Ljava/util/function/Function",
            "<-TK;+TU;>;",
            "Ljava/util/function/Consumer",
            "<-TU;>;)V"
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    if-nez p4, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$ForEachTransformedKeyTask;

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->batchFor(J)I

    move-result v2

    iget-object v5, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    move v4, v3

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ConcurrentHashMap$ForEachTransformedKeyTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/function/Function;Ljava/util/function/Consumer;)V

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap$ForEachTransformedKeyTask;->invoke()Ljava/lang/Object;

    return-void
.end method

.method public forEachValue(JLjava/util/function/Consumer;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/function/Consumer",
            "<-TV;>;)V"
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v3, 0x0

    if-nez p3, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$ForEachValueTask;

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->batchFor(J)I

    move-result v2

    iget-object v5, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    move v4, v3

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ConcurrentHashMap$ForEachValueTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/function/Consumer;)V

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap$ForEachValueTask;->invoke()Ljava/lang/Object;

    return-void
.end method

.method public forEachValue(JLjava/util/function/Function;Ljava/util/function/Consumer;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(J",
            "Ljava/util/function/Function",
            "<-TV;+TU;>;",
            "Ljava/util/function/Consumer",
            "<-TU;>;)V"
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    if-nez p4, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$ForEachTransformedValueTask;

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->batchFor(J)I

    move-result v2

    iget-object v5, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    move v4, v3

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ConcurrentHashMap$ForEachTransformedValueTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/function/Function;Ljava/util/function/Consumer;)V

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap$ForEachTransformedValueTask;->invoke()Ljava/lang/Object;

    return-void
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    const/4 v7, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v8

    invoke-static {v8}, Ljava/util/concurrent/ConcurrentHashMap;->spread(I)I

    move-result v3

    iget-object v6, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    if-eqz v6, :cond_5

    array-length v4, v6

    if-lez v4, :cond_5

    add-int/lit8 v8, v4, -0x1

    and-int/2addr v8, v3

    invoke-static {v6, v8}, Ljava/util/concurrent/ConcurrentHashMap;->tabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;I)Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v0

    if-eqz v0, :cond_5

    iget v1, v0, Ljava/util/concurrent/ConcurrentHashMap$Node;->hash:I

    if-ne v1, v3, :cond_1

    iget-object v2, v0, Ljava/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    if-eq v2, p1, :cond_0

    if-eqz v2, :cond_3

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    :cond_0
    iget-object v7, v0, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    return-object v7

    :cond_1
    if-gez v1, :cond_3

    invoke-virtual {v0, v3, p1}, Ljava/util/concurrent/ConcurrentHashMap$Node;->find(ILjava/lang/Object;)Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v5

    if-eqz v5, :cond_2

    iget-object v7, v5, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    :cond_2
    return-object v7

    :cond_3
    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    if-eqz v0, :cond_5

    iget v8, v0, Ljava/util/concurrent/ConcurrentHashMap$Node;->hash:I

    if-ne v8, v3, :cond_3

    iget-object v2, v0, Ljava/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    if-eq v2, p1, :cond_4

    if-eqz v2, :cond_3

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    :cond_4
    iget-object v7, v0, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    return-object v7

    :cond_5
    return-object v7
.end method

.method public getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "TV;)TV;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-object p2

    :cond_0
    move-object p2, v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 7

    const/4 v0, 0x0

    iget-object v3, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    if-eqz v3, :cond_0

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap$Traverser;

    array-length v4, v3

    array-length v5, v3

    const/4 v6, 0x0

    invoke-direct {v1, v3, v4, v6, v5}, Ljava/util/concurrent/ConcurrentHashMap$Traverser;-><init>([Ljava/util/concurrent/ConcurrentHashMap$Node;III)V

    :goto_0
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->advance()Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v4, v2, Ljava/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    iget-object v5, v2, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v5

    xor-int/2addr v4, v5

    add-int/2addr v0, v4

    goto :goto_0

    :cond_0
    return v0
.end method

.method final helpTransfer([Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$Node;)[Ljava/util/concurrent/ConcurrentHashMap$Node;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/concurrent/ConcurrentHashMap$Node",
            "<TK;TV;>;",
            "Ljava/util/concurrent/ConcurrentHashMap$Node",
            "<TK;TV;>;)[",
            "Ljava/util/concurrent/ConcurrentHashMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    if-eqz p1, :cond_3

    instance-of v0, p2, Ljava/util/concurrent/ConcurrentHashMap$ForwardingNode;

    if-eqz v0, :cond_3

    check-cast p2, Ljava/util/concurrent/ConcurrentHashMap$ForwardingNode;

    iget-object v6, p2, Ljava/util/concurrent/ConcurrentHashMap$ForwardingNode;->nextTable:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    if-eqz v6, :cond_3

    array-length v0, p1

    invoke-static {v0}, Ljava/util/concurrent/ConcurrentHashMap;->resizeStamp(I)I

    move-result v7

    :cond_0
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap;->nextTable:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    if-ne v6, v0, :cond_1

    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    if-ne v0, p1, :cond_1

    iget v4, p0, Ljava/util/concurrent/ConcurrentHashMap;->sizeCtl:I

    if-gez v4, :cond_1

    ushr-int/lit8 v0, v4, 0x10

    if-ne v0, v7, :cond_1

    add-int/lit8 v0, v7, 0x1

    if-ne v4, v0, :cond_2

    :cond_1
    :goto_0
    return-object v6

    :cond_2
    const v0, 0xffff

    add-int/2addr v0, v7

    if-eq v4, v0, :cond_1

    iget v0, p0, Ljava/util/concurrent/ConcurrentHashMap;->transferIndex:I

    if-lez v0, :cond_1

    sget-object v0, Ljava/util/concurrent/ConcurrentHashMap;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/ConcurrentHashMap;->SIZECTL:J

    add-int/lit8 v5, v4, 0x1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, v6}, Ljava/util/concurrent/ConcurrentHashMap;->transfer([Ljava/util/concurrent/ConcurrentHashMap$Node;[Ljava/util/concurrent/ConcurrentHashMap$Node;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 4

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->sumCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public keySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap;->keySet:Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    invoke-direct {v0, p0, v1}, Ljava/util/concurrent/ConcurrentHashMap$KeySetView;-><init>(Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/Object;)V

    iput-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap;->keySet:Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    goto :goto_0
.end method

.method public keySet(Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentHashMap$KeySetView;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)",
            "Ljava/util/concurrent/ConcurrentHashMap$KeySetView",
            "<TK;TV;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    invoke-direct {v0, p0, p1}, Ljava/util/concurrent/ConcurrentHashMap$KeySetView;-><init>(Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/Object;)V

    return-object v0
.end method

.method public keys()Ljava/util/Enumeration;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<TK;>;"
        }
    .end annotation

    iget-object v1, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    if-nez v1, :cond_0

    const/4 v2, 0x0

    :goto_0
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$KeyIterator;

    const/4 v3, 0x0

    move v4, v2

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Ljava/util/concurrent/ConcurrentHashMap$KeyIterator;-><init>([Ljava/util/concurrent/ConcurrentHashMap$Node;IIILjava/util/concurrent/ConcurrentHashMap;)V

    return-object v0

    :cond_0
    array-length v2, v1

    goto :goto_0
.end method

.method public mappingCount()J
    .locals 5

    const-wide/16 v2, 0x0

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->sumCount()J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    move-wide v0, v2

    :cond_0
    return-wide v0
.end method

.method public merge(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;",
            "Ljava/util/function/BiFunction",
            "<-TV;-TV;+TV;>;)TV;"
        }
    .end annotation

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v20, Ljava/lang/NullPointerException;

    invoke-direct/range {v20 .. v20}, Ljava/lang/NullPointerException;-><init>()V

    throw v20

    :cond_1
    if-eqz p3, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->hashCode()I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/util/concurrent/ConcurrentHashMap;->spread(I)I

    move-result v11

    const/16 v19, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-object/from16 v18, v0

    :cond_2
    :goto_0
    if-eqz v18, :cond_3

    move-object/from16 v0, v18

    array-length v13, v0

    if-nez v13, :cond_4

    :cond_3
    invoke-direct/range {p0 .. p0}, Ljava/util/concurrent/ConcurrentHashMap;->initTable()[Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v18

    goto :goto_0

    :cond_4
    add-int/lit8 v20, v13, -0x1

    and-int v12, v20, v11

    move-object/from16 v0, v18

    invoke-static {v0, v12}, Ljava/util/concurrent/ConcurrentHashMap;->tabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;I)Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v9

    if-nez v9, :cond_7

    new-instance v20, Ljava/util/concurrent/ConcurrentHashMap$Node;

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v21

    invoke-direct {v0, v11, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap$Node;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/concurrent/ConcurrentHashMap$Node;)V

    const/16 v21, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    move-object/from16 v2, v20

    invoke-static {v0, v12, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->casTabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;ILjava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$Node;)Z

    move-result v20

    if-eqz v20, :cond_2

    const/4 v5, 0x1

    move-object/from16 v19, p2

    :cond_5
    :goto_1
    if-eqz v5, :cond_6

    int-to-long v0, v5

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-direct {v0, v1, v2, v4}, Ljava/util/concurrent/ConcurrentHashMap;->addCount(JI)V

    :cond_6
    return-object v19

    :cond_7
    iget v10, v9, Ljava/util/concurrent/ConcurrentHashMap$Node;->hash:I

    const/16 v20, -0x1

    move/from16 v0, v20

    if-ne v10, v0, :cond_8

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v9}, Ljava/util/concurrent/ConcurrentHashMap;->helpTransfer([Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$Node;)[Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v18

    goto :goto_0

    :cond_8
    monitor-enter v9

    :try_start_0
    move-object/from16 v0, v18

    invoke-static {v0, v12}, Ljava/util/concurrent/ConcurrentHashMap;->tabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;I)Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v20

    move-object/from16 v0, v20

    if-ne v0, v9, :cond_a

    if-ltz v10, :cond_f

    const/4 v4, 0x1

    move-object v6, v9

    const/4 v15, 0x0

    :goto_2
    iget v0, v6, Ljava/util/concurrent/ConcurrentHashMap$Node;->hash:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-ne v0, v11, :cond_d

    iget-object v7, v6, Ljava/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    move-object/from16 v0, p1

    if-eq v7, v0, :cond_9

    if-eqz v7, :cond_d

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_d

    :cond_9
    iget-object v0, v6, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    move-object/from16 v20, v0

    move-object/from16 v0, p3

    move-object/from16 v1, v20

    move-object/from16 v2, p2

    invoke-interface {v0, v1, v2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    if-eqz v19, :cond_b

    move-object/from16 v0, v19

    iput-object v0, v6, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_a
    :goto_3
    monitor-exit v9

    if-eqz v4, :cond_2

    const/16 v20, 0x8

    move/from16 v0, v20

    if-lt v4, v0, :cond_5

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v12}, Ljava/util/concurrent/ConcurrentHashMap;->treeifyBin([Ljava/util/concurrent/ConcurrentHashMap$Node;I)V

    goto :goto_1

    :cond_b
    const/4 v5, -0x1

    :try_start_1
    iget-object v8, v6, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    if-eqz v15, :cond_c

    iput-object v8, v15, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v20

    monitor-exit v9

    throw v20

    :cond_c
    :try_start_2
    move-object/from16 v0, v18

    invoke-static {v0, v12, v8}, Ljava/util/concurrent/ConcurrentHashMap;->setTabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;ILjava/util/concurrent/ConcurrentHashMap$Node;)V

    goto :goto_3

    :cond_d
    move-object v15, v6

    iget-object v6, v6, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    if-nez v6, :cond_e

    const/4 v5, 0x1

    move-object/from16 v19, p2

    new-instance v20, Ljava/util/concurrent/ConcurrentHashMap$Node;

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v21

    invoke-direct {v0, v11, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap$Node;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/concurrent/ConcurrentHashMap$Node;)V

    move-object/from16 v0, v20

    iput-object v0, v15, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    goto :goto_3

    :cond_e
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_f
    instance-of v0, v9, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;

    move/from16 v20, v0

    if-eqz v20, :cond_14

    const/4 v4, 0x2

    move-object v0, v9

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->root:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    move-object/from16 v16, v0

    if-nez v16, :cond_10

    const/4 v14, 0x0

    :goto_4
    if-nez v14, :cond_11

    move-object/from16 v19, p2

    :goto_5
    if-eqz v19, :cond_13

    if-eqz v14, :cond_12

    move-object/from16 v0, v19

    iput-object v0, v14, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->val:Ljava/lang/Object;

    goto :goto_3

    :cond_10
    const/16 v20, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    invoke-virtual {v0, v11, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->findTreeNode(ILjava/lang/Object;Ljava/lang/Class;)Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    move-result-object v14

    goto :goto_4

    :cond_11
    iget-object v0, v14, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->val:Ljava/lang/Object;

    move-object/from16 v20, v0

    move-object/from16 v0, p3

    move-object/from16 v1, v20

    move-object/from16 v2, p2

    invoke-interface {v0, v1, v2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    goto :goto_5

    :cond_12
    const/4 v5, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    invoke-virtual {v0, v11, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->putTreeVal(ILjava/lang/Object;Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    goto/16 :goto_3

    :cond_13
    if-eqz v14, :cond_a

    const/4 v5, -0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->removeTreeNode(Ljava/util/concurrent/ConcurrentHashMap$TreeNode;)Z

    move-result v20

    if-eqz v20, :cond_a

    move-object/from16 v0, v17

    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->first:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/util/concurrent/ConcurrentHashMap;->untreeify(Ljava/util/concurrent/ConcurrentHashMap$Node;)Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-static {v0, v12, v1}, Ljava/util/concurrent/ConcurrentHashMap;->setTabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;ILjava/util/concurrent/ConcurrentHashMap$Node;)V

    goto/16 :goto_3

    :cond_14
    instance-of v0, v9, Ljava/util/concurrent/ConcurrentHashMap$ReservationNode;

    move/from16 v20, v0

    if-eqz v20, :cond_a

    new-instance v20, Ljava/lang/IllegalStateException;

    const-string/jumbo v21, "Recursive update"

    invoke-direct/range {v20 .. v21}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v20
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->putVal(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v2

    invoke-direct {p0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->tryPresize(I)V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->putVal(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->putVal(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method final putVal(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;Z)TV;"
        }
    .end annotation

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v14, Ljava/lang/NullPointerException;

    invoke-direct {v14}, Ljava/lang/NullPointerException;-><init>()V

    throw v14

    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->hashCode()I

    move-result v14

    invoke-static {v14}, Ljava/util/concurrent/ConcurrentHashMap;->spread(I)I

    move-result v7

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    :cond_2
    :goto_0
    if-eqz v13, :cond_3

    array-length v9, v13

    if-nez v9, :cond_4

    :cond_3
    invoke-direct/range {p0 .. p0}, Ljava/util/concurrent/ConcurrentHashMap;->initTable()[Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v13

    goto :goto_0

    :cond_4
    add-int/lit8 v14, v9, -0x1

    and-int v8, v14, v7

    invoke-static {v13, v8}, Ljava/util/concurrent/ConcurrentHashMap;->tabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;I)Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v5

    if-nez v5, :cond_6

    new-instance v14, Ljava/util/concurrent/ConcurrentHashMap$Node;

    const/4 v15, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-direct {v14, v7, v0, v1, v15}, Ljava/util/concurrent/ConcurrentHashMap$Node;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/concurrent/ConcurrentHashMap$Node;)V

    const/4 v15, 0x0

    invoke-static {v13, v8, v15, v14}, Ljava/util/concurrent/ConcurrentHashMap;->casTabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;ILjava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$Node;)Z

    move-result v14

    if-eqz v14, :cond_2

    :cond_5
    const-wide/16 v14, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15, v2}, Ljava/util/concurrent/ConcurrentHashMap;->addCount(JI)V

    const/4 v14, 0x0

    return-object v14

    :cond_6
    iget v6, v5, Ljava/util/concurrent/ConcurrentHashMap$Node;->hash:I

    const/4 v14, -0x1

    if-ne v6, v14, :cond_7

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v5}, Ljava/util/concurrent/ConcurrentHashMap;->helpTransfer([Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$Node;)[Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v13

    goto :goto_0

    :cond_7
    const/4 v10, 0x0

    monitor-enter v5

    :try_start_0
    invoke-static {v13, v8}, Ljava/util/concurrent/ConcurrentHashMap;->tabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;I)Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v14

    if-ne v14, v5, :cond_9

    if-ltz v6, :cond_d

    const/4 v2, 0x1

    move-object v3, v5

    :goto_1
    iget v14, v3, Ljava/util/concurrent/ConcurrentHashMap$Node;->hash:I

    if-ne v14, v7, :cond_b

    iget-object v4, v3, Ljava/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    move-object/from16 v0, p1

    if-eq v4, v0, :cond_8

    if-eqz v4, :cond_b

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_b

    :cond_8
    iget-object v10, v3, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    if-nez p3, :cond_9

    move-object/from16 v0, p2

    iput-object v0, v3, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_9
    :goto_2
    monitor-exit v5

    if-eqz v2, :cond_2

    const/16 v14, 0x8

    if-lt v2, v14, :cond_a

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v8}, Ljava/util/concurrent/ConcurrentHashMap;->treeifyBin([Ljava/util/concurrent/ConcurrentHashMap$Node;I)V

    :cond_a
    if-eqz v10, :cond_5

    return-object v10

    :cond_b
    move-object v12, v3

    :try_start_1
    iget-object v3, v3, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    if-nez v3, :cond_c

    new-instance v14, Ljava/util/concurrent/ConcurrentHashMap$Node;

    const/4 v15, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-direct {v14, v7, v0, v1, v15}, Ljava/util/concurrent/ConcurrentHashMap$Node;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/concurrent/ConcurrentHashMap$Node;)V

    iput-object v14, v12, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v14

    monitor-exit v5

    throw v14

    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_d
    :try_start_2
    instance-of v14, v5, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;

    if-eqz v14, :cond_e

    const/4 v2, 0x2

    move-object v0, v5

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;

    move-object v14, v0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v14, v7, v0, v1}, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->putTreeVal(ILjava/lang/Object;Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    move-result-object v11

    if-eqz v11, :cond_9

    iget-object v10, v11, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    if-nez p3, :cond_9

    move-object/from16 v0, p2

    iput-object v0, v11, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    goto :goto_2

    :cond_e
    instance-of v14, v5, Ljava/util/concurrent/ConcurrentHashMap$ReservationNode;

    if-eqz v14, :cond_9

    new-instance v14, Ljava/lang/IllegalStateException;

    const-string/jumbo v15, "Recursive update"

    invoke-direct {v14, v15}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public reduce(JLjava/util/function/BiFunction;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(J",
            "Ljava/util/function/BiFunction",
            "<-TK;-TV;+TU;>;",
            "Ljava/util/function/BiFunction",
            "<-TU;-TU;+TU;>;)TU;"
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    if-nez p4, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsTask;

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->batchFor(J)I

    move-result v2

    iget-object v5, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    move v4, v3

    move-object v6, v1

    move-object v7, p3

    move-object v8, p4

    invoke-direct/range {v0 .. v8}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsTask;Ljava/util/function/BiFunction;Ljava/util/function/BiFunction;)V

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsTask;->invoke()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public reduceEntries(JLjava/util/function/Function;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(J",
            "Ljava/util/function/Function",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;+TU;>;",
            "Ljava/util/function/BiFunction",
            "<-TU;-TU;+TU;>;)TU;"
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    if-nez p4, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask;

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->batchFor(J)I

    move-result v2

    iget-object v5, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    move v4, v3

    move-object v6, v1

    move-object v7, p3

    move-object v8, p4

    invoke-direct/range {v0 .. v8}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask;Ljava/util/function/Function;Ljava/util/function/BiFunction;)V

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask;->invoke()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public reduceEntries(JLjava/util/function/BiFunction;)Ljava/util/Map$Entry;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/function/BiFunction",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;+",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;)",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v1, 0x0

    if-nez p3, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->batchFor(J)I

    move-result v2

    iget-object v5, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    move v4, v3

    move-object v6, v1

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;Ljava/util/function/BiFunction;)V

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    return-object v0
.end method

.method public reduceEntriesToDouble(JLjava/util/function/ToDoubleFunction;DLjava/util/function/DoubleBinaryOperator;)D
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/function/ToDoubleFunction",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;D",
            "Ljava/util/function/DoubleBinaryOperator;",
            ")D"
        }
    .end annotation

    if-eqz p3, :cond_0

    if-nez p6, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask;

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->batchFor(J)I

    move-result v2

    iget-object v5, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v7, p3

    move-wide v8, p4

    move-object/from16 v10, p6

    invoke-direct/range {v0 .. v10}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask;Ljava/util/function/ToDoubleFunction;DLjava/util/function/DoubleBinaryOperator;)V

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public reduceEntriesToInt(JLjava/util/function/ToIntFunction;ILjava/util/function/IntBinaryOperator;)I
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/function/ToIntFunction",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;I",
            "Ljava/util/function/IntBinaryOperator;",
            ")I"
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    if-nez p5, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToIntTask;

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->batchFor(J)I

    move-result v2

    iget-object v5, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    move v4, v3

    move-object v6, v1

    move-object v7, p3

    move v8, p4

    move-object/from16 v9, p5

    invoke-direct/range {v0 .. v9}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToIntTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToIntTask;Ljava/util/function/ToIntFunction;ILjava/util/function/IntBinaryOperator;)V

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToIntTask;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public reduceEntriesToLong(JLjava/util/function/ToLongFunction;JLjava/util/function/LongBinaryOperator;)J
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/function/ToLongFunction",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;J",
            "Ljava/util/function/LongBinaryOperator;",
            ")J"
        }
    .end annotation

    if-eqz p3, :cond_0

    if-nez p6, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToLongTask;

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->batchFor(J)I

    move-result v2

    iget-object v5, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v7, p3

    move-wide v8, p4

    move-object/from16 v10, p6

    invoke-direct/range {v0 .. v10}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToLongTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToLongTask;Ljava/util/function/ToLongFunction;JLjava/util/function/LongBinaryOperator;)V

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToLongTask;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public reduceKeys(JLjava/util/function/BiFunction;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/function/BiFunction",
            "<-TK;-TK;+TK;>;)TK;"
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v1, 0x0

    if-nez p3, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask;

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->batchFor(J)I

    move-result v2

    iget-object v5, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    move v4, v3

    move-object v6, v1

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask;Ljava/util/function/BiFunction;)V

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask;->invoke()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public reduceKeys(JLjava/util/function/Function;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(J",
            "Ljava/util/function/Function",
            "<-TK;+TU;>;",
            "Ljava/util/function/BiFunction",
            "<-TU;-TU;+TU;>;)TU;"
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    if-nez p4, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysTask;

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->batchFor(J)I

    move-result v2

    iget-object v5, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    move v4, v3

    move-object v6, v1

    move-object v7, p3

    move-object v8, p4

    invoke-direct/range {v0 .. v8}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysTask;Ljava/util/function/Function;Ljava/util/function/BiFunction;)V

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysTask;->invoke()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public reduceKeysToDouble(JLjava/util/function/ToDoubleFunction;DLjava/util/function/DoubleBinaryOperator;)D
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/function/ToDoubleFunction",
            "<-TK;>;D",
            "Ljava/util/function/DoubleBinaryOperator;",
            ")D"
        }
    .end annotation

    if-eqz p3, :cond_0

    if-nez p6, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToDoubleTask;

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->batchFor(J)I

    move-result v2

    iget-object v5, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v7, p3

    move-wide v8, p4

    move-object/from16 v10, p6

    invoke-direct/range {v0 .. v10}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToDoubleTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToDoubleTask;Ljava/util/function/ToDoubleFunction;DLjava/util/function/DoubleBinaryOperator;)V

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToDoubleTask;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public reduceKeysToInt(JLjava/util/function/ToIntFunction;ILjava/util/function/IntBinaryOperator;)I
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/function/ToIntFunction",
            "<-TK;>;I",
            "Ljava/util/function/IntBinaryOperator;",
            ")I"
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    if-nez p5, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToIntTask;

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->batchFor(J)I

    move-result v2

    iget-object v5, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    move v4, v3

    move-object v6, v1

    move-object v7, p3

    move v8, p4

    move-object/from16 v9, p5

    invoke-direct/range {v0 .. v9}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToIntTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToIntTask;Ljava/util/function/ToIntFunction;ILjava/util/function/IntBinaryOperator;)V

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToIntTask;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public reduceKeysToLong(JLjava/util/function/ToLongFunction;JLjava/util/function/LongBinaryOperator;)J
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/function/ToLongFunction",
            "<-TK;>;J",
            "Ljava/util/function/LongBinaryOperator;",
            ")J"
        }
    .end annotation

    if-eqz p3, :cond_0

    if-nez p6, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToLongTask;

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->batchFor(J)I

    move-result v2

    iget-object v5, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v7, p3

    move-wide v8, p4

    move-object/from16 v10, p6

    invoke-direct/range {v0 .. v10}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToLongTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToLongTask;Ljava/util/function/ToLongFunction;JLjava/util/function/LongBinaryOperator;)V

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToLongTask;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public reduceToDouble(JLjava/util/function/ToDoubleBiFunction;DLjava/util/function/DoubleBinaryOperator;)D
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/function/ToDoubleBiFunction",
            "<-TK;-TV;>;D",
            "Ljava/util/function/DoubleBinaryOperator;",
            ")D"
        }
    .end annotation

    if-eqz p3, :cond_0

    if-nez p6, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->batchFor(J)I

    move-result v2

    iget-object v5, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v7, p3

    move-wide v8, p4

    move-object/from16 v10, p6

    invoke-direct/range {v0 .. v10}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;Ljava/util/function/ToDoubleBiFunction;DLjava/util/function/DoubleBinaryOperator;)V

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public reduceToInt(JLjava/util/function/ToIntBiFunction;ILjava/util/function/IntBinaryOperator;)I
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/function/ToIntBiFunction",
            "<-TK;-TV;>;I",
            "Ljava/util/function/IntBinaryOperator;",
            ")I"
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    if-nez p5, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask;

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->batchFor(J)I

    move-result v2

    iget-object v5, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    move v4, v3

    move-object v6, v1

    move-object v7, p3

    move v8, p4

    move-object/from16 v9, p5

    invoke-direct/range {v0 .. v9}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask;Ljava/util/function/ToIntBiFunction;ILjava/util/function/IntBinaryOperator;)V

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public reduceToLong(JLjava/util/function/ToLongBiFunction;JLjava/util/function/LongBinaryOperator;)J
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/function/ToLongBiFunction",
            "<-TK;-TV;>;J",
            "Ljava/util/function/LongBinaryOperator;",
            ")J"
        }
    .end annotation

    if-eqz p3, :cond_0

    if-nez p6, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->batchFor(J)I

    move-result v2

    iget-object v5, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v7, p3

    move-wide v8, p4

    move-object/from16 v10, p6

    invoke-direct/range {v0 .. v10}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;Ljava/util/function/ToLongBiFunction;JLjava/util/function/LongBinaryOperator;)V

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public reduceValues(JLjava/util/function/BiFunction;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/function/BiFunction",
            "<-TV;-TV;+TV;>;)TV;"
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v1, 0x0

    if-nez p3, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask;

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->batchFor(J)I

    move-result v2

    iget-object v5, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    move v4, v3

    move-object v6, v1

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask;Ljava/util/function/BiFunction;)V

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask;->invoke()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public reduceValues(JLjava/util/function/Function;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(J",
            "Ljava/util/function/Function",
            "<-TV;+TU;>;",
            "Ljava/util/function/BiFunction",
            "<-TU;-TU;+TU;>;)TU;"
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    if-nez p4, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesTask;

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->batchFor(J)I

    move-result v2

    iget-object v5, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    move v4, v3

    move-object v6, v1

    move-object v7, p3

    move-object v8, p4

    invoke-direct/range {v0 .. v8}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesTask;Ljava/util/function/Function;Ljava/util/function/BiFunction;)V

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesTask;->invoke()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public reduceValuesToDouble(JLjava/util/function/ToDoubleFunction;DLjava/util/function/DoubleBinaryOperator;)D
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/function/ToDoubleFunction",
            "<-TV;>;D",
            "Ljava/util/function/DoubleBinaryOperator;",
            ")D"
        }
    .end annotation

    if-eqz p3, :cond_0

    if-nez p6, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToDoubleTask;

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->batchFor(J)I

    move-result v2

    iget-object v5, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v7, p3

    move-wide v8, p4

    move-object/from16 v10, p6

    invoke-direct/range {v0 .. v10}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToDoubleTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToDoubleTask;Ljava/util/function/ToDoubleFunction;DLjava/util/function/DoubleBinaryOperator;)V

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToDoubleTask;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public reduceValuesToInt(JLjava/util/function/ToIntFunction;ILjava/util/function/IntBinaryOperator;)I
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/function/ToIntFunction",
            "<-TV;>;I",
            "Ljava/util/function/IntBinaryOperator;",
            ")I"
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    if-nez p5, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask;

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->batchFor(J)I

    move-result v2

    iget-object v5, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    move v4, v3

    move-object v6, v1

    move-object v7, p3

    move v8, p4

    move-object/from16 v9, p5

    invoke-direct/range {v0 .. v9}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask;Ljava/util/function/ToIntFunction;ILjava/util/function/IntBinaryOperator;)V

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public reduceValuesToLong(JLjava/util/function/ToLongFunction;JLjava/util/function/LongBinaryOperator;)J
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/function/ToLongFunction",
            "<-TV;>;J",
            "Ljava/util/function/LongBinaryOperator;",
            ")J"
        }
    .end annotation

    if-eqz p3, :cond_0

    if-nez p6, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToLongTask;

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->batchFor(J)I

    move-result v2

    iget-object v5, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v7, p3

    move-wide v8, p4

    move-object/from16 v10, p6

    invoke-direct/range {v0 .. v10}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToLongTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToLongTask;Ljava/util/function/ToLongFunction;JLjava/util/function/LongBinaryOperator;)V

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToLongTask;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->replaceNode(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p0, p1, v1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->replaceNode(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method removeEntryIf(Ljava/util/function/Predicate;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate",
            "<-",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;)Z"
        }
    .end annotation

    const/4 v10, 0x0

    if-nez p1, :cond_0

    new-instance v7, Ljava/lang/NullPointerException;

    invoke-direct {v7}, Ljava/lang/NullPointerException;-><init>()V

    throw v7

    :cond_0
    const/4 v4, 0x0

    iget-object v5, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    if-eqz v5, :cond_2

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap$Traverser;

    array-length v7, v5

    array-length v8, v5

    const/4 v9, 0x0

    invoke-direct {v1, v5, v7, v9, v8}, Ljava/util/concurrent/ConcurrentHashMap$Traverser;-><init>([Ljava/util/concurrent/ConcurrentHashMap$Node;III)V

    :cond_1
    :goto_0
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->advance()Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v2, v3, Ljava/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    iget-object v6, v3, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    new-instance v0, Ljava/util/AbstractMap$SimpleImmutableEntry;

    invoke-direct {v0, v2, v6}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p1, v0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {p0, v2, v10, v6}, Ljava/util/concurrent/ConcurrentHashMap;->replaceNode(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    return v4
.end method

.method removeValueIf(Ljava/util/function/Predicate;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate",
            "<-TV;>;)Z"
        }
    .end annotation

    const/4 v9, 0x0

    if-nez p1, :cond_0

    new-instance v6, Ljava/lang/NullPointerException;

    invoke-direct {v6}, Ljava/lang/NullPointerException;-><init>()V

    throw v6

    :cond_0
    const/4 v3, 0x0

    iget-object v4, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    if-eqz v4, :cond_2

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;

    array-length v6, v4

    array-length v7, v4

    const/4 v8, 0x0

    invoke-direct {v0, v4, v6, v8, v7}, Ljava/util/concurrent/ConcurrentHashMap$Traverser;-><init>([Ljava/util/concurrent/ConcurrentHashMap$Node;III)V

    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->advance()Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v1, v2, Ljava/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    iget-object v5, v2, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    invoke-interface {p1, v5}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {p0, v1, v9, v5}, Ljava/util/concurrent/ConcurrentHashMap;->replaceNode(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    return v3
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_1
    invoke-virtual {p0, p1, p2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->replaceNode(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;TV;)Z"
        }
    .end annotation

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_1
    if-eqz p3, :cond_0

    invoke-virtual {p0, p1, p3, p2}, Ljava/util/concurrent/ConcurrentHashMap;->replaceNode(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public replaceAll(Ljava/util/function/BiFunction;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiFunction",
            "<-TK;-TV;+TV;>;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v6, Ljava/lang/NullPointerException;

    invoke-direct {v6}, Ljava/lang/NullPointerException;-><init>()V

    throw v6

    :cond_0
    iget-object v5, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    if-eqz v5, :cond_4

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;

    array-length v6, v5

    array-length v7, v5

    const/4 v8, 0x0

    invoke-direct {v0, v5, v6, v8, v7}, Ljava/util/concurrent/ConcurrentHashMap$Traverser;-><init>([Ljava/util/concurrent/ConcurrentHashMap$Node;III)V

    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->advance()Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v4

    if-eqz v4, :cond_4

    iget-object v3, v4, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    iget-object v1, v4, Ljava/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    :cond_2
    invoke-interface {p1, v1, v3}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_3

    new-instance v6, Ljava/lang/NullPointerException;

    invoke-direct {v6}, Ljava/lang/NullPointerException;-><init>()V

    throw v6

    :cond_3
    invoke-virtual {p0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->replaceNode(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_1

    invoke-virtual {p0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_4
    return-void
.end method

.method final replaceNode(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "TV;",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->hashCode()I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/util/concurrent/ConcurrentHashMap;->spread(I)I

    move-result v9

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-object/from16 v18, v0

    :cond_0
    :goto_0
    if-eqz v18, :cond_1

    move-object/from16 v0, v18

    array-length v11, v0

    if-nez v11, :cond_2

    :cond_1
    const/16 v20, 0x0

    return-object v20

    :cond_2
    add-int/lit8 v20, v11, -0x1

    and-int v10, v20, v9

    move-object/from16 v0, v18

    invoke-static {v0, v10}, Ljava/util/concurrent/ConcurrentHashMap;->tabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;I)Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v7

    if-eqz v7, :cond_1

    iget v8, v7, Ljava/util/concurrent/ConcurrentHashMap$Node;->hash:I

    const/16 v20, -0x1

    move/from16 v0, v20

    if-ne v8, v0, :cond_3

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v7}, Ljava/util/concurrent/ConcurrentHashMap;->helpTransfer([Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$Node;)[Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v18

    goto :goto_0

    :cond_3
    const/4 v12, 0x0

    const/16 v19, 0x0

    monitor-enter v7

    :try_start_0
    move-object/from16 v0, v18

    invoke-static {v0, v10}, Ljava/util/concurrent/ConcurrentHashMap;->tabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;I)Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v20

    move-object/from16 v0, v20

    if-ne v0, v7, :cond_7

    if-ltz v8, :cond_d

    const/16 v19, 0x1

    move-object v4, v7

    const/4 v14, 0x0

    :cond_4
    iget v0, v4, Ljava/util/concurrent/ConcurrentHashMap$Node;->hash:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-ne v0, v9, :cond_c

    iget-object v5, v4, Ljava/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    move-object/from16 v0, p1

    if-eq v5, v0, :cond_5

    if-eqz v5, :cond_c

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_c

    :cond_5
    iget-object v6, v4, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    if-eqz p3, :cond_6

    move-object/from16 v0, p3

    if-ne v0, v6, :cond_9

    :cond_6
    :goto_1
    move-object v12, v6

    if-eqz p2, :cond_a

    move-object/from16 v0, p2

    iput-object v0, v4, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_7
    :goto_2
    monitor-exit v7

    if-eqz v19, :cond_0

    if-eqz v12, :cond_1

    if-nez p2, :cond_8

    const-wide/16 v20, -0x1

    const/16 v22, -0x1

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    move/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->addCount(JI)V

    :cond_8
    return-object v12

    :cond_9
    if-eqz v6, :cond_7

    :try_start_1
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_7

    goto :goto_1

    :cond_a
    if-eqz v14, :cond_b

    iget-object v0, v4, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iput-object v0, v14, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v20

    monitor-exit v7

    throw v20

    :cond_b
    :try_start_2
    iget-object v0, v4, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-object/from16 v20, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-static {v0, v10, v1}, Ljava/util/concurrent/ConcurrentHashMap;->setTabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;ILjava/util/concurrent/ConcurrentHashMap$Node;)V

    goto :goto_2

    :cond_c
    move-object v14, v4

    iget-object v4, v4, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    if-nez v4, :cond_4

    goto :goto_2

    :cond_d
    instance-of v0, v7, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;

    move/from16 v20, v0

    if-eqz v20, :cond_11

    const/16 v19, 0x1

    move-object v0, v7

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->root:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    move-object/from16 v16, v0

    if-eqz v16, :cond_7

    const/16 v20, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    invoke-virtual {v0, v9, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->findTreeNode(ILjava/lang/Object;Ljava/lang/Class;)Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    move-result-object v13

    if-eqz v13, :cond_7

    iget-object v15, v13, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->val:Ljava/lang/Object;

    if-eqz p3, :cond_e

    move-object/from16 v0, p3

    if-ne v0, v15, :cond_f

    :cond_e
    :goto_3
    move-object v12, v15

    if-eqz p2, :cond_10

    move-object/from16 v0, p2

    iput-object v0, v13, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->val:Ljava/lang/Object;

    goto :goto_2

    :cond_f
    if-eqz v15, :cond_7

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_7

    goto :goto_3

    :cond_10
    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->removeTreeNode(Ljava/util/concurrent/ConcurrentHashMap$TreeNode;)Z

    move-result v20

    if-eqz v20, :cond_7

    move-object/from16 v0, v17

    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->first:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/util/concurrent/ConcurrentHashMap;->untreeify(Ljava/util/concurrent/ConcurrentHashMap$Node;)Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-static {v0, v10, v1}, Ljava/util/concurrent/ConcurrentHashMap;->setTabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;ILjava/util/concurrent/ConcurrentHashMap$Node;)V

    goto/16 :goto_2

    :cond_11
    instance-of v0, v7, Ljava/util/concurrent/ConcurrentHashMap$ReservationNode;

    move/from16 v20, v0

    if-eqz v20, :cond_7

    new-instance v20, Ljava/lang/IllegalStateException;

    const-string/jumbo v21, "Recursive update"

    invoke-direct/range {v20 .. v21}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v20
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public search(JLjava/util/function/BiFunction;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(J",
            "Ljava/util/function/BiFunction",
            "<-TK;-TV;+TU;>;)TU;"
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v3, 0x0

    if-nez p3, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$SearchMappingsTask;

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->batchFor(J)I

    move-result v2

    iget-object v5, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    new-instance v7, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v7}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    move v4, v3

    move-object v6, p3

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ConcurrentHashMap$SearchMappingsTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/function/BiFunction;Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap$SearchMappingsTask;->invoke()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public searchEntries(JLjava/util/function/Function;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(J",
            "Ljava/util/function/Function",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;+TU;>;)TU;"
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v3, 0x0

    if-nez p3, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$SearchEntriesTask;

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->batchFor(J)I

    move-result v2

    iget-object v5, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    new-instance v7, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v7}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    move v4, v3

    move-object v6, p3

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ConcurrentHashMap$SearchEntriesTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/function/Function;Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap$SearchEntriesTask;->invoke()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public searchKeys(JLjava/util/function/Function;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(J",
            "Ljava/util/function/Function",
            "<-TK;+TU;>;)TU;"
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v3, 0x0

    if-nez p3, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$SearchKeysTask;

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->batchFor(J)I

    move-result v2

    iget-object v5, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    new-instance v7, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v7}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    move v4, v3

    move-object v6, p3

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ConcurrentHashMap$SearchKeysTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/function/Function;Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap$SearchKeysTask;->invoke()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public searchValues(JLjava/util/function/Function;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(J",
            "Ljava/util/function/Function",
            "<-TV;+TU;>;)TU;"
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v3, 0x0

    if-nez p3, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$SearchValuesTask;

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->batchFor(J)I

    move-result v2

    iget-object v5, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    new-instance v7, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v7}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    move v4, v3

    move-object v6, p3

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ConcurrentHashMap$SearchValuesTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/function/Function;Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap$SearchValuesTask;->invoke()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 4

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->sumCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    const v2, 0x7fffffff

    goto :goto_0

    :cond_1
    long-to-int v2, v0

    goto :goto_0
.end method

.method final sumCount()J
    .locals 8

    iget-object v1, p0, Ljava/util/concurrent/ConcurrentHashMap;->counterCells:[Ljava/util/concurrent/ConcurrentHashMap$CounterCell;

    iget-wide v4, p0, Ljava/util/concurrent/ConcurrentHashMap;->baseCount:J

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_1

    aget-object v0, v1, v2

    if-eqz v0, :cond_0

    iget-wide v6, v0, Ljava/util/concurrent/ConcurrentHashMap$CounterCell;->value:J

    add-long/2addr v4, v6

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-wide v4
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    iget-object v5, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    if-nez v5, :cond_3

    const/4 v0, 0x0

    :goto_0
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap$Traverser;

    const/4 v7, 0x0

    invoke-direct {v1, v5, v0, v7, v0}, Ljava/util/concurrent/ConcurrentHashMap$Traverser;-><init>([Ljava/util/concurrent/ConcurrentHashMap$Node;III)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v7, 0x7b

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->advance()Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v3

    if-eqz v3, :cond_2

    :goto_1
    iget-object v2, v3, Ljava/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    iget-object v6, v3, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    if-ne v2, p0, :cond_0

    const-string/jumbo v2, "(this Map)"

    :cond_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v7, 0x3d

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-ne v6, p0, :cond_1

    const-string/jumbo v6, "(this Map)"

    :cond_1
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->advance()Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v3

    if-nez v3, :cond_4

    :cond_2
    const/16 v7, 0x7d

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7

    :cond_3
    array-length v0, v5

    goto :goto_0

    :cond_4
    const/16 v7, 0x2c

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x20

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap;->values:Ljava/util/concurrent/ConcurrentHashMap$ValuesView;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$ValuesView;

    invoke-direct {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap$ValuesView;-><init>(Ljava/util/concurrent/ConcurrentHashMap;)V

    iput-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap;->values:Ljava/util/concurrent/ConcurrentHashMap$ValuesView;

    goto :goto_0
.end method
