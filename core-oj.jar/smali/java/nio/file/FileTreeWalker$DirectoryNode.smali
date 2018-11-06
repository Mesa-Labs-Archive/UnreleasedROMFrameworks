.class Ljava/nio/file/FileTreeWalker$DirectoryNode;
.super Ljava/lang/Object;
.source "FileTreeWalker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/nio/file/FileTreeWalker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DirectoryNode"
.end annotation


# instance fields
.field private final dir:Ljava/nio/file/Path;

.field private final iterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation
.end field

.field private final key:Ljava/lang/Object;

.field private skipped:Z

.field private final stream:Ljava/nio/file/DirectoryStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/nio/file/DirectoryStream",
            "<",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/nio/file/Path;Ljava/lang/Object;Ljava/nio/file/DirectoryStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "Ljava/lang/Object;",
            "Ljava/nio/file/DirectoryStream",
            "<",
            "Ljava/nio/file/Path;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/nio/file/FileTreeWalker$DirectoryNode;->dir:Ljava/nio/file/Path;

    iput-object p2, p0, Ljava/nio/file/FileTreeWalker$DirectoryNode;->key:Ljava/lang/Object;

    iput-object p3, p0, Ljava/nio/file/FileTreeWalker$DirectoryNode;->stream:Ljava/nio/file/DirectoryStream;

    invoke-interface {p3}, Ljava/nio/file/DirectoryStream;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Ljava/nio/file/FileTreeWalker$DirectoryNode;->iterator:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method directory()Ljava/nio/file/Path;
    .locals 1

    iget-object v0, p0, Ljava/nio/file/FileTreeWalker$DirectoryNode;->dir:Ljava/nio/file/Path;

    return-object v0
.end method

.method iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Ljava/nio/file/FileTreeWalker$DirectoryNode;->iterator:Ljava/util/Iterator;

    return-object v0
.end method

.method key()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Ljava/nio/file/FileTreeWalker$DirectoryNode;->key:Ljava/lang/Object;

    return-object v0
.end method

.method skip()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/nio/file/FileTreeWalker$DirectoryNode;->skipped:Z

    return-void
.end method

.method skipped()Z
    .locals 1

    iget-boolean v0, p0, Ljava/nio/file/FileTreeWalker$DirectoryNode;->skipped:Z

    return v0
.end method

.method stream()Ljava/nio/file/DirectoryStream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/nio/file/DirectoryStream",
            "<",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Ljava/nio/file/FileTreeWalker$DirectoryNode;->stream:Ljava/nio/file/DirectoryStream;

    return-object v0
.end method
