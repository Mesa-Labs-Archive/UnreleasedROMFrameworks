.class final Ljava/util/concurrent/ConcurrentHashMap$ValueIterator;
.super Ljava/util/concurrent/ConcurrentHashMap$BaseIterator;
.source "ConcurrentHashMap.java"

# interfaces
.implements Ljava/util/Iterator;
.implements Ljava/util/Enumeration;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ConcurrentHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ValueIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/ConcurrentHashMap$BaseIterator",
        "<TK;TV;>;",
        "Ljava/util/Iterator",
        "<TV;>;",
        "Ljava/util/Enumeration",
        "<TV;>;"
    }
.end annotation


# direct methods
.method constructor <init>([Ljava/util/concurrent/ConcurrentHashMap$Node;IIILjava/util/concurrent/ConcurrentHashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/concurrent/ConcurrentHashMap$Node",
            "<TK;TV;>;III",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<TK;TV;>;)V"
        }
    .end annotation

    invoke-direct/range {p0 .. p5}, Ljava/util/concurrent/ConcurrentHashMap$BaseIterator;-><init>([Ljava/util/concurrent/ConcurrentHashMap$Node;IIILjava/util/concurrent/ConcurrentHashMap;)V

    return-void
.end method


# virtual methods
.method public final next()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$ValueIterator;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    if-nez v0, :cond_0

    new-instance v2, Ljava/util/NoSuchElementException;

    invoke-direct {v2}, Ljava/util/NoSuchElementException;-><init>()V

    throw v2

    :cond_0
    iget-object v1, v0, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    iput-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$ValueIterator;->lastReturned:Ljava/util/concurrent/ConcurrentHashMap$Node;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$ValueIterator;->advance()Ljava/util/concurrent/ConcurrentHashMap$Node;

    return-object v1
.end method

.method public final nextElement()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$ValueIterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
