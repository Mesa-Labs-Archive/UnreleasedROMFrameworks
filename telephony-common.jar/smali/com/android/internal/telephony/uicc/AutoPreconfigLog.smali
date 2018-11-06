.class public Lcom/android/internal/telephony/uicc/AutoPreconfigLog;
.super Ljava/lang/Object;
.source "AutoPreconfigLog.java"


# static fields
.field private static final AUTOPRECONFIG_LOG:Ljava/lang/String; = "/data/log/autopreconfig.log"

.field static final MAX_LOG_SIZE:I = 0x300000

.field private static sInstance:Lcom/android/internal/telephony/uicc/AutoPreconfigLog;


# instance fields
.field private mNow:Landroid/text/format/Time;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/telephony/uicc/AutoPreconfigLog;->sInstance:Lcom/android/internal/telephony/uicc/AutoPreconfigLog;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AutoPreconfigLog;->mNow:Landroid/text/format/Time;

    return-void
.end method

.method private static checkOverMaxSize()Z
    .locals 6

    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "/data/log/autopreconfig.log"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/32 v4, 0x300000

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static declared-synchronized getInstance()Lcom/android/internal/telephony/uicc/AutoPreconfigLog;
    .locals 2

    const-class v1, Lcom/android/internal/telephony/uicc/AutoPreconfigLog;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/uicc/AutoPreconfigLog;->sInstance:Lcom/android/internal/telephony/uicc/AutoPreconfigLog;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/internal/telephony/uicc/AutoPreconfigLog;->checkOverMaxSize()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/uicc/AutoPreconfigLog;->removeLogFile()V

    :cond_0
    new-instance v0, Lcom/android/internal/telephony/uicc/AutoPreconfigLog;

    invoke-direct {v0}, Lcom/android/internal/telephony/uicc/AutoPreconfigLog;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/uicc/AutoPreconfigLog;->sInstance:Lcom/android/internal/telephony/uicc/AutoPreconfigLog;

    :cond_1
    sget-object v0, Lcom/android/internal/telephony/uicc/AutoPreconfigLog;->sInstance:Lcom/android/internal/telephony/uicc/AutoPreconfigLog;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static removeLogFile()V
    .locals 2

    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "/data/log/autopreconfig.log"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    return-void
.end method

.method private write(Ljava/lang/String;)V
    .locals 8

    const/4 v1, 0x0

    const/4 v3, 0x0

    :try_start_0
    new-instance v2, Ljava/io/File;

    const-string/jumbo v5, "/data/log/autopreconfig.log"

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v5, 0x1

    const/4 v6, 0x0

    :try_start_1
    invoke-virtual {v2, v5, v6}, Ljava/io/File;->setReadable(ZZ)Z

    new-instance v4, Ljava/io/OutputStreamWriter;

    new-instance v5, Ljava/io/FileOutputStream;

    const/4 v6, 0x1

    invoke-direct {v5, v2, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    const-string/jumbo v6, "UTF-8"

    invoke-direct {v4, v5, v6}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/AutoPreconfigLog;->mNow:Landroid/text/format/Time;

    invoke-virtual {v5}, Landroid/text/format/Time;->setToNow()V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/AutoPreconfigLog;->mNow:Landroid/text/format/Time;

    const-string/jumbo v7, "%m-%d %H:%M:%S"

    invoke-virtual {v6, v7}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v4, :cond_0

    :try_start_3
    invoke-virtual {v4}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_0
    :goto_0
    move-object v3, v4

    move-object v1, v2

    :cond_1
    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_2
    if-eqz v3, :cond_1

    :try_start_4
    invoke-virtual {v3}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1

    :catchall_0
    move-exception v5

    :goto_3
    if-eqz v3, :cond_2

    :try_start_5
    invoke-virtual {v3}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_2
    :goto_4
    throw v5

    :catch_3
    move-exception v0

    goto :goto_4

    :catchall_1
    move-exception v5

    move-object v1, v2

    goto :goto_3

    :catchall_2
    move-exception v5

    move-object v3, v4

    move-object v1, v2

    goto :goto_3

    :catch_4
    move-exception v0

    move-object v1, v2

    goto :goto_2

    :catch_5
    move-exception v0

    move-object v3, v4

    move-object v1, v2

    goto :goto_2
.end method


# virtual methods
.method public declared-synchronized log(Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "0x4f4c"

    const-string/jumbo v1, "ro.debug_level"

    const-string/jumbo v2, "0x4f4c"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/AutoPreconfigLog;->write(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
