.class final Lsun/net/www/protocol/jar/URLJarFile$1;
.super Ljava/lang/Object;
.source "URLJarFile.java"

# interfaces
.implements Ljava/security/PrivilegedExceptionAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsun/net/www/protocol/jar/URLJarFile;->retrieve(Ljava/net/URL;Lsun/net/www/protocol/jar/URLJarFile$URLJarFileCloseController;)Ljava/util/jar/JarFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedExceptionAction",
        "<",
        "Ljava/util/jar/JarFile;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$closeController:Lsun/net/www/protocol/jar/URLJarFile$URLJarFileCloseController;

.field final synthetic val$in:Ljava/io/InputStream;


# direct methods
.method constructor <init>(Ljava/io/InputStream;Lsun/net/www/protocol/jar/URLJarFile$URLJarFileCloseController;)V
    .locals 0

    iput-object p1, p0, Lsun/net/www/protocol/jar/URLJarFile$1;->val$in:Ljava/io/InputStream;

    iput-object p2, p0, Lsun/net/www/protocol/jar/URLJarFile$1;->val$closeController:Lsun/net/www/protocol/jar/URLJarFile$URLJarFileCloseController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lsun/net/www/protocol/jar/URLJarFile$1;->run()Ljava/util/jar/JarFile;

    move-result-object v0

    return-object v0
.end method

.method public run()Ljava/util/jar/JarFile;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x0

    const-string/jumbo v4, "jar_cache"

    new-array v5, v5, [Ljava/nio/file/attribute/FileAttribute;

    const/4 v6, 0x0

    invoke-static {v4, v6, v5}, Ljava/nio/file/Files;->createTempFile(Ljava/lang/String;Ljava/lang/String;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;

    move-result-object v3

    :try_start_0
    iget-object v4, p0, Lsun/net/www/protocol/jar/URLJarFile$1;->val$in:Ljava/io/InputStream;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/nio/file/CopyOption;

    sget-object v6, Ljava/nio/file/StandardCopyOption;->REPLACE_EXISTING:Ljava/nio/file/StandardCopyOption;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-static {v4, v3, v5}, Ljava/nio/file/Files;->copy(Ljava/io/InputStream;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)J

    new-instance v1, Lsun/net/www/protocol/jar/URLJarFile;

    invoke-interface {v3}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v4

    iget-object v5, p0, Lsun/net/www/protocol/jar/URLJarFile$1;->val$closeController:Lsun/net/www/protocol/jar/URLJarFile$URLJarFileCloseController;

    invoke-direct {v1, v4, v5}, Lsun/net/www/protocol/jar/URLJarFile;-><init>(Ljava/io/File;Lsun/net/www/protocol/jar/URLJarFile$URLJarFileCloseController;)V

    invoke-interface {v3}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->deleteOnExit()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v2

    :try_start_1
    invoke-static {v3}, Ljava/nio/file/Files;->delete(Ljava/nio/file/Path;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    throw v2

    :catch_1
    move-exception v0

    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
