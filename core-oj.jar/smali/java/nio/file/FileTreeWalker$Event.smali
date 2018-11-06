.class Ljava/nio/file/FileTreeWalker$Event;
.super Ljava/lang/Object;
.source "FileTreeWalker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/nio/file/FileTreeWalker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Event"
.end annotation


# instance fields
.field private final attrs:Ljava/nio/file/attribute/BasicFileAttributes;

.field private final file:Ljava/nio/file/Path;

.field private final ioe:Ljava/io/IOException;

.field private final type:Ljava/nio/file/FileTreeWalker$EventType;


# direct methods
.method constructor <init>(Ljava/nio/file/FileTreeWalker$EventType;Ljava/nio/file/Path;Ljava/io/IOException;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Ljava/nio/file/FileTreeWalker$Event;-><init>(Ljava/nio/file/FileTreeWalker$EventType;Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;Ljava/io/IOException;)V

    return-void
.end method

.method constructor <init>(Ljava/nio/file/FileTreeWalker$EventType;Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Ljava/nio/file/FileTreeWalker$Event;-><init>(Ljava/nio/file/FileTreeWalker$EventType;Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;Ljava/io/IOException;)V

    return-void
.end method

.method private constructor <init>(Ljava/nio/file/FileTreeWalker$EventType;Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;Ljava/io/IOException;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/nio/file/FileTreeWalker$Event;->type:Ljava/nio/file/FileTreeWalker$EventType;

    iput-object p2, p0, Ljava/nio/file/FileTreeWalker$Event;->file:Ljava/nio/file/Path;

    iput-object p3, p0, Ljava/nio/file/FileTreeWalker$Event;->attrs:Ljava/nio/file/attribute/BasicFileAttributes;

    iput-object p4, p0, Ljava/nio/file/FileTreeWalker$Event;->ioe:Ljava/io/IOException;

    return-void
.end method


# virtual methods
.method attributes()Ljava/nio/file/attribute/BasicFileAttributes;
    .locals 1

    iget-object v0, p0, Ljava/nio/file/FileTreeWalker$Event;->attrs:Ljava/nio/file/attribute/BasicFileAttributes;

    return-object v0
.end method

.method file()Ljava/nio/file/Path;
    .locals 1

    iget-object v0, p0, Ljava/nio/file/FileTreeWalker$Event;->file:Ljava/nio/file/Path;

    return-object v0
.end method

.method ioeException()Ljava/io/IOException;
    .locals 1

    iget-object v0, p0, Ljava/nio/file/FileTreeWalker$Event;->ioe:Ljava/io/IOException;

    return-object v0
.end method

.method type()Ljava/nio/file/FileTreeWalker$EventType;
    .locals 1

    iget-object v0, p0, Ljava/nio/file/FileTreeWalker$Event;->type:Ljava/nio/file/FileTreeWalker$EventType;

    return-object v0
.end method
