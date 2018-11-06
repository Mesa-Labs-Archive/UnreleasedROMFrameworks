.class final Ljava/util/concurrent/ConcurrentHashMap$ForwardingNode;
.super Ljava/util/concurrent/ConcurrentHashMap$Node;
.source "ConcurrentHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ConcurrentHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ForwardingNode"
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
.field final nextTable:[Ljava/util/concurrent/ConcurrentHashMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/concurrent/ConcurrentHashMap$Node",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>([Ljava/util/concurrent/ConcurrentHashMap$Node;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/concurrent/ConcurrentHashMap$Node",
            "<TK;TV;>;)V"
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v0, -0x1

    invoke-direct {p0, v0, v1, v1, v1}, Ljava/util/concurrent/ConcurrentHashMap$Node;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/concurrent/ConcurrentHashMap$Node;)V

    iput-object p1, p0, Ljava/util/concurrent/ConcurrentHashMap$ForwardingNode;->nextTable:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    return-void
.end method


# virtual methods
.method find(ILjava/lang/Object;)Ljava/util/concurrent/ConcurrentHashMap$Node;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/concurrent/ConcurrentHashMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    const/4 v6, 0x0

    iget-object v4, p0, Ljava/util/concurrent/ConcurrentHashMap$ForwardingNode;->nextTable:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    :goto_0
    if-eqz p2, :cond_0

    if-nez v4, :cond_1

    :cond_0
    return-object v6

    :cond_1
    array-length v3, v4

    if-eqz v3, :cond_0

    add-int/lit8 v5, v3, -0x1

    and-int/2addr v5, p1

    invoke-static {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->tabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;I)Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v0

    if-eqz v0, :cond_0

    :cond_2
    iget v1, v0, Ljava/util/concurrent/ConcurrentHashMap$Node;->hash:I

    if-ne v1, p1, :cond_4

    iget-object v2, v0, Ljava/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    if-eq v2, p2, :cond_3

    if-eqz v2, :cond_4

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_3
    return-object v0

    :cond_4
    if-gez v1, :cond_6

    instance-of v5, v0, Ljava/util/concurrent/ConcurrentHashMap$ForwardingNode;

    if-eqz v5, :cond_5

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap$ForwardingNode;

    iget-object v4, v0, Ljava/util/concurrent/ConcurrentHashMap$ForwardingNode;->nextTable:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    goto :goto_0

    :cond_5
    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap$Node;->find(ILjava/lang/Object;)Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v5

    return-object v5

    :cond_6
    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    if-nez v0, :cond_2

    return-object v6
.end method
