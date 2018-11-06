.class Lsun/nio/fs/UnixFileSystem$1;
.super Ljava/lang/Object;
.source "UnixFileSystem.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsun/nio/fs/UnixFileSystem;->getRootDirectories()Ljava/lang/Iterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "Ljava/nio/file/Path;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lsun/nio/fs/UnixFileSystem;

.field final synthetic val$allowedList:Ljava/util/List;


# direct methods
.method constructor <init>(Lsun/nio/fs/UnixFileSystem;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lsun/nio/fs/UnixFileSystem$1;->this$0:Lsun/nio/fs/UnixFileSystem;

    iput-object p2, p0, Lsun/nio/fs/UnixFileSystem$1;->val$allowedList:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation

    :try_start_0
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v3, p0, Lsun/nio/fs/UnixFileSystem$1;->this$0:Lsun/nio/fs/UnixFileSystem;

    invoke-static {v3}, Lsun/nio/fs/UnixFileSystem;->-get0(Lsun/nio/fs/UnixFileSystem;)Lsun/nio/fs/UnixPath;

    move-result-object v3

    invoke-virtual {v3}, Lsun/nio/fs/UnixPath;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/SecurityManager;->checkRead(Ljava/lang/String;)V

    :cond_0
    iget-object v3, p0, Lsun/nio/fs/UnixFileSystem$1;->val$allowedList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    :catch_0
    move-exception v2

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    return-object v3
.end method
