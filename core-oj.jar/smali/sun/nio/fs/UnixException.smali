.class Lsun/nio/fs/UnixException;
.super Ljava/lang/Exception;
.source "UnixException.java"


# static fields
.field static final serialVersionUID:J = 0x644b857beb44dd12L


# instance fields
.field private errno:I

.field private msg:Ljava/lang/String;


# direct methods
.method constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    iput p1, p0, Lsun/nio/fs/UnixException;->errno:I

    const/4 v0, 0x0

    iput-object v0, p0, Lsun/nio/fs/UnixException;->msg:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lsun/nio/fs/UnixException;->errno:I

    iput-object p1, p0, Lsun/nio/fs/UnixException;->msg:Ljava/lang/String;

    return-void
.end method

.method private translateToIOException(Ljava/lang/String;Ljava/lang/String;)Ljava/io/IOException;
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lsun/nio/fs/UnixException;->msg:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    iget-object v1, p0, Lsun/nio/fs/UnixException;->msg:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lsun/nio/fs/UnixException;->errno()I

    move-result v0

    sget v1, Lsun/nio/fs/UnixConstants;->EACCES:I

    if-ne v0, v1, :cond_1

    new-instance v0, Ljava/nio/file/AccessDeniedException;

    invoke-direct {v0, p1, p2, v2}, Ljava/nio/file/AccessDeniedException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_1
    invoke-virtual {p0}, Lsun/nio/fs/UnixException;->errno()I

    move-result v0

    sget v1, Lsun/nio/fs/UnixConstants;->ENOENT:I

    if-ne v0, v1, :cond_2

    new-instance v0, Ljava/nio/file/NoSuchFileException;

    invoke-direct {v0, p1, p2, v2}, Ljava/nio/file/NoSuchFileException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_2
    invoke-virtual {p0}, Lsun/nio/fs/UnixException;->errno()I

    move-result v0

    sget v1, Lsun/nio/fs/UnixConstants;->EEXIST:I

    if-ne v0, v1, :cond_3

    new-instance v0, Ljava/nio/file/FileAlreadyExistsException;

    invoke-direct {v0, p1, p2, v2}, Ljava/nio/file/FileAlreadyExistsException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_3
    new-instance v0, Ljava/nio/file/FileSystemException;

    invoke-virtual {p0}, Lsun/nio/fs/UnixException;->errorString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, p2, v1}, Ljava/nio/file/FileSystemException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method asIOException(Lsun/nio/fs/UnixPath;)Ljava/io/IOException;
    .locals 2

    invoke-virtual {p1}, Lsun/nio/fs/UnixPath;->getPathForExceptionMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lsun/nio/fs/UnixException;->translateToIOException(Ljava/lang/String;Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    return-object v0
.end method

.method errno()I
    .locals 1

    iget v0, p0, Lsun/nio/fs/UnixException;->errno:I

    return v0
.end method

.method errorString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsun/nio/fs/UnixException;->msg:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsun/nio/fs/UnixException;->msg:Ljava/lang/String;

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lsun/nio/fs/UnixException;->errno()I

    move-result v0

    invoke-static {v0}, Lsun/nio/fs/UnixNativeDispatcher;->strerror(I)[B

    move-result-object v0

    invoke-static {v0}, Lsun/nio/fs/Util;->toString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lsun/nio/fs/UnixException;->errorString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method rethrowAsIOException(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lsun/nio/fs/UnixException;->translateToIOException(Ljava/lang/String;Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method rethrowAsIOException(Lsun/nio/fs/UnixPath;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lsun/nio/fs/UnixException;->rethrowAsIOException(Lsun/nio/fs/UnixPath;Lsun/nio/fs/UnixPath;)V

    return-void
.end method

.method rethrowAsIOException(Lsun/nio/fs/UnixPath;Lsun/nio/fs/UnixPath;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    if-nez p2, :cond_1

    const/4 v1, 0x0

    :goto_1
    invoke-direct {p0, v0, v1}, Lsun/nio/fs/UnixException;->translateToIOException(Ljava/lang/String;Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v2

    throw v2

    :cond_0
    invoke-virtual {p1}, Lsun/nio/fs/UnixPath;->getPathForExceptionMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Lsun/nio/fs/UnixPath;->getPathForExceptionMessage()Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method setError(I)V
    .locals 1

    iput p1, p0, Lsun/nio/fs/UnixException;->errno:I

    const/4 v0, 0x0

    iput-object v0, p0, Lsun/nio/fs/UnixException;->msg:Ljava/lang/String;

    return-void
.end method
