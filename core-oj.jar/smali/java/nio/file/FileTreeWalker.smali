.class Ljava/nio/file/FileTreeWalker;
.super Ljava/lang/Object;
.source "FileTreeWalker.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/nio/file/FileTreeWalker$DirectoryNode;,
        Ljava/nio/file/FileTreeWalker$Event;,
        Ljava/nio/file/FileTreeWalker$EventType;
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static final synthetic -java-nio-file-FileVisitOptionSwitchesValues:[I


# instance fields
.field private closed:Z

.field private final followLinks:Z

.field private final linkOptions:[Ljava/nio/file/LinkOption;

.field private final maxDepth:I

.field private final stack:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Ljava/nio/file/FileTreeWalker$DirectoryNode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private static synthetic -getjava-nio-file-FileVisitOptionSwitchesValues()[I
    .locals 3

    sget-object v0, Ljava/nio/file/FileTreeWalker;->-java-nio-file-FileVisitOptionSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Ljava/nio/file/FileTreeWalker;->-java-nio-file-FileVisitOptionSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Ljava/nio/file/FileVisitOption;->values()[Ljava/nio/file/FileVisitOption;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Ljava/nio/file/FileVisitOption;->FOLLOW_LINKS:Ljava/nio/file/FileVisitOption;

    invoke-virtual {v1}, Ljava/nio/file/FileVisitOption;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sput-object v0, Ljava/nio/file/FileTreeWalker;->-java-nio-file-FileVisitOptionSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static constructor <clinit>()V
    .locals 1

    const-class v0, Ljava/nio/file/FileTreeWalker;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Ljava/nio/file/FileTreeWalker;->-assertionsDisabled:Z

    return-void
.end method

.method constructor <init>(Ljava/util/Collection;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/nio/file/FileVisitOption;",
            ">;I)V"
        }
    .end annotation

    const/4 v5, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v3, Ljava/util/ArrayDeque;

    invoke-direct {v3}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v3, p0, Ljava/nio/file/FileTreeWalker;->stack:Ljava/util/ArrayDeque;

    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/file/FileVisitOption;

    invoke-static {}, Ljava/nio/file/FileTreeWalker;->-getjava-nio-file-FileVisitOptionSwitchesValues()[I

    move-result-object v3

    invoke-virtual {v1}, Ljava/nio/file/FileVisitOption;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    new-instance v3, Ljava/lang/AssertionError;

    const-string/jumbo v4, "Should not get here"

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    if-gez p2, :cond_1

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "\'maxDepth\' is negative"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    iput-boolean v0, p0, Ljava/nio/file/FileTreeWalker;->followLinks:Z

    if-eqz v0, :cond_2

    new-array v3, v5, [Ljava/nio/file/LinkOption;

    :goto_1
    iput-object v3, p0, Ljava/nio/file/FileTreeWalker;->linkOptions:[Ljava/nio/file/LinkOption;

    iput p2, p0, Ljava/nio/file/FileTreeWalker;->maxDepth:I

    return-void

    :cond_2
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/nio/file/LinkOption;

    sget-object v4, Ljava/nio/file/LinkOption;->NOFOLLOW_LINKS:Ljava/nio/file/LinkOption;

    aput-object v4, v3, v5

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private getAttributes(Ljava/nio/file/Path;Z)Ljava/nio/file/attribute/BasicFileAttributes;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p2, :cond_1

    instance-of v3, p1, Lsun/nio/fs/BasicFileAttributesHolder;

    if-eqz v3, :cond_1

    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v3

    if-nez v3, :cond_1

    move-object v3, p1

    check-cast v3, Lsun/nio/fs/BasicFileAttributesHolder;

    invoke-interface {v3}, Lsun/nio/fs/BasicFileAttributesHolder;->get()Ljava/nio/file/attribute/BasicFileAttributes;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-boolean v3, p0, Ljava/nio/file/FileTreeWalker;->followLinks:Z

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/nio/file/attribute/BasicFileAttributes;->isSymbolicLink()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_1

    :cond_0
    return-object v1

    :cond_1
    :try_start_0
    const-class v3, Ljava/nio/file/attribute/BasicFileAttributes;

    iget-object v4, p0, Ljava/nio/file/FileTreeWalker;->linkOptions:[Ljava/nio/file/LinkOption;

    invoke-static {p1, v3, v4}, Ljava/nio/file/Files;->readAttributes(Ljava/nio/file/Path;Ljava/lang/Class;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/BasicFileAttributes;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v2

    iget-boolean v3, p0, Ljava/nio/file/FileTreeWalker;->followLinks:Z

    if-nez v3, :cond_2

    throw v2

    :cond_2
    const-class v3, Ljava/nio/file/attribute/BasicFileAttributes;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/nio/file/LinkOption;

    sget-object v5, Ljava/nio/file/LinkOption;->NOFOLLOW_LINKS:Ljava/nio/file/LinkOption;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {p1, v3, v4}, Ljava/nio/file/Files;->readAttributes(Ljava/nio/file/Path;Ljava/lang/Class;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/BasicFileAttributes;

    move-result-object v0

    goto :goto_0
.end method

.method private visit(Ljava/nio/file/Path;ZZ)Ljava/nio/file/FileTreeWalker$Event;
    .locals 9

    const/4 v6, 0x0

    :try_start_0
    invoke-direct {p0, p1, p3}, Ljava/nio/file/FileTreeWalker;->getAttributes(Ljava/nio/file/Path;Z)Ljava/nio/file/attribute/BasicFileAttributes;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    iget-object v5, p0, Ljava/nio/file/FileTreeWalker;->stack:Ljava/util/ArrayDeque;

    invoke-virtual {v5}, Ljava/util/ArrayDeque;->size()I

    move-result v1

    iget v5, p0, Ljava/nio/file/FileTreeWalker;->maxDepth:I

    if-ge v1, v5, :cond_0

    invoke-interface {v0}, Ljava/nio/file/attribute/BasicFileAttributes;->isDirectory()Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_2

    :cond_0
    new-instance v5, Ljava/nio/file/FileTreeWalker$Event;

    sget-object v6, Ljava/nio/file/FileTreeWalker$EventType;->ENTRY:Ljava/nio/file/FileTreeWalker$EventType;

    invoke-direct {v5, v6, p1, v0}, Ljava/nio/file/FileTreeWalker$Event;-><init>(Ljava/nio/file/FileTreeWalker$EventType;Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)V

    return-object v5

    :catch_0
    move-exception v3

    if-eqz p2, :cond_1

    return-object v6

    :cond_1
    throw v3

    :catch_1
    move-exception v2

    new-instance v5, Ljava/nio/file/FileTreeWalker$Event;

    sget-object v6, Ljava/nio/file/FileTreeWalker$EventType;->ENTRY:Ljava/nio/file/FileTreeWalker$EventType;

    invoke-direct {v5, v6, p1, v2}, Ljava/nio/file/FileTreeWalker$Event;-><init>(Ljava/nio/file/FileTreeWalker$EventType;Ljava/nio/file/Path;Ljava/io/IOException;)V

    return-object v5

    :cond_2
    iget-boolean v5, p0, Ljava/nio/file/FileTreeWalker;->followLinks:Z

    if-eqz v5, :cond_3

    invoke-interface {v0}, Ljava/nio/file/attribute/BasicFileAttributes;->fileKey()Ljava/lang/Object;

    move-result-object v5

    invoke-direct {p0, p1, v5}, Ljava/nio/file/FileTreeWalker;->wouldLoop(Ljava/nio/file/Path;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    new-instance v5, Ljava/nio/file/FileTreeWalker$Event;

    sget-object v6, Ljava/nio/file/FileTreeWalker$EventType;->ENTRY:Ljava/nio/file/FileTreeWalker$EventType;

    new-instance v7, Ljava/nio/file/FileSystemLoopException;

    invoke-interface {p1}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/nio/file/FileSystemLoopException;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6, p1, v7}, Ljava/nio/file/FileTreeWalker$Event;-><init>(Ljava/nio/file/FileTreeWalker$EventType;Ljava/nio/file/Path;Ljava/io/IOException;)V

    return-object v5

    :cond_3
    const/4 v4, 0x0

    :try_start_1
    invoke-static {p1}, Ljava/nio/file/Files;->newDirectoryStream(Ljava/nio/file/Path;)Ljava/nio/file/DirectoryStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v4

    iget-object v5, p0, Ljava/nio/file/FileTreeWalker;->stack:Ljava/util/ArrayDeque;

    new-instance v6, Ljava/nio/file/FileTreeWalker$DirectoryNode;

    invoke-interface {v0}, Ljava/nio/file/attribute/BasicFileAttributes;->fileKey()Ljava/lang/Object;

    move-result-object v7

    invoke-direct {v6, p1, v7, v4}, Ljava/nio/file/FileTreeWalker$DirectoryNode;-><init>(Ljava/nio/file/Path;Ljava/lang/Object;Ljava/nio/file/DirectoryStream;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    new-instance v5, Ljava/nio/file/FileTreeWalker$Event;

    sget-object v6, Ljava/nio/file/FileTreeWalker$EventType;->START_DIRECTORY:Ljava/nio/file/FileTreeWalker$EventType;

    invoke-direct {v5, v6, p1, v0}, Ljava/nio/file/FileTreeWalker$Event;-><init>(Ljava/nio/file/FileTreeWalker$EventType;Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)V

    return-object v5

    :catch_2
    move-exception v3

    if-eqz p2, :cond_4

    return-object v6

    :cond_4
    throw v3

    :catch_3
    move-exception v2

    new-instance v5, Ljava/nio/file/FileTreeWalker$Event;

    sget-object v6, Ljava/nio/file/FileTreeWalker$EventType;->ENTRY:Ljava/nio/file/FileTreeWalker$EventType;

    invoke-direct {v5, v6, p1, v2}, Ljava/nio/file/FileTreeWalker$Event;-><init>(Ljava/nio/file/FileTreeWalker$EventType;Ljava/nio/file/Path;Ljava/io/IOException;)V

    return-object v5
.end method

.method private wouldLoop(Ljava/nio/file/Path;Ljava/lang/Object;)Z
    .locals 6

    const/4 v5, 0x1

    iget-object v4, p0, Ljava/nio/file/FileTreeWalker;->stack:Ljava/util/ArrayDeque;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/file/FileTreeWalker$DirectoryNode;

    invoke-virtual {v0}, Ljava/nio/file/FileTreeWalker$DirectoryNode;->key()Ljava/lang/Object;

    move-result-object v2

    if-eqz p2, :cond_1

    if-eqz v2, :cond_1

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return v5

    :cond_1
    :try_start_0
    invoke-virtual {v0}, Ljava/nio/file/FileTreeWalker$DirectoryNode;->directory()Ljava/nio/file/Path;

    move-result-object v4

    invoke-static {p1, v4}, Ljava/nio/file/Files;->isSameFile(Ljava/nio/file/Path;Ljava/nio/file/Path;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_0

    return v5

    :cond_2
    const/4 v4, 0x0

    return v4

    :catch_0
    move-exception v3

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-boolean v0, p0, Ljava/nio/file/FileTreeWalker;->closed:Z

    if-nez v0, :cond_1

    :goto_0
    iget-object v0, p0, Ljava/nio/file/FileTreeWalker;->stack:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/nio/file/FileTreeWalker;->pop()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/nio/file/FileTreeWalker;->closed:Z

    :cond_1
    return-void
.end method

.method isOpen()Z
    .locals 1

    iget-boolean v0, p0, Ljava/nio/file/FileTreeWalker;->closed:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method next()Ljava/nio/file/FileTreeWalker$Event;
    .locals 11

    const/4 v10, 0x1

    const/4 v9, 0x0

    iget-object v8, p0, Ljava/nio/file/FileTreeWalker;->stack:Ljava/util/ArrayDeque;

    invoke-virtual {v8}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/nio/file/FileTreeWalker$DirectoryNode;

    if-nez v6, :cond_1

    return-object v9

    :cond_0
    invoke-direct {p0, v2, v10, v10}, Ljava/nio/file/FileTreeWalker;->visit(Ljava/nio/file/Path;ZZ)Ljava/nio/file/FileTreeWalker$Event;

    move-result-object v3

    if-nez v3, :cond_4

    :cond_1
    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual {v6}, Ljava/nio/file/FileTreeWalker$DirectoryNode;->skipped()Z

    move-result v8

    if-nez v8, :cond_2

    invoke-virtual {v6}, Ljava/nio/file/FileTreeWalker$DirectoryNode;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :try_start_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Ljava/nio/file/Path;

    move-object v2, v0
    :try_end_0
    .catch Ljava/nio/file/DirectoryIteratorException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    if-nez v2, :cond_0

    :try_start_1
    invoke-virtual {v6}, Ljava/nio/file/FileTreeWalker$DirectoryNode;->stream()Ljava/nio/file/DirectoryStream;

    move-result-object v8

    invoke-interface {v8}, Ljava/nio/file/DirectoryStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    iget-object v8, p0, Ljava/nio/file/FileTreeWalker;->stack:Ljava/util/ArrayDeque;

    invoke-virtual {v8}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    new-instance v8, Ljava/nio/file/FileTreeWalker$Event;

    sget-object v9, Ljava/nio/file/FileTreeWalker$EventType;->END_DIRECTORY:Ljava/nio/file/FileTreeWalker$EventType;

    invoke-virtual {v6}, Ljava/nio/file/FileTreeWalker$DirectoryNode;->directory()Ljava/nio/file/Path;

    move-result-object v10

    invoke-direct {v8, v9, v10, v4}, Ljava/nio/file/FileTreeWalker$Event;-><init>(Ljava/nio/file/FileTreeWalker$EventType;Ljava/nio/file/Path;Ljava/io/IOException;)V

    return-object v8

    :catch_0
    move-exception v7

    invoke-virtual {v7}, Ljava/nio/file/DirectoryIteratorException;->getCause()Ljava/io/IOException;

    move-result-object v4

    goto :goto_0

    :catch_1
    move-exception v1

    if-eqz v4, :cond_3

    move-object v4, v1

    goto :goto_1

    :cond_3
    invoke-virtual {v4, v1}, Ljava/io/IOException;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_4
    return-object v3
.end method

.method pop()V
    .locals 3

    iget-object v2, p0, Ljava/nio/file/FileTreeWalker;->stack:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Ljava/nio/file/FileTreeWalker;->stack:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/file/FileTreeWalker$DirectoryNode;

    :try_start_0
    invoke-virtual {v1}, Ljava/nio/file/FileTreeWalker$DirectoryNode;->stream()Ljava/nio/file/DirectoryStream;

    move-result-object v2

    invoke-interface {v2}, Ljava/nio/file/DirectoryStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method skipRemainingSiblings()V
    .locals 1

    iget-object v0, p0, Ljava/nio/file/FileTreeWalker;->stack:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ljava/nio/file/FileTreeWalker;->stack:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/file/FileTreeWalker$DirectoryNode;

    invoke-virtual {v0}, Ljava/nio/file/FileTreeWalker$DirectoryNode;->skip()V

    :cond_0
    return-void
.end method

.method walk(Ljava/nio/file/Path;)Ljava/nio/file/FileTreeWalker$Event;
    .locals 3

    const/4 v2, 0x0

    iget-boolean v1, p0, Ljava/nio/file/FileTreeWalker;->closed:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Closed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-direct {p0, p1, v2, v2}, Ljava/nio/file/FileTreeWalker;->visit(Ljava/nio/file/Path;ZZ)Ljava/nio/file/FileTreeWalker$Event;

    move-result-object v0

    sget-boolean v1, Ljava/nio/file/FileTreeWalker;->-assertionsDisabled:Z

    if-nez v1, :cond_1

    if-nez v0, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_1
    return-object v0
.end method
