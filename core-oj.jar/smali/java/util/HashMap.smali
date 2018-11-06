.class public Ljava/util/HashMap;
.super Ljava/util/AbstractMap;
.source "HashMap.java"

# interfaces
.implements Ljava/util/Map;
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/HashMap$EntryIterator;,
        Ljava/util/HashMap$EntrySet;,
        Ljava/util/HashMap$EntrySpliterator;,
        Ljava/util/HashMap$HashIterator;,
        Ljava/util/HashMap$HashMapSpliterator;,
        Ljava/util/HashMap$KeyIterator;,
        Ljava/util/HashMap$KeySet;,
        Ljava/util/HashMap$KeySpliterator;,
        Ljava/util/HashMap$Node;,
        Ljava/util/HashMap$TreeNode;,
        Ljava/util/HashMap$ValueIterator;,
        Ljava/util/HashMap$ValueSpliterator;,
        Ljava/util/HashMap$Values;
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
        "Ljava/util/Map",
        "<TK;TV;>;",
        "Ljava/lang/Cloneable;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final DEFAULT_INITIAL_CAPACITY:I = 0x10

.field static final DEFAULT_LOAD_FACTOR:F = 0.75f

.field static final MAXIMUM_CAPACITY:I = 0x40000000

.field static final MIN_TREEIFY_CAPACITY:I = 0x40

.field static final TREEIFY_THRESHOLD:I = 0x8

.field static final UNTREEIFY_THRESHOLD:I = 0x6

.field private static final serialVersionUID:J = 0x507dac1c31660d1L


# instance fields
.field transient entrySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field final loadFactor:F

.field transient modCount:I

.field transient size:I

.field transient table:[Ljava/util/HashMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/HashMap$Node",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field threshold:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    const/high16 v0, 0x3f400000    # 0.75f

    iput v0, p0, Ljava/util/HashMap;->loadFactor:F

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/high16 v0, 0x3f400000    # 0.75f

    invoke-direct {p0, p1, v0}, Ljava/util/HashMap;-><init>(IF)V

    return-void
.end method

.method public constructor <init>(IF)V
    .locals 3

    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Illegal initial capacity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/high16 v0, 0x40000000    # 2.0f

    if-le p1, v0, :cond_1

    const/high16 p1, 0x40000000    # 2.0f

    :cond_1
    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-lez v0, :cond_2

    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Illegal load factor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iput p2, p0, Ljava/util/HashMap;->loadFactor:F

    invoke-static {p1}, Ljava/util/HashMap;->tableSizeFor(I)I

    move-result v0

    iput v0, p0, Ljava/util/HashMap;->threshold:I

    return-void
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

    const/high16 v0, 0x3f400000    # 0.75f

    iput v0, p0, Ljava/util/HashMap;->loadFactor:F

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->putMapEntries(Ljava/util/Map;Z)V

    return-void
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

.method static final hash(Ljava/lang/Object;)I
    .locals 2

    if-nez p0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    ushr-int/lit8 v1, v0, 0x10

    xor-int/2addr v1, v0

    goto :goto_0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    const/high16 v5, 0x4e800000

    const/4 v4, 0x0

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    invoke-virtual {p0}, Ljava/util/HashMap;->reinitialize()V

    iget v0, p0, Ljava/util/HashMap;->loadFactor:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-lez v0, :cond_0

    iget v0, p0, Ljava/util/HashMap;->loadFactor:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/io/InvalidObjectException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Illegal load factor: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Ljava/util/HashMap;->loadFactor:F

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v11

    if-gez v11, :cond_2

    new-instance v0, Ljava/io/InvalidObjectException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Illegal mappings count: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    if-lez v11, :cond_6

    iget v0, p0, Ljava/util/HashMap;->loadFactor:F

    const/high16 v1, 0x3e800000    # 0.25f

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/high16 v1, 0x40800000    # 4.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v10

    int-to-float v0, v11

    div-float/2addr v0, v10

    const/high16 v1, 0x3f800000    # 1.0f

    add-float v7, v0, v1

    const/high16 v0, 0x41800000    # 16.0f

    cmpg-float v0, v7, v0

    if-gez v0, :cond_3

    const/16 v6, 0x10

    :goto_0
    int-to-float v0, v6

    mul-float v8, v0, v10

    const/high16 v0, 0x40000000    # 2.0f

    if-ge v6, v0, :cond_5

    cmpg-float v0, v8, v5

    if-gez v0, :cond_5

    float-to-int v0, v8

    :goto_1
    iput v0, p0, Ljava/util/HashMap;->threshold:I

    new-array v12, v6, [Ljava/util/HashMap$Node;

    iput-object v12, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$Node;

    const/4 v9, 0x0

    :goto_2
    if-ge v9, v11, :cond_6

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2}, Ljava/util/HashMap;->hash(Ljava/lang/Object;)I

    move-result v1

    move-object v0, p0

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Ljava/util/HashMap;->putVal(ILjava/lang/Object;Ljava/lang/Object;ZZ)Ljava/lang/Object;

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_3
    cmpl-float v0, v7, v5

    if-ltz v0, :cond_4

    const/high16 v6, 0x40000000    # 2.0f

    goto :goto_0

    :cond_4
    float-to-int v0, v7

    invoke-static {v0}, Ljava/util/HashMap;->tableSizeFor(I)I

    move-result v6

    goto :goto_0

    :cond_5
    const v0, 0x7fffffff

    goto :goto_1

    :cond_6
    return-void
.end method

.method static final tableSizeFor(I)I
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

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/HashMap;->capacity()I

    move-result v0

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    iget v1, p0, Ljava/util/HashMap;->size:I

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->internalWriteEntries(Ljava/io/ObjectOutputStream;)V

    return-void
.end method


# virtual methods
.method afterNodeAccess(Ljava/util/HashMap$Node;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap$Node",
            "<TK;TV;>;)V"
        }
    .end annotation

    return-void
.end method

.method afterNodeInsertion(Z)V
    .locals 0

    return-void
.end method

.method afterNodeRemoval(Ljava/util/HashMap$Node;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap$Node",
            "<TK;TV;>;)V"
        }
    .end annotation

    return-void
.end method

.method final capacity()I
    .locals 1

    iget-object v0, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$Node;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$Node;

    array-length v0, v0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Ljava/util/HashMap;->threshold:I

    if-lez v0, :cond_1

    iget v0, p0, Ljava/util/HashMap;->threshold:I

    goto :goto_0

    :cond_1
    const/16 v0, 0x10

    goto :goto_0
.end method

.method public clear()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    iget v2, p0, Ljava/util/HashMap;->modCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ljava/util/HashMap;->modCount:I

    iget-object v1, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$Node;

    if-eqz v1, :cond_0

    iget v2, p0, Ljava/util/HashMap;->size:I

    if-lez v2, :cond_0

    iput v3, p0, Ljava/util/HashMap;->size:I

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    aput-object v4, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 3

    :try_start_0
    invoke-super {p0}, Ljava/util/AbstractMap;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v1}, Ljava/util/HashMap;->reinitialize()V

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Ljava/util/HashMap;->putMapEntries(Ljava/util/Map;Z)V

    return-object v1

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/InternalError;

    invoke-direct {v2, v0}, Ljava/lang/InternalError;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public compute(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/function/BiFunction",
            "<-TK;-TV;+TV;>;)TV;"
        }
    .end annotation

    if-nez p2, :cond_0

    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    :cond_0
    invoke-static/range {p1 .. p1}, Ljava/util/HashMap;->hash(Ljava/lang/Object;)I

    move-result v4

    const/4 v11, 0x0

    const/4 v5, 0x0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Ljava/util/HashMap;->size:I

    move-object/from16 v0, p0

    iget v6, v0, Ljava/util/HashMap;->threshold:I

    if-gt v3, v6, :cond_1

    move-object/from16 v0, p0

    iget-object v7, v0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$Node;

    if-nez v7, :cond_5

    :cond_1
    :goto_0
    invoke-virtual/range {p0 .. p0}, Ljava/util/HashMap;->resize()[Ljava/util/HashMap$Node;

    move-result-object v7

    array-length v0, v7

    move/from16 v16, v0

    :cond_2
    add-int/lit8 v3, v16, -0x1

    and-int v14, v3, v4

    aget-object v13, v7, v14

    if-eqz v13, :cond_3

    instance-of v3, v13, Ljava/util/HashMap$TreeNode;

    if-eqz v3, :cond_6

    move-object v5, v13

    check-cast v5, Ljava/util/HashMap$TreeNode;

    move-object/from16 v0, p1

    invoke-virtual {v5, v4, v0}, Ljava/util/HashMap$TreeNode;->getTreeNode(ILjava/lang/Object;)Ljava/util/HashMap$TreeNode;

    move-result-object v17

    :cond_3
    :goto_1
    if-nez v17, :cond_9

    const/16 v18, 0x0

    :goto_2
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-eqz v17, :cond_b

    if-eqz v10, :cond_a

    move-object/from16 v0, v17

    iput-object v10, v0, Ljava/util/HashMap$Node;->value:Ljava/lang/Object;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->afterNodeAccess(Ljava/util/HashMap$Node;)V

    :cond_4
    :goto_3
    return-object v10

    :cond_5
    array-length v0, v7

    move/from16 v16, v0

    if-nez v16, :cond_2

    goto :goto_0

    :cond_6
    move-object v12, v13

    :goto_4
    iget v3, v12, Ljava/util/HashMap$Node;->hash:I

    if-ne v3, v4, :cond_8

    iget-object v15, v12, Ljava/util/HashMap$Node;->key:Ljava/lang/Object;

    move-object/from16 v0, p1

    if-eq v15, v0, :cond_7

    if-eqz p1, :cond_8

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    :cond_7
    move-object/from16 v17, v12

    goto :goto_1

    :cond_8
    add-int/lit8 v11, v11, 0x1

    iget-object v12, v12, Ljava/util/HashMap$Node;->next:Ljava/util/HashMap$Node;

    if-eqz v12, :cond_3

    goto :goto_4

    :cond_9
    move-object/from16 v0, v17

    iget-object v0, v0, Ljava/util/HashMap$Node;->value:Ljava/lang/Object;

    move-object/from16 v18, v0

    goto :goto_2

    :cond_a
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object/from16 v3, p0

    move-object/from16 v5, p1

    invoke-virtual/range {v3 .. v8}, Ljava/util/HashMap;->removeNode(ILjava/lang/Object;Ljava/lang/Object;ZZ)Ljava/util/HashMap$Node;

    goto :goto_3

    :cond_b
    if-eqz v10, :cond_4

    if-eqz v5, :cond_d

    move-object/from16 v6, p0

    move v8, v4

    move-object/from16 v9, p1

    invoke-virtual/range {v5 .. v10}, Ljava/util/HashMap$TreeNode;->putTreeVal(Ljava/util/HashMap;[Ljava/util/HashMap$Node;ILjava/lang/Object;Ljava/lang/Object;)Ljava/util/HashMap$TreeNode;

    :cond_c
    :goto_5
    move-object/from16 v0, p0

    iget v3, v0, Ljava/util/HashMap;->modCount:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Ljava/util/HashMap;->modCount:I

    move-object/from16 v0, p0

    iget v3, v0, Ljava/util/HashMap;->size:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Ljava/util/HashMap;->size:I

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->afterNodeInsertion(Z)V

    goto :goto_3

    :cond_d
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v4, v1, v10, v13}, Ljava/util/HashMap;->newNode(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/HashMap$Node;)Ljava/util/HashMap$Node;

    move-result-object v3

    aput-object v3, v7, v14

    const/4 v3, 0x7

    if-lt v11, v3, :cond_c

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v4}, Ljava/util/HashMap;->treeifyBin([Ljava/util/HashMap$Node;I)V

    goto :goto_5
.end method

.method public computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/function/Function",
            "<-TK;+TV;>;)TV;"
        }
    .end annotation

    if-nez p2, :cond_0

    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    :cond_0
    invoke-static/range {p1 .. p1}, Ljava/util/HashMap;->hash(Ljava/lang/Object;)I

    move-result v5

    const/4 v8, 0x0

    const/4 v2, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Ljava/util/HashMap;->size:I

    move-object/from16 v0, p0

    iget v6, v0, Ljava/util/HashMap;->threshold:I

    if-gt v3, v6, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$Node;

    if-nez v4, :cond_4

    :cond_1
    :goto_0
    invoke-virtual/range {p0 .. p0}, Ljava/util/HashMap;->resize()[Ljava/util/HashMap$Node;

    move-result-object v4

    array-length v13, v4

    :cond_2
    add-int/lit8 v3, v13, -0x1

    and-int v11, v3, v5

    aget-object v10, v4, v11

    if-eqz v10, :cond_8

    instance-of v3, v10, Ljava/util/HashMap$TreeNode;

    if-eqz v3, :cond_5

    move-object v2, v10

    check-cast v2, Ljava/util/HashMap$TreeNode;

    move-object/from16 v0, p1

    invoke-virtual {v2, v5, v0}, Ljava/util/HashMap$TreeNode;->getTreeNode(ILjava/lang/Object;)Ljava/util/HashMap$TreeNode;

    move-result-object v14

    :cond_3
    :goto_1
    if-eqz v14, :cond_8

    iget-object v15, v14, Ljava/util/HashMap$Node;->value:Ljava/lang/Object;

    if-eqz v15, :cond_8

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Ljava/util/HashMap;->afterNodeAccess(Ljava/util/HashMap$Node;)V

    return-object v15

    :cond_4
    array-length v13, v4

    if-nez v13, :cond_2

    goto :goto_0

    :cond_5
    move-object v9, v10

    :goto_2
    iget v3, v9, Ljava/util/HashMap$Node;->hash:I

    if-ne v3, v5, :cond_7

    iget-object v12, v9, Ljava/util/HashMap$Node;->key:Ljava/lang/Object;

    move-object/from16 v0, p1

    if-eq v12, v0, :cond_6

    if-eqz p1, :cond_7

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    :cond_6
    move-object v14, v9

    goto :goto_1

    :cond_7
    add-int/lit8 v8, v8, 0x1

    iget-object v9, v9, Ljava/util/HashMap$Node;->next:Ljava/util/HashMap$Node;

    if-eqz v9, :cond_3

    goto :goto_2

    :cond_8
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_9

    const/4 v3, 0x0

    return-object v3

    :cond_9
    if-eqz v14, :cond_a

    iput-object v7, v14, Ljava/util/HashMap$Node;->value:Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Ljava/util/HashMap;->afterNodeAccess(Ljava/util/HashMap$Node;)V

    return-object v7

    :cond_a
    if-eqz v2, :cond_c

    move-object/from16 v3, p0

    move-object/from16 v6, p1

    invoke-virtual/range {v2 .. v7}, Ljava/util/HashMap$TreeNode;->putTreeVal(Ljava/util/HashMap;[Ljava/util/HashMap$Node;ILjava/lang/Object;Ljava/lang/Object;)Ljava/util/HashMap$TreeNode;

    :cond_b
    :goto_3
    move-object/from16 v0, p0

    iget v3, v0, Ljava/util/HashMap;->modCount:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Ljava/util/HashMap;->modCount:I

    move-object/from16 v0, p0

    iget v3, v0, Ljava/util/HashMap;->size:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Ljava/util/HashMap;->size:I

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->afterNodeInsertion(Z)V

    return-object v7

    :cond_c
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v5, v1, v7, v10}, Ljava/util/HashMap;->newNode(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/HashMap$Node;)Ljava/util/HashMap$Node;

    move-result-object v3

    aput-object v3, v4, v11

    const/4 v3, 0x7

    if-lt v8, v3, :cond_b

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->treeifyBin([Ljava/util/HashMap$Node;I)V

    goto :goto_3
.end method

.method public computeIfPresent(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/function/BiFunction",
            "<-TK;-TV;+TV;>;)TV;"
        }
    .end annotation

    const/4 v3, 0x0

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    invoke-static {p1}, Ljava/util/HashMap;->hash(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {p0, v1, p1}, Ljava/util/HashMap;->getNode(ILjava/lang/Object;)Ljava/util/HashMap$Node;

    move-result-object v6

    if-eqz v6, :cond_2

    iget-object v7, v6, Ljava/util/HashMap$Node;->value:Ljava/lang/Object;

    if-eqz v7, :cond_2

    invoke-interface {p2, p1, v7}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_1

    iput-object v8, v6, Ljava/util/HashMap$Node;->value:Ljava/lang/Object;

    invoke-virtual {p0, v6}, Ljava/util/HashMap;->afterNodeAccess(Ljava/util/HashMap$Node;)V

    return-object v8

    :cond_1
    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Ljava/util/HashMap;->removeNode(ILjava/lang/Object;Ljava/lang/Object;ZZ)Ljava/util/HashMap$Node;

    :cond_2
    return-object v3
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1

    invoke-static {p1}, Ljava/util/HashMap;->hash(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->getNode(ILjava/lang/Object;)Ljava/util/HashMap$Node;

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
    .locals 6

    const/4 v5, 0x0

    iget-object v2, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$Node;

    if-eqz v2, :cond_3

    iget v4, p0, Ljava/util/HashMap;->size:I

    if-lez v4, :cond_3

    const/4 v1, 0x0

    :goto_0
    array-length v4, v2

    if-ge v1, v4, :cond_3

    aget-object v0, v2, v1

    :goto_1
    if-eqz v0, :cond_2

    iget-object v3, v0, Ljava/util/HashMap$Node;->value:Ljava/lang/Object;

    if-eq v3, p1, :cond_0

    if-eqz p1, :cond_1

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    const/4 v4, 0x1

    return v4

    :cond_1
    iget-object v0, v0, Ljava/util/HashMap$Node;->next:Ljava/util/HashMap$Node;

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return v5
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

    iget-object v0, p0, Ljava/util/HashMap;->entrySet:Ljava/util/Set;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap$EntrySet;

    invoke-direct {v0, p0}, Ljava/util/HashMap$EntrySet;-><init>(Ljava/util/HashMap;)V

    iput-object v0, p0, Ljava/util/HashMap;->entrySet:Ljava/util/Set;

    :cond_0
    return-object v0
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

    new-instance v4, Ljava/lang/NullPointerException;

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    throw v4

    :cond_0
    iget v4, p0, Ljava/util/HashMap;->size:I

    if-lez v4, :cond_3

    iget-object v3, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$Node;

    if-eqz v3, :cond_3

    iget v2, p0, Ljava/util/HashMap;->modCount:I

    const/4 v1, 0x0

    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_2

    iget v4, p0, Ljava/util/HashMap;->modCount:I

    if-ne v2, v4, :cond_2

    aget-object v0, v3, v1

    :goto_1
    if-eqz v0, :cond_1

    iget-object v4, v0, Ljava/util/HashMap$Node;->key:Ljava/lang/Object;

    iget-object v5, v0, Ljava/util/HashMap$Node;->value:Ljava/lang/Object;

    invoke-interface {p1, v4, v5}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, v0, Ljava/util/HashMap$Node;->next:Ljava/util/HashMap$Node;

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget v4, p0, Ljava/util/HashMap;->modCount:I

    if-eq v4, v2, :cond_3

    new-instance v4, Ljava/util/ConcurrentModificationException;

    invoke-direct {v4}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v4

    :cond_3
    return-void
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/util/HashMap;->hash(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {p0, v2, p1}, Ljava/util/HashMap;->getNode(ILjava/lang/Object;)Ljava/util/HashMap$Node;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, v0, Ljava/util/HashMap$Node;->value:Ljava/lang/Object;

    goto :goto_0
.end method

.method final getNode(ILjava/lang/Object;)Ljava/util/HashMap$Node;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/HashMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    const/4 v6, 0x0

    iget-object v4, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$Node;

    if-eqz v4, :cond_5

    array-length v3, v4

    if-lez v3, :cond_5

    add-int/lit8 v5, v3, -0x1

    and-int/2addr v5, p1

    aget-object v1, v4, v5

    if-eqz v1, :cond_5

    iget v5, v1, Ljava/util/HashMap$Node;->hash:I

    if-ne v5, p1, :cond_1

    iget-object v2, v1, Ljava/util/HashMap$Node;->key:Ljava/lang/Object;

    if-eq v2, p2, :cond_0

    if-eqz p2, :cond_1

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    return-object v1

    :cond_1
    iget-object v0, v1, Ljava/util/HashMap$Node;->next:Ljava/util/HashMap$Node;

    if-eqz v0, :cond_5

    instance-of v5, v1, Ljava/util/HashMap$TreeNode;

    if-eqz v5, :cond_3

    check-cast v1, Ljava/util/HashMap$TreeNode;

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap$TreeNode;->getTreeNode(ILjava/lang/Object;)Ljava/util/HashMap$TreeNode;

    move-result-object v5

    return-object v5

    :cond_2
    iget-object v0, v0, Ljava/util/HashMap$Node;->next:Ljava/util/HashMap$Node;

    if-eqz v0, :cond_5

    :cond_3
    iget v5, v0, Ljava/util/HashMap$Node;->hash:I

    if-ne v5, p1, :cond_2

    iget-object v2, v0, Ljava/util/HashMap$Node;->key:Ljava/lang/Object;

    if-eq v2, p2, :cond_4

    if-eqz p2, :cond_2

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_4
    return-object v0

    :cond_5
    return-object v6
.end method

.method public getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "TV;)TV;"
        }
    .end annotation

    invoke-static {p1}, Ljava/util/HashMap;->hash(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {p0, v1, p1}, Ljava/util/HashMap;->getNode(ILjava/lang/Object;)Ljava/util/HashMap$Node;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-object p2

    :cond_0
    iget-object p2, v0, Ljava/util/HashMap$Node;->value:Ljava/lang/Object;

    goto :goto_0
.end method

.method internalWriteEntries(Ljava/io/ObjectOutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v3, p0, Ljava/util/HashMap;->size:I

    if-lez v3, :cond_1

    iget-object v2, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$Node;

    if-eqz v2, :cond_1

    const/4 v1, 0x0

    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    :goto_1
    if-eqz v0, :cond_0

    iget-object v3, v0, Ljava/util/HashMap$Node;->key:Ljava/lang/Object;

    invoke-virtual {p1, v3}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    iget-object v3, v0, Ljava/util/HashMap$Node;->value:Ljava/lang/Object;

    invoke-virtual {p1, v3}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    iget-object v0, v0, Ljava/util/HashMap$Node;->next:Ljava/util/HashMap$Node;

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public isEmpty()Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Ljava/util/HashMap;->size:I

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    iget-object v0, p0, Ljava/util/HashMap;->keySet:Ljava/util/Set;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap$KeySet;

    invoke-direct {v0, p0}, Ljava/util/HashMap$KeySet;-><init>(Ljava/util/HashMap;)V

    iput-object v0, p0, Ljava/util/HashMap;->keySet:Ljava/util/Set;

    :cond_0
    return-object v0
.end method

.method final loadFactor()F
    .locals 1

    iget v0, p0, Ljava/util/HashMap;->loadFactor:F

    return v0
.end method

.method public merge(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;",
            "Ljava/util/function/BiFunction",
            "<-TV;-TV;+TV;>;)TV;"
        }
    .end annotation

    if-nez p2, :cond_0

    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    :cond_0
    if-nez p3, :cond_1

    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    :cond_1
    invoke-static/range {p1 .. p1}, Ljava/util/HashMap;->hash(Ljava/lang/Object;)I

    move-result v4

    const/4 v11, 0x0

    const/4 v5, 0x0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Ljava/util/HashMap;->size:I

    move-object/from16 v0, p0

    iget v6, v0, Ljava/util/HashMap;->threshold:I

    if-gt v3, v6, :cond_2

    move-object/from16 v0, p0

    iget-object v7, v0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$Node;

    if-nez v7, :cond_5

    :cond_2
    :goto_0
    invoke-virtual/range {p0 .. p0}, Ljava/util/HashMap;->resize()[Ljava/util/HashMap$Node;

    move-result-object v7

    array-length v0, v7

    move/from16 v16, v0

    :cond_3
    add-int/lit8 v3, v16, -0x1

    and-int v14, v3, v4

    aget-object v13, v7, v14

    if-eqz v13, :cond_4

    instance-of v3, v13, Ljava/util/HashMap$TreeNode;

    if-eqz v3, :cond_6

    move-object v5, v13

    check-cast v5, Ljava/util/HashMap$TreeNode;

    move-object/from16 v0, p1

    invoke-virtual {v5, v4, v0}, Ljava/util/HashMap$TreeNode;->getTreeNode(ILjava/lang/Object;)Ljava/util/HashMap$TreeNode;

    move-result-object v17

    :cond_4
    :goto_1
    if-eqz v17, :cond_b

    move-object/from16 v0, v17

    iget-object v3, v0, Ljava/util/HashMap$Node;->value:Ljava/lang/Object;

    if-eqz v3, :cond_9

    move-object/from16 v0, v17

    iget-object v3, v0, Ljava/util/HashMap$Node;->value:Ljava/lang/Object;

    move-object/from16 v0, p3

    move-object/from16 v1, p2

    invoke-interface {v0, v3, v1}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    :goto_2
    if-eqz v18, :cond_a

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Ljava/util/HashMap$Node;->value:Ljava/lang/Object;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->afterNodeAccess(Ljava/util/HashMap$Node;)V

    :goto_3
    return-object v18

    :cond_5
    array-length v0, v7

    move/from16 v16, v0

    if-nez v16, :cond_3

    goto :goto_0

    :cond_6
    move-object v12, v13

    :goto_4
    iget v3, v12, Ljava/util/HashMap$Node;->hash:I

    if-ne v3, v4, :cond_8

    iget-object v15, v12, Ljava/util/HashMap$Node;->key:Ljava/lang/Object;

    move-object/from16 v0, p1

    if-eq v15, v0, :cond_7

    if-eqz p1, :cond_8

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    :cond_7
    move-object/from16 v17, v12

    goto :goto_1

    :cond_8
    add-int/lit8 v11, v11, 0x1

    iget-object v12, v12, Ljava/util/HashMap$Node;->next:Ljava/util/HashMap$Node;

    if-eqz v12, :cond_4

    goto :goto_4

    :cond_9
    move-object/from16 v18, p2

    goto :goto_2

    :cond_a
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object/from16 v3, p0

    move-object/from16 v5, p1

    invoke-virtual/range {v3 .. v8}, Ljava/util/HashMap;->removeNode(ILjava/lang/Object;Ljava/lang/Object;ZZ)Ljava/util/HashMap$Node;

    goto :goto_3

    :cond_b
    if-eqz p2, :cond_d

    if-eqz v5, :cond_e

    move-object/from16 v6, p0

    move v8, v4

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    invoke-virtual/range {v5 .. v10}, Ljava/util/HashMap$TreeNode;->putTreeVal(Ljava/util/HashMap;[Ljava/util/HashMap$Node;ILjava/lang/Object;Ljava/lang/Object;)Ljava/util/HashMap$TreeNode;

    :cond_c
    :goto_5
    move-object/from16 v0, p0

    iget v3, v0, Ljava/util/HashMap;->modCount:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Ljava/util/HashMap;->modCount:I

    move-object/from16 v0, p0

    iget v3, v0, Ljava/util/HashMap;->size:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Ljava/util/HashMap;->size:I

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->afterNodeInsertion(Z)V

    :cond_d
    return-object p2

    :cond_e
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v4, v1, v2, v13}, Ljava/util/HashMap;->newNode(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/HashMap$Node;)Ljava/util/HashMap$Node;

    move-result-object v3

    aput-object v3, v7, v14

    const/4 v3, 0x7

    if-lt v11, v3, :cond_c

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v4}, Ljava/util/HashMap;->treeifyBin([Ljava/util/HashMap$Node;I)V

    goto :goto_5
.end method

.method newNode(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/HashMap$Node;)Ljava/util/HashMap$Node;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITK;TV;",
            "Ljava/util/HashMap$Node",
            "<TK;TV;>;)",
            "Ljava/util/HashMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap$Node;

    invoke-direct {v0, p1, p2, p3, p4}, Ljava/util/HashMap$Node;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/HashMap$Node;)V

    return-object v0
.end method

.method newTreeNode(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/HashMap$Node;)Ljava/util/HashMap$TreeNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITK;TV;",
            "Ljava/util/HashMap$Node",
            "<TK;TV;>;)",
            "Ljava/util/HashMap$TreeNode",
            "<TK;TV;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap$TreeNode;

    invoke-direct {v0, p1, p2, p3, p4}, Ljava/util/HashMap$TreeNode;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/HashMap$Node;)V

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    invoke-static {p1}, Ljava/util/HashMap;->hash(Ljava/lang/Object;)I

    move-result v1

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Ljava/util/HashMap;->putVal(ILjava/lang/Object;Ljava/lang/Object;ZZ)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->putMapEntries(Ljava/util/Map;Z)V

    return-void
.end method

.method public putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    const/4 v4, 0x1

    invoke-static {p1}, Ljava/util/HashMap;->hash(Ljava/lang/Object;)I

    move-result v1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Ljava/util/HashMap;->putVal(ILjava/lang/Object;Ljava/lang/Object;ZZ)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method final putMapEntries(Ljava/util/Map;Z)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;Z)V"
        }
    .end annotation

    const/4 v4, 0x0

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v9

    if-lez v9, :cond_3

    iget-object v0, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$Node;

    if-nez v0, :cond_2

    int-to-float v0, v9

    iget v1, p0, Ljava/util/HashMap;->loadFactor:F

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    add-float v8, v0, v1

    const/high16 v0, 0x4e800000

    cmpg-float v0, v8, v0

    if-gez v0, :cond_1

    float-to-int v10, v8

    :goto_0
    iget v0, p0, Ljava/util/HashMap;->threshold:I

    if-le v10, v0, :cond_0

    invoke-static {v10}, Ljava/util/HashMap;->tableSizeFor(I)I

    move-result v0

    iput v0, p0, Ljava/util/HashMap;->threshold:I

    :cond_0
    :goto_1
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2}, Ljava/util/HashMap;->hash(Ljava/lang/Object;)I

    move-result v1

    move-object v0, p0

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Ljava/util/HashMap;->putVal(ILjava/lang/Object;Ljava/lang/Object;ZZ)Ljava/lang/Object;

    goto :goto_2

    :cond_1
    const/high16 v10, 0x40000000    # 2.0f

    goto :goto_0

    :cond_2
    iget v0, p0, Ljava/util/HashMap;->threshold:I

    if-le v9, v0, :cond_0

    invoke-virtual {p0}, Ljava/util/HashMap;->resize()[Ljava/util/HashMap$Node;

    goto :goto_1

    :cond_3
    return-void
.end method

.method final putVal(ILjava/lang/Object;Ljava/lang/Object;ZZ)Ljava/lang/Object;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITK;TV;ZZ)TV;"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v6, v0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$Node;

    if-eqz v6, :cond_0

    array-length v14, v6

    if-nez v14, :cond_1

    :cond_0
    invoke-virtual/range {p0 .. p0}, Ljava/util/HashMap;->resize()[Ljava/util/HashMap$Node;

    move-result-object v6

    array-length v14, v6

    :cond_1
    add-int/lit8 v4, v14, -0x1

    and-int v12, v4, p1

    aget-object v16, v6, v12

    if-nez v16, :cond_4

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/util/HashMap;->newNode(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/HashMap$Node;)Ljava/util/HashMap$Node;

    move-result-object v4

    aput-object v4, v6, v12

    :cond_2
    move-object/from16 v0, p0

    iget v4, v0, Ljava/util/HashMap;->modCount:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Ljava/util/HashMap;->modCount:I

    move-object/from16 v0, p0

    iget v4, v0, Ljava/util/HashMap;->size:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Ljava/util/HashMap;->size:I

    move-object/from16 v0, p0

    iget v5, v0, Ljava/util/HashMap;->threshold:I

    if-le v4, v5, :cond_3

    invoke-virtual/range {p0 .. p0}, Ljava/util/HashMap;->resize()[Ljava/util/HashMap$Node;

    :cond_3
    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->afterNodeInsertion(Z)V

    const/4 v4, 0x0

    return-object v4

    :cond_4
    move-object/from16 v0, v16

    iget v4, v0, Ljava/util/HashMap$Node;->hash:I

    move/from16 v0, p1

    if-ne v4, v0, :cond_9

    move-object/from16 v0, v16

    iget-object v13, v0, Ljava/util/HashMap$Node;->key:Ljava/lang/Object;

    move-object/from16 v0, p2

    if-eq v13, v0, :cond_5

    if-eqz p2, :cond_9

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    :cond_5
    move-object/from16 v11, v16

    :cond_6
    :goto_0
    if-eqz v11, :cond_2

    iget-object v15, v11, Ljava/util/HashMap$Node;->value:Ljava/lang/Object;

    if-eqz p4, :cond_7

    if-nez v15, :cond_8

    :cond_7
    move-object/from16 v0, p3

    iput-object v0, v11, Ljava/util/HashMap$Node;->value:Ljava/lang/Object;

    :cond_8
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Ljava/util/HashMap;->afterNodeAccess(Ljava/util/HashMap$Node;)V

    return-object v15

    :cond_9
    move-object/from16 v0, v16

    instance-of v4, v0, Ljava/util/HashMap$TreeNode;

    if-eqz v4, :cond_a

    move-object/from16 v4, v16

    check-cast v4, Ljava/util/HashMap$TreeNode;

    move-object/from16 v5, p0

    move/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    invoke-virtual/range {v4 .. v9}, Ljava/util/HashMap$TreeNode;->putTreeVal(Ljava/util/HashMap;[Ljava/util/HashMap$Node;ILjava/lang/Object;Ljava/lang/Object;)Ljava/util/HashMap$TreeNode;

    move-result-object v11

    goto :goto_0

    :cond_a
    const/4 v10, 0x0

    :goto_1
    move-object/from16 v0, v16

    iget-object v11, v0, Ljava/util/HashMap$Node;->next:Ljava/util/HashMap$Node;

    if-nez v11, :cond_b

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/util/HashMap;->newNode(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/HashMap$Node;)Ljava/util/HashMap$Node;

    move-result-object v4

    move-object/from16 v0, v16

    iput-object v4, v0, Ljava/util/HashMap$Node;->next:Ljava/util/HashMap$Node;

    const/4 v4, 0x7

    if-lt v10, v4, :cond_6

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v6, v1}, Ljava/util/HashMap;->treeifyBin([Ljava/util/HashMap$Node;I)V

    goto :goto_0

    :cond_b
    iget v4, v11, Ljava/util/HashMap$Node;->hash:I

    move/from16 v0, p1

    if-ne v4, v0, :cond_c

    iget-object v13, v11, Ljava/util/HashMap$Node;->key:Ljava/lang/Object;

    move-object/from16 v0, p2

    if-eq v13, v0, :cond_6

    if-eqz p2, :cond_c

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    :cond_c
    move-object/from16 v16, v11

    add-int/lit8 v10, v10, 0x1

    goto :goto_1
.end method

.method reinitialize()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$Node;

    iput-object v0, p0, Ljava/util/HashMap;->entrySet:Ljava/util/Set;

    iput-object v0, p0, Ljava/util/HashMap;->keySet:Ljava/util/Set;

    iput-object v0, p0, Ljava/util/HashMap;->values:Ljava/util/Collection;

    iput v1, p0, Ljava/util/HashMap;->modCount:I

    iput v1, p0, Ljava/util/HashMap;->threshold:I

    iput v1, p0, Ljava/util/HashMap;->size:I

    return-void
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/util/HashMap;->hash(Ljava/lang/Object;)I

    move-result v1

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Ljava/util/HashMap;->removeNode(ILjava/lang/Object;Ljava/lang/Object;ZZ)Ljava/util/HashMap$Node;

    move-result-object v6

    if-nez v6, :cond_0

    :goto_0
    return-object v3

    :cond_0
    iget-object v3, v6, Ljava/util/HashMap$Node;->value:Ljava/lang/Object;

    goto :goto_0
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 6

    const/4 v4, 0x1

    invoke-static {p1}, Ljava/util/HashMap;->hash(Ljava/lang/Object;)I

    move-result v1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Ljava/util/HashMap;->removeNode(ILjava/lang/Object;Ljava/lang/Object;ZZ)Ljava/util/HashMap$Node;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method final removeNode(ILjava/lang/Object;Ljava/lang/Object;ZZ)Ljava/util/HashMap$Node;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "ZZ)",
            "Ljava/util/HashMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    const/4 v9, 0x0

    iget-object v6, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$Node;

    if-eqz v6, :cond_8

    array-length v3, v6

    if-lez v3, :cond_8

    add-int/lit8 v8, v3, -0x1

    and-int v1, v8, p1

    aget-object v5, v6, v1

    if-eqz v5, :cond_8

    const/4 v4, 0x0

    iget v8, v5, Ljava/util/HashMap$Node;->hash:I

    if-ne v8, p1, :cond_3

    iget-object v2, v5, Ljava/util/HashMap$Node;->key:Ljava/lang/Object;

    if-eq v2, p2, :cond_0

    if-eqz p2, :cond_3

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    :cond_0
    move-object v4, v5

    :cond_1
    :goto_0
    if-eqz v4, :cond_8

    if-eqz p4, :cond_2

    iget-object v7, v4, Ljava/util/HashMap$Node;->value:Ljava/lang/Object;

    if-ne v7, p3, :cond_7

    :cond_2
    instance-of v8, v4, Ljava/util/HashMap$TreeNode;

    if-eqz v8, :cond_9

    move-object v8, v4

    check-cast v8, Ljava/util/HashMap$TreeNode;

    invoke-virtual {v8, p0, v6, p5}, Ljava/util/HashMap$TreeNode;->removeTreeNode(Ljava/util/HashMap;[Ljava/util/HashMap$Node;Z)V

    :goto_1
    iget v8, p0, Ljava/util/HashMap;->modCount:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Ljava/util/HashMap;->modCount:I

    iget v8, p0, Ljava/util/HashMap;->size:I

    add-int/lit8 v8, v8, -0x1

    iput v8, p0, Ljava/util/HashMap;->size:I

    invoke-virtual {p0, v4}, Ljava/util/HashMap;->afterNodeRemoval(Ljava/util/HashMap$Node;)V

    return-object v4

    :cond_3
    iget-object v0, v5, Ljava/util/HashMap$Node;->next:Ljava/util/HashMap$Node;

    if-eqz v0, :cond_1

    instance-of v8, v5, Ljava/util/HashMap$TreeNode;

    if-eqz v8, :cond_5

    move-object v8, v5

    check-cast v8, Ljava/util/HashMap$TreeNode;

    invoke-virtual {v8, p1, p2}, Ljava/util/HashMap$TreeNode;->getTreeNode(ILjava/lang/Object;)Ljava/util/HashMap$TreeNode;

    move-result-object v4

    goto :goto_0

    :cond_4
    move-object v5, v0

    iget-object v0, v0, Ljava/util/HashMap$Node;->next:Ljava/util/HashMap$Node;

    if-eqz v0, :cond_1

    :cond_5
    iget v8, v0, Ljava/util/HashMap$Node;->hash:I

    if-ne v8, p1, :cond_4

    iget-object v2, v0, Ljava/util/HashMap$Node;->key:Ljava/lang/Object;

    if-eq v2, p2, :cond_6

    if-eqz p2, :cond_4

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    :cond_6
    move-object v4, v0

    goto :goto_0

    :cond_7
    if-eqz p3, :cond_8

    invoke-virtual {p3, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    :cond_8
    return-object v9

    :cond_9
    if-ne v4, v5, :cond_a

    iget-object v8, v4, Ljava/util/HashMap$Node;->next:Ljava/util/HashMap$Node;

    aput-object v8, v6, v1

    goto :goto_1

    :cond_a
    iget-object v8, v4, Ljava/util/HashMap$Node;->next:Ljava/util/HashMap$Node;

    iput-object v8, v5, Ljava/util/HashMap$Node;->next:Ljava/util/HashMap$Node;

    goto :goto_1
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/util/HashMap;->hash(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {p0, v2, p1}, Ljava/util/HashMap;->getNode(ILjava/lang/Object;)Ljava/util/HashMap$Node;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Ljava/util/HashMap$Node;->value:Ljava/lang/Object;

    iput-object p2, v0, Ljava/util/HashMap$Node;->value:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->afterNodeAccess(Ljava/util/HashMap$Node;)V

    return-object v1

    :cond_0
    return-object v3
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;TV;)Z"
        }
    .end annotation

    invoke-static {p1}, Ljava/util/HashMap;->hash(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {p0, v2, p1}, Ljava/util/HashMap;->getNode(ILjava/lang/Object;)Ljava/util/HashMap$Node;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, v0, Ljava/util/HashMap$Node;->value:Ljava/lang/Object;

    if-eq v1, p2, :cond_0

    if-eqz v1, :cond_1

    invoke-virtual {v1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    iput-object p3, v0, Ljava/util/HashMap$Node;->value:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->afterNodeAccess(Ljava/util/HashMap$Node;)V

    const/4 v2, 0x1

    return v2

    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method public replaceAll(Ljava/util/function/BiFunction;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiFunction",
            "<-TK;-TV;+TV;>;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v4, Ljava/lang/NullPointerException;

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    throw v4

    :cond_0
    iget v4, p0, Ljava/util/HashMap;->size:I

    if-lez v4, :cond_3

    iget-object v3, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$Node;

    if-eqz v3, :cond_3

    iget v2, p0, Ljava/util/HashMap;->modCount:I

    const/4 v1, 0x0

    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_2

    aget-object v0, v3, v1

    :goto_1
    if-eqz v0, :cond_1

    iget-object v4, v0, Ljava/util/HashMap$Node;->key:Ljava/lang/Object;

    iget-object v5, v0, Ljava/util/HashMap$Node;->value:Ljava/lang/Object;

    invoke-interface {p1, v4, v5}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, v0, Ljava/util/HashMap$Node;->value:Ljava/lang/Object;

    iget-object v0, v0, Ljava/util/HashMap$Node;->next:Ljava/util/HashMap$Node;

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget v4, p0, Ljava/util/HashMap;->modCount:I

    if-eq v4, v2, :cond_3

    new-instance v4, Ljava/util/ConcurrentModificationException;

    invoke-direct {v4}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v4

    :cond_3
    return-void
.end method

.method replacementNode(Ljava/util/HashMap$Node;Ljava/util/HashMap$Node;)Ljava/util/HashMap$Node;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap$Node",
            "<TK;TV;>;",
            "Ljava/util/HashMap$Node",
            "<TK;TV;>;)",
            "Ljava/util/HashMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap$Node;

    iget v1, p1, Ljava/util/HashMap$Node;->hash:I

    iget-object v2, p1, Ljava/util/HashMap$Node;->key:Ljava/lang/Object;

    iget-object v3, p1, Ljava/util/HashMap$Node;->value:Ljava/lang/Object;

    invoke-direct {v0, v1, v2, v3, p2}, Ljava/util/HashMap$Node;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/HashMap$Node;)V

    return-object v0
.end method

.method replacementTreeNode(Ljava/util/HashMap$Node;Ljava/util/HashMap$Node;)Ljava/util/HashMap$TreeNode;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap$Node",
            "<TK;TV;>;",
            "Ljava/util/HashMap$Node",
            "<TK;TV;>;)",
            "Ljava/util/HashMap$TreeNode",
            "<TK;TV;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap$TreeNode;

    iget v1, p1, Ljava/util/HashMap$Node;->hash:I

    iget-object v2, p1, Ljava/util/HashMap$Node;->key:Ljava/lang/Object;

    iget-object v3, p1, Ljava/util/HashMap$Node;->value:Ljava/lang/Object;

    invoke-direct {v0, v1, v2, v3, p2}, Ljava/util/HashMap$TreeNode;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/HashMap$Node;)V

    return-object v0
.end method

.method final resize()[Ljava/util/HashMap$Node;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/util/HashMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v13, v0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$Node;

    if-nez v13, :cond_0

    const/4 v12, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget v14, v0, Ljava/util/HashMap;->threshold:I

    const/4 v10, 0x0

    if-lez v12, :cond_5

    const/high16 v15, 0x40000000    # 2.0f

    if-lt v12, v15, :cond_1

    const v15, 0x7fffffff

    move-object/from16 v0, p0

    iput v15, v0, Ljava/util/HashMap;->threshold:I

    return-object v13

    :cond_0
    array-length v12, v13

    goto :goto_0

    :cond_1
    shl-int/lit8 v8, v12, 0x1

    const/high16 v15, 0x40000000    # 2.0f

    if-ge v8, v15, :cond_2

    const/16 v15, 0x10

    if-lt v12, v15, :cond_2

    shl-int/lit8 v10, v14, 0x1

    :cond_2
    :goto_1
    if-nez v10, :cond_3

    int-to-float v15, v8

    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/HashMap;->loadFactor:F

    move/from16 v16, v0

    mul-float v2, v15, v16

    const/high16 v15, 0x40000000    # 2.0f

    if-ge v8, v15, :cond_7

    const/high16 v15, 0x4e800000

    cmpg-float v15, v2, v15

    if-gez v15, :cond_7

    float-to-int v10, v2

    :cond_3
    :goto_2
    move-object/from16 v0, p0

    iput v10, v0, Ljava/util/HashMap;->threshold:I

    new-array v9, v8, [Ljava/util/HashMap$Node;

    move-object/from16 v0, p0

    iput-object v9, v0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$Node;

    if-eqz v13, :cond_f

    const/4 v5, 0x0

    :goto_3
    if-ge v5, v12, :cond_f

    aget-object v1, v13, v5

    if-eqz v1, :cond_4

    const/4 v15, 0x0

    aput-object v15, v13, v5

    iget-object v15, v1, Ljava/util/HashMap$Node;->next:Ljava/util/HashMap$Node;

    if-nez v15, :cond_8

    iget v15, v1, Ljava/util/HashMap$Node;->hash:I

    add-int/lit8 v16, v8, -0x1

    and-int v15, v15, v16

    aput-object v1, v9, v15

    :cond_4
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_5
    if-lez v14, :cond_6

    move v8, v14

    goto :goto_1

    :cond_6
    const/16 v8, 0x10

    const/16 v10, 0xc

    goto :goto_1

    :cond_7
    const v10, 0x7fffffff

    goto :goto_2

    :cond_8
    instance-of v15, v1, Ljava/util/HashMap$TreeNode;

    if-eqz v15, :cond_9

    move-object v15, v1

    check-cast v15, Ljava/util/HashMap$TreeNode;

    move-object/from16 v0, p0

    invoke-virtual {v15, v0, v9, v5, v12}, Ljava/util/HashMap$TreeNode;->split(Ljava/util/HashMap;[Ljava/util/HashMap$Node;II)V

    goto :goto_4

    :cond_9
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :cond_a
    iget-object v11, v1, Ljava/util/HashMap$Node;->next:Ljava/util/HashMap$Node;

    iget v15, v1, Ljava/util/HashMap$Node;->hash:I

    and-int/2addr v15, v12

    if-nez v15, :cond_d

    if-nez v7, :cond_c

    move-object v6, v1

    :goto_5
    move-object v7, v1

    :goto_6
    move-object v1, v11

    if-nez v11, :cond_a

    if-eqz v7, :cond_b

    const/4 v15, 0x0

    iput-object v15, v7, Ljava/util/HashMap$Node;->next:Ljava/util/HashMap$Node;

    aput-object v6, v9, v5

    :cond_b
    if-eqz v4, :cond_4

    const/4 v15, 0x0

    iput-object v15, v4, Ljava/util/HashMap$Node;->next:Ljava/util/HashMap$Node;

    add-int v15, v5, v12

    aput-object v3, v9, v15

    goto :goto_4

    :cond_c
    iput-object v1, v7, Ljava/util/HashMap$Node;->next:Ljava/util/HashMap$Node;

    goto :goto_5

    :cond_d
    if-nez v4, :cond_e

    move-object v3, v1

    :goto_7
    move-object v4, v1

    goto :goto_6

    :cond_e
    iput-object v1, v4, Ljava/util/HashMap$Node;->next:Ljava/util/HashMap$Node;

    goto :goto_7

    :cond_f
    return-object v9
.end method

.method public size()I
    .locals 1

    iget v0, p0, Ljava/util/HashMap;->size:I

    return v0
.end method

.method final treeifyBin([Ljava/util/HashMap$Node;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/HashMap$Node",
            "<TK;TV;>;I)V"
        }
    .end annotation

    const/4 v7, 0x0

    if-eqz p1, :cond_0

    array-length v3, p1

    const/16 v6, 0x40

    if-ge v3, v6, :cond_2

    :cond_0
    invoke-virtual {p0}, Ljava/util/HashMap;->resize()[Ljava/util/HashMap$Node;

    :cond_1
    :goto_0
    return-void

    :cond_2
    add-int/lit8 v6, v3, -0x1

    and-int v2, v6, p2

    aget-object v0, p1, v2

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    const/4 v5, 0x0

    :cond_3
    invoke-virtual {p0, v0, v7}, Ljava/util/HashMap;->replacementTreeNode(Ljava/util/HashMap$Node;Ljava/util/HashMap$Node;)Ljava/util/HashMap$TreeNode;

    move-result-object v4

    if-nez v5, :cond_4

    move-object v1, v4

    :goto_1
    move-object v5, v4

    iget-object v0, v0, Ljava/util/HashMap$Node;->next:Ljava/util/HashMap$Node;

    if-nez v0, :cond_3

    aput-object v1, p1, v2

    if-eqz v1, :cond_1

    invoke-virtual {v1, p1}, Ljava/util/HashMap$TreeNode;->treeify([Ljava/util/HashMap$Node;)V

    goto :goto_0

    :cond_4
    iput-object v5, v4, Ljava/util/HashMap$TreeNode;->prev:Ljava/util/HashMap$TreeNode;

    iput-object v4, v5, Ljava/util/HashMap$TreeNode;->next:Ljava/util/HashMap$Node;

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

    iget-object v0, p0, Ljava/util/HashMap;->values:Ljava/util/Collection;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap$Values;

    invoke-direct {v0, p0}, Ljava/util/HashMap$Values;-><init>(Ljava/util/HashMap;)V

    iput-object v0, p0, Ljava/util/HashMap;->values:Ljava/util/Collection;

    :cond_0
    return-object v0
.end method
