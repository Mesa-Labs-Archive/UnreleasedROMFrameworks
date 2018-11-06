.class public Lcom/android/server/wifi/WifiConfigStore;
.super Ljava/lang/Object;
.source "WifiConfigStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/WifiConfigStore$1;,
        Lcom/android/server/wifi/WifiConfigStore$StoreData;,
        Lcom/android/server/wifi/WifiConfigStore$StoreFile;
    }
.end annotation


# static fields
.field private static final BUFFERED_WRITE_ALARM_INTERVAL_MS:I = 0x2710

.field public static final BUFFERED_WRITE_ALARM_TAG:Ljava/lang/String; = "WriteBufferAlarm"

.field private static final CURRENT_CONFIG_STORE_DATA_VERSION:I = 0x1

.field private static final INITIAL_CONFIG_STORE_DATA_VERSION:I = 0x1

.field private static final STORE_DIRECTORY_NAME:Ljava/lang/String; = "wifi"

.field private static final STORE_FILE_NAME:Ljava/lang/String; = "WifiConfigStore.xml"

.field private static final TAG:Ljava/lang/String; = "WifiConfigStore"

.field private static final XML_TAG_DOCUMENT_HEADER:Ljava/lang/String; = "WifiConfigStoreData"

.field private static final XML_TAG_VERSION:Ljava/lang/String; = "Version"

.field private static final mLocalLog:Landroid/util/LocalLog;


# instance fields
.field private final mAlarmManager:Landroid/app/AlarmManager;

.field private final mBufferedWriteListener:Landroid/app/AlarmManager$OnAlarmListener;

.field private mBufferedWritePending:Z

.field private final mClock:Lcom/android/server/wifi/Clock;

.field private final mEventHandler:Landroid/os/Handler;

.field private mSharedStore:Lcom/android/server/wifi/WifiConfigStore$StoreFile;

.field private final mStoreDataList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/wifi/WifiConfigStore$StoreData;",
            ">;"
        }
    .end annotation
.end field

.field private mUserStore:Lcom/android/server/wifi/WifiConfigStore$StoreFile;

.field private mVerboseLoggingEnabled:Z


# direct methods
.method static synthetic -wrap0(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/android/server/wifi/WifiConfigStore;->localLog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/wifi/WifiConfigStore;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wifi/WifiConfigStore;->writeBufferedData()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v1, Landroid/util/LocalLog;

    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x80

    :goto_0
    invoke-direct {v1, v0}, Landroid/util/LocalLog;-><init>(I)V

    sput-object v1, Lcom/android/server/wifi/WifiConfigStore;->mLocalLog:Landroid/util/LocalLog;

    return-void

    :cond_0
    const/16 v0, 0x100

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/wifi/Clock;Lcom/android/server/wifi/WifiConfigStore$StoreFile;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mVerboseLoggingEnabled:Z

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mBufferedWritePending:Z

    new-instance v0, Lcom/android/server/wifi/WifiConfigStore$1;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/WifiConfigStore$1;-><init>(Lcom/android/server/wifi/WifiConfigStore;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mBufferedWriteListener:Landroid/app/AlarmManager$OnAlarmListener;

    const-string/jumbo v0, "alarm"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mAlarmManager:Landroid/app/AlarmManager;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mEventHandler:Landroid/os/Handler;

    iput-object p3, p0, Lcom/android/server/wifi/WifiConfigStore;->mClock:Lcom/android/server/wifi/Clock;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mStoreDataList:Ljava/util/Map;

    iput-object p4, p0, Lcom/android/server/wifi/WifiConfigStore;->mSharedStore:Lcom/android/server/wifi/WifiConfigStore$StoreFile;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mUserStore:Lcom/android/server/wifi/WifiConfigStore$StoreFile;

    return-void
.end method

.method private static createFile(Ljava/io/File;)Lcom/android/server/wifi/WifiConfigStore$StoreFile;
    .locals 4

    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "wifi"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Could not find file "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/wifi/WifiConfigStore;->localLog(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Could not create store directory "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/wifi/WifiConfigStore;->localLog(Ljava/lang/String;)V

    :cond_0
    new-instance v1, Lcom/android/server/wifi/WifiConfigStore$StoreFile;

    new-instance v2, Ljava/io/File;

    const-string/jumbo v3, "WifiConfigStore.xml"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/android/server/wifi/WifiConfigStore$StoreFile;-><init>(Ljava/io/File;)V

    return-object v1
.end method

.method public static createSharedFile()Lcom/android/server/wifi/WifiConfigStore$StoreFile;
    .locals 1

    invoke-static {}, Landroid/os/Environment;->getDataMiscDirectory()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wifi/WifiConfigStore;->createFile(Ljava/io/File;)Lcom/android/server/wifi/WifiConfigStore$StoreFile;

    move-result-object v0

    return-object v0
.end method

.method public static createUserFile(I)Lcom/android/server/wifi/WifiConfigStore$StoreFile;
    .locals 1

    invoke-static {p0}, Landroid/os/Environment;->getDataMiscCeDirectory(I)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wifi/WifiConfigStore;->createFile(Ljava/io/File;)Lcom/android/server/wifi/WifiConfigStore$StoreFile;

    move-result-object v0

    return-object v0
.end method

.method private deserializeData([BZ)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v8, 0x0

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v5}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v2, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    add-int/lit8 v3, v5, 0x1

    invoke-static {v1}, Lcom/android/server/wifi/WifiConfigStore;->parseDocumentStartAndVersionFromXml(Lorg/xmlpull/v1/XmlPullParser;)I

    const/4 v5, 0x1

    new-array v0, v5, [Ljava/lang/String;

    :goto_0
    invoke-static {v1, v0, v3}, Lcom/android/server/wifi/util/XmlUtil;->gotoNextSectionOrEnd(Lorg/xmlpull/v1/XmlPullParser;[Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/server/wifi/WifiConfigStore;->mStoreDataList:Ljava/util/Map;

    aget-object v6, v0, v8

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wifi/WifiConfigStore$StoreData;

    if-nez v4, :cond_1

    new-instance v5, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Unknown store data: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v0, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_1
    add-int/lit8 v5, v3, 0x1

    invoke-interface {v4, v1, v5, p2}, Lcom/android/server/wifi/WifiConfigStore$StoreData;->deserializeData(Lorg/xmlpull/v1/XmlPullParser;IZ)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "Dump of WifiConfigStore"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    sget-object v0, Lcom/android/server/wifi/WifiConfigStore;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v0, p0, p1, p2}, Landroid/util/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method private static localLog(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "WifiConfigStore"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/server/wifi/WifiConfigStore;->mLocalLog:Landroid/util/LocalLog;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/wifi/WifiConfigStore;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v0, p0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static parseDocumentStartAndVersionFromXml(Lorg/xmlpull/v1/XmlPullParser;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x1

    const-string/jumbo v1, "WifiConfigStoreData"

    invoke-static {p0, v1}, Lcom/android/server/wifi/util/XmlUtil;->gotoDocumentStart(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    const-string/jumbo v1, "Version"

    invoke-static {p0, v1}, Lcom/android/server/wifi/util/XmlUtil;->readNextValueWithName(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lt v0, v2, :cond_0

    if-le v0, v2, :cond_1

    :cond_0
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid version of data: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    return v0
.end method

.method private resetStoreData(Z)V
    .locals 3

    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mStoreDataList:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wifi/WifiConfigStore$StoreData;

    invoke-interface {v2, p1}, Lcom/android/server/wifi/WifiConfigStore$StoreData;->resetData(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private serializeData(Z)[B
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v2, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v2}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v6}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v3, v6}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    const-string/jumbo v6, "WifiConfigStoreData"

    invoke-static {v2, v6}, Lcom/android/server/wifi/util/XmlUtil;->writeDocumentStart(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    const-string/jumbo v6, "Version"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v2, v6, v7}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v6, p0, Lcom/android/server/wifi/WifiConfigStore;->mStoreDataList:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wifi/WifiConfigStore$StoreData;

    if-eqz p1, :cond_1

    invoke-interface {v4}, Lcom/android/server/wifi/WifiConfigStore$StoreData;->supportShareData()Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-nez v6, :cond_0

    :cond_1
    invoke-static {v2, v5}, Lcom/android/server/wifi/util/XmlUtil;->writeNextSectionStart(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    invoke-interface {v4, v2, p1}, Lcom/android/server/wifi/WifiConfigStore$StoreData;->serializeData(Lorg/xmlpull/v1/XmlSerializer;Z)V

    invoke-static {v2, v5}, Lcom/android/server/wifi/util/XmlUtil;->writeNextSectionEnd(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string/jumbo v6, "WifiConfigStoreData"

    invoke-static {v2, v6}, Lcom/android/server/wifi/util/XmlUtil;->writeDocumentEnd(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    return-object v6
.end method

.method private startBufferedWriteAlarm()V
    .locals 7

    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mBufferedWritePending:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mClock:Lcom/android/server/wifi/Clock;

    invoke-virtual {v1}, Lcom/android/server/wifi/Clock;->getElapsedSinceBootMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x2710

    add-long/2addr v2, v4

    const-string/jumbo v4, "WriteBufferAlarm"

    iget-object v5, p0, Lcom/android/server/wifi/WifiConfigStore;->mBufferedWriteListener:Landroid/app/AlarmManager$OnAlarmListener;

    iget-object v6, p0, Lcom/android/server/wifi/WifiConfigStore;->mEventHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->set(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mBufferedWritePending:Z

    :cond_0
    return-void
.end method

.method private writeBufferedData()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiConfigStore;->stopBufferedWriteAlarm()V

    iget-object v4, p0, Lcom/android/server/wifi/WifiConfigStore;->mClock:Lcom/android/server/wifi/Clock;

    invoke-virtual {v4}, Lcom/android/server/wifi/Clock;->getElapsedSinceBootMillis()J

    move-result-wide v0

    iget-object v4, p0, Lcom/android/server/wifi/WifiConfigStore;->mSharedStore:Lcom/android/server/wifi/WifiConfigStore$StoreFile;

    invoke-virtual {v4}, Lcom/android/server/wifi/WifiConfigStore$StoreFile;->writeBufferedRawData()V

    iget-object v4, p0, Lcom/android/server/wifi/WifiConfigStore;->mUserStore:Lcom/android/server/wifi/WifiConfigStore$StoreFile;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/wifi/WifiConfigStore;->mUserStore:Lcom/android/server/wifi/WifiConfigStore$StoreFile;

    invoke-virtual {v4}, Lcom/android/server/wifi/WifiConfigStore$StoreFile;->writeBufferedRawData()V

    :cond_0
    iget-object v4, p0, Lcom/android/server/wifi/WifiConfigStore;->mClock:Lcom/android/server/wifi/Clock;

    invoke-virtual {v4}, Lcom/android/server/wifi/Clock;->getElapsedSinceBootMillis()J

    move-result-wide v4

    sub-long v2, v4, v0

    const-string/jumbo v4, "WifiConfigStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Writing to stores completed in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " ms."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public areStoresPresent()Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "areStoresPresent SharedStore - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mSharedStore:Lcom/android/server/wifi/WifiConfigStore$StoreFile;

    invoke-static {v1}, Lcom/android/server/wifi/WifiConfigStore$StoreFile;->-get0(Lcom/android/server/wifi/WifiConfigStore$StoreFile;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "  exist "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mSharedStore:Lcom/android/server/wifi/WifiConfigStore$StoreFile;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiConfigStore$StoreFile;->exists()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wifi/WifiConfigStore;->localLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mUserStore:Lcom/android/server/wifi/WifiConfigStore$StoreFile;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "areStoresPresent UserStore - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mUserStore:Lcom/android/server/wifi/WifiConfigStore$StoreFile;

    invoke-static {v1}, Lcom/android/server/wifi/WifiConfigStore$StoreFile;->-get0(Lcom/android/server/wifi/WifiConfigStore$StoreFile;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "  exist "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mUserStore:Lcom/android/server/wifi/WifiConfigStore$StoreFile;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiConfigStore$StoreFile;->exists()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wifi/WifiConfigStore;->localLog(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mSharedStore:Lcom/android/server/wifi/WifiConfigStore$StoreFile;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiConfigStore$StoreFile;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mUserStore:Lcom/android/server/wifi/WifiConfigStore$StoreFile;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mUserStore:Lcom/android/server/wifi/WifiConfigStore$StoreFile;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiConfigStore$StoreFile;->exists()Z

    move-result v0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public enableVerboseLogging(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wifi/WifiConfigStore;->mVerboseLoggingEnabled:Z

    return-void
.end method

.method public read()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v10, 0x1

    const/4 v9, 0x0

    invoke-direct {p0, v10}, Lcom/android/server/wifi/WifiConfigStore;->resetStoreData(Z)V

    invoke-direct {p0, v9}, Lcom/android/server/wifi/WifiConfigStore;->resetStoreData(Z)V

    iget-object v6, p0, Lcom/android/server/wifi/WifiConfigStore;->mClock:Lcom/android/server/wifi/Clock;

    invoke-virtual {v6}, Lcom/android/server/wifi/Clock;->getElapsedSinceBootMillis()J

    move-result-wide v0

    iget-object v6, p0, Lcom/android/server/wifi/WifiConfigStore;->mSharedStore:Lcom/android/server/wifi/WifiConfigStore$StoreFile;

    invoke-virtual {v6}, Lcom/android/server/wifi/WifiConfigStore$StoreFile;->readRawData()[B

    move-result-object v4

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/server/wifi/WifiConfigStore;->mUserStore:Lcom/android/server/wifi/WifiConfigStore$StoreFile;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/server/wifi/WifiConfigStore;->mUserStore:Lcom/android/server/wifi/WifiConfigStore$StoreFile;

    invoke-virtual {v6}, Lcom/android/server/wifi/WifiConfigStore$StoreFile;->readRawData()[B

    move-result-object v5

    :cond_0
    iget-object v6, p0, Lcom/android/server/wifi/WifiConfigStore;->mClock:Lcom/android/server/wifi/Clock;

    invoke-virtual {v6}, Lcom/android/server/wifi/Clock;->getElapsedSinceBootMillis()J

    move-result-wide v6

    sub-long v2, v6, v0

    const-string/jumbo v6, "WifiConfigStore"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Reading from stores completed in "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " ms."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v4, v10}, Lcom/android/server/wifi/WifiConfigStore;->deserializeData([BZ)V

    invoke-direct {p0, v5, v9}, Lcom/android/server/wifi/WifiConfigStore;->deserializeData([BZ)V

    return-void
.end method

.method public recoverySharedStore()V
    .locals 8

    new-instance v0, Ljava/io/File;

    const-string/jumbo v3, "/data/misc/wifi/WifiConfigStoreBackup.xml"

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    const-string/jumbo v3, "/data/misc/wifi/WifiConfigStore.xml"

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x400

    add-long/2addr v4, v6

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-gez v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "recoverySharedStore origin file size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", backup file size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/wifi/WifiConfigStore;->localLog(Ljava/lang/String;)V

    invoke-static {v0, v1}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/android/server/wifi/WifiConfigStore;->createSharedFile()Lcom/android/server/wifi/WifiConfigStore$StoreFile;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->mSharedStore:Lcom/android/server/wifi/WifiConfigStore$StoreFile;

    const-string/jumbo v3, "recoverySharedStore complete"

    invoke-static {v3}, Lcom/android/server/wifi/WifiConfigStore;->localLog(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v3, "Copy from backup to origin is failed."

    invoke-static {v3}, Lcom/android/server/wifi/WifiConfigStore;->localLog(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "recoverySharedStore SecurityException "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/wifi/WifiConfigStore;->localLog(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    :try_start_1
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "recoverySharedStore origin file does not exist, backup file size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/wifi/WifiConfigStore;->localLog(Ljava/lang/String;)V

    invoke-static {v0, v1}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {}, Lcom/android/server/wifi/WifiConfigStore;->createSharedFile()Lcom/android/server/wifi/WifiConfigStore$StoreFile;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->mSharedStore:Lcom/android/server/wifi/WifiConfigStore$StoreFile;

    const-string/jumbo v3, "recoverySharedStore complete"

    invoke-static {v3}, Lcom/android/server/wifi/WifiConfigStore;->localLog(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string/jumbo v3, "Copy from backup to origin is failed."

    invoke-static {v3}, Lcom/android/server/wifi/WifiConfigStore;->localLog(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public registerStoreData(Lcom/android/server/wifi/WifiConfigStore$StoreData;)Z
    .locals 2

    if-nez p1, :cond_0

    const-string/jumbo v0, "WifiConfigStore"

    const-string/jumbo v1, "Unable to register null store data"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mStoreDataList:Ljava/util/Map;

    invoke-interface {p1}, Lcom/android/server/wifi/WifiConfigStore$StoreData;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    return v0
.end method

.method public setUserStore(Lcom/android/server/wifi/WifiConfigStore$StoreFile;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wifi/WifiConfigStore;->mUserStore:Lcom/android/server/wifi/WifiConfigStore$StoreFile;

    return-void
.end method

.method public stopBufferedWriteAlarm()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mBufferedWritePending:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mBufferedWriteListener:Landroid/app/AlarmManager$OnAlarmListener;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mBufferedWritePending:Z

    :cond_0
    return-void
.end method

.method public switchUserStoreAndRead(Lcom/android/server/wifi/WifiConfigStore$StoreFile;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v8, 0x0

    invoke-direct {p0, v8}, Lcom/android/server/wifi/WifiConfigStore;->resetStoreData(Z)V

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiConfigStore;->stopBufferedWriteAlarm()V

    iput-object p1, p0, Lcom/android/server/wifi/WifiConfigStore;->mUserStore:Lcom/android/server/wifi/WifiConfigStore$StoreFile;

    iget-object v5, p0, Lcom/android/server/wifi/WifiConfigStore;->mClock:Lcom/android/server/wifi/Clock;

    invoke-virtual {v5}, Lcom/android/server/wifi/Clock;->getElapsedSinceBootMillis()J

    move-result-wide v0

    iget-object v5, p0, Lcom/android/server/wifi/WifiConfigStore;->mUserStore:Lcom/android/server/wifi/WifiConfigStore$StoreFile;

    invoke-virtual {v5}, Lcom/android/server/wifi/WifiConfigStore$StoreFile;->readRawData()[B

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wifi/WifiConfigStore;->mClock:Lcom/android/server/wifi/Clock;

    invoke-virtual {v5}, Lcom/android/server/wifi/Clock;->getElapsedSinceBootMillis()J

    move-result-wide v6

    sub-long v2, v6, v0

    const-string/jumbo v5, "WifiConfigStore"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Reading from user store completed in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " ms."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v4, v8}, Lcom/android/server/wifi/WifiConfigStore;->deserializeData([BZ)V

    return-void
.end method

.method public write(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiConfigStore;->serializeData(Z)[B

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mSharedStore:Lcom/android/server/wifi/WifiConfigStore$StoreFile;

    invoke-virtual {v2, v0}, Lcom/android/server/wifi/WifiConfigStore$StoreFile;->storeRawDataToWrite([B)V

    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mUserStore:Lcom/android/server/wifi/WifiConfigStore$StoreFile;

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiConfigStore;->serializeData(Z)[B

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mUserStore:Lcom/android/server/wifi/WifiConfigStore$StoreFile;

    invoke-virtual {v2, v1}, Lcom/android/server/wifi/WifiConfigStore$StoreFile;->storeRawDataToWrite([B)V

    :cond_0
    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/android/server/wifi/WifiConfigStore;->writeBufferedData()V

    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConfigStore;->startBufferedWriteAlarm()V

    goto :goto_0
.end method
