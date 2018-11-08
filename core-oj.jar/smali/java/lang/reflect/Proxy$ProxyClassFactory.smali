.class final Ljava/lang/reflect/Proxy$ProxyClassFactory;
.super Ljava/lang/Object;
.source "Proxy.java"

# interfaces
.implements Ljava/util/function/BiFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/reflect/Proxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ProxyClassFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/BiFunction",
        "<",
        "Ljava/lang/ClassLoader;",
        "[",
        "Ljava/lang/Class",
        "<*>;",
        "Ljava/lang/Class",
        "<*>;>;"
    }
.end annotation


# static fields
.field private static final nextUniqueNumber:Ljava/util/concurrent/atomic/AtomicLong;

.field private static final proxyClassNamePrefix:Ljava/lang/String; = "$Proxy"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    sput-object v0, Ljava/lang/reflect/Proxy$ProxyClassFactory;->nextUniqueNumber:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/reflect/Proxy$ProxyClassFactory;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/reflect/Proxy$ProxyClassFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/ClassLoader;[Ljava/lang/Class;)Ljava/lang/Class;
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    new-instance v10, Ljava/util/IdentityHashMap;

    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    invoke-direct {v10, v0}, Ljava/util/IdentityHashMap;-><init>(I)V

    const/16 v21, 0x0

    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v22, v0

    :goto_0
    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_3

    aget-object v11, p2, v21

    const/4 v9, 0x0

    :try_start_0
    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v24

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    :goto_1
    if-eq v9, v11, :cond_0

    new-instance v21, Ljava/lang/IllegalArgumentException;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, " is not visible from class loader"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v21

    :cond_0
    invoke-virtual {v9}, Ljava/lang/Class;->isInterface()Z

    move-result v23

    if-nez v23, :cond_1

    new-instance v21, Ljava/lang/IllegalArgumentException;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, " is not an interface"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v21

    :cond_1
    sget-object v23, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object/from16 v0, v23

    invoke-interface {v10, v9, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    if-eqz v23, :cond_2

    new-instance v21, Ljava/lang/IllegalArgumentException;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "repeated interface: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v21

    :cond_2
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_0

    :cond_3
    const/16 v20, 0x0

    const/16 v4, 0x11

    const/16 v21, 0x0

    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v22, v0

    :goto_2
    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_7

    aget-object v11, p2, v21

    invoke-virtual {v11}, Ljava/lang/Class;->getModifiers()I

    move-result v8

    invoke-static {v8}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v23

    if-nez v23, :cond_4

    const/16 v4, 0x10

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v15

    const/16 v23, 0x2e

    move/from16 v0, v23

    invoke-virtual {v15, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v14

    const/16 v23, -0x1

    move/from16 v0, v23

    if-ne v14, v0, :cond_5

    const-string/jumbo v18, ""

    :goto_3
    if-nez v20, :cond_6

    move-object/from16 v20, v18

    :cond_4
    add-int/lit8 v21, v21, 0x1

    goto :goto_2

    :cond_5
    add-int/lit8 v23, v14, 0x1

    const/16 v24, 0x0

    move/from16 v0, v24

    move/from16 v1, v23

    invoke-virtual {v15, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    goto :goto_3

    :cond_6
    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_4

    new-instance v21, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v22, "non-public interfaces from different packages"

    invoke-direct/range {v21 .. v22}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v21

    :cond_7
    if-nez v20, :cond_8

    const-string/jumbo v20, ""

    :cond_8
    invoke-static/range {p2 .. p2}, Ljava/lang/reflect/Proxy;->-wrap2([Ljava/lang/Class;)Ljava/util/List;

    move-result-object v12

    invoke-static {}, Ljava/lang/reflect/Proxy;->-get0()Ljava/util/Comparator;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-static {v12, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-static {v12}, Ljava/lang/reflect/Proxy;->-wrap3(Ljava/util/List;)V

    invoke-static {v12}, Ljava/lang/reflect/Proxy;->-wrap1(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v21

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/reflect/Method;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-interface {v12, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Ljava/lang/reflect/Method;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v21

    move/from16 v0, v21

    new-array v0, v0, [[Ljava/lang/Class;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-interface {v6, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [[Ljava/lang/Class;

    sget-object v21, Ljava/lang/reflect/Proxy$ProxyClassFactory;->nextUniqueNumber:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual/range {v21 .. v21}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v16

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, "$Proxy"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2, v13, v7}, Ljava/lang/reflect/Proxy;->-wrap0(Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/ClassLoader;[Ljava/lang/reflect/Method;[[Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v21

    return-object v21

    :catch_0
    move-exception v5

    goto/16 :goto_1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/lang/ClassLoader;

    check-cast p2, [Ljava/lang/Class;

    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Proxy$ProxyClassFactory;->apply(Ljava/lang/ClassLoader;[Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method
