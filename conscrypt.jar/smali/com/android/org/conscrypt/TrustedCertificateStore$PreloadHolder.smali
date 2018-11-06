.class Lcom/android/org/conscrypt/TrustedCertificateStore$PreloadHolder;
.super Ljava/lang/Object;
.source "TrustedCertificateStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/conscrypt/TrustedCertificateStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PreloadHolder"
.end annotation


# static fields
.field private static defaultCaCertsAddedDir:Ljava/io/File;

.field private static defaultCaCertsDeletedDir:Ljava/io/File;

.field private static defaultCaCertsSystemDir:Ljava/io/File;


# direct methods
.method static synthetic -get0()Ljava/io/File;
    .locals 1

    sget-object v0, Lcom/android/org/conscrypt/TrustedCertificateStore$PreloadHolder;->defaultCaCertsAddedDir:Ljava/io/File;

    return-object v0
.end method

.method static synthetic -get1()Ljava/io/File;
    .locals 1

    sget-object v0, Lcom/android/org/conscrypt/TrustedCertificateStore$PreloadHolder;->defaultCaCertsDeletedDir:Ljava/io/File;

    return-object v0
.end method

.method static synthetic -get2()Ljava/io/File;
    .locals 1

    sget-object v0, Lcom/android/org/conscrypt/TrustedCertificateStore$PreloadHolder;->defaultCaCertsSystemDir:Ljava/io/File;

    return-object v0
.end method

.method static synthetic -set0(Ljava/io/File;)Ljava/io/File;
    .locals 0

    sput-object p0, Lcom/android/org/conscrypt/TrustedCertificateStore$PreloadHolder;->defaultCaCertsAddedDir:Ljava/io/File;

    return-object p0
.end method

.method static synthetic -set1(Ljava/io/File;)Ljava/io/File;
    .locals 0

    sput-object p0, Lcom/android/org/conscrypt/TrustedCertificateStore$PreloadHolder;->defaultCaCertsDeletedDir:Ljava/io/File;

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 5

    const-string/jumbo v2, "ANDROID_ROOT"

    invoke-static {v2}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "ANDROID_DATA"

    invoke-static {v2}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/etc/security/cacerts"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v2, Lcom/android/org/conscrypt/TrustedCertificateStore$PreloadHolder;->defaultCaCertsSystemDir:Ljava/io/File;

    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/misc/keychain"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/android/org/conscrypt/TrustedCertificateStore;->setDefaultUserDirectory(Ljava/io/File;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
