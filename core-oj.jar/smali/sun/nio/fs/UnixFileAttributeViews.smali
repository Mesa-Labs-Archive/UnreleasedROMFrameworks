.class Lsun/nio/fs/UnixFileAttributeViews;
.super Ljava/lang/Object;
.source "UnixFileAttributeViews.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/nio/fs/UnixFileAttributeViews$Basic;,
        Lsun/nio/fs/UnixFileAttributeViews$Posix;,
        Lsun/nio/fs/UnixFileAttributeViews$Unix;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static createBasicView(Lsun/nio/fs/UnixPath;Z)Lsun/nio/fs/UnixFileAttributeViews$Basic;
    .locals 1

    new-instance v0, Lsun/nio/fs/UnixFileAttributeViews$Basic;

    invoke-direct {v0, p0, p1}, Lsun/nio/fs/UnixFileAttributeViews$Basic;-><init>(Lsun/nio/fs/UnixPath;Z)V

    return-object v0
.end method

.method static createOwnerView(Lsun/nio/fs/UnixPath;Z)Lsun/nio/fs/FileOwnerAttributeViewImpl;
    .locals 2

    new-instance v0, Lsun/nio/fs/FileOwnerAttributeViewImpl;

    invoke-static {p0, p1}, Lsun/nio/fs/UnixFileAttributeViews;->createPosixView(Lsun/nio/fs/UnixPath;Z)Lsun/nio/fs/UnixFileAttributeViews$Posix;

    move-result-object v1

    invoke-direct {v0, v1}, Lsun/nio/fs/FileOwnerAttributeViewImpl;-><init>(Ljava/nio/file/attribute/PosixFileAttributeView;)V

    return-object v0
.end method

.method static createPosixView(Lsun/nio/fs/UnixPath;Z)Lsun/nio/fs/UnixFileAttributeViews$Posix;
    .locals 1

    new-instance v0, Lsun/nio/fs/UnixFileAttributeViews$Posix;

    invoke-direct {v0, p0, p1}, Lsun/nio/fs/UnixFileAttributeViews$Posix;-><init>(Lsun/nio/fs/UnixPath;Z)V

    return-object v0
.end method

.method static createUnixView(Lsun/nio/fs/UnixPath;Z)Lsun/nio/fs/UnixFileAttributeViews$Unix;
    .locals 1

    new-instance v0, Lsun/nio/fs/UnixFileAttributeViews$Unix;

    invoke-direct {v0, p0, p1}, Lsun/nio/fs/UnixFileAttributeViews$Unix;-><init>(Lsun/nio/fs/UnixPath;Z)V

    return-object v0
.end method
