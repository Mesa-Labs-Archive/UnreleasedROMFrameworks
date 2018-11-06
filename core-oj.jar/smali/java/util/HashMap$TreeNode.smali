.class final Ljava/util/HashMap$TreeNode;
.super Ljava/util/LinkedHashMap$LinkedHashMapEntry;
.source "HashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/HashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TreeNode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/LinkedHashMap$LinkedHashMapEntry",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z


# instance fields
.field left:Ljava/util/HashMap$TreeNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap$TreeNode",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field parent:Ljava/util/HashMap$TreeNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap$TreeNode",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field prev:Ljava/util/HashMap$TreeNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap$TreeNode",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field red:Z

.field right:Ljava/util/HashMap$TreeNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap$TreeNode",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Ljava/util/HashMap$TreeNode;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Ljava/util/HashMap$TreeNode;->-assertionsDisabled:Z

    return-void
.end method

.method constructor <init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/HashMap$Node;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITK;TV;",
            "Ljava/util/HashMap$Node",
            "<TK;TV;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3, p4}, Ljava/util/LinkedHashMap$LinkedHashMapEntry;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/HashMap$Node;)V

    return-void
.end method

.method static balanceDeletion(Ljava/util/HashMap$TreeNode;Ljava/util/HashMap$TreeNode;)Ljava/util/HashMap$TreeNode;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/HashMap$TreeNode",
            "<TK;TV;>;",
            "Ljava/util/HashMap$TreeNode",
            "<TK;TV;>;)",
            "Ljava/util/HashMap$TreeNode",
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
    iget-object v2, p1, Ljava/util/HashMap$TreeNode;->parent:Ljava/util/HashMap$TreeNode;

    if-nez v2, :cond_2

    iput-boolean v6, p1, Ljava/util/HashMap$TreeNode;->red:Z

    return-object p1

    :cond_2
    iget-boolean v5, p1, Ljava/util/HashMap$TreeNode;->red:Z

    if-eqz v5, :cond_3

    iput-boolean v6, p1, Ljava/util/HashMap$TreeNode;->red:Z

    return-object p0

    :cond_3
    iget-object v3, v2, Ljava/util/HashMap$TreeNode;->left:Ljava/util/HashMap$TreeNode;

    if-ne v3, p1, :cond_11

    iget-object v4, v2, Ljava/util/HashMap$TreeNode;->right:Ljava/util/HashMap$TreeNode;

    if-eqz v4, :cond_4

    iget-boolean v5, v4, Ljava/util/HashMap$TreeNode;->red:Z

    if-eqz v5, :cond_4

    iput-boolean v6, v4, Ljava/util/HashMap$TreeNode;->red:Z

    iput-boolean v7, v2, Ljava/util/HashMap$TreeNode;->red:Z

    invoke-static {p0, v2}, Ljava/util/HashMap$TreeNode;->rotateLeft(Ljava/util/HashMap$TreeNode;Ljava/util/HashMap$TreeNode;)Ljava/util/HashMap$TreeNode;

    move-result-object p0

    iget-object v2, p1, Ljava/util/HashMap$TreeNode;->parent:Ljava/util/HashMap$TreeNode;

    if-nez v2, :cond_5

    const/4 v4, 0x0

    :cond_4
    :goto_1
    if-nez v4, :cond_6

    move-object p1, v2

    goto :goto_0

    :cond_5
    iget-object v4, v2, Ljava/util/HashMap$TreeNode;->right:Ljava/util/HashMap$TreeNode;

    goto :goto_1

    :cond_6
    iget-object v0, v4, Ljava/util/HashMap$TreeNode;->left:Ljava/util/HashMap$TreeNode;

    iget-object v1, v4, Ljava/util/HashMap$TreeNode;->right:Ljava/util/HashMap$TreeNode;

    if-eqz v1, :cond_7

    iget-boolean v5, v1, Ljava/util/HashMap$TreeNode;->red:Z

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_9

    :cond_7
    if-eqz v0, :cond_8

    iget-boolean v5, v0, Ljava/util/HashMap$TreeNode;->red:Z

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_9

    :cond_8
    iput-boolean v7, v4, Ljava/util/HashMap$TreeNode;->red:Z

    move-object p1, v2

    goto :goto_0

    :cond_9
    if-eqz v1, :cond_a

    iget-boolean v5, v1, Ljava/util/HashMap$TreeNode;->red:Z

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_c

    :cond_a
    if-eqz v0, :cond_b

    iput-boolean v6, v0, Ljava/util/HashMap$TreeNode;->red:Z

    :cond_b
    iput-boolean v7, v4, Ljava/util/HashMap$TreeNode;->red:Z

    invoke-static {p0, v4}, Ljava/util/HashMap$TreeNode;->rotateRight(Ljava/util/HashMap$TreeNode;Ljava/util/HashMap$TreeNode;)Ljava/util/HashMap$TreeNode;

    move-result-object p0

    iget-object v2, p1, Ljava/util/HashMap$TreeNode;->parent:Ljava/util/HashMap$TreeNode;

    if-nez v2, :cond_f

    const/4 v4, 0x0

    :cond_c
    :goto_2
    if-eqz v4, :cond_d

    if-nez v2, :cond_10

    move v5, v6

    :goto_3
    iput-boolean v5, v4, Ljava/util/HashMap$TreeNode;->red:Z

    iget-object v1, v4, Ljava/util/HashMap$TreeNode;->right:Ljava/util/HashMap$TreeNode;

    if-eqz v1, :cond_d

    iput-boolean v6, v1, Ljava/util/HashMap$TreeNode;->red:Z

    :cond_d
    if-eqz v2, :cond_e

    iput-boolean v6, v2, Ljava/util/HashMap$TreeNode;->red:Z

    invoke-static {p0, v2}, Ljava/util/HashMap$TreeNode;->rotateLeft(Ljava/util/HashMap$TreeNode;Ljava/util/HashMap$TreeNode;)Ljava/util/HashMap$TreeNode;

    move-result-object p0

    :cond_e
    move-object p1, p0

    goto :goto_0

    :cond_f
    iget-object v4, v2, Ljava/util/HashMap$TreeNode;->right:Ljava/util/HashMap$TreeNode;

    goto :goto_2

    :cond_10
    iget-boolean v5, v2, Ljava/util/HashMap$TreeNode;->red:Z

    goto :goto_3

    :cond_11
    if-eqz v3, :cond_12

    iget-boolean v5, v3, Ljava/util/HashMap$TreeNode;->red:Z

    if-eqz v5, :cond_12

    iput-boolean v6, v3, Ljava/util/HashMap$TreeNode;->red:Z

    iput-boolean v7, v2, Ljava/util/HashMap$TreeNode;->red:Z

    invoke-static {p0, v2}, Ljava/util/HashMap$TreeNode;->rotateRight(Ljava/util/HashMap$TreeNode;Ljava/util/HashMap$TreeNode;)Ljava/util/HashMap$TreeNode;

    move-result-object p0

    iget-object v2, p1, Ljava/util/HashMap$TreeNode;->parent:Ljava/util/HashMap$TreeNode;

    if-nez v2, :cond_13

    const/4 v3, 0x0

    :cond_12
    :goto_4
    if-nez v3, :cond_14

    move-object p1, v2

    goto/16 :goto_0

    :cond_13
    iget-object v3, v2, Ljava/util/HashMap$TreeNode;->left:Ljava/util/HashMap$TreeNode;

    goto :goto_4

    :cond_14
    iget-object v0, v3, Ljava/util/HashMap$TreeNode;->left:Ljava/util/HashMap$TreeNode;

    iget-object v1, v3, Ljava/util/HashMap$TreeNode;->right:Ljava/util/HashMap$TreeNode;

    if-eqz v0, :cond_15

    iget-boolean v5, v0, Ljava/util/HashMap$TreeNode;->red:Z

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_17

    :cond_15
    if-eqz v1, :cond_16

    iget-boolean v5, v1, Ljava/util/HashMap$TreeNode;->red:Z

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_17

    :cond_16
    iput-boolean v7, v3, Ljava/util/HashMap$TreeNode;->red:Z

    move-object p1, v2

    goto/16 :goto_0

    :cond_17
    if-eqz v0, :cond_18

    iget-boolean v5, v0, Ljava/util/HashMap$TreeNode;->red:Z

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_1a

    :cond_18
    if-eqz v1, :cond_19

    iput-boolean v6, v1, Ljava/util/HashMap$TreeNode;->red:Z

    :cond_19
    iput-boolean v7, v3, Ljava/util/HashMap$TreeNode;->red:Z

    invoke-static {p0, v3}, Ljava/util/HashMap$TreeNode;->rotateLeft(Ljava/util/HashMap$TreeNode;Ljava/util/HashMap$TreeNode;)Ljava/util/HashMap$TreeNode;

    move-result-object p0

    iget-object v2, p1, Ljava/util/HashMap$TreeNode;->parent:Ljava/util/HashMap$TreeNode;

    if-nez v2, :cond_1d

    const/4 v3, 0x0

    :cond_1a
    :goto_5
    if-eqz v3, :cond_1b

    if-nez v2, :cond_1e

    move v5, v6

    :goto_6
    iput-boolean v5, v3, Ljava/util/HashMap$TreeNode;->red:Z

    iget-object v0, v3, Ljava/util/HashMap$TreeNode;->left:Ljava/util/HashMap$TreeNode;

    if-eqz v0, :cond_1b

    iput-boolean v6, v0, Ljava/util/HashMap$TreeNode;->red:Z

    :cond_1b
    if-eqz v2, :cond_1c

    iput-boolean v6, v2, Ljava/util/HashMap$TreeNode;->red:Z

    invoke-static {p0, v2}, Ljava/util/HashMap$TreeNode;->rotateRight(Ljava/util/HashMap$TreeNode;Ljava/util/HashMap$TreeNode;)Ljava/util/HashMap$TreeNode;

    move-result-object p0

    :cond_1c
    move-object p1, p0

    goto/16 :goto_0

    :cond_1d
    iget-object v3, v2, Ljava/util/HashMap$TreeNode;->left:Ljava/util/HashMap$TreeNode;

    goto :goto_5

    :cond_1e
    iget-boolean v5, v2, Ljava/util/HashMap$TreeNode;->red:Z

    goto :goto_6
.end method

.method static balanceInsertion(Ljava/util/HashMap$TreeNode;Ljava/util/HashMap$TreeNode;)Ljava/util/HashMap$TreeNode;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/HashMap$TreeNode",
            "<TK;TV;>;",
            "Ljava/util/HashMap$TreeNode",
            "<TK;TV;>;)",
            "Ljava/util/HashMap$TreeNode",
            "<TK;TV;>;"
        }
    .end annotation

    const/4 v6, 0x1

    const/4 v5, 0x0

    iput-boolean v6, p1, Ljava/util/HashMap$TreeNode;->red:Z

    :cond_0
    :goto_0
    iget-object v0, p1, Ljava/util/HashMap$TreeNode;->parent:Ljava/util/HashMap$TreeNode;

    if-nez v0, :cond_1

    iput-boolean v5, p1, Ljava/util/HashMap$TreeNode;->red:Z

    return-object p1

    :cond_1
    iget-boolean v4, v0, Ljava/util/HashMap$TreeNode;->red:Z

    if-eqz v4, :cond_2

    iget-object v1, v0, Ljava/util/HashMap$TreeNode;->parent:Ljava/util/HashMap$TreeNode;

    if-nez v1, :cond_3

    :cond_2
    return-object p0

    :cond_3
    iget-object v2, v1, Ljava/util/HashMap$TreeNode;->left:Ljava/util/HashMap$TreeNode;

    if-ne v0, v2, :cond_7

    iget-object v3, v1, Ljava/util/HashMap$TreeNode;->right:Ljava/util/HashMap$TreeNode;

    if-eqz v3, :cond_4

    iget-boolean v4, v3, Ljava/util/HashMap$TreeNode;->red:Z

    if-eqz v4, :cond_4

    iput-boolean v5, v3, Ljava/util/HashMap$TreeNode;->red:Z

    iput-boolean v5, v0, Ljava/util/HashMap$TreeNode;->red:Z

    iput-boolean v6, v1, Ljava/util/HashMap$TreeNode;->red:Z

    move-object p1, v1

    goto :goto_0

    :cond_4
    iget-object v4, v0, Ljava/util/HashMap$TreeNode;->right:Ljava/util/HashMap$TreeNode;

    if-ne p1, v4, :cond_5

    move-object p1, v0

    invoke-static {p0, v0}, Ljava/util/HashMap$TreeNode;->rotateLeft(Ljava/util/HashMap$TreeNode;Ljava/util/HashMap$TreeNode;)Ljava/util/HashMap$TreeNode;

    move-result-object p0

    iget-object v0, v0, Ljava/util/HashMap$TreeNode;->parent:Ljava/util/HashMap$TreeNode;

    if-nez v0, :cond_6

    const/4 v1, 0x0

    :cond_5
    :goto_1
    if-eqz v0, :cond_0

    iput-boolean v5, v0, Ljava/util/HashMap$TreeNode;->red:Z

    if-eqz v1, :cond_0

    iput-boolean v6, v1, Ljava/util/HashMap$TreeNode;->red:Z

    invoke-static {p0, v1}, Ljava/util/HashMap$TreeNode;->rotateRight(Ljava/util/HashMap$TreeNode;Ljava/util/HashMap$TreeNode;)Ljava/util/HashMap$TreeNode;

    move-result-object p0

    goto :goto_0

    :cond_6
    iget-object v1, v0, Ljava/util/HashMap$TreeNode;->parent:Ljava/util/HashMap$TreeNode;

    goto :goto_1

    :cond_7
    if-eqz v2, :cond_8

    iget-boolean v4, v2, Ljava/util/HashMap$TreeNode;->red:Z

    if-eqz v4, :cond_8

    iput-boolean v5, v2, Ljava/util/HashMap$TreeNode;->red:Z

    iput-boolean v5, v0, Ljava/util/HashMap$TreeNode;->red:Z

    iput-boolean v6, v1, Ljava/util/HashMap$TreeNode;->red:Z

    move-object p1, v1

    goto :goto_0

    :cond_8
    iget-object v4, v0, Ljava/util/HashMap$TreeNode;->left:Ljava/util/HashMap$TreeNode;

    if-ne p1, v4, :cond_9

    move-object p1, v0

    invoke-static {p0, v0}, Ljava/util/HashMap$TreeNode;->rotateRight(Ljava/util/HashMap$TreeNode;Ljava/util/HashMap$TreeNode;)Ljava/util/HashMap$TreeNode;

    move-result-object p0

    iget-object v0, v0, Ljava/util/HashMap$TreeNode;->parent:Ljava/util/HashMap$TreeNode;

    if-nez v0, :cond_a

    const/4 v1, 0x0

    :cond_9
    :goto_2
    if-eqz v0, :cond_0

    iput-boolean v5, v0, Ljava/util/HashMap$TreeNode;->red:Z

    if-eqz v1, :cond_0

    iput-boolean v6, v1, Ljava/util/HashMap$TreeNode;->red:Z

    invoke-static {p0, v1}, Ljava/util/HashMap$TreeNode;->rotateLeft(Ljava/util/HashMap$TreeNode;Ljava/util/HashMap$TreeNode;)Ljava/util/HashMap$TreeNode;

    move-result-object p0

    goto :goto_0

    :cond_a
    iget-object v1, v0, Ljava/util/HashMap$TreeNode;->parent:Ljava/util/HashMap$TreeNode;

    goto :goto_2
.end method

.method static checkInvariants(Ljava/util/HashMap$TreeNode;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/HashMap$TreeNode",
            "<TK;TV;>;)Z"
        }
    .end annotation

    const/4 v7, 0x0

    iget-object v3, p0, Ljava/util/HashMap$TreeNode;->parent:Ljava/util/HashMap$TreeNode;

    iget-object v1, p0, Ljava/util/HashMap$TreeNode;->left:Ljava/util/HashMap$TreeNode;

    iget-object v4, p0, Ljava/util/HashMap$TreeNode;->right:Ljava/util/HashMap$TreeNode;

    iget-object v0, p0, Ljava/util/HashMap$TreeNode;->prev:Ljava/util/HashMap$TreeNode;

    iget-object v2, p0, Ljava/util/HashMap$TreeNode;->next:Ljava/util/HashMap$Node;

    check-cast v2, Ljava/util/HashMap$TreeNode;

    if-eqz v0, :cond_0

    iget-object v5, v0, Ljava/util/HashMap$TreeNode;->next:Ljava/util/HashMap$Node;

    if-eq v5, p0, :cond_0

    return v7

    :cond_0
    if-eqz v2, :cond_1

    iget-object v5, v2, Ljava/util/HashMap$TreeNode;->prev:Ljava/util/HashMap$TreeNode;

    if-eq v5, p0, :cond_1

    return v7

    :cond_1
    if-eqz v3, :cond_2

    iget-object v5, v3, Ljava/util/HashMap$TreeNode;->left:Ljava/util/HashMap$TreeNode;

    if-eq p0, v5, :cond_2

    iget-object v5, v3, Ljava/util/HashMap$TreeNode;->right:Ljava/util/HashMap$TreeNode;

    if-eq p0, v5, :cond_2

    return v7

    :cond_2
    if-eqz v1, :cond_4

    iget-object v5, v1, Ljava/util/HashMap$TreeNode;->parent:Ljava/util/HashMap$TreeNode;

    if-ne v5, p0, :cond_3

    iget v5, v1, Ljava/util/HashMap$TreeNode;->hash:I

    iget v6, p0, Ljava/util/HashMap$TreeNode;->hash:I

    if-le v5, v6, :cond_4

    :cond_3
    return v7

    :cond_4
    if-eqz v4, :cond_6

    iget-object v5, v4, Ljava/util/HashMap$TreeNode;->parent:Ljava/util/HashMap$TreeNode;

    if-ne v5, p0, :cond_5

    iget v5, v4, Ljava/util/HashMap$TreeNode;->hash:I

    iget v6, p0, Ljava/util/HashMap$TreeNode;->hash:I

    if-ge v5, v6, :cond_6

    :cond_5
    return v7

    :cond_6
    iget-boolean v5, p0, Ljava/util/HashMap$TreeNode;->red:Z

    if-eqz v5, :cond_7

    if-eqz v1, :cond_7

    iget-boolean v5, v1, Ljava/util/HashMap$TreeNode;->red:Z

    if-eqz v5, :cond_7

    if-eqz v4, :cond_7

    iget-boolean v5, v4, Ljava/util/HashMap$TreeNode;->red:Z

    if-eqz v5, :cond_7

    return v7

    :cond_7
    if-eqz v1, :cond_8

    invoke-static {v1}, Ljava/util/HashMap$TreeNode;->checkInvariants(Ljava/util/HashMap$TreeNode;)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_8

    return v7

    :cond_8
    if-eqz v4, :cond_9

    invoke-static {v4}, Ljava/util/HashMap$TreeNode;->checkInvariants(Ljava/util/HashMap$TreeNode;)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_9

    return v7

    :cond_9
    const/4 v5, 0x1

    return v5
.end method

.method static moveRootToFront([Ljava/util/HashMap$Node;Ljava/util/HashMap$TreeNode;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/util/HashMap$Node",
            "<TK;TV;>;",
            "Ljava/util/HashMap$TreeNode",
            "<TK;TV;>;)V"
        }
    .end annotation

    const/4 v7, 0x0

    if-eqz p1, :cond_4

    if-eqz p0, :cond_4

    array-length v2, p0

    if-lez v2, :cond_4

    add-int/lit8 v5, v2, -0x1

    iget v6, p1, Ljava/util/HashMap$TreeNode;->hash:I

    and-int v1, v5, v6

    aget-object v0, p0, v1

    check-cast v0, Ljava/util/HashMap$TreeNode;

    if-eq p1, v0, :cond_3

    aput-object p1, p0, v1

    iget-object v4, p1, Ljava/util/HashMap$TreeNode;->prev:Ljava/util/HashMap$TreeNode;

    iget-object v3, p1, Ljava/util/HashMap$TreeNode;->next:Ljava/util/HashMap$Node;

    if-eqz v3, :cond_0

    move-object v5, v3

    check-cast v5, Ljava/util/HashMap$TreeNode;

    iput-object v4, v5, Ljava/util/HashMap$TreeNode;->prev:Ljava/util/HashMap$TreeNode;

    :cond_0
    if-eqz v4, :cond_1

    iput-object v3, v4, Ljava/util/HashMap$TreeNode;->next:Ljava/util/HashMap$Node;

    :cond_1
    if-eqz v0, :cond_2

    iput-object p1, v0, Ljava/util/HashMap$TreeNode;->prev:Ljava/util/HashMap$TreeNode;

    :cond_2
    iput-object v0, p1, Ljava/util/HashMap$TreeNode;->next:Ljava/util/HashMap$Node;

    iput-object v7, p1, Ljava/util/HashMap$TreeNode;->prev:Ljava/util/HashMap$TreeNode;

    :cond_3
    sget-boolean v5, Ljava/util/HashMap$TreeNode;->-assertionsDisabled:Z

    if-nez v5, :cond_4

    invoke-static {p1}, Ljava/util/HashMap$TreeNode;->checkInvariants(Ljava/util/HashMap$TreeNode;)Z

    move-result v5

    if-nez v5, :cond_4

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    :cond_4
    return-void
.end method

.method static rotateLeft(Ljava/util/HashMap$TreeNode;Ljava/util/HashMap$TreeNode;)Ljava/util/HashMap$TreeNode;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/HashMap$TreeNode",
            "<TK;TV;>;",
            "Ljava/util/HashMap$TreeNode",
            "<TK;TV;>;)",
            "Ljava/util/HashMap$TreeNode",
            "<TK;TV;>;"
        }
    .end annotation

    if-eqz p1, :cond_1

    iget-object v1, p1, Ljava/util/HashMap$TreeNode;->right:Ljava/util/HashMap$TreeNode;

    if-eqz v1, :cond_1

    iget-object v2, v1, Ljava/util/HashMap$TreeNode;->left:Ljava/util/HashMap$TreeNode;

    iput-object v2, p1, Ljava/util/HashMap$TreeNode;->right:Ljava/util/HashMap$TreeNode;

    if-eqz v2, :cond_0

    iput-object p1, v2, Ljava/util/HashMap$TreeNode;->parent:Ljava/util/HashMap$TreeNode;

    :cond_0
    iget-object v0, p1, Ljava/util/HashMap$TreeNode;->parent:Ljava/util/HashMap$TreeNode;

    iput-object v0, v1, Ljava/util/HashMap$TreeNode;->parent:Ljava/util/HashMap$TreeNode;

    if-nez v0, :cond_2

    move-object p0, v1

    const/4 v3, 0x0

    iput-boolean v3, v1, Ljava/util/HashMap$TreeNode;->red:Z

    :goto_0
    iput-object p1, v1, Ljava/util/HashMap$TreeNode;->left:Ljava/util/HashMap$TreeNode;

    iput-object v1, p1, Ljava/util/HashMap$TreeNode;->parent:Ljava/util/HashMap$TreeNode;

    :cond_1
    return-object p0

    :cond_2
    iget-object v3, v0, Ljava/util/HashMap$TreeNode;->left:Ljava/util/HashMap$TreeNode;

    if-ne v3, p1, :cond_3

    iput-object v1, v0, Ljava/util/HashMap$TreeNode;->left:Ljava/util/HashMap$TreeNode;

    goto :goto_0

    :cond_3
    iput-object v1, v0, Ljava/util/HashMap$TreeNode;->right:Ljava/util/HashMap$TreeNode;

    goto :goto_0
.end method

.method static rotateRight(Ljava/util/HashMap$TreeNode;Ljava/util/HashMap$TreeNode;)Ljava/util/HashMap$TreeNode;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/HashMap$TreeNode",
            "<TK;TV;>;",
            "Ljava/util/HashMap$TreeNode",
            "<TK;TV;>;)",
            "Ljava/util/HashMap$TreeNode",
            "<TK;TV;>;"
        }
    .end annotation

    if-eqz p1, :cond_1

    iget-object v0, p1, Ljava/util/HashMap$TreeNode;->left:Ljava/util/HashMap$TreeNode;

    if-eqz v0, :cond_1

    iget-object v1, v0, Ljava/util/HashMap$TreeNode;->right:Ljava/util/HashMap$TreeNode;

    iput-object v1, p1, Ljava/util/HashMap$TreeNode;->left:Ljava/util/HashMap$TreeNode;

    if-eqz v1, :cond_0

    iput-object p1, v1, Ljava/util/HashMap$TreeNode;->parent:Ljava/util/HashMap$TreeNode;

    :cond_0
    iget-object v2, p1, Ljava/util/HashMap$TreeNode;->parent:Ljava/util/HashMap$TreeNode;

    iput-object v2, v0, Ljava/util/HashMap$TreeNode;->parent:Ljava/util/HashMap$TreeNode;

    if-nez v2, :cond_2

    move-object p0, v0

    const/4 v3, 0x0

    iput-boolean v3, v0, Ljava/util/HashMap$TreeNode;->red:Z

    :goto_0
    iput-object p1, v0, Ljava/util/HashMap$TreeNode;->right:Ljava/util/HashMap$TreeNode;

    iput-object v0, p1, Ljava/util/HashMap$TreeNode;->parent:Ljava/util/HashMap$TreeNode;

    :cond_1
    return-object p0

    :cond_2
    iget-object v3, v2, Ljava/util/HashMap$TreeNode;->right:Ljava/util/HashMap$TreeNode;

    if-ne v3, p1, :cond_3

    iput-object v0, v2, Ljava/util/HashMap$TreeNode;->right:Ljava/util/HashMap$TreeNode;

    goto :goto_0

    :cond_3
    iput-object v0, v2, Ljava/util/HashMap$TreeNode;->left:Ljava/util/HashMap$TreeNode;

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


# virtual methods
.method final find(ILjava/lang/Object;Ljava/lang/Class;)Ljava/util/HashMap$TreeNode;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/util/HashMap$TreeNode",
            "<TK;TV;>;"
        }
    .end annotation

    const/4 v8, 0x0

    move-object v1, p0

    :cond_0
    iget-object v4, v1, Ljava/util/HashMap$TreeNode;->left:Ljava/util/HashMap$TreeNode;

    iget-object v5, v1, Ljava/util/HashMap$TreeNode;->right:Ljava/util/HashMap$TreeNode;

    iget v2, v1, Ljava/util/HashMap$TreeNode;->hash:I

    if-le v2, p1, :cond_1

    move-object v1, v4

    :goto_0
    if-nez v1, :cond_0

    return-object v8

    :cond_1
    if-ge v2, p1, :cond_2

    move-object v1, v5

    goto :goto_0

    :cond_2
    iget-object v3, v1, Ljava/util/HashMap$TreeNode;->key:Ljava/lang/Object;

    if-eq v3, p2, :cond_3

    if-eqz p2, :cond_4

    invoke-virtual {p2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    :cond_3
    return-object v1

    :cond_4
    if-nez v4, :cond_5

    move-object v1, v5

    goto :goto_0

    :cond_5
    if-nez v5, :cond_6

    move-object v1, v4

    goto :goto_0

    :cond_6
    if-nez p3, :cond_7

    invoke-static {p2}, Ljava/util/HashMap;->comparableClassFor(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object p3

    if-eqz p3, :cond_9

    :cond_7
    invoke-static {p3, p2, v3}, Ljava/util/HashMap;->compareComparables(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-eqz v0, :cond_9

    if-gez v0, :cond_8

    move-object v1, v4

    goto :goto_0

    :cond_8
    move-object v1, v5

    goto :goto_0

    :cond_9
    invoke-virtual {v5, p1, p2, p3}, Ljava/util/HashMap$TreeNode;->find(ILjava/lang/Object;Ljava/lang/Class;)Ljava/util/HashMap$TreeNode;

    move-result-object v6

    if-eqz v6, :cond_a

    return-object v6

    :cond_a
    move-object v1, v4

    goto :goto_0
.end method

.method final getTreeNode(ILjava/lang/Object;)Ljava/util/HashMap$TreeNode;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/HashMap$TreeNode",
            "<TK;TV;>;"
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Ljava/util/HashMap$TreeNode;->parent:Ljava/util/HashMap$TreeNode;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/util/HashMap$TreeNode;->root()Ljava/util/HashMap$TreeNode;

    move-result-object p0

    :cond_0
    invoke-virtual {p0, p1, p2, v1}, Ljava/util/HashMap$TreeNode;->find(ILjava/lang/Object;Ljava/lang/Class;)Ljava/util/HashMap$TreeNode;

    move-result-object v0

    return-object v0
.end method

.method final putTreeVal(Ljava/util/HashMap;[Ljava/util/HashMap$Node;ILjava/lang/Object;Ljava/lang/Object;)Ljava/util/HashMap$TreeNode;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<TK;TV;>;[",
            "Ljava/util/HashMap$Node",
            "<TK;TV;>;ITK;TV;)",
            "Ljava/util/HashMap$TreeNode",
            "<TK;TV;>;"
        }
    .end annotation

    const/4 v6, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/HashMap$TreeNode;->parent:Ljava/util/HashMap$TreeNode;

    move-object/from16 v16, v0

    if-eqz v16, :cond_3

    invoke-virtual/range {p0 .. p0}, Ljava/util/HashMap$TreeNode;->root()Ljava/util/HashMap$TreeNode;

    move-result-object v11

    :goto_0
    move-object v7, v11

    :cond_0
    iget v8, v7, Ljava/util/HashMap$TreeNode;->hash:I

    move/from16 v0, p3

    if-le v8, v0, :cond_4

    const/4 v5, -0x1

    :cond_1
    :goto_1
    move-object v14, v7

    if-gtz v5, :cond_c

    iget-object v7, v7, Ljava/util/HashMap$TreeNode;->left:Ljava/util/HashMap$TreeNode;

    :goto_2
    if-nez v7, :cond_0

    iget-object v15, v14, Ljava/util/HashMap$TreeNode;->next:Ljava/util/HashMap$Node;

    move-object/from16 v0, p1

    move/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    invoke-virtual {v0, v1, v2, v3, v15}, Ljava/util/HashMap;->newTreeNode(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/HashMap$Node;)Ljava/util/HashMap$TreeNode;

    move-result-object v13

    if-gtz v5, :cond_d

    iput-object v13, v14, Ljava/util/HashMap$TreeNode;->left:Ljava/util/HashMap$TreeNode;

    :goto_3
    iput-object v13, v14, Ljava/util/HashMap$TreeNode;->next:Ljava/util/HashMap$Node;

    iput-object v14, v13, Ljava/util/HashMap$TreeNode;->prev:Ljava/util/HashMap$TreeNode;

    iput-object v14, v13, Ljava/util/HashMap$TreeNode;->parent:Ljava/util/HashMap$TreeNode;

    if-eqz v15, :cond_2

    check-cast v15, Ljava/util/HashMap$TreeNode;

    iput-object v13, v15, Ljava/util/HashMap$TreeNode;->prev:Ljava/util/HashMap$TreeNode;

    :cond_2
    invoke-static {v11, v13}, Ljava/util/HashMap$TreeNode;->balanceInsertion(Ljava/util/HashMap$TreeNode;Ljava/util/HashMap$TreeNode;)Ljava/util/HashMap$TreeNode;

    move-result-object v16

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Ljava/util/HashMap$TreeNode;->moveRootToFront([Ljava/util/HashMap$Node;Ljava/util/HashMap$TreeNode;)V

    const/16 v16, 0x0

    return-object v16

    :cond_3
    move-object/from16 v11, p0

    goto :goto_0

    :cond_4
    move/from16 v0, p3

    if-ge v8, v0, :cond_5

    const/4 v5, 0x1

    goto :goto_1

    :cond_5
    iget-object v9, v7, Ljava/util/HashMap$TreeNode;->key:Ljava/lang/Object;

    move-object/from16 v0, p4

    if-eq v9, v0, :cond_6

    if-eqz p4, :cond_7

    move-object/from16 v0, p4

    invoke-virtual {v0, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_7

    :cond_6
    return-object v7

    :cond_7
    if-nez v6, :cond_9

    invoke-static/range {p4 .. p4}, Ljava/util/HashMap;->comparableClassFor(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v6

    if-nez v6, :cond_9

    :goto_4
    if-nez v12, :cond_b

    const/4 v12, 0x1

    iget-object v4, v7, Ljava/util/HashMap$TreeNode;->left:Ljava/util/HashMap$TreeNode;

    if-eqz v4, :cond_a

    move/from16 v0, p3

    move-object/from16 v1, p4

    invoke-virtual {v4, v0, v1, v6}, Ljava/util/HashMap$TreeNode;->find(ILjava/lang/Object;Ljava/lang/Class;)Ljava/util/HashMap$TreeNode;

    move-result-object v10

    if-eqz v10, :cond_a

    :cond_8
    return-object v10

    :cond_9
    move-object/from16 v0, p4

    invoke-static {v6, v0, v9}, Ljava/util/HashMap;->compareComparables(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    if-nez v5, :cond_1

    goto :goto_4

    :cond_a
    iget-object v4, v7, Ljava/util/HashMap$TreeNode;->right:Ljava/util/HashMap$TreeNode;

    if-eqz v4, :cond_b

    move/from16 v0, p3

    move-object/from16 v1, p4

    invoke-virtual {v4, v0, v1, v6}, Ljava/util/HashMap$TreeNode;->find(ILjava/lang/Object;Ljava/lang/Class;)Ljava/util/HashMap$TreeNode;

    move-result-object v10

    if-nez v10, :cond_8

    :cond_b
    move-object/from16 v0, p4

    invoke-static {v0, v9}, Ljava/util/HashMap$TreeNode;->tieBreakOrder(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    goto/16 :goto_1

    :cond_c
    iget-object v7, v7, Ljava/util/HashMap$TreeNode;->right:Ljava/util/HashMap$TreeNode;

    goto/16 :goto_2

    :cond_d
    iput-object v13, v14, Ljava/util/HashMap$TreeNode;->right:Ljava/util/HashMap$TreeNode;

    goto :goto_3
.end method

.method final removeTreeNode(Ljava/util/HashMap;[Ljava/util/HashMap$Node;Z)V
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<TK;TV;>;[",
            "Ljava/util/HashMap$Node",
            "<TK;TV;>;Z)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    move-object/from16 v0, p2

    array-length v5, v0

    if-nez v5, :cond_1

    :cond_0
    return-void

    :cond_1
    add-int/lit8 v20, v5, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/HashMap$TreeNode;->hash:I

    move/from16 v21, v0

    and-int v4, v20, v21

    aget-object v3, p2, v4

    check-cast v3, Ljava/util/HashMap$TreeNode;

    move-object v14, v3

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/HashMap$TreeNode;->next:Ljava/util/HashMap$Node;

    move-object/from16 v19, v0

    check-cast v19, Ljava/util/HashMap$TreeNode;

    move-object/from16 v0, p0

    iget-object v10, v0, Ljava/util/HashMap$TreeNode;->prev:Ljava/util/HashMap$TreeNode;

    if-nez v10, :cond_3

    move-object/from16 v3, v19

    aput-object v19, p2, v4

    :goto_0
    if-eqz v19, :cond_2

    move-object/from16 v0, v19

    iput-object v10, v0, Ljava/util/HashMap$TreeNode;->prev:Ljava/util/HashMap$TreeNode;

    :cond_2
    if-nez v3, :cond_4

    return-void

    :cond_3
    move-object/from16 v0, v19

    iput-object v0, v10, Ljava/util/HashMap$TreeNode;->next:Ljava/util/HashMap$Node;

    goto :goto_0

    :cond_4
    iget-object v0, v14, Ljava/util/HashMap$TreeNode;->parent:Ljava/util/HashMap$TreeNode;

    move-object/from16 v20, v0

    if-eqz v20, :cond_5

    invoke-virtual {v14}, Ljava/util/HashMap$TreeNode;->root()Ljava/util/HashMap$TreeNode;

    move-result-object v14

    :cond_5
    if-eqz v14, :cond_6

    iget-object v0, v14, Ljava/util/HashMap$TreeNode;->right:Ljava/util/HashMap$TreeNode;

    move-object/from16 v20, v0

    if-nez v20, :cond_7

    :cond_6
    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/util/HashMap$TreeNode;->untreeify(Ljava/util/HashMap;)Ljava/util/HashMap$Node;

    move-result-object v20

    aput-object v20, p2, v4

    return-void

    :cond_7
    iget-object v13, v14, Ljava/util/HashMap$TreeNode;->left:Ljava/util/HashMap$TreeNode;

    if-eqz v13, :cond_6

    iget-object v0, v13, Ljava/util/HashMap$TreeNode;->left:Ljava/util/HashMap$TreeNode;

    move-object/from16 v20, v0

    if-eqz v20, :cond_6

    move-object/from16 v6, p0

    move-object/from16 v0, p0

    iget-object v7, v0, Ljava/util/HashMap$TreeNode;->left:Ljava/util/HashMap$TreeNode;

    move-object/from16 v0, p0

    iget-object v9, v0, Ljava/util/HashMap$TreeNode;->right:Ljava/util/HashMap$TreeNode;

    if-eqz v7, :cond_15

    if-eqz v9, :cond_15

    move-object v15, v9

    :goto_1
    iget-object v0, v15, Ljava/util/HashMap$TreeNode;->left:Ljava/util/HashMap$TreeNode;

    move-object/from16 v16, v0

    if-eqz v16, :cond_8

    move-object/from16 v15, v16

    goto :goto_1

    :cond_8
    iget-boolean v2, v15, Ljava/util/HashMap$TreeNode;->red:Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Ljava/util/HashMap$TreeNode;->red:Z

    move/from16 v20, v0

    move/from16 v0, v20

    iput-boolean v0, v15, Ljava/util/HashMap$TreeNode;->red:Z

    move-object/from16 v0, p0

    iput-boolean v2, v0, Ljava/util/HashMap$TreeNode;->red:Z

    iget-object v0, v15, Ljava/util/HashMap$TreeNode;->right:Ljava/util/HashMap$TreeNode;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v8, v0, Ljava/util/HashMap$TreeNode;->parent:Ljava/util/HashMap$TreeNode;

    if-ne v15, v9, :cond_f

    move-object/from16 v0, p0

    iput-object v15, v0, Ljava/util/HashMap$TreeNode;->parent:Ljava/util/HashMap$TreeNode;

    move-object/from16 v0, p0

    iput-object v0, v15, Ljava/util/HashMap$TreeNode;->right:Ljava/util/HashMap$TreeNode;

    :cond_9
    :goto_2
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/util/HashMap$TreeNode;->left:Ljava/util/HashMap$TreeNode;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/util/HashMap$TreeNode;->right:Ljava/util/HashMap$TreeNode;

    if-eqz v18, :cond_a

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    iput-object v0, v1, Ljava/util/HashMap$TreeNode;->parent:Ljava/util/HashMap$TreeNode;

    :cond_a
    iput-object v7, v15, Ljava/util/HashMap$TreeNode;->left:Ljava/util/HashMap$TreeNode;

    if-eqz v7, :cond_b

    iput-object v15, v7, Ljava/util/HashMap$TreeNode;->parent:Ljava/util/HashMap$TreeNode;

    :cond_b
    iput-object v8, v15, Ljava/util/HashMap$TreeNode;->parent:Ljava/util/HashMap$TreeNode;

    if-nez v8, :cond_12

    move-object v14, v15

    :goto_3
    if-eqz v18, :cond_14

    move-object/from16 v12, v18

    :goto_4
    move-object/from16 v0, p0

    if-eq v12, v0, :cond_c

    move-object/from16 v0, p0

    iget-object v8, v0, Ljava/util/HashMap$TreeNode;->parent:Ljava/util/HashMap$TreeNode;

    iput-object v8, v12, Ljava/util/HashMap$TreeNode;->parent:Ljava/util/HashMap$TreeNode;

    if-nez v8, :cond_18

    move-object v14, v12

    :goto_5
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/util/HashMap$TreeNode;->parent:Ljava/util/HashMap$TreeNode;

    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/util/HashMap$TreeNode;->right:Ljava/util/HashMap$TreeNode;

    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/util/HashMap$TreeNode;->left:Ljava/util/HashMap$TreeNode;

    :cond_c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Ljava/util/HashMap$TreeNode;->red:Z

    move/from16 v20, v0

    if-eqz v20, :cond_1a

    move-object v11, v14

    :goto_6
    move-object/from16 v0, p0

    if-ne v12, v0, :cond_d

    move-object/from16 v0, p0

    iget-object v8, v0, Ljava/util/HashMap$TreeNode;->parent:Ljava/util/HashMap$TreeNode;

    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/util/HashMap$TreeNode;->parent:Ljava/util/HashMap$TreeNode;

    if-eqz v8, :cond_d

    iget-object v0, v8, Ljava/util/HashMap$TreeNode;->left:Ljava/util/HashMap$TreeNode;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_1b

    const/16 v20, 0x0

    move-object/from16 v0, v20

    iput-object v0, v8, Ljava/util/HashMap$TreeNode;->left:Ljava/util/HashMap$TreeNode;

    :cond_d
    :goto_7
    if-eqz p3, :cond_e

    move-object/from16 v0, p2

    invoke-static {v0, v11}, Ljava/util/HashMap$TreeNode;->moveRootToFront([Ljava/util/HashMap$Node;Ljava/util/HashMap$TreeNode;)V

    :cond_e
    return-void

    :cond_f
    iget-object v0, v15, Ljava/util/HashMap$TreeNode;->parent:Ljava/util/HashMap$TreeNode;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/util/HashMap$TreeNode;->parent:Ljava/util/HashMap$TreeNode;

    if-eqz v17, :cond_10

    move-object/from16 v0, v17

    iget-object v0, v0, Ljava/util/HashMap$TreeNode;->left:Ljava/util/HashMap$TreeNode;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    if-ne v15, v0, :cond_11

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    iput-object v0, v1, Ljava/util/HashMap$TreeNode;->left:Ljava/util/HashMap$TreeNode;

    :cond_10
    :goto_8
    iput-object v9, v15, Ljava/util/HashMap$TreeNode;->right:Ljava/util/HashMap$TreeNode;

    if-eqz v9, :cond_9

    iput-object v15, v9, Ljava/util/HashMap$TreeNode;->parent:Ljava/util/HashMap$TreeNode;

    goto/16 :goto_2

    :cond_11
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    iput-object v0, v1, Ljava/util/HashMap$TreeNode;->right:Ljava/util/HashMap$TreeNode;

    goto :goto_8

    :cond_12
    iget-object v0, v8, Ljava/util/HashMap$TreeNode;->left:Ljava/util/HashMap$TreeNode;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_13

    iput-object v15, v8, Ljava/util/HashMap$TreeNode;->left:Ljava/util/HashMap$TreeNode;

    goto/16 :goto_3

    :cond_13
    iput-object v15, v8, Ljava/util/HashMap$TreeNode;->right:Ljava/util/HashMap$TreeNode;

    goto/16 :goto_3

    :cond_14
    move-object/from16 v12, p0

    goto/16 :goto_4

    :cond_15
    if-eqz v7, :cond_16

    move-object v12, v7

    goto/16 :goto_4

    :cond_16
    if-eqz v9, :cond_17

    move-object v12, v9

    goto/16 :goto_4

    :cond_17
    move-object/from16 v12, p0

    goto/16 :goto_4

    :cond_18
    iget-object v0, v8, Ljava/util/HashMap$TreeNode;->left:Ljava/util/HashMap$TreeNode;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_19

    iput-object v12, v8, Ljava/util/HashMap$TreeNode;->left:Ljava/util/HashMap$TreeNode;

    goto/16 :goto_5

    :cond_19
    iput-object v12, v8, Ljava/util/HashMap$TreeNode;->right:Ljava/util/HashMap$TreeNode;

    goto/16 :goto_5

    :cond_1a
    invoke-static {v14, v12}, Ljava/util/HashMap$TreeNode;->balanceDeletion(Ljava/util/HashMap$TreeNode;Ljava/util/HashMap$TreeNode;)Ljava/util/HashMap$TreeNode;

    move-result-object v11

    goto/16 :goto_6

    :cond_1b
    iget-object v0, v8, Ljava/util/HashMap$TreeNode;->right:Ljava/util/HashMap$TreeNode;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_d

    const/16 v20, 0x0

    move-object/from16 v0, v20

    iput-object v0, v8, Ljava/util/HashMap$TreeNode;->right:Ljava/util/HashMap$TreeNode;

    goto :goto_7
.end method

.method final root()Ljava/util/HashMap$TreeNode;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap$TreeNode",
            "<TK;TV;>;"
        }
    .end annotation

    move-object v1, p0

    :goto_0
    iget-object v0, v1, Ljava/util/HashMap$TreeNode;->parent:Ljava/util/HashMap$TreeNode;

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    move-object v1, v0

    goto :goto_0
.end method

.method final split(Ljava/util/HashMap;[Ljava/util/HashMap$Node;II)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<TK;TV;>;[",
            "Ljava/util/HashMap$Node",
            "<TK;TV;>;II)V"
        }
    .end annotation

    move-object v0, p0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    move-object v1, p0

    :goto_0
    if-eqz v1, :cond_3

    iget-object v8, v1, Ljava/util/HashMap$TreeNode;->next:Ljava/util/HashMap$Node;

    check-cast v8, Ljava/util/HashMap$TreeNode;

    const/4 v9, 0x0

    iput-object v9, v1, Ljava/util/HashMap$TreeNode;->next:Ljava/util/HashMap$Node;

    iget v9, v1, Ljava/util/HashMap$TreeNode;->hash:I

    and-int/2addr v9, p4

    if-nez v9, :cond_1

    iput-object v7, v1, Ljava/util/HashMap$TreeNode;->prev:Ljava/util/HashMap$TreeNode;

    if-nez v7, :cond_0

    move-object v6, v1

    :goto_1
    move-object v7, v1

    add-int/lit8 v5, v5, 0x1

    :goto_2
    move-object v1, v8

    goto :goto_0

    :cond_0
    iput-object v1, v7, Ljava/util/HashMap$TreeNode;->next:Ljava/util/HashMap$Node;

    goto :goto_1

    :cond_1
    iput-object v4, v1, Ljava/util/HashMap$TreeNode;->prev:Ljava/util/HashMap$TreeNode;

    if-nez v4, :cond_2

    move-object v3, v1

    :goto_3
    move-object v4, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    iput-object v1, v4, Ljava/util/HashMap$TreeNode;->next:Ljava/util/HashMap$Node;

    goto :goto_3

    :cond_3
    if-eqz v6, :cond_4

    const/4 v9, 0x6

    if-gt v5, v9, :cond_6

    invoke-virtual {v6, p1}, Ljava/util/HashMap$TreeNode;->untreeify(Ljava/util/HashMap;)Ljava/util/HashMap$Node;

    move-result-object v9

    aput-object v9, p2, p3

    :cond_4
    :goto_4
    if-eqz v3, :cond_5

    const/4 v9, 0x6

    if-gt v2, v9, :cond_7

    add-int v9, p3, p4

    invoke-virtual {v3, p1}, Ljava/util/HashMap$TreeNode;->untreeify(Ljava/util/HashMap;)Ljava/util/HashMap$Node;

    move-result-object v10

    aput-object v10, p2, v9

    :cond_5
    :goto_5
    return-void

    :cond_6
    aput-object v6, p2, p3

    if-eqz v3, :cond_4

    invoke-virtual {v6, p2}, Ljava/util/HashMap$TreeNode;->treeify([Ljava/util/HashMap$Node;)V

    goto :goto_4

    :cond_7
    add-int v9, p3, p4

    aput-object v3, p2, v9

    if-eqz v6, :cond_5

    invoke-virtual {v3, p2}, Ljava/util/HashMap$TreeNode;->treeify([Ljava/util/HashMap$Node;)V

    goto :goto_5
.end method

.method final treeify([Ljava/util/HashMap$Node;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/HashMap$Node",
            "<TK;TV;>;)V"
        }
    .end annotation

    const/4 v12, 0x0

    const/4 v11, 0x0

    const/4 v8, 0x0

    move-object v9, p0

    :goto_0
    if-eqz v9, :cond_8

    iget-object v4, v9, Ljava/util/HashMap$TreeNode;->next:Ljava/util/HashMap$Node;

    check-cast v4, Ljava/util/HashMap$TreeNode;

    iput-object v11, v9, Ljava/util/HashMap$TreeNode;->right:Ljava/util/HashMap$TreeNode;

    iput-object v11, v9, Ljava/util/HashMap$TreeNode;->left:Ljava/util/HashMap$TreeNode;

    if-nez v8, :cond_0

    iput-object v11, v9, Ljava/util/HashMap$TreeNode;->parent:Ljava/util/HashMap$TreeNode;

    iput-boolean v12, v9, Ljava/util/HashMap$TreeNode;->red:Z

    move-object v8, v9

    :goto_1
    move-object v9, v4

    goto :goto_0

    :cond_0
    iget-object v2, v9, Ljava/util/HashMap$TreeNode;->key:Ljava/lang/Object;

    iget v1, v9, Ljava/util/HashMap$TreeNode;->hash:I

    const/4 v3, 0x0

    move-object v5, v8

    :cond_1
    iget-object v7, v5, Ljava/util/HashMap$TreeNode;->key:Ljava/lang/Object;

    iget v6, v5, Ljava/util/HashMap$TreeNode;->hash:I

    if-le v6, v1, :cond_3

    const/4 v0, -0x1

    :cond_2
    :goto_2
    move-object v10, v5

    if-gtz v0, :cond_6

    iget-object v5, v5, Ljava/util/HashMap$TreeNode;->left:Ljava/util/HashMap$TreeNode;

    :goto_3
    if-nez v5, :cond_1

    iput-object v10, v9, Ljava/util/HashMap$TreeNode;->parent:Ljava/util/HashMap$TreeNode;

    if-gtz v0, :cond_7

    iput-object v9, v10, Ljava/util/HashMap$TreeNode;->left:Ljava/util/HashMap$TreeNode;

    :goto_4
    invoke-static {v8, v9}, Ljava/util/HashMap$TreeNode;->balanceInsertion(Ljava/util/HashMap$TreeNode;Ljava/util/HashMap$TreeNode;)Ljava/util/HashMap$TreeNode;

    move-result-object v8

    goto :goto_1

    :cond_3
    if-ge v6, v1, :cond_4

    const/4 v0, 0x1

    goto :goto_2

    :cond_4
    if-nez v3, :cond_5

    invoke-static {v2}, Ljava/util/HashMap;->comparableClassFor(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v3

    if-nez v3, :cond_5

    :goto_5
    invoke-static {v2, v7}, Ljava/util/HashMap$TreeNode;->tieBreakOrder(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    goto :goto_2

    :cond_5
    invoke-static {v3, v2, v7}, Ljava/util/HashMap;->compareComparables(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_5

    :cond_6
    iget-object v5, v5, Ljava/util/HashMap$TreeNode;->right:Ljava/util/HashMap$TreeNode;

    goto :goto_3

    :cond_7
    iput-object v9, v10, Ljava/util/HashMap$TreeNode;->right:Ljava/util/HashMap$TreeNode;

    goto :goto_4

    :cond_8
    invoke-static {p1, v8}, Ljava/util/HashMap$TreeNode;->moveRootToFront([Ljava/util/HashMap$Node;Ljava/util/HashMap$TreeNode;)V

    return-void
.end method

.method final untreeify(Ljava/util/HashMap;)Ljava/util/HashMap$Node;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<TK;TV;>;)",
            "Ljava/util/HashMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v0, 0x0

    const/4 v3, 0x0

    move-object v2, p0

    :goto_0
    if-eqz v2, :cond_1

    invoke-virtual {p1, v2, v4}, Ljava/util/HashMap;->replacementNode(Ljava/util/HashMap$Node;Ljava/util/HashMap$Node;)Ljava/util/HashMap$Node;

    move-result-object v1

    if-nez v3, :cond_0

    move-object v0, v1

    :goto_1
    move-object v3, v1

    iget-object v2, v2, Ljava/util/HashMap$Node;->next:Ljava/util/HashMap$Node;

    goto :goto_0

    :cond_0
    iput-object v1, v3, Ljava/util/HashMap$Node;->next:Ljava/util/HashMap$Node;

    goto :goto_1

    :cond_1
    return-object v0
.end method
