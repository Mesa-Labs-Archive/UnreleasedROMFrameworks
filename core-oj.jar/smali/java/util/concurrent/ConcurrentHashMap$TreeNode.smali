.class final Ljava/util/concurrent/ConcurrentHashMap$TreeNode;
.super Ljava/util/concurrent/ConcurrentHashMap$Node;
.source "ConcurrentHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ConcurrentHashMap;
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
        "Ljava/util/concurrent/ConcurrentHashMap$Node",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap$TreeNode",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field parent:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap$TreeNode",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field prev:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap$TreeNode",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field red:Z

.field right:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap$TreeNode",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$TreeNode;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITK;TV;",
            "Ljava/util/concurrent/ConcurrentHashMap$Node",
            "<TK;TV;>;",
            "Ljava/util/concurrent/ConcurrentHashMap$TreeNode",
            "<TK;TV;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3, p4}, Ljava/util/concurrent/ConcurrentHashMap$Node;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/concurrent/ConcurrentHashMap$Node;)V

    iput-object p5, p0, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    return-void
.end method


# virtual methods
.method find(ILjava/lang/Object;)Ljava/util/concurrent/ConcurrentHashMap$Node;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/concurrent/ConcurrentHashMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->findTreeNode(ILjava/lang/Object;Ljava/lang/Class;)Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    move-result-object v0

    return-object v0
.end method

.method final findTreeNode(ILjava/lang/Object;Ljava/lang/Class;)Ljava/util/concurrent/ConcurrentHashMap$TreeNode;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/util/concurrent/ConcurrentHashMap$TreeNode",
            "<TK;TV;>;"
        }
    .end annotation

    const/4 v8, 0x0

    if-eqz p2, :cond_1

    move-object v1, p0

    :cond_0
    iget-object v4, v1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    iget-object v5, v1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    iget v2, v1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->hash:I

    if-le v2, p1, :cond_2

    move-object v1, v4

    :goto_0
    if-nez v1, :cond_0

    :cond_1
    return-object v8

    :cond_2
    if-ge v2, p1, :cond_3

    move-object v1, v5

    goto :goto_0

    :cond_3
    iget-object v3, v1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->key:Ljava/lang/Object;

    if-eq v3, p2, :cond_4

    if-eqz v3, :cond_5

    invoke-virtual {p2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    :cond_4
    return-object v1

    :cond_5
    if-nez v4, :cond_6

    move-object v1, v5

    goto :goto_0

    :cond_6
    if-nez v5, :cond_7

    move-object v1, v4

    goto :goto_0

    :cond_7
    if-nez p3, :cond_8

    invoke-static {p2}, Ljava/util/concurrent/ConcurrentHashMap;->comparableClassFor(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object p3

    if-eqz p3, :cond_a

    :cond_8
    invoke-static {p3, p2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->compareComparables(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-eqz v0, :cond_a

    if-gez v0, :cond_9

    move-object v1, v4

    goto :goto_0

    :cond_9
    move-object v1, v5

    goto :goto_0

    :cond_a
    invoke-virtual {v5, p1, p2, p3}, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->findTreeNode(ILjava/lang/Object;Ljava/lang/Class;)Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    move-result-object v6

    if-eqz v6, :cond_b

    return-object v6

    :cond_b
    move-object v1, v4

    goto :goto_0
.end method
