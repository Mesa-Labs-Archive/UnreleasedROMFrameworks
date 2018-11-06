.class Ljava/nio/file/FileTreeIterator;
.super Ljava/lang/Object;
.source "FileTreeIterator.java"

# interfaces
.implements Ljava/util/Iterator;
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Ljava/nio/file/FileTreeWalker$Event;",
        ">;",
        "Ljava/io/Closeable;"
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z


# instance fields
.field private next:Ljava/nio/file/FileTreeWalker$Event;

.field private final walker:Ljava/nio/file/FileTreeWalker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Ljava/nio/file/FileTreeIterator;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Ljava/nio/file/FileTreeIterator;->-assertionsDisabled:Z

    return-void
.end method

.method varargs constructor <init>(Ljava/nio/file/Path;I[Ljava/nio/file/FileVisitOption;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/nio/file/FileTreeWalker;

    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2, p2}, Ljava/nio/file/FileTreeWalker;-><init>(Ljava/util/Collection;I)V

    iput-object v1, p0, Ljava/nio/file/FileTreeIterator;->walker:Ljava/nio/file/FileTreeWalker;

    iget-object v1, p0, Ljava/nio/file/FileTreeIterator;->walker:Ljava/nio/file/FileTreeWalker;

    invoke-virtual {v1, p1}, Ljava/nio/file/FileTreeWalker;->walk(Ljava/nio/file/Path;)Ljava/nio/file/FileTreeWalker$Event;

    move-result-object v1

    iput-object v1, p0, Ljava/nio/file/FileTreeIterator;->next:Ljava/nio/file/FileTreeWalker$Event;

    sget-boolean v1, Ljava/nio/file/FileTreeIterator;->-assertionsDisabled:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Ljava/nio/file/FileTreeIterator;->next:Ljava/nio/file/FileTreeWalker$Event;

    invoke-virtual {v1}, Ljava/nio/file/FileTreeWalker$Event;->type()Ljava/nio/file/FileTreeWalker$EventType;

    move-result-object v1

    sget-object v2, Ljava/nio/file/FileTreeWalker$EventType;->ENTRY:Ljava/nio/file/FileTreeWalker$EventType;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Ljava/nio/file/FileTreeIterator;->next:Ljava/nio/file/FileTreeWalker$Event;

    invoke-virtual {v1}, Ljava/nio/file/FileTreeWalker$Event;->type()Ljava/nio/file/FileTreeWalker$EventType;

    move-result-object v1

    sget-object v2, Ljava/nio/file/FileTreeWalker$EventType;->START_DIRECTORY:Ljava/nio/file/FileTreeWalker$EventType;

    if-eq v1, v2, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_0
    iget-object v1, p0, Ljava/nio/file/FileTreeIterator;->next:Ljava/nio/file/FileTreeWalker$Event;

    invoke-virtual {v1}, Ljava/nio/file/FileTreeWalker$Event;->ioeException()Ljava/io/IOException;

    move-result-object v0

    if-eqz v0, :cond_1

    throw v0

    :cond_1
    return-void
.end method

.method private fetchNextIfNeeded()V
    .locals 4

    iget-object v2, p0, Ljava/nio/file/FileTreeIterator;->next:Ljava/nio/file/FileTreeWalker$Event;

    if-nez v2, :cond_2

    iget-object v2, p0, Ljava/nio/file/FileTreeIterator;->walker:Ljava/nio/file/FileTreeWalker;

    invoke-virtual {v2}, Ljava/nio/file/FileTreeWalker;->next()Ljava/nio/file/FileTreeWalker$Event;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/nio/file/FileTreeWalker$Event;->ioeException()Ljava/io/IOException;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Ljava/io/UncheckedIOException;

    invoke-direct {v2, v1}, Ljava/io/UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw v2

    :cond_0
    invoke-virtual {v0}, Ljava/nio/file/FileTreeWalker$Event;->type()Ljava/nio/file/FileTreeWalker$EventType;

    move-result-object v2

    sget-object v3, Ljava/nio/file/FileTreeWalker$EventType;->END_DIRECTORY:Ljava/nio/file/FileTreeWalker$EventType;

    if-eq v2, v3, :cond_1

    iput-object v0, p0, Ljava/nio/file/FileTreeIterator;->next:Ljava/nio/file/FileTreeWalker$Event;

    return-void

    :cond_1
    iget-object v2, p0, Ljava/nio/file/FileTreeIterator;->walker:Ljava/nio/file/FileTreeWalker;

    invoke-virtual {v2}, Ljava/nio/file/FileTreeWalker;->next()Ljava/nio/file/FileTreeWalker$Event;

    move-result-object v0

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Ljava/nio/file/FileTreeIterator;->walker:Ljava/nio/file/FileTreeWalker;

    invoke-virtual {v0}, Ljava/nio/file/FileTreeWalker;->close()V

    return-void
.end method

.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Ljava/nio/file/FileTreeIterator;->walker:Ljava/nio/file/FileTreeWalker;

    invoke-virtual {v0}, Ljava/nio/file/FileTreeWalker;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_0
    invoke-direct {p0}, Ljava/nio/file/FileTreeIterator;->fetchNextIfNeeded()V

    iget-object v0, p0, Ljava/nio/file/FileTreeIterator;->next:Ljava/nio/file/FileTreeWalker$Event;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ljava/nio/file/FileTreeIterator;->next()Ljava/nio/file/FileTreeWalker$Event;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/nio/file/FileTreeWalker$Event;
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Ljava/nio/file/FileTreeIterator;->walker:Ljava/nio/file/FileTreeWalker;

    invoke-virtual {v1}, Ljava/nio/file/FileTreeWalker;->isOpen()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    :cond_0
    invoke-direct {p0}, Ljava/nio/file/FileTreeIterator;->fetchNextIfNeeded()V

    iget-object v1, p0, Ljava/nio/file/FileTreeIterator;->next:Ljava/nio/file/FileTreeWalker$Event;

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    :cond_1
    iget-object v0, p0, Ljava/nio/file/FileTreeIterator;->next:Ljava/nio/file/FileTreeWalker$Event;

    iput-object v2, p0, Ljava/nio/file/FileTreeIterator;->next:Ljava/nio/file/FileTreeWalker$Event;

    return-object v0
.end method
