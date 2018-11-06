.class final Ljava/util/concurrent/ConcurrentHashMap$TreeBin;
.super Ljava/util/concurrent/ConcurrentHashMap$Node;
.source "ConcurrentHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ConcurrentHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TreeBin"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/ConcurrentHashMap$Node",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static final LOCKSTATE:J

.field static final READER:I = 0x4

.field private static final U:Lsun/misc/Unsafe;

.field static final WAITER:I = 0x2

.field static final WRITER:I = 0x1


# instance fields
.field volatile first:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap$TreeNode",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field volatile lockState:I

.field root:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap$TreeNode",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field volatile waiter:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-class v1, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;

    invoke-virtual {v1}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    sput-boolean v1, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->-assertionsDisabled:Z

    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v1

    sput-object v1, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->U:Lsun/misc/Unsafe;

    :try_start_0
    sget-object v1, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->U:Lsun/misc/Unsafe;

    const-class v2, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;

    const-string/jumbo v3, "lockState"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->LOCKSTATE:J
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method constructor <init>(Ljava/util/concurrent/ConcurrentHashMap$TreeNode;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentHashMap$TreeNode",
            "<TK;TV;>;)V"
        }
    .end annotation

    const/4 v13, 0x0

    const/4 v12, 0x0

    const/4 v11, -0x2

    invoke-direct {p0, v11, v12, v12, v12}, Ljava/util/concurrent/ConcurrentHashMap$Node;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/concurrent/ConcurrentHashMap$Node;)V

    iput-object p1, p0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->first:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    const/4 v8, 0x0

    move-object v9, p1

    :goto_0
    if-eqz v9, :cond_8

    iget-object v4, v9, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    check-cast v4, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    iput-object v12, v9, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    iput-object v12, v9, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    if-nez v8, :cond_0

    iput-object v12, v9, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    iput-boolean v13, v9, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    move-object v8, v9

    :goto_1
    move-object v9, v4

    goto :goto_0

    :cond_0
    iget-object v2, v9, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->key:Ljava/lang/Object;

    iget v1, v9, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->hash:I

    const/4 v3, 0x0

    move-object v5, v8

    :cond_1
    iget-object v7, v5, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->key:Ljava/lang/Object;

    iget v6, v5, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->hash:I

    if-le v6, v1, :cond_3

    const/4 v0, -0x1

    :cond_2
    :goto_2
    move-object v10, v5

    if-gtz v0, :cond_6

    iget-object v5, v5, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    :goto_3
    if-nez v5, :cond_1

    iput-object v10, v9, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    if-gtz v0, :cond_7

    iput-object v9, v10, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    :goto_4
    invoke-static {v8, v9}, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->balanceInsertion(Ljava/util/concurrent/ConcurrentHashMap$TreeNode;Ljava/util/concurrent/ConcurrentHashMap$TreeNode;)Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    move-result-object v8

    goto :goto_1

    :cond_3
    if-ge v6, v1, :cond_4

    const/4 v0, 0x1

    goto :goto_2

    :cond_4
    if-nez v3, :cond_5

    invoke-static {v2}, Ljava/util/concurrent/ConcurrentHashMap;->comparableClassFor(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v3

    if-nez v3, :cond_5

    :goto_5
    invoke-static {v2, v7}, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->tieBreakOrder(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    goto :goto_2

    :cond_5
    invoke-static {v3, v2, v7}, Ljava/util/concurrent/ConcurrentHashMap;->compareComparables(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_5

    :cond_6
    iget-object v5, v5, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    goto :goto_3

    :cond_7
    iput-object v9, v10, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    goto :goto_4

    :cond_8
    iput-object v8, p0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->root:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    sget-boolean v11, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->-assertionsDisabled:Z

    if-nez v11, :cond_9

    iget-object v11, p0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->root:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    invoke-static {v11}, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->checkInvariants(Ljava/util/concurrent/ConcurrentHashMap$TreeNode;)Z

    move-result v11

    if-nez v11, :cond_9

    new-instance v11, Ljava/lang/AssertionError;

    invoke-direct {v11}, Ljava/lang/AssertionError;-><init>()V

    throw v11

    :cond_9
    return-void
.end method

.method static balanceDeletion(Ljava/util/concurrent/ConcurrentHashMap$TreeNode;Ljava/util/concurrent/ConcurrentHashMap$TreeNode;)Ljava/util/concurrent/ConcurrentHashMap$TreeNode;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/ConcurrentHashMap$TreeNode",
            "<TK;TV;>;",
            "Ljava/util/concurrent/ConcurrentHashMap$TreeNode",
            "<TK;TV;>;)",
            "Ljava/util/concurrent/ConcurrentHashMap$TreeNode",
            "<TK;TV;>;"
        }
    .end annotation

    const/4 v7, 0x1

    const/4 v6, 0x0

    :goto_0
    if-eqz p1, :cond_0

    if-ne p1, p0, :cond_1

    :cond_0
    return-object p0

    :cond_1
    iget-object v2, p1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    if-nez v2, :cond_2

    iput-boolean v6, p1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    return-object p1

    :cond_2
    iget-boolean v5, p1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    if-eqz v5, :cond_3

    iput-boolean v6, p1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    return-object p0

    :cond_3
    iget-object v3, v2, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    if-ne v3, p1, :cond_11

    iget-object v4, v2, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    if-eqz v4, :cond_4

    iget-boolean v5, v4, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    if-eqz v5, :cond_4

    iput-boolean v6, v4, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    iput-boolean v7, v2, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    invoke-static {p0, v2}, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->rotateLeft(Ljava/util/concurrent/ConcurrentHashMap$TreeNode;Ljava/util/concurrent/ConcurrentHashMap$TreeNode;)Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    move-result-object p0

    iget-object v2, p1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    if-nez v2, :cond_5

    const/4 v4, 0x0

    :cond_4
    :goto_1
    if-nez v4, :cond_6

    move-object p1, v2

    goto :goto_0

    :cond_5
    iget-object v4, v2, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    goto :goto_1

    :cond_6
    iget-object v0, v4, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    iget-object v1, v4, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    if-eqz v1, :cond_7

    iget-boolean v5, v1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_9

    :cond_7
    if-eqz v0, :cond_8

    iget-boolean v5, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_9

    :cond_8
    iput-boolean v7, v4, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    move-object p1, v2

    goto :goto_0

    :cond_9
    if-eqz v1, :cond_a

    iget-boolean v5, v1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_c

    :cond_a
    if-eqz v0, :cond_b

    iput-boolean v6, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    :cond_b
    iput-boolean v7, v4, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    invoke-static {p0, v4}, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->rotateRight(Ljava/util/concurrent/ConcurrentHashMap$TreeNode;Ljava/util/concurrent/ConcurrentHashMap$TreeNode;)Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    move-result-object p0

    iget-object v2, p1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    if-nez v2, :cond_f

    const/4 v4, 0x0

    :cond_c
    :goto_2
    if-eqz v4, :cond_d

    if-nez v2, :cond_10

    move v5, v6

    :goto_3
    iput-boolean v5, v4, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    iget-object v1, v4, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    if-eqz v1, :cond_d

    iput-boolean v6, v1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    :cond_d
    if-eqz v2, :cond_e

    iput-boolean v6, v2, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    invoke-static {p0, v2}, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->rotateLeft(Ljava/util/concurrent/ConcurrentHashMap$TreeNode;Ljava/util/concurrent/ConcurrentHashMap$TreeNode;)Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    move-result-object p0

    :cond_e
    move-object p1, p0

    goto :goto_0

    :cond_f
    iget-object v4, v2, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    goto :goto_2

    :cond_10
    iget-boolean v5, v2, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    goto :goto_3

    :cond_11
    if-eqz v3, :cond_12

    iget-boolean v5, v3, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    if-eqz v5, :cond_12

    iput-boolean v6, v3, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    iput-boolean v7, v2, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    invoke-static {p0, v2}, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->rotateRight(Ljava/util/concurrent/ConcurrentHashMap$TreeNode;Ljava/util/concurrent/ConcurrentHashMap$TreeNode;)Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    move-result-object p0

    iget-object v2, p1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    if-nez v2, :cond_13

    const/4 v3, 0x0

    :cond_12
    :goto_4
    if-nez v3, :cond_14

    move-object p1, v2

    goto/16 :goto_0

    :cond_13
    iget-object v3, v2, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    goto :goto_4

    :cond_14
    iget-object v0, v3, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    iget-object v1, v3, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    if-eqz v0, :cond_15

    iget-boolean v5, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_17

    :cond_15
    if-eqz v1, :cond_16

    iget-boolean v5, v1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_17

    :cond_16
    iput-boolean v7, v3, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    move-object p1, v2

    goto/16 :goto_0

    :cond_17
    if-eqz v0, :cond_18

    iget-boolean v5, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_1a

    :cond_18
    if-eqz v1, :cond_19

    iput-boolean v6, v1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    :cond_19
    iput-boolean v7, v3, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    invoke-static {p0, v3}, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->rotateLeft(Ljava/util/concurrent/ConcurrentHashMap$TreeNode;Ljava/util/concurrent/ConcurrentHashMap$TreeNode;)Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    move-result-object p0

    iget-object v2, p1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    if-nez v2, :cond_1d

    const/4 v3, 0x0

    :cond_1a
    :goto_5
    if-eqz v3, :cond_1b

    if-nez v2, :cond_1e

    move v5, v6

    :goto_6
    iput-boolean v5, v3, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    iget-object v0, v3, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    if-eqz v0, :cond_1b

    iput-boolean v6, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    :cond_1b
    if-eqz v2, :cond_1c

    iput-boolean v6, v2, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    invoke-static {p0, v2}, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->rotateRight(Ljava/util/concurrent/ConcurrentHashMap$TreeNode;Ljava/util/concurrent/ConcurrentHashMap$TreeNode;)Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    move-result-object p0

    :cond_1c
    move-object p1, p0

    goto/16 :goto_0

    :cond_1d
    iget-object v3, v2, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    goto :goto_5

    :cond_1e
    iget-boolean v5, v2, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    goto :goto_6
.end method

.method static balanceInsertion(Ljava/util/concurrent/ConcurrentHashMap$TreeNode;Ljava/util/concurrent/ConcurrentHashMap$TreeNode;)Ljava/util/concurrent/ConcurrentHashMap$TreeNode;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/ConcurrentHashMap$TreeNode",
            "<TK;TV;>;",
            "Ljava/util/concurrent/ConcurrentHashMap$TreeNode",
            "<TK;TV;>;)",
            "Ljava/util/concurrent/ConcurrentHashMap$TreeNode",
            "<TK;TV;>;"
        }
    .end annotation

    const/4 v6, 0x1

    const/4 v5, 0x0

    iput-boolean v6, p1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    :cond_0
    :goto_0
    iget-object v0, p1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    if-nez v0, :cond_1

    iput-boolean v5, p1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    return-object p1

    :cond_1
    iget-boolean v4, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    if-eqz v4, :cond_2

    iget-object v1, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    if-nez v1, :cond_3

    :cond_2
    return-object p0

    :cond_3
    iget-object v2, v1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    if-ne v0, v2, :cond_7

    iget-object v3, v1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    if-eqz v3, :cond_4

    iget-boolean v4, v3, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    if-eqz v4, :cond_4

    iput-boolean v5, v3, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    iput-boolean v5, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    iput-boolean v6, v1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    move-object p1, v1

    goto :goto_0

    :cond_4
    iget-object v4, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    if-ne p1, v4, :cond_5

    move-object p1, v0

    invoke-static {p0, v0}, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->rotateLeft(Ljava/util/concurrent/ConcurrentHashMap$TreeNode;Ljava/util/concurrent/ConcurrentHashMap$TreeNode;)Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    move-result-object p0

    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    if-nez v0, :cond_6

    const/4 v1, 0x0

    :cond_5
    :goto_1
    if-eqz v0, :cond_0

    iput-boolean v5, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    if-eqz v1, :cond_0

    iput-boolean v6, v1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    invoke-static {p0, v1}, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->rotateRight(Ljava/util/concurrent/ConcurrentHashMap$TreeNode;Ljava/util/concurrent/ConcurrentHashMap$TreeNode;)Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    move-result-object p0

    goto :goto_0

    :cond_6
    iget-object v1, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    goto :goto_1

    :cond_7
    if-eqz v2, :cond_8

    iget-boolean v4, v2, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    if-eqz v4, :cond_8

    iput-boolean v5, v2, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    iput-boolean v5, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    iput-boolean v6, v1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    move-object p1, v1

    goto :goto_0

    :cond_8
    iget-object v4, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    if-ne p1, v4, :cond_9

    move-object p1, v0

    invoke-static {p0, v0}, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->rotateRight(Ljava/util/concurrent/ConcurrentHashMap$TreeNode;Ljava/util/concurrent/ConcurrentHashMap$TreeNode;)Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    move-result-object p0

    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    if-nez v0, :cond_a

    const/4 v1, 0x0

    :cond_9
    :goto_2
    if-eqz v0, :cond_0

    iput-boolean v5, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    if-eqz v1, :cond_0

    iput-boolean v6, v1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    invoke-static {p0, v1}, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->rotateLeft(Ljava/util/concurrent/ConcurrentHashMap$TreeNode;Ljava/util/concurrent/ConcurrentHashMap$TreeNode;)Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    move-result-object p0

    goto :goto_0

    :cond_a
    iget-object v1, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    goto :goto_2
.end method

.method static checkInvariants(Ljava/util/concurrent/ConcurrentHashMap$TreeNode;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/ConcurrentHashMap$TreeNode",
            "<TK;TV;>;)Z"
        }
    .end annotation

    const/4 v7, 0x0

    iget-object v3, p0, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    iget-object v1, p0, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    iget-object v4, p0, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->prev:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    iget-object v2, p0, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    check-cast v2, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    if-eqz v0, :cond_0

    iget-object v5, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    if-eq v5, p0, :cond_0

    return v7

    :cond_0
    if-eqz v2, :cond_1

    iget-object v5, v2, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->prev:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    if-eq v5, p0, :cond_1

    return v7

    :cond_1
    if-eqz v3, :cond_2

    iget-object v5, v3, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    if-eq p0, v5, :cond_2

    iget-object v5, v3, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    if-eq p0, v5, :cond_2

    return v7

    :cond_2
    if-eqz v1, :cond_4

    iget-object v5, v1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    if-ne v5, p0, :cond_3

    iget v5, v1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->hash:I

    iget v6, p0, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->hash:I

    if-le v5, v6, :cond_4

    :cond_3
    return v7

    :cond_4
    if-eqz v4, :cond_6

    iget-object v5, v4, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    if-ne v5, p0, :cond_5

    iget v5, v4, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->hash:I

    iget v6, p0, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->hash:I

    if-ge v5, v6, :cond_6

    :cond_5
    return v7

    :cond_6
    iget-boolean v5, p0, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    if-eqz v5, :cond_7

    if-eqz v1, :cond_7

    iget-boolean v5, v1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    if-eqz v5, :cond_7

    if-eqz v4, :cond_7

    iget-boolean v5, v4, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    if-eqz v5, :cond_7

    return v7

    :cond_7
    if-eqz v1, :cond_8

    invoke-static {v1}, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->checkInvariants(Ljava/util/concurrent/ConcurrentHashMap$TreeNode;)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_8

    return v7

    :cond_8
    if-eqz v4, :cond_9

    invoke-static {v4}, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->checkInvariants(Ljava/util/concurrent/ConcurrentHashMap$TreeNode;)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_9

    return v7

    :cond_9
    const/4 v5, 0x1

    return v5
.end method

.method private final contendedLock()V
    .locals 7

    const/4 v6, 0x0

    :cond_0
    :goto_0
    iget v4, p0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->lockState:I

    and-int/lit8 v0, v4, -0x3

    if-nez v0, :cond_2

    sget-object v0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->LOCKSTATE:J

    const/4 v5, 0x1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz v6, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->waiter:Ljava/lang/Thread;

    :cond_1
    return-void

    :cond_2
    and-int/lit8 v0, v4, 0x2

    if-nez v0, :cond_3

    sget-object v0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->LOCKSTATE:J

    or-int/lit8 v5, v4, 0x2

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v6, 0x1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->waiter:Ljava/lang/Thread;

    goto :goto_0

    :cond_3
    if-eqz v6, :cond_0

    invoke-static {p0}, Ljava/util/concurrent/locks/LockSupport;->park(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private final lockRoot()V
    .locals 6

    sget-object v0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->LOCKSTATE:J

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->contendedLock()V

    :cond_0
    return-void
.end method

.method static rotateLeft(Ljava/util/concurrent/ConcurrentHashMap$TreeNode;Ljava/util/concurrent/ConcurrentHashMap$TreeNode;)Ljava/util/concurrent/ConcurrentHashMap$TreeNode;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/ConcurrentHashMap$TreeNode",
            "<TK;TV;>;",
            "Ljava/util/concurrent/ConcurrentHashMap$TreeNode",
            "<TK;TV;>;)",
            "Ljava/util/concurrent/ConcurrentHashMap$TreeNode",
            "<TK;TV;>;"
        }
    .end annotation

    if-eqz p1, :cond_1

    iget-object v1, p1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    if-eqz v1, :cond_1

    iget-object v2, v1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    iput-object v2, p1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    if-eqz v2, :cond_0

    iput-object p1, v2, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    :cond_0
    iget-object v0, p1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    iput-object v0, v1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    if-nez v0, :cond_2

    move-object p0, v1

    const/4 v3, 0x0

    iput-boolean v3, v1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    :goto_0
    iput-object p1, v1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    iput-object v1, p1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    :cond_1
    return-object p0

    :cond_2
    iget-object v3, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    if-ne v3, p1, :cond_3

    iput-object v1, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    goto :goto_0

    :cond_3
    iput-object v1, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    goto :goto_0
.end method

.method static rotateRight(Ljava/util/concurrent/ConcurrentHashMap$TreeNode;Ljava/util/concurrent/ConcurrentHashMap$TreeNode;)Ljava/util/concurrent/ConcurrentHashMap$TreeNode;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/ConcurrentHashMap$TreeNode",
            "<TK;TV;>;",
            "Ljava/util/concurrent/ConcurrentHashMap$TreeNode",
            "<TK;TV;>;)",
            "Ljava/util/concurrent/ConcurrentHashMap$TreeNode",
            "<TK;TV;>;"
        }
    .end annotation

    if-eqz p1, :cond_1

    iget-object v0, p1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    if-eqz v0, :cond_1

    iget-object v1, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    iput-object v1, p1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    if-eqz v1, :cond_0

    iput-object p1, v1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    :cond_0
    iget-object v2, p1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    iput-object v2, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    if-nez v2, :cond_2

    move-object p0, v0

    const/4 v3, 0x0

    iput-boolean v3, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    :goto_0
    iput-object p1, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    iput-object v0, p1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    :cond_1
    return-object p0

    :cond_2
    iget-object v3, v2, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    if-ne v3, p1, :cond_3

    iput-object v0, v2, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    goto :goto_0

    :cond_3
    iput-object v0, v2, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    goto :goto_0
.end method

.method static tieBreakOrder(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3

    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    :cond_0
    :goto_0
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    if-gt v1, v2, :cond_3

    const/4 v0, -0x1

    :cond_1
    :goto_1
    return v0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_1
.end method

.method private final unlockRoot()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->lockState:I

    return-void
.end method


# virtual methods
.method final find(ILjava/lang/Object;)Ljava/util/concurrent/ConcurrentHashMap$Node;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/concurrent/ConcurrentHashMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    if-eqz p2, :cond_7

    iget-object v6, p0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->first:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    :cond_0
    :goto_0
    if-eqz v6, :cond_7

    iget v4, p0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->lockState:I

    and-int/lit8 v0, v4, 0x3

    if-eqz v0, :cond_3

    iget v0, v6, Ljava/util/concurrent/ConcurrentHashMap$Node;->hash:I

    if-ne v0, p1, :cond_2

    iget-object v7, v6, Ljava/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    if-eq v7, p2, :cond_1

    if-eqz v7, :cond_2

    invoke-virtual {p2, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    return-object v6

    :cond_2
    iget-object v6, v6, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    goto :goto_0

    :cond_3
    sget-object v0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->LOCKSTATE:J

    add-int/lit8 v5, v4, 0x4

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v9, p0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->root:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v9, :cond_5

    const/4 v8, 0x0

    :goto_1
    sget-object v0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->LOCKSTATE:J

    const/4 v1, -0x4

    invoke-virtual {v0, p0, v2, v3, v1}, Lsun/misc/Unsafe;->getAndAddInt(Ljava/lang/Object;JI)I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_4

    iget-object v10, p0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->waiter:Ljava/lang/Thread;

    if-eqz v10, :cond_4

    invoke-static {v10}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    :cond_4
    return-object v8

    :cond_5
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {v9, p1, p2, v0}, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->findTreeNode(ILjava/lang/Object;Ljava/lang/Class;)Ljava/util/concurrent/ConcurrentHashMap$TreeNode;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v8

    goto :goto_1

    :catchall_0
    move-exception v0

    sget-object v1, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->LOCKSTATE:J

    const/4 v5, -0x4

    invoke-virtual {v1, p0, v2, v3, v5}, Lsun/misc/Unsafe;->getAndAddInt(Ljava/lang/Object;JI)I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_6

    iget-object v10, p0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->waiter:Ljava/lang/Thread;

    if-eqz v10, :cond_6

    invoke-static {v10}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    :cond_6
    throw v0

    :cond_7
    const/4 v0, 0x0

    return-object v0
.end method

.method final putTreeVal(ILjava/lang/Object;Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentHashMap$TreeNode;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITK;TV;)",
            "Ljava/util/concurrent/ConcurrentHashMap$TreeNode",
            "<TK;TV;>;"
        }
    .end annotation

    const/4 v10, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v11, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->root:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    :cond_0
    if-nez v11, :cond_1

    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    invoke-direct/range {v2 .. v7}, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$TreeNode;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->root:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    move-object/from16 v0, p0

    iput-object v2, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->first:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    :goto_0
    sget-boolean v3, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->-assertionsDisabled:Z

    if-nez v3, :cond_f

    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->root:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    invoke-static {v3}, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->checkInvariants(Ljava/util/concurrent/ConcurrentHashMap$TreeNode;)Z

    move-result v3

    if-nez v3, :cond_f

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    :cond_1
    iget v12, v11, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->hash:I

    move/from16 v0, p1

    if-le v12, v0, :cond_4

    const/4 v9, -0x1

    :cond_2
    :goto_1
    move-object v7, v11

    if-gtz v9, :cond_c

    iget-object v11, v11, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    :goto_2
    if-nez v11, :cond_0

    move-object/from16 v0, p0

    iget-object v6, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->first:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    move/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    invoke-direct/range {v2 .. v7}, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$TreeNode;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->first:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    if-eqz v6, :cond_3

    iput-object v2, v6, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->prev:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    :cond_3
    if-gtz v9, :cond_d

    iput-object v2, v7, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    :goto_3
    iget-boolean v3, v7, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    if-nez v3, :cond_e

    const/4 v3, 0x1

    iput-boolean v3, v2, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    goto :goto_0

    :cond_4
    move/from16 v0, p1

    if-ge v12, v0, :cond_5

    const/4 v9, 0x1

    goto :goto_1

    :cond_5
    iget-object v13, v11, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->key:Ljava/lang/Object;

    move-object/from16 v0, p2

    if-eq v13, v0, :cond_6

    if-eqz v13, :cond_7

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    :cond_6
    return-object v11

    :cond_7
    if-nez v10, :cond_9

    invoke-static/range {p2 .. p2}, Ljava/util/concurrent/ConcurrentHashMap;->comparableClassFor(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v10

    if-nez v10, :cond_9

    :goto_4
    if-nez v15, :cond_b

    const/4 v15, 0x1

    iget-object v8, v11, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    if-eqz v8, :cond_a

    move/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v8, v0, v1, v10}, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->findTreeNode(ILjava/lang/Object;Ljava/lang/Class;)Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    move-result-object v14

    if-eqz v14, :cond_a

    :cond_8
    return-object v14

    :cond_9
    move-object/from16 v0, p2

    invoke-static {v10, v0, v13}, Ljava/util/concurrent/ConcurrentHashMap;->compareComparables(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v9

    if-nez v9, :cond_2

    goto :goto_4

    :cond_a
    iget-object v8, v11, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    if-eqz v8, :cond_b

    move/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v8, v0, v1, v10}, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->findTreeNode(ILjava/lang/Object;Ljava/lang/Class;)Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    move-result-object v14

    if-nez v14, :cond_8

    :cond_b
    move-object/from16 v0, p2

    invoke-static {v0, v13}, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->tieBreakOrder(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v9

    goto :goto_1

    :cond_c
    iget-object v11, v11, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    goto :goto_2

    :cond_d
    iput-object v2, v7, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    goto :goto_3

    :cond_e
    invoke-direct/range {p0 .. p0}, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->lockRoot()V

    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->root:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    invoke-static {v3, v2}, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->balanceInsertion(Ljava/util/concurrent/ConcurrentHashMap$TreeNode;Ljava/util/concurrent/ConcurrentHashMap$TreeNode;)Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->root:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct/range {p0 .. p0}, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->unlockRoot()V

    goto/16 :goto_0

    :catchall_0
    move-exception v3

    invoke-direct/range {p0 .. p0}, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->unlockRoot()V

    throw v3

    :cond_f
    const/4 v3, 0x0

    return-object v3
.end method

.method final removeTreeNode(Ljava/util/concurrent/ConcurrentHashMap$TreeNode;)Z
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentHashMap$TreeNode",
            "<TK;TV;>;)Z"
        }
    .end annotation

    iget-object v1, p1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    check-cast v1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    iget-object v5, p1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->prev:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    if-nez v5, :cond_1

    iput-object v1, p0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->first:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    :goto_0
    if-eqz v1, :cond_0

    iput-object v5, v1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->prev:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    :cond_0
    iget-object v13, p0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->first:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    if-nez v13, :cond_2

    const/4 v13, 0x0

    iput-object v13, p0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->root:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    const/4 v13, 0x1

    return v13

    :cond_1
    iput-object v1, v5, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    goto :goto_0

    :cond_2
    iget-object v6, p0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->root:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    if-eqz v6, :cond_3

    iget-object v13, v6, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    if-nez v13, :cond_4

    :cond_3
    const/4 v13, 0x1

    return v13

    :cond_4
    iget-object v8, v6, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    if-eqz v8, :cond_3

    iget-object v13, v8, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    if-eqz v13, :cond_3

    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->lockRoot()V

    :try_start_0
    iget-object v2, p1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    iget-object v4, p1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    if-eqz v2, :cond_12

    if-eqz v4, :cond_12

    move-object v9, v4

    :goto_1
    iget-object v10, v9, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    if-eqz v10, :cond_5

    move-object v9, v10

    goto :goto_1

    :cond_5
    iget-boolean v0, v9, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    iget-boolean v13, p1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    iput-boolean v13, v9, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    iput-boolean v0, p1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    iget-object v12, v9, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    iget-object v3, p1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    if-ne v9, v4, :cond_c

    iput-object v9, p1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    iput-object p1, v9, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    :cond_6
    :goto_2
    const/4 v13, 0x0

    iput-object v13, p1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    iput-object v12, p1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    if-eqz v12, :cond_7

    iput-object p1, v12, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    :cond_7
    iput-object v2, v9, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    if-eqz v2, :cond_8

    iput-object v9, v2, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    :cond_8
    iput-object v3, v9, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    if-nez v3, :cond_f

    move-object v6, v9

    :goto_3
    if-eqz v12, :cond_11

    move-object v7, v12

    :goto_4
    if-eq v7, p1, :cond_9

    iget-object v3, p1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    iput-object v3, v7, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    if-nez v3, :cond_15

    move-object v6, v7

    :goto_5
    const/4 v13, 0x0

    iput-object v13, p1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    const/4 v13, 0x0

    iput-object v13, p1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    const/4 v13, 0x0

    iput-object v13, p1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    :cond_9
    iget-boolean v13, p1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    if-eqz v13, :cond_17

    move-object v13, v6

    :goto_6
    iput-object v13, p0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->root:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    if-ne p1, v7, :cond_b

    iget-object v3, p1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    if-eqz v3, :cond_b

    iget-object v13, v3, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    if-ne p1, v13, :cond_18

    const/4 v13, 0x0

    iput-object v13, v3, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    :cond_a
    :goto_7
    const/4 v13, 0x0

    iput-object v13, p1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_b
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->unlockRoot()V

    sget-boolean v13, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->-assertionsDisabled:Z

    if-nez v13, :cond_19

    iget-object v13, p0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->root:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    invoke-static {v13}, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->checkInvariants(Ljava/util/concurrent/ConcurrentHashMap$TreeNode;)Z

    move-result v13

    if-nez v13, :cond_19

    new-instance v13, Ljava/lang/AssertionError;

    invoke-direct {v13}, Ljava/lang/AssertionError;-><init>()V

    throw v13

    :cond_c
    :try_start_1
    iget-object v11, v9, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    iput-object v11, p1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    if-eqz v11, :cond_d

    iget-object v13, v11, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    if-ne v9, v13, :cond_e

    iput-object p1, v11, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    :cond_d
    :goto_8
    iput-object v4, v9, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    if-eqz v4, :cond_6

    iput-object v9, v4, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v13

    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->unlockRoot()V

    throw v13

    :cond_e
    :try_start_2
    iput-object p1, v11, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    goto :goto_8

    :cond_f
    iget-object v13, v3, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    if-ne p1, v13, :cond_10

    iput-object v9, v3, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    goto :goto_3

    :cond_10
    iput-object v9, v3, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    goto :goto_3

    :cond_11
    move-object v7, p1

    goto :goto_4

    :cond_12
    if-eqz v2, :cond_13

    move-object v7, v2

    goto :goto_4

    :cond_13
    if-eqz v4, :cond_14

    move-object v7, v4

    goto :goto_4

    :cond_14
    move-object v7, p1

    goto :goto_4

    :cond_15
    iget-object v13, v3, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    if-ne p1, v13, :cond_16

    iput-object v7, v3, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    goto :goto_5

    :cond_16
    iput-object v7, v3, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    goto :goto_5

    :cond_17
    invoke-static {v6, v7}, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->balanceDeletion(Ljava/util/concurrent/ConcurrentHashMap$TreeNode;Ljava/util/concurrent/ConcurrentHashMap$TreeNode;)Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    move-result-object v13

    goto :goto_6

    :cond_18
    iget-object v13, v3, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    if-ne p1, v13, :cond_a

    const/4 v13, 0x0

    iput-object v13, v3, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_7

    :cond_19
    const/4 v13, 0x0

    return v13
.end method
