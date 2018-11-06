.class Lcom/android/org/conscrypt/FileClientSessionCache$Impl;
.super Ljava/lang/Object;
.source "FileClientSessionCache.java"

# interfaces
.implements Lcom/android/org/conscrypt/SSLClientSessionCache;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/conscrypt/FileClientSessionCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Impl"
.end annotation


# instance fields
.field accessOrder:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field final directory:Ljava/io/File;

.field initialFiles:[Ljava/lang/String;

.field size:I


# direct methods
.method constructor <init>(Ljava/io/File;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->newAccessOrder()Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->accessOrder:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " exists but is not a directory."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->initialFiles:[Ljava/lang/String;

    iget-object v1, p0, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->initialFiles:[Ljava/lang/String;

    if-nez v1, :cond_1

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " exists but cannot list contents."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    iget-object v1, p0, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->initialFiles:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->initialFiles:[Ljava/lang/String;

    array-length v1, v1

    iput v1, p0, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->size:I

    :goto_0
    iput-object p1, p0, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->directory:Ljava/io/File;

    return-void

    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_3

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Creation of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " directory failed."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->size:I

    goto :goto_0
.end method

.method private delete(Ljava/io/File;)V
    .locals 3

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "FileClientSessionCache: Failed to delete "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    iget v0, p0, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->size:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->size:I

    return-void
.end method

.method private static fileName(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "host == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private indexFiles()V
    .locals 10

    const/4 v6, 0x0

    iget-object v3, p0, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->initialFiles:[Ljava/lang/String;

    if-eqz v3, :cond_3

    iput-object v6, p0, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->initialFiles:[Ljava/lang/String;

    new-instance v2, Ljava/util/TreeSet;

    invoke-direct {v2}, Ljava/util/TreeSet;-><init>()V

    const/4 v6, 0x0

    array-length v7, v3

    :goto_0
    if-ge v6, v7, :cond_1

    aget-object v4, v3, v6

    iget-object v8, p0, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->accessOrder:Ljava/util/Map;

    invoke-interface {v8, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    new-instance v8, Lcom/android/org/conscrypt/FileClientSessionCache$CacheFile;

    iget-object v9, p0, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->directory:Ljava/io/File;

    invoke-direct {v8, v9, v4}, Lcom/android/org/conscrypt/FileClientSessionCache$CacheFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-interface {v2, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    invoke-static {}, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->newAccessOrder()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/org/conscrypt/FileClientSessionCache$CacheFile;

    iget-object v6, v0, Lcom/android/org/conscrypt/FileClientSessionCache$CacheFile;->name:Ljava/lang/String;

    invoke-interface {v5, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    iget-object v6, p0, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->accessOrder:Ljava/util/Map;

    invoke-interface {v5, v6}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    iput-object v5, p0, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->accessOrder:Ljava/util/Map;

    :cond_3
    return-void
.end method

.method static logReadError(Ljava/lang/String;Ljava/io/File;Ljava/lang/Throwable;)V
    .locals 3

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "FileClientSessionCache: Error reading session data for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method static logWriteError(Ljava/lang/String;Ljava/io/File;Ljava/lang/Throwable;)V
    .locals 3

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "FileClientSessionCache: Error writing session data for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method private makeRoom()V
    .locals 4

    iget v2, p0, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->size:I

    const/16 v3, 0xc

    if-gt v2, v3, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->indexFiles()V

    iget v2, p0, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->size:I

    add-int/lit8 v1, v2, -0xc

    iget-object v2, p0, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->accessOrder:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    invoke-direct {p0, v2}, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->delete(Ljava/io/File;)V

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    add-int/lit8 v1, v1, -0x1

    if-gtz v1, :cond_1

    return-void
.end method

.method private static newAccessOrder()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedHashMap;

    const/16 v1, 0xc

    const/high16 v2, 0x3f400000    # 0.75f

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    return-object v0
.end method


# virtual methods
.method public declared-synchronized getSessionData(Ljava/lang/String;I)[B
    .locals 11

    const/4 v10, 0x0

    monitor-enter p0

    :try_start_0
    invoke-static {p1, p2}, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->fileName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    iget-object v8, p0, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->accessOrder:Ljava/util/Map;

    invoke-interface {v8, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    if-nez v3, :cond_2

    iget-object v8, p0, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->initialFiles:[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v8, :cond_0

    monitor-exit p0

    return-object v10

    :cond_0
    :try_start_1
    iget-object v8, p0, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->initialFiles:[Ljava/lang/String;

    invoke-static {v8, v6}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v8

    if-gez v8, :cond_1

    monitor-exit p0

    return-object v10

    :cond_1
    :try_start_2
    new-instance v3, Ljava/io/File;

    iget-object v8, p0, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->directory:Ljava/io/File;

    invoke-direct {v3, v8, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->accessOrder:Ljava/util/Map;

    invoke-interface {v8, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_2
    :try_start_3
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v8

    long-to-int v7, v8

    new-array v0, v7, [B

    new-instance v8, Ljava/io/DataInputStream;

    invoke-direct {v8, v5}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v8, v0}, Ljava/io/DataInputStream;->readFully([B)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v5, :cond_3

    :try_start_5
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :cond_3
    :goto_0
    monitor-exit p0

    return-object v0

    :catch_0
    move-exception v1

    :try_start_6
    invoke-static {p1, v3, v1}, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->logReadError(Ljava/lang/String;Ljava/io/File;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    monitor-exit p0

    return-object v10

    :catch_1
    move-exception v4

    goto :goto_0

    :catch_2
    move-exception v2

    :try_start_7
    invoke-static {p1, v3, v2}, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->logReadError(Ljava/lang/String;Ljava/io/File;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v5, :cond_4

    :try_start_8
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :cond_4
    :goto_1
    monitor-exit p0

    return-object v10

    :catch_3
    move-exception v4

    goto :goto_1

    :catchall_0
    move-exception v8

    if-eqz v5, :cond_5

    :try_start_9
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :cond_5
    :goto_2
    :try_start_a
    throw v8
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :catchall_1
    move-exception v8

    monitor-exit p0

    throw v8

    :catch_4
    move-exception v4

    goto :goto_2
.end method

.method public declared-synchronized putSessionData(Ljavax/net/ssl/SSLSession;[B)V
    .locals 11

    monitor-enter p0

    :try_start_0
    invoke-interface {p1}, Ljavax/net/ssl/SSLSession;->getPeerHost()Ljava/lang/String;

    move-result-object v5

    if-nez p2, :cond_0

    new-instance v9, Ljava/lang/NullPointerException;

    const-string/jumbo v10, "sessionData == null"

    invoke-direct {v9, v10}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v9

    monitor-exit p0

    throw v9

    :cond_0
    :try_start_1
    invoke-interface {p1}, Ljavax/net/ssl/SSLSession;->getPeerPort()I

    move-result v9

    invoke-static {v5, v9}, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->fileName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    new-instance v4, Ljava/io/File;

    iget-object v9, p0, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->directory:Ljava/io/File;

    invoke-direct {v4, v9, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    :try_start_2
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v3, :cond_1

    :try_start_3
    iget v9, p0, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->size:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->size:I

    invoke-direct {p0}, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->makeRoom()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_1
    const/4 v8, 0x0

    :try_start_4
    invoke-virtual {v7, p2}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    const/4 v8, 0x1

    const/4 v0, 0x0

    :try_start_5
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    const/4 v0, 0x1

    if-eqz v8, :cond_2

    :try_start_6
    iget-object v9, p0, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->accessOrder:Ljava/util/Map;

    invoke-interface {v9, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v1

    :try_start_7
    invoke-static {v5, v4, v1}, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->logWriteError(Ljava/lang/String;Ljava/io/File;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    monitor-exit p0

    return-void

    :cond_2
    :try_start_8
    invoke-direct {p0, v4}, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->delete(Ljava/io/File;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_0

    :catch_1
    move-exception v2

    :try_start_9
    invoke-static {v5, v4, v2}, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->logWriteError(Ljava/lang/String;Ljava/io/File;Ljava/lang/Throwable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    invoke-direct {p0, v4}, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->delete(Ljava/io/File;)V

    goto :goto_0

    :catchall_1
    move-exception v9

    invoke-direct {p0, v4}, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->delete(Ljava/io/File;)V

    throw v9
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :catch_2
    move-exception v2

    :try_start_b
    invoke-static {v5, v4, v2}, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->logWriteError(Ljava/lang/String;Ljava/io/File;Ljava/lang/Throwable;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    const/4 v0, 0x0

    :try_start_c
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_3
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    const/4 v0, 0x1

    if-eqz v8, :cond_3

    :try_start_d
    iget-object v9, p0, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->accessOrder:Ljava/util/Map;

    invoke-interface {v9, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    invoke-direct {p0, v4}, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->delete(Ljava/io/File;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto :goto_0

    :catch_3
    move-exception v2

    :try_start_e
    invoke-static {v5, v4, v2}, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->logWriteError(Ljava/lang/String;Ljava/io/File;Ljava/lang/Throwable;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    :try_start_f
    invoke-direct {p0, v4}, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->delete(Ljava/io/File;)V

    goto :goto_0

    :catchall_2
    move-exception v9

    invoke-direct {p0, v4}, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->delete(Ljava/io/File;)V

    throw v9
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    :catchall_3
    move-exception v9

    const/4 v0, 0x0

    :try_start_10
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_4
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    const/4 v0, 0x1

    if-eqz v8, :cond_4

    :try_start_11
    iget-object v10, p0, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->accessOrder:Ljava/util/Map;

    invoke-interface {v10, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    throw v9

    :cond_4
    invoke-direct {p0, v4}, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->delete(Ljava/io/File;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    goto :goto_1

    :catch_4
    move-exception v2

    :try_start_12
    invoke-static {v5, v4, v2}, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->logWriteError(Ljava/lang/String;Ljava/io/File;Ljava/lang/Throwable;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_4

    :try_start_13
    invoke-direct {p0, v4}, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->delete(Ljava/io/File;)V

    goto :goto_1

    :catchall_4
    move-exception v9

    invoke-direct {p0, v4}, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->delete(Ljava/io/File;)V

    throw v9
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0
.end method
