.class Ljava/util/concurrent/ConcurrentHashMap$Traverser;
.super Ljava/lang/Object;
.source "ConcurrentHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ConcurrentHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Traverser"
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


# instance fields
.field baseIndex:I

.field baseLimit:I

.field final baseSize:I

.field index:I

.field next:Ljava/util/concurrent/ConcurrentHashMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap$Node",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field spare:Ljava/util/concurrent/ConcurrentHashMap$TableStack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap$TableStack",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field stack:Ljava/util/concurrent/ConcurrentHashMap$TableStack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap$TableStack",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field tab:[Ljava/util/concurrent/ConcurrentHashMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/concurrent/ConcurrentHashMap$Node",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>([Ljava/util/concurrent/ConcurrentHashMap$Node;III)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/concurrent/ConcurrentHashMap$Node",
            "<TK;TV;>;III)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->tab:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    iput p2, p0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->baseSize:I

    iput p3, p0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->index:I

    iput p3, p0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->baseIndex:I

    iput p4, p0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->baseLimit:I

    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    return-void
.end method

.method private pushState([Ljava/util/concurrent/ConcurrentHashMap$Node;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/concurrent/ConcurrentHashMap$Node",
            "<TK;TV;>;II)V"
        }
    .end annotation

    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->spare:Ljava/util/concurrent/ConcurrentHashMap$TableStack;

    if-eqz v0, :cond_0

    iget-object v1, v0, Ljava/util/concurrent/ConcurrentHashMap$TableStack;->next:Ljava/util/concurrent/ConcurrentHashMap$TableStack;

    iput-object v1, p0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->spare:Ljava/util/concurrent/ConcurrentHashMap$TableStack;

    :goto_0
    iput-object p1, v0, Ljava/util/concurrent/ConcurrentHashMap$TableStack;->tab:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    iput p3, v0, Ljava/util/concurrent/ConcurrentHashMap$TableStack;->length:I

    iput p2, v0, Ljava/util/concurrent/ConcurrentHashMap$TableStack;->index:I

    iget-object v1, p0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->stack:Ljava/util/concurrent/ConcurrentHashMap$TableStack;

    iput-object v1, v0, Ljava/util/concurrent/ConcurrentHashMap$TableStack;->next:Ljava/util/concurrent/ConcurrentHashMap$TableStack;

    iput-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->stack:Ljava/util/concurrent/ConcurrentHashMap$TableStack;

    return-void

    :cond_0
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$TableStack;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap$TableStack;-><init>()V

    goto :goto_0
.end method

.method private recoverState(I)V
    .locals 5

    const/4 v4, 0x0

    :goto_0
    iget-object v2, p0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->stack:Ljava/util/concurrent/ConcurrentHashMap$TableStack;

    if-eqz v2, :cond_0

    iget v3, p0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->index:I

    iget v0, v2, Ljava/util/concurrent/ConcurrentHashMap$TableStack;->length:I

    add-int/2addr v3, v0

    iput v3, p0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->index:I

    if-lt v3, p1, :cond_0

    move p1, v0

    iget v3, v2, Ljava/util/concurrent/ConcurrentHashMap$TableStack;->index:I

    iput v3, p0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->index:I

    iget-object v3, v2, Ljava/util/concurrent/ConcurrentHashMap$TableStack;->tab:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    iput-object v3, p0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->tab:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    iput-object v4, v2, Ljava/util/concurrent/ConcurrentHashMap$TableStack;->tab:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    iget-object v1, v2, Ljava/util/concurrent/ConcurrentHashMap$TableStack;->next:Ljava/util/concurrent/ConcurrentHashMap$TableStack;

    iget-object v3, p0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->spare:Ljava/util/concurrent/ConcurrentHashMap$TableStack;

    iput-object v3, v2, Ljava/util/concurrent/ConcurrentHashMap$TableStack;->next:Ljava/util/concurrent/ConcurrentHashMap$TableStack;

    iput-object v1, p0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->stack:Ljava/util/concurrent/ConcurrentHashMap$TableStack;

    iput-object v2, p0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->spare:Ljava/util/concurrent/ConcurrentHashMap$TableStack;

    goto :goto_0

    :cond_0
    if-nez v2, :cond_1

    iget v3, p0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->index:I

    iget v4, p0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->baseSize:I

    add-int/2addr v3, v4

    iput v3, p0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->index:I

    if-lt v3, p1, :cond_1

    iget v3, p0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->baseIndex:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->baseIndex:I

    iput v3, p0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->index:I

    :cond_1
    return-void
.end method


# virtual methods
.method final advance()Ljava/util/concurrent/ConcurrentHashMap$Node;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    const/4 v6, 0x0

    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    if-eqz v0, :cond_0

    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    iput-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    return-object v0

    :cond_1
    iget v4, p0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->baseIndex:I

    iget v5, p0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->baseLimit:I

    if-ge v4, v5, :cond_2

    iget-object v3, p0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->tab:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    if-nez v3, :cond_3

    :cond_2
    iput-object v6, p0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    return-object v6

    :cond_3
    array-length v2, v3

    iget v1, p0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->index:I

    if-le v2, v1, :cond_2

    if-ltz v1, :cond_2

    invoke-static {v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->tabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;I)Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v0

    if-eqz v0, :cond_5

    iget v4, v0, Ljava/util/concurrent/ConcurrentHashMap$Node;->hash:I

    if-gez v4, :cond_5

    instance-of v4, v0, Ljava/util/concurrent/ConcurrentHashMap$ForwardingNode;

    if-eqz v4, :cond_4

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap$ForwardingNode;

    iget-object v4, v0, Ljava/util/concurrent/ConcurrentHashMap$ForwardingNode;->nextTable:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    iput-object v4, p0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->tab:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    const/4 v0, 0x0

    invoke-direct {p0, v3, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->pushState([Ljava/util/concurrent/ConcurrentHashMap$Node;II)V

    goto :goto_0

    :cond_4
    instance-of v4, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;

    if-eqz v4, :cond_6

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;

    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->first:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    :cond_5
    :goto_1
    iget-object v4, p0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->stack:Ljava/util/concurrent/ConcurrentHashMap$TableStack;

    if-eqz v4, :cond_7

    invoke-direct {p0, v2}, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->recoverState(I)V

    goto :goto_0

    :cond_6
    const/4 v0, 0x0

    goto :goto_1

    :cond_7
    iget v4, p0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->baseSize:I

    add-int/2addr v4, v1

    iput v4, p0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->index:I

    if-lt v4, v2, :cond_0

    iget v4, p0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->baseIndex:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->baseIndex:I

    iput v4, p0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->index:I

    goto :goto_0
.end method
