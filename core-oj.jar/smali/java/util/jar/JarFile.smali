.class public Ljava/util/jar/JarFile;
.super Ljava/util/zip/ZipFile;
.source "JarFile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/jar/JarFile$JarEntryIterator;,
        Ljava/util/jar/JarFile$JarFileEntry;
    }
.end annotation


# static fields
.field private static final CLASSPATH_CHARS:[C

.field private static final CLASSPATH_LASTOCC:[I

.field private static final CLASSPATH_OPTOSFT:[I

.field public static final MANIFEST_NAME:Ljava/lang/String; = "META-INF/MANIFEST.MF"

.field static final META_DIR:Ljava/lang/String; = "META-INF/"


# instance fields
.field private volatile hasCheckedSpecialAttributes:Z

.field private hasClassPathAttribute:Z

.field private jv:Ljava/util/jar/JarVerifier;

.field private jvInitialized:Z

.field private manEntry:Ljava/util/jar/JarEntry;

.field private manifest:Ljava/util/jar/Manifest;

.field private verify:Z


# direct methods
.method static synthetic -get0(Ljava/util/jar/JarFile;)Ljava/util/jar/JarVerifier;
    .locals 1

    iget-object v0, p0, Ljava/util/jar/JarFile;->jv:Ljava/util/jar/JarVerifier;

    return-object v0
.end method

.method static synthetic -wrap0(Ljava/util/jar/JarFile;)V
    .locals 0

    invoke-direct {p0}, Ljava/util/jar/JarFile;->maybeInstantiateVerifier()V

    return-void
.end method

.method static synthetic -wrap1(Ljava/util/jar/JarFile;)Ljava/util/Enumeration;
    .locals 1

    invoke-super {p0}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x1

    const/16 v5, 0x9

    const/16 v4, 0xa

    new-array v1, v4, [C

    fill-array-data v1, :array_0

    sput-object v1, Ljava/util/jar/JarFile;->CLASSPATH_CHARS:[C

    const/16 v1, 0x80

    new-array v1, v1, [I

    sput-object v1, Ljava/util/jar/JarFile;->CLASSPATH_LASTOCC:[I

    new-array v1, v4, [I

    sput-object v1, Ljava/util/jar/JarFile;->CLASSPATH_OPTOSFT:[I

    sget-object v1, Ljava/util/jar/JarFile;->CLASSPATH_LASTOCC:[I

    const/16 v2, 0x63

    aput v6, v1, v2

    sget-object v1, Ljava/util/jar/JarFile;->CLASSPATH_LASTOCC:[I

    const/4 v2, 0x2

    const/16 v3, 0x6c

    aput v2, v1, v3

    sget-object v1, Ljava/util/jar/JarFile;->CLASSPATH_LASTOCC:[I

    const/4 v2, 0x5

    const/16 v3, 0x73

    aput v2, v1, v3

    sget-object v1, Ljava/util/jar/JarFile;->CLASSPATH_LASTOCC:[I

    const/4 v2, 0x6

    const/16 v3, 0x2d

    aput v2, v1, v3

    sget-object v1, Ljava/util/jar/JarFile;->CLASSPATH_LASTOCC:[I

    const/4 v2, 0x7

    const/16 v3, 0x70

    aput v2, v1, v3

    sget-object v1, Ljava/util/jar/JarFile;->CLASSPATH_LASTOCC:[I

    const/16 v2, 0x8

    const/16 v3, 0x61

    aput v2, v1, v3

    sget-object v1, Ljava/util/jar/JarFile;->CLASSPATH_LASTOCC:[I

    const/16 v2, 0x74

    aput v5, v1, v2

    sget-object v1, Ljava/util/jar/JarFile;->CLASSPATH_LASTOCC:[I

    const/16 v2, 0x68

    aput v4, v1, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v5, :cond_0

    sget-object v1, Ljava/util/jar/JarFile;->CLASSPATH_OPTOSFT:[I

    aput v4, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    sget-object v1, Ljava/util/jar/JarFile;->CLASSPATH_OPTOSFT:[I

    aput v6, v1, v5

    return-void

    nop

    :array_0
    .array-data 2
        0x63s
        0x6cs
        0x61s
        0x73s
        0x73s
        0x2ds
        0x70s
        0x61s
        0x74s
        0x68s
    .end array-data
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, v0}, Ljava/util/jar/JarFile;-><init>(Ljava/io/File;ZI)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Ljava/util/jar/JarFile;-><init>(Ljava/io/File;ZI)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;ZI)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1, p3}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;I)V

    iput-boolean p2, p0, Ljava/util/jar/JarFile;->verify:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, v1, v1}, Ljava/util/jar/JarFile;-><init>(Ljava/io/File;ZI)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-direct {p0, v0, p2, v1}, Ljava/util/jar/JarFile;-><init>(Ljava/io/File;ZI)V

    return-void
.end method

.method private checkForSpecialAttributes()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x1

    iget-boolean v2, p0, Ljava/util/jar/JarFile;->hasCheckedSpecialAttributes:Z

    if-eqz v2, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Ljava/util/jar/JarFile;->getManEntry()Ljava/util/jar/JarEntry;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-direct {p0, v1}, Ljava/util/jar/JarFile;->getBytes(Ljava/util/zip/ZipEntry;)[B

    move-result-object v0

    sget-object v2, Ljava/util/jar/JarFile;->CLASSPATH_CHARS:[C

    sget-object v3, Ljava/util/jar/JarFile;->CLASSPATH_LASTOCC:[I

    sget-object v4, Ljava/util/jar/JarFile;->CLASSPATH_OPTOSFT:[I

    invoke-direct {p0, v2, v0, v3, v4}, Ljava/util/jar/JarFile;->match([C[B[I[I)Z

    move-result v2

    if-eqz v2, :cond_1

    iput-boolean v5, p0, Ljava/util/jar/JarFile;->hasClassPathAttribute:Z

    :cond_1
    iput-boolean v5, p0, Ljava/util/jar/JarFile;->hasCheckedSpecialAttributes:Z

    return-void
.end method

.method private getBytes(Ljava/util/zip/ZipEntry;)[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v0, 0x0

    :try_start_0
    invoke-super {p0, p1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v4

    long-to-int v1, v4

    const/4 v3, 0x1

    invoke-static {v0, v1, v3}, Lsun/misc/IOUtils;->readFully(Ljava/io/InputStream;IZ)[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    if-eqz v0, :cond_0

    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    throw v2

    :catch_0
    move-exception v2

    goto :goto_0

    :cond_1
    return-object v1

    :catch_1
    move-exception v1

    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v2

    move-object v6, v2

    move-object v2, v1

    move-object v1, v6

    :goto_1
    if-eqz v0, :cond_2

    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    :cond_2
    :goto_2
    if-eqz v2, :cond_4

    throw v2

    :catch_2
    move-exception v3

    if-nez v2, :cond_3

    move-object v2, v3

    goto :goto_2

    :cond_3
    if-eq v2, v3, :cond_2

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_4
    throw v1

    :catchall_1
    move-exception v1

    goto :goto_1
.end method

.method private declared-synchronized getManEntry()Ljava/util/jar/JarEntry;
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Ljava/util/jar/JarFile;->manEntry:Ljava/util/jar/JarEntry;

    if-nez v2, :cond_0

    const-string/jumbo v2, "META-INF/MANIFEST.MF"

    invoke-virtual {p0, v2}, Ljava/util/jar/JarFile;->getJarEntry(Ljava/lang/String;)Ljava/util/jar/JarEntry;

    move-result-object v2

    iput-object v2, p0, Ljava/util/jar/JarFile;->manEntry:Ljava/util/jar/JarEntry;

    iget-object v2, p0, Ljava/util/jar/JarFile;->manEntry:Ljava/util/jar/JarEntry;

    if-nez v2, :cond_0

    invoke-direct {p0}, Ljava/util/jar/JarFile;->getMetaInfEntryNames()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    const-string/jumbo v2, "META-INF/MANIFEST.MF"

    aget-object v3, v1, v0

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    aget-object v2, v1, v0

    invoke-virtual {p0, v2}, Ljava/util/jar/JarFile;->getJarEntry(Ljava/lang/String;)Ljava/util/jar/JarEntry;

    move-result-object v2

    iput-object v2, p0, Ljava/util/jar/JarFile;->manEntry:Ljava/util/jar/JarEntry;

    :cond_0
    iget-object v2, p0, Ljava/util/jar/JarFile;->manEntry:Ljava/util/jar/JarEntry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private declared-synchronized getManifestFromReference()Ljava/util/jar/Manifest;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Ljava/util/jar/JarFile;->manifest:Ljava/util/jar/Manifest;

    if-nez v2, :cond_0

    invoke-direct {p0}, Ljava/util/jar/JarFile;->getManEntry()Ljava/util/jar/JarEntry;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-boolean v2, p0, Ljava/util/jar/JarFile;->verify:Z

    if-eqz v2, :cond_1

    invoke-direct {p0, v1}, Ljava/util/jar/JarFile;->getBytes(Ljava/util/zip/ZipEntry;)[B

    move-result-object v0

    new-instance v2, Ljava/util/jar/Manifest;

    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v2, v3}, Ljava/util/jar/Manifest;-><init>(Ljava/io/InputStream;)V

    iput-object v2, p0, Ljava/util/jar/JarFile;->manifest:Ljava/util/jar/Manifest;

    iget-boolean v2, p0, Ljava/util/jar/JarFile;->jvInitialized:Z

    if-nez v2, :cond_0

    new-instance v2, Ljava/util/jar/JarVerifier;

    invoke-direct {v2, v0}, Ljava/util/jar/JarVerifier;-><init>([B)V

    iput-object v2, p0, Ljava/util/jar/JarFile;->jv:Ljava/util/jar/JarVerifier;

    :cond_0
    :goto_0
    iget-object v2, p0, Ljava/util/jar/JarFile;->manifest:Ljava/util/jar/Manifest;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v2

    :cond_1
    :try_start_1
    new-instance v2, Ljava/util/jar/Manifest;

    invoke-super {p0, v1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/jar/Manifest;-><init>(Ljava/io/InputStream;)V

    iput-object v2, p0, Ljava/util/jar/JarFile;->manifest:Ljava/util/jar/Manifest;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private native getMetaInfEntryNames()[Ljava/lang/String;
.end method

.method private initializeVerifier()V
    .locals 19

    const/4 v6, 0x0

    :try_start_0
    invoke-direct/range {p0 .. p0}, Ljava/util/jar/JarFile;->getMetaInfEntryNames()[Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v17

    if-eqz v17, :cond_1

    const/4 v15, 0x0

    move-object/from16 v16, v6

    :goto_0
    :try_start_1
    move-object/from16 v0, v17

    array-length v1, v0

    if-ge v15, v1, :cond_9

    aget-object v1, v17, v15

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v18

    const-string/jumbo v1, "META-INF/MANIFEST.MF"

    move-object/from16 v0, v18

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static/range {v18 .. v18}, Lsun/security/util/SignatureFileVerifier;->isBlockOrSF(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_0
    aget-object v1, v17, v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Ljava/util/jar/JarFile;->getJarEntry(Ljava/lang/String;)Ljava/util/jar/JarEntry;

    move-result-object v13

    if-nez v13, :cond_5

    new-instance v1, Ljava/util/jar/JarException;

    const-string/jumbo v2, "corrupted jar file"

    invoke-direct {v1, v2}, Ljava/util/jar/JarException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v14

    move-object/from16 v6, v16

    :goto_1
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Ljava/util/jar/JarFile;->jv:Ljava/util/jar/JarVerifier;

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Ljava/util/jar/JarFile;->verify:Z

    sget-object v1, Ljava/util/jar/JarVerifier;->debug:Lsun/security/util/Debug;

    if-eqz v1, :cond_1

    sget-object v1, Ljava/util/jar/JarVerifier;->debug:Lsun/security/util/Debug;

    const-string/jumbo v2, "jarfile parsing error!"

    invoke-virtual {v1, v2}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/io/IOException;->printStackTrace()V

    :cond_1
    :goto_2
    move-object/from16 v0, p0

    iget-object v1, v0, Ljava/util/jar/JarFile;->jv:Ljava/util/jar/JarVerifier;

    if-eqz v1, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Ljava/util/jar/JarFile;->jv:Ljava/util/jar/JarVerifier;

    invoke-virtual {v1}, Ljava/util/jar/JarVerifier;->doneWithMeta()V

    sget-object v1, Ljava/util/jar/JarVerifier;->debug:Lsun/security/util/Debug;

    if-eqz v1, :cond_2

    sget-object v1, Ljava/util/jar/JarVerifier;->debug:Lsun/security/util/Debug;

    const-string/jumbo v2, "done with meta!"

    invoke-virtual {v1, v2}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Ljava/util/jar/JarFile;->jv:Ljava/util/jar/JarVerifier;

    invoke-virtual {v1}, Ljava/util/jar/JarVerifier;->nothingToVerify()Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Ljava/util/jar/JarVerifier;->debug:Lsun/security/util/Debug;

    if-eqz v1, :cond_3

    sget-object v1, Ljava/util/jar/JarVerifier;->debug:Lsun/security/util/Debug;

    const-string/jumbo v2, "nothing to verify!"

    invoke-virtual {v1, v2}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    :cond_3
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Ljava/util/jar/JarFile;->jv:Ljava/util/jar/JarVerifier;

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Ljava/util/jar/JarFile;->verify:Z

    :cond_4
    return-void

    :cond_5
    if-nez v16, :cond_7

    :try_start_2
    new-instance v6, Lsun/security/util/ManifestEntryVerifier;

    invoke-direct/range {p0 .. p0}, Ljava/util/jar/JarFile;->getManifestFromReference()Ljava/util/jar/Manifest;

    move-result-object v1

    invoke-direct {v6, v1}, Lsun/security/util/ManifestEntryVerifier;-><init>(Ljava/util/jar/Manifest;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    :try_start_3
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Ljava/util/jar/JarFile;->getBytes(Ljava/util/zip/ZipEntry;)[B

    move-result-object v3

    if-eqz v3, :cond_6

    array-length v1, v3

    if-lez v1, :cond_6

    move-object/from16 v0, p0

    iget-object v1, v0, Ljava/util/jar/JarFile;->jv:Ljava/util/jar/JarVerifier;

    invoke-virtual {v1, v13, v6}, Ljava/util/jar/JarVerifier;->beginEntry(Ljava/util/jar/JarEntry;Lsun/security/util/ManifestEntryVerifier;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Ljava/util/jar/JarFile;->jv:Ljava/util/jar/JarVerifier;

    array-length v2, v3

    array-length v5, v3

    const/4 v4, 0x0

    invoke-virtual/range {v1 .. v6}, Ljava/util/jar/JarVerifier;->update(I[BIILsun/security/util/ManifestEntryVerifier;)V

    move-object/from16 v0, p0

    iget-object v7, v0, Ljava/util/jar/JarFile;->jv:Ljava/util/jar/JarVerifier;

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v12, v6

    invoke-virtual/range {v7 .. v12}, Ljava/util/jar/JarVerifier;->update(I[BIILsun/security/util/ManifestEntryVerifier;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_6
    :goto_4
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v16, v6

    goto/16 :goto_0

    :catch_1
    move-exception v14

    goto/16 :goto_1

    :cond_7
    move-object/from16 v6, v16

    goto :goto_3

    :cond_8
    move-object/from16 v6, v16

    goto :goto_4

    :cond_9
    move-object/from16 v6, v16

    goto :goto_2
.end method

.method private match([C[B[I[I)Z
    .locals 8

    const/4 v7, 0x0

    array-length v4, p1

    array-length v5, p2

    sub-int v3, v5, v4

    const/4 v1, 0x0

    :goto_0
    if-gt v1, v3, :cond_3

    add-int/lit8 v2, v4, -0x1

    :goto_1
    if-ltz v2, :cond_2

    add-int v5, v1, v2

    aget-byte v5, p2, v5

    int-to-char v0, v5

    add-int/lit8 v5, v0, -0x41

    rsub-int/lit8 v6, v0, 0x5a

    or-int/2addr v5, v6

    if-ltz v5, :cond_0

    add-int/lit8 v5, v0, 0x20

    int-to-char v0, v5

    :cond_0
    aget-char v5, p1, v2

    if-eq v0, v5, :cond_1

    add-int/lit8 v5, v2, 0x1

    and-int/lit8 v6, v0, 0x7f

    aget v6, p3, v6

    sub-int/2addr v5, v6

    aget v6, p4, v2

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    add-int/2addr v1, v5

    goto :goto_0

    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_2
    const/4 v5, 0x1

    return v5

    :cond_3
    return v7
.end method

.method private maybeInstantiateVerifier()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v3, p0, Ljava/util/jar/JarFile;->jv:Ljava/util/jar/JarVerifier;

    if-eqz v3, :cond_0

    return-void

    :cond_0
    iget-boolean v3, p0, Ljava/util/jar/JarFile;->verify:Z

    if-eqz v3, :cond_4

    invoke-direct {p0}, Ljava/util/jar/JarFile;->getMetaInfEntryNames()[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    const/4 v0, 0x0

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_3

    aget-object v3, v2, v0

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, ".DSA"

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string/jumbo v3, ".RSA"

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string/jumbo v3, ".EC"

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string/jumbo v3, ".SF"

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    invoke-virtual {p0}, Ljava/util/jar/JarFile;->getManifest()Ljava/util/jar/Manifest;

    return-void

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    iput-boolean v3, p0, Ljava/util/jar/JarFile;->verify:Z

    :cond_4
    return-void
.end method


# virtual methods
.method public entries()Ljava/util/Enumeration;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/util/jar/JarEntry;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/jar/JarFile$JarEntryIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljava/util/jar/JarFile$JarEntryIterator;-><init>(Ljava/util/jar/JarFile;Ljava/util/jar/JarFile$JarEntryIterator;)V

    return-object v0
.end method

.method public getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0, p1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/util/jar/JarFile$JarFileEntry;

    invoke-direct {v1, p0, v0}, Ljava/util/jar/JarFile$JarFileEntry;-><init>(Ljava/util/jar/JarFile;Ljava/util/zip/ZipEntry;)V

    return-object v1

    :cond_0
    return-object v1
.end method

.method public declared-synchronized getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Ljava/util/jar/JarFile;->maybeInstantiateVerifier()V

    iget-object v1, p0, Ljava/util/jar/JarFile;->jv:Ljava/util/jar/JarVerifier;

    if-nez v1, :cond_0

    invoke-super {p0, p1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit p0

    return-object v1

    :cond_0
    :try_start_1
    iget-boolean v1, p0, Ljava/util/jar/JarFile;->jvInitialized:Z

    if-nez v1, :cond_1

    invoke-direct {p0}, Ljava/util/jar/JarFile;->initializeVerifier()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Ljava/util/jar/JarFile;->jvInitialized:Z

    iget-object v1, p0, Ljava/util/jar/JarFile;->jv:Ljava/util/jar/JarVerifier;

    if-nez v1, :cond_1

    invoke-super {p0, p1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    monitor-exit p0

    return-object v1

    :cond_1
    :try_start_2
    new-instance v2, Ljava/util/jar/JarVerifier$VerifierStream;

    invoke-direct {p0}, Ljava/util/jar/JarFile;->getManifestFromReference()Ljava/util/jar/Manifest;

    move-result-object v3

    instance-of v1, p1, Ljava/util/jar/JarFile$JarFileEntry;

    if-eqz v1, :cond_2

    move-object v0, p1

    check-cast v0, Ljava/util/jar/JarEntry;

    move-object v1, v0

    :goto_0
    invoke-super {p0, p1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v4

    iget-object v5, p0, Ljava/util/jar/JarFile;->jv:Ljava/util/jar/JarVerifier;

    invoke-direct {v2, v3, v1, v4, v5}, Ljava/util/jar/JarVerifier$VerifierStream;-><init>(Ljava/util/jar/Manifest;Ljava/util/jar/JarEntry;Ljava/io/InputStream;Ljava/util/jar/JarVerifier;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v2

    :cond_2
    :try_start_3
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/jar/JarFile;->getJarEntry(Ljava/lang/String;)Ljava/util/jar/JarEntry;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v1

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getJarEntry(Ljava/lang/String;)Ljava/util/jar/JarEntry;
    .locals 1

    invoke-virtual {p0, p1}, Ljava/util/jar/JarFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v0

    check-cast v0, Ljava/util/jar/JarEntry;

    return-object v0
.end method

.method public getManifest()Ljava/util/jar/Manifest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/jar/JarFile;->getManifestFromReference()Ljava/util/jar/Manifest;

    move-result-object v0

    return-object v0
.end method

.method public hasClassPathAttribute()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/jar/JarFile;->checkForSpecialAttributes()V

    iget-boolean v0, p0, Ljava/util/jar/JarFile;->hasClassPathAttribute:Z

    return v0
.end method

.method newEntry(Ljava/util/zip/ZipEntry;)Ljava/util/jar/JarEntry;
    .locals 1

    new-instance v0, Ljava/util/jar/JarFile$JarFileEntry;

    invoke-direct {v0, p0, p1}, Ljava/util/jar/JarFile$JarFileEntry;-><init>(Ljava/util/jar/JarFile;Ljava/util/zip/ZipEntry;)V

    return-object v0
.end method

.method public stream()Ljava/util/stream/Stream;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream",
            "<",
            "Ljava/util/jar/JarEntry;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/jar/JarFile$JarEntryIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljava/util/jar/JarFile$JarEntryIterator;-><init>(Ljava/util/jar/JarFile;Ljava/util/jar/JarFile$JarEntryIterator;)V

    invoke-virtual {p0}, Ljava/util/jar/JarFile;->size()I

    move-result v1

    int-to-long v2, v1

    const/16 v1, 0x511

    invoke-static {v0, v2, v3, v1}, Ljava/util/Spliterators;->spliterator(Ljava/util/Iterator;JI)Ljava/util/Spliterator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/stream/StreamSupport;->stream(Ljava/util/Spliterator;Z)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method
