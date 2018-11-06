.class public Lcom/samsung/android/hqm/BackupService;
.super Ljava/lang/Object;
.source "BackupService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/hqm/BackupService$1;,
        Lcom/samsung/android/hqm/BackupService$FilePath;
    }
.end annotation


# static fields
.field private static final EXTRA_REASON:Ljava/lang/String; = "android.intent.extra.REASON"

.field private static final TAG:Ljava/lang/String;

.field private static mBackupService:Lcom/samsung/android/hqm/BackupService;

.field private static mContext:Landroid/content/Context;


# instance fields
.field private mFilePathList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/hqm/BackupService$FilePath;",
            ">;"
        }
    .end annotation
.end field

.field mIntentReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/hqm/BackupService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/hqm/BackupService;)Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/hqm/BackupService;->backupLog()Z

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const-class v0, Lcom/samsung/android/hqm/BigDataModule;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/hqm/BackupService;->TAG:Ljava/lang/String;

    sput-object v1, Lcom/samsung/android/hqm/BackupService;->mContext:Landroid/content/Context;

    sput-object v1, Lcom/samsung/android/hqm/BackupService;->mBackupService:Lcom/samsung/android/hqm/BackupService;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/hqm/BackupService;->mFilePathList:Ljava/util/ArrayList;

    new-instance v0, Lcom/samsung/android/hqm/BackupService$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/hqm/BackupService$1;-><init>(Lcom/samsung/android/hqm/BackupService;)V

    iput-object v0, p0, Lcom/samsung/android/hqm/BackupService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    sput-object p1, Lcom/samsung/android/hqm/BackupService;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hqm/BackupService;->mFilePathList:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/samsung/android/hqm/BackupService;->registerIntentReceiver()V

    return-void
.end method

.method private backupLog()Z
    .locals 7

    const/4 v3, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/hqm/BackupService;->mFilePathList:Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/hqm/BackupService$FilePath;

    iget-boolean v4, v1, Lcom/samsung/android/hqm/BackupService$FilePath;->isDir:Z

    if-eqz v4, :cond_1

    iget-object v4, v1, Lcom/samsung/android/hqm/BackupService$FilePath;->originPath:Ljava/lang/String;

    iget-object v5, v1, Lcom/samsung/android/hqm/BackupService$FilePath;->backupPath:Ljava/lang/String;

    iget-object v6, v1, Lcom/samsung/android/hqm/BackupService$FilePath;->keywordList:Ljava/lang/String;

    invoke-direct {p0, v4, v5, v6}, Lcom/samsung/android/hqm/BackupService;->copyDir(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v4, Lcom/samsung/android/hqm/BackupService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "e = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/hqm/Util;->logdbg(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    sget-object v4, Lcom/samsung/android/hqm/BackupService;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "backupLog"

    invoke-static {v4, v5}, Lcom/samsung/android/hqm/Util;->logdbg(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_1
    :try_start_1
    iget-object v4, v1, Lcom/samsung/android/hqm/BackupService$FilePath;->originPath:Ljava/lang/String;

    iget-object v5, v1, Lcom/samsung/android/hqm/BackupService$FilePath;->backupPath:Ljava/lang/String;

    invoke-direct {p0, v4, v5}, Lcom/samsung/android/hqm/BackupService;->copyFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private checkFactoryReset()Z
    .locals 3

    const-string/jumbo v0, "/data/system/HWParamTime.bin"

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    return v2

    :cond_0
    const/4 v2, 0x1

    return v2
.end method

.method private copyDir(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 18

    const/4 v13, 0x1

    new-array v2, v13, [Ljava/lang/String;

    const-string/jumbo v13, "none"

    const/4 v14, 0x0

    aput-object v13, v2, v14

    new-instance v5, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v9, 0x0

    const/4 v11, 0x0

    sget-object v13, Lcom/samsung/android/hqm/BackupService;->TAG:Ljava/lang/String;

    const-string/jumbo v14, "CopyDir"

    invoke-static {v13, v14}, Lcom/samsung/android/hqm/Util;->logdbg(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v13

    if-nez v13, :cond_0

    sget-object v13, Lcom/samsung/android/hqm/BackupService;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Directory is not exist : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/samsung/android/hqm/Util;->logdbg(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v9

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/samsung/android/hqm/BackupService;->makeDir(Ljava/lang/String;)Z

    const-string/jumbo v13, "*"

    move-object/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    const/4 v12, 0x0

    :goto_0
    const/4 v13, 0x0

    array-length v14, v2

    :goto_1
    if-ge v13, v14, :cond_2

    aget-object v8, v2, v13

    sget-object v15, Lcom/samsung/android/hqm/BackupService;->TAG:Ljava/lang/String;

    invoke-static {v15, v8}, Lcom/samsung/android/hqm/Util;->logdbg(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_1
    const/4 v12, 0x1

    const-string/jumbo v13, ":"

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_2
    if-eqz v9, :cond_6

    const/4 v13, 0x0

    array-length v15, v9

    move v14, v13

    :goto_2
    if-ge v14, v15, :cond_6

    aget-object v6, v9, v14

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    const/4 v13, 0x0

    array-length v0, v2

    move/from16 v16, v0

    :goto_3
    move/from16 v0, v16

    if-ge v13, v0, :cond_5

    aget-object v8, v2, v13

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_3

    if-nez v12, :cond_4

    :cond_3
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v3}, Lcom/samsung/android/hqm/BackupService;->copyFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    :cond_5
    add-int/lit8 v13, v14, 0x1

    move v14, v13

    goto :goto_2

    :catch_0
    move-exception v4

    sget-object v13, Lcom/samsung/android/hqm/BackupService;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "copyDir : e = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/samsung/android/hqm/Util;->log(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    return-void
.end method

.method private copyFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v9, 0x0

    const/4 v14, 0x0

    const/4 v3, 0x0

    const/4 v8, 0x0

    new-instance v11, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v11, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    sget-object v4, Lcom/samsung/android/hqm/BackupService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "not exist : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/hqm/Util;->logdbg(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-wide/16 v12, 0x0

    :try_start_0
    new-instance v10, Ljava/io/FileInputStream;

    move-object/from16 v0, p1

    invoke-direct {v10, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v15, Ljava/io/FileOutputStream;

    move-object/from16 v0, p2

    invoke-direct {v15, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v10}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v3

    invoke-virtual {v15}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v8

    if-eqz v3, :cond_1

    if-eqz v8, :cond_1

    const-wide/16 v4, 0x0

    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v6

    invoke-virtual/range {v3 .. v8}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J

    move-result-wide v12

    const-wide/16 v4, 0x0

    cmp-long v4, v12, v4

    if-gez v4, :cond_1

    sget-object v4, Lcom/samsung/android/hqm/BackupService;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "Negative number of bytes returned!!!"

    invoke-static {v4, v5}, Lcom/samsung/android/hqm/Util;->logdbg(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :cond_1
    if-eqz v10, :cond_2

    :try_start_3
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V

    :cond_2
    if-eqz v15, :cond_3

    invoke-virtual {v15}, Ljava/io/FileOutputStream;->close()V

    :cond_3
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->close()V

    :cond_4
    if-eqz v8, :cond_5

    invoke-virtual {v8}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :cond_5
    :goto_0
    move-object v14, v15

    move-object v9, v10

    :cond_6
    :goto_1
    return-void

    :catch_0
    move-exception v2

    sget-object v4, Lcom/samsung/android/hqm/BackupService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "copyFile : e = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/hqm/Util;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v2

    :goto_2
    :try_start_4
    sget-object v4, Lcom/samsung/android/hqm/BackupService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "copyFile : e = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/hqm/Util;->logdbg(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v9, :cond_7

    :try_start_5
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V

    :cond_7
    if-eqz v14, :cond_8

    invoke-virtual {v14}, Ljava/io/FileOutputStream;->close()V

    :cond_8
    if-eqz v3, :cond_9

    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->close()V

    :cond_9
    if-eqz v8, :cond_6

    invoke-virtual {v8}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_1

    :catch_2
    move-exception v2

    sget-object v4, Lcom/samsung/android/hqm/BackupService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "copyFile : e = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/hqm/Util;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception v4

    :goto_3
    if-eqz v9, :cond_a

    :try_start_6
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V

    :cond_a
    if-eqz v14, :cond_b

    invoke-virtual {v14}, Ljava/io/FileOutputStream;->close()V

    :cond_b
    if-eqz v3, :cond_c

    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->close()V

    :cond_c
    if-eqz v8, :cond_d

    invoke-virtual {v8}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    :cond_d
    :goto_4
    throw v4

    :catch_3
    move-exception v2

    sget-object v5, Lcom/samsung/android/hqm/BackupService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "copyFile : e = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/hqm/Util;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :catchall_1
    move-exception v4

    move-object v9, v10

    goto :goto_3

    :catchall_2
    move-exception v4

    move-object v14, v15

    move-object v9, v10

    goto :goto_3

    :catch_4
    move-exception v2

    move-object v9, v10

    goto/16 :goto_2

    :catch_5
    move-exception v2

    move-object v14, v15

    move-object v9, v10

    goto/16 :goto_2
.end method

.method private deleteDir(Ljava/lang/String;)I
    .locals 3

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/samsung/android/hqm/BackupService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "delete Dir"

    invoke-static {v1, v2}, Lcom/samsung/android/hqm/Util;->logdbg(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, -0x1

    return v1

    :cond_1
    invoke-direct {p0, v0}, Lcom/samsung/android/hqm/BackupService;->deleteDirFile(Ljava/io/File;)I

    move-result v1

    return v1
.end method

.method private deleteDirFile(Ljava/io/File;)I
    .locals 7

    const/4 v6, -0x1

    sget-object v3, Lcom/samsung/android/hqm/BackupService;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "delete file"

    invoke-static {v3, v4}, Lcom/samsung/android/hqm/Util;->logdbg(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_1

    :cond_0
    return v6

    :cond_1
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    if-nez v2, :cond_2

    return v6

    :cond_2
    const/4 v3, 0x0

    array-length v4, v2

    :goto_0
    if-ge v3, v4, :cond_4

    aget-object v1, v2, v3

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-direct {p0, v1}, Lcom/samsung/android/hqm/BackupService;->deleteDirFile(Ljava/io/File;)I

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    sget-object v3, Lcom/samsung/android/hqm/BackupService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "deleteDirFile : e = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/hqm/Util;->log(Ljava/lang/String;Ljava/lang/String;)V

    return v6

    :cond_4
    :try_start_1
    invoke-virtual {p1}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v3, 0x1

    return v3
.end method

.method private deleteFile(Ljava/lang/String;)I
    .locals 4

    const/4 v3, 0x1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/samsung/android/hqm/BackupService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "delete file"

    invoke-static {v1, v2}, Lcom/samsung/android/hqm/Util;->logdbg(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, -0x1

    return v1

    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_2

    return v3

    :cond_2
    return v3
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/samsung/android/hqm/BackupService;
    .locals 2

    const-class v1, Lcom/samsung/android/hqm/BackupService;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/samsung/android/hqm/BackupService;->mBackupService:Lcom/samsung/android/hqm/BackupService;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/hqm/BackupService;

    invoke-direct {v0, p0}, Lcom/samsung/android/hqm/BackupService;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/samsung/android/hqm/BackupService;->mBackupService:Lcom/samsung/android/hqm/BackupService;

    :cond_0
    sget-object v0, Lcom/samsung/android/hqm/BackupService;->mBackupService:Lcom/samsung/android/hqm/BackupService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private makeDir(Ljava/lang/String;)Z
    .locals 9

    const/4 v4, 0x0

    const/4 v2, 0x0

    :try_start_0
    const-string/jumbo v6, "/"

    invoke-virtual {p1, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v6, 0x0

    invoke-virtual {p1, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    sget-object v6, Lcom/samsung/android/hqm/BackupService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "makeDir : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/hqm/Util;->logdbg(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    sget-object v6, Lcom/samsung/android/hqm/BackupService;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "directory exist"

    invoke-static {v6, v7}, Lcom/samsung/android/hqm/Util;->logdbg(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_0
    move-object v4, v5

    :goto_1
    return v2

    :cond_0
    sget-object v6, Lcom/samsung/android/hqm/BackupService;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "directory not exist"

    invoke-static {v6, v7}, Lcom/samsung/android/hqm/Util;->logdbg(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_2
    sget-object v6, Lcom/samsung/android/hqm/BackupService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "e = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/hqm/Util;->logdbg(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v4, v5

    goto :goto_2
.end method

.method private registerIntentReceiver()V
    .locals 6

    const/4 v4, 0x0

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v0, "android.intent.action.FACTORY_RESET"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/hqm/BackupService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/hqm/BackupService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method private restoreLog()Z
    .locals 9

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/samsung/android/hqm/BackupService;->checkFactoryReset()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v6, Lcom/samsung/android/hqm/BackupService;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "not fr"

    invoke-static {v6, v7}, Lcom/samsung/android/hqm/Util;->logdbg(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x0

    return v6

    :cond_0
    :try_start_0
    iget-object v6, p0, Lcom/samsung/android/hqm/BackupService;->mFilePathList:Ljava/util/ArrayList;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/hqm/BackupService$FilePath;

    iget-boolean v6, v2, Lcom/samsung/android/hqm/BackupService$FilePath;->isDir:Z

    if-nez v6, :cond_2

    if-eqz v1, :cond_1

    iget-object v6, v2, Lcom/samsung/android/hqm/BackupService$FilePath;->restorePath:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/samsung/android/hqm/BackupService;->makeDir(Ljava/lang/String;)Z

    iget-object v6, v2, Lcom/samsung/android/hqm/BackupService$FilePath;->backupPath:Ljava/lang/String;

    iget-object v7, v2, Lcom/samsung/android/hqm/BackupService$FilePath;->restorePath:Ljava/lang/String;

    invoke-direct {p0, v6, v7}, Lcom/samsung/android/hqm/BackupService;->copyFile(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, v2, Lcom/samsung/android/hqm/BackupService$FilePath;->backupPath:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/samsung/android/hqm/BackupService;->deleteFile(Ljava/lang/String;)I

    move-result v5

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_1

    iget-object v6, v2, Lcom/samsung/android/hqm/BackupService$FilePath;->backupPath:Ljava/lang/String;

    iget-object v7, v2, Lcom/samsung/android/hqm/BackupService$FilePath;->restorePath:Ljava/lang/String;

    const-string/jumbo v8, "*"

    invoke-direct {p0, v6, v7, v8}, Lcom/samsung/android/hqm/BackupService;->copyDir(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, v2, Lcom/samsung/android/hqm/BackupService$FilePath;->backupPath:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/samsung/android/hqm/BackupService;->deleteDir(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v6, Lcom/samsung/android/hqm/BackupService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "e = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/hqm/Util;->logdbg(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    sget-object v6, Lcom/samsung/android/hqm/BackupService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "restoreLog "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/hqm/Util;->logdbg(Ljava/lang/String;Ljava/lang/String;)V

    return v4
.end method


# virtual methods
.method public addBackupFileList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/samsung/android/hqm/BackupService;->mFilePathList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/hqm/BackupService;->mFilePathList:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/hqm/BackupService$FilePath;

    invoke-direct {v1, p1, p2, p3, v2}, Lcom/samsung/android/hqm/BackupService$FilePath;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/hqm/BackupService$FilePath;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/hqm/BackupService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "add backup file : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/hqm/Util;->logdbg(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public addBackupFileList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Z
    .locals 8

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/samsung/android/hqm/BackupService;->mFilePathList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v7, p0, Lcom/samsung/android/hqm/BackupService;->mFilePathList:Ljava/util/ArrayList;

    new-instance v0, Lcom/samsung/android/hqm/BackupService$FilePath;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/hqm/BackupService$FilePath;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lcom/samsung/android/hqm/BackupService$FilePath;)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/hqm/BackupService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "add backup file : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/hqm/Util;->logdbg(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public startRestore()Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/hqm/BackupService;->restoreLog()Z

    move-result v0

    return v0
.end method

.method public testBackup(I)V
    .locals 2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    sget-object v0, Lcom/samsung/android/hqm/BackupService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "backup test"

    invoke-static {v0, v1}, Lcom/samsung/android/hqm/Util;->logdbg(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/hqm/BackupService;->backupLog()Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    sget-object v0, Lcom/samsung/android/hqm/BackupService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "restore test"

    invoke-static {v0, v1}, Lcom/samsung/android/hqm/Util;->logdbg(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/hqm/BackupService;->restoreLog()Z

    goto :goto_0
.end method
