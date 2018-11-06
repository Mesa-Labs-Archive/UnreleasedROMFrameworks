.class Lsun/nio/fs/UnixFileAttributeViews$Unix;
.super Lsun/nio/fs/UnixFileAttributeViews$Posix;
.source "UnixFileAttributeViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/nio/fs/UnixFileAttributeViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Unix"
.end annotation


# static fields
.field private static final CTIME_NAME:Ljava/lang/String; = "ctime"

.field private static final DEV_NAME:Ljava/lang/String; = "dev"

.field private static final GID_NAME:Ljava/lang/String; = "gid"

.field private static final INO_NAME:Ljava/lang/String; = "ino"

.field private static final MODE_NAME:Ljava/lang/String; = "mode"

.field private static final NLINK_NAME:Ljava/lang/String; = "nlink"

.field private static final RDEV_NAME:Ljava/lang/String; = "rdev"

.field private static final UID_NAME:Ljava/lang/String; = "uid"

.field static final unixAttributeNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    sget-object v0, Lsun/nio/fs/UnixFileAttributeViews$Unix;->posixAttributeNames:Ljava/util/Set;

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "mode"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string/jumbo v2, "ino"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string/jumbo v2, "dev"

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const-string/jumbo v2, "rdev"

    const/4 v3, 0x3

    aput-object v2, v1, v3

    const-string/jumbo v2, "nlink"

    const/4 v3, 0x4

    aput-object v2, v1, v3

    const-string/jumbo v2, "uid"

    const/4 v3, 0x5

    aput-object v2, v1, v3

    const-string/jumbo v2, "gid"

    const/4 v3, 0x6

    aput-object v2, v1, v3

    const-string/jumbo v2, "ctime"

    const/4 v3, 0x7

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lsun/nio/fs/Util;->newSet(Ljava/util/Set;[Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lsun/nio/fs/UnixFileAttributeViews$Unix;->unixAttributeNames:Ljava/util/Set;

    return-void
.end method

.method constructor <init>(Lsun/nio/fs/UnixPath;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lsun/nio/fs/UnixFileAttributeViews$Posix;-><init>(Lsun/nio/fs/UnixPath;Z)V

    return-void
.end method


# virtual methods
.method public name()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "unix"

    return-object v0
.end method

.method public readAttributes([Ljava/lang/String;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v2, Lsun/nio/fs/UnixFileAttributeViews$Unix;->unixAttributeNames:Ljava/util/Set;

    invoke-static {v2, p1}, Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;->create(Ljava/util/Set;[Ljava/lang/String;)Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lsun/nio/fs/UnixFileAttributeViews$Unix;->readAttributes()Lsun/nio/fs/UnixFileAttributes;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lsun/nio/fs/UnixFileAttributeViews$Unix;->addRequestedPosixAttributes(Ljava/nio/file/attribute/PosixFileAttributes;Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;)V

    const-string/jumbo v2, "mode"

    invoke-virtual {v1, v2}, Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;->match(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "mode"

    invoke-virtual {v0}, Lsun/nio/fs/UnixFileAttributes;->mode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    const-string/jumbo v2, "ino"

    invoke-virtual {v1, v2}, Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;->match(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "ino"

    invoke-virtual {v0}, Lsun/nio/fs/UnixFileAttributes;->ino()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    const-string/jumbo v2, "dev"

    invoke-virtual {v1, v2}, Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;->match(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "dev"

    invoke-virtual {v0}, Lsun/nio/fs/UnixFileAttributes;->dev()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    const-string/jumbo v2, "rdev"

    invoke-virtual {v1, v2}, Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;->match(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string/jumbo v2, "rdev"

    invoke-virtual {v0}, Lsun/nio/fs/UnixFileAttributes;->rdev()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_3
    const-string/jumbo v2, "nlink"

    invoke-virtual {v1, v2}, Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;->match(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string/jumbo v2, "nlink"

    invoke-virtual {v0}, Lsun/nio/fs/UnixFileAttributes;->nlink()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_4
    const-string/jumbo v2, "uid"

    invoke-virtual {v1, v2}, Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;->match(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string/jumbo v2, "uid"

    invoke-virtual {v0}, Lsun/nio/fs/UnixFileAttributes;->uid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_5
    const-string/jumbo v2, "gid"

    invoke-virtual {v1, v2}, Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;->match(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string/jumbo v2, "gid"

    invoke-virtual {v0}, Lsun/nio/fs/UnixFileAttributes;->gid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_6
    const-string/jumbo v2, "ctime"

    invoke-virtual {v1, v2}, Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;->match(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string/jumbo v2, "ctime"

    invoke-virtual {v0}, Lsun/nio/fs/UnixFileAttributes;->ctime()Ljava/nio/file/attribute/FileTime;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_7
    invoke-virtual {v1}, Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;->unmodifiableMap()Ljava/util/Map;

    move-result-object v2

    return-object v2
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, -0x1

    const-string/jumbo v0, "mode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lsun/nio/fs/UnixFileAttributeViews$Unix;->setMode(I)V

    return-void

    :cond_0
    const-string/jumbo v0, "uid"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0, v1}, Lsun/nio/fs/UnixFileAttributeViews$Unix;->setOwners(II)V

    return-void

    :cond_1
    const-string/jumbo v0, "gid"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lsun/nio/fs/UnixFileAttributeViews$Unix;->setOwners(II)V

    return-void

    :cond_2
    invoke-super {p0, p1, p2}, Lsun/nio/fs/UnixFileAttributeViews$Posix;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
