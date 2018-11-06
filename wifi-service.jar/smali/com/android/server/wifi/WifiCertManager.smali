.class public Lcom/android/server/wifi/WifiCertManager;
.super Ljava/lang/Object;
.source "WifiCertManager.java"


# static fields
.field private static final CONFIG_FILE:Ljava/lang/String;

.field private static final SEP:Ljava/lang/String; = "\n"

.field private static final TAG:Ljava/lang/String; = "WifiCertManager"


# instance fields
.field private final mAffiliatedUserOnlyCerts:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mConfigFile:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private final mWriter:Lcom/android/server/net/DelayedDiskWrite;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/misc/wifi/affiliatedcerts.txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/wifi/WifiCertManager;->CONFIG_FILE:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    sget-object v0, Lcom/android/server/wifi/WifiCertManager;->CONFIG_FILE:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/android/server/wifi/WifiCertManager;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, p0, Lcom/android/server/wifi/WifiCertManager;->mAffiliatedUserOnlyCerts:Ljava/util/Set;

    new-instance v3, Lcom/android/server/net/DelayedDiskWrite;

    invoke-direct {v3}, Lcom/android/server/net/DelayedDiskWrite;-><init>()V

    iput-object v3, p0, Lcom/android/server/wifi/WifiCertManager;->mWriter:Lcom/android/server/net/DelayedDiskWrite;

    iput-object p1, p0, Lcom/android/server/wifi/WifiCertManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/wifi/WifiCertManager;->mConfigFile:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiCertManager;->readConfigFile()[B

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v3, Ljava/lang/String;

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v3, v0, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    const-string/jumbo v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    array-length v4, v2

    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v1, v2, v3

    iget-object v5, p0, Lcom/android/server/wifi/WifiCertManager;->mAffiliatedUserOnlyCerts:Ljava/util/Set;

    invoke-interface {v5, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/android/server/wifi/WifiCertManager;->mAffiliatedUserOnlyCerts:Ljava/util/Set;

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiCertManager;->listClientCertsForAllUsers()[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-direct {p0}, Lcom/android/server/wifi/WifiCertManager;->writeConfig()V

    :cond_2
    return-void
.end method

.method private writeConfig()V
    .locals 4

    iget-object v2, p0, Lcom/android/server/wifi/WifiCertManager;->mAffiliatedUserOnlyCerts:Ljava/util/Set;

    iget-object v3, p0, Lcom/android/server/wifi/WifiCertManager;->mAffiliatedUserOnlyCerts:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    const-string/jumbo v2, "\n"

    invoke-static {v2, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/wifi/WifiCertManager;->writeConfigFile([B)V

    return-void
.end method


# virtual methods
.method public hideCertFromUnaffiliatedUsers(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wifi/WifiCertManager;->mAffiliatedUserOnlyCerts:Ljava/util/Set;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "USRPKEY_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/wifi/WifiCertManager;->writeConfig()V

    :cond_0
    return-void
.end method

.method protected isAffiliatedUser()Z
    .locals 5

    const-string/jumbo v3, "device_policy"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/admin/IDevicePolicyManager;

    move-result-object v1

    const/4 v2, 0x0

    :try_start_0
    invoke-interface {v1}, Landroid/app/admin/IDevicePolicyManager;->isAffiliatedUser()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_0
    return v2

    :catch_0
    move-exception v0

    const-string/jumbo v3, "WifiCertManager"

    const-string/jumbo v4, "failed to check user affiliation"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected listClientCertsForAllUsers()[Ljava/lang/String;
    .locals 3

    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    const-string/jumbo v1, "USRPKEY_"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/security/KeyStore;->list(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public listClientCertsForCurrentUser()[Ljava/lang/String;
    .locals 6

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiCertManager;->listClientCertsForAllUsers()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiCertManager;->isAffiliatedUser()Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v1

    :cond_0
    const/4 v3, 0x0

    array-length v4, v1

    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v0, v1, v3

    iget-object v5, p0, Lcom/android/server/wifi/WifiCertManager;->mAffiliatedUserOnlyCerts:Ljava/util/Set;

    invoke-interface {v5, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    return-object v3
.end method

.method protected readConfigFile()[B
    .locals 9

    const/4 v0, 0x0

    :try_start_0
    new-instance v2, Ljava/io/File;

    iget-object v6, p0, Lcom/android/server/wifi/WifiCertManager;->mConfigFile:Ljava/lang/String;

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v4

    :goto_0
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-eqz v6, :cond_0

    const-wide/32 v6, 0x7fffffff

    cmp-long v6, v4, v6

    if-ltz v6, :cond_2

    :cond_0
    return-object v0

    :cond_1
    const-wide/16 v4, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v6

    long-to-int v6, v6

    new-array v0, v6, [B

    new-instance v3, Ljava/io/DataInputStream;

    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v6}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v3, v0}, Ljava/io/DataInputStream;->readFully([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-object v0

    :catch_0
    move-exception v1

    const-string/jumbo v6, "WifiCertManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "readConfigFile: failed to read "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method protected writeConfigFile([B)V
    .locals 4

    move-object v0, p1

    iget-object v1, p0, Lcom/android/server/wifi/WifiCertManager;->mWriter:Lcom/android/server/net/DelayedDiskWrite;

    iget-object v2, p0, Lcom/android/server/wifi/WifiCertManager;->mConfigFile:Ljava/lang/String;

    new-instance v3, Lcom/android/server/wifi/WifiCertManager$1;

    invoke-direct {v3, p0, p1}, Lcom/android/server/wifi/WifiCertManager$1;-><init>(Lcom/android/server/wifi/WifiCertManager;[B)V

    invoke-virtual {v1, v2, v3}, Lcom/android/server/net/DelayedDiskWrite;->write(Ljava/lang/String;Lcom/android/server/net/DelayedDiskWrite$Writer;)V

    return-void
.end method
