.class Ljava/nio/file/Files$FileTypeDetectors;
.super Ljava/lang/Object;
.source "Files.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/nio/file/Files;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FileTypeDetectors"
.end annotation


# static fields
.field static final defaultFileTypeDetector:Ljava/nio/file/spi/FileTypeDetector;

.field static final installeDetectors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/nio/file/spi/FileTypeDetector;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Ljava/nio/file/Files$FileTypeDetectors;->createDefaultFileTypeDetector()Ljava/nio/file/spi/FileTypeDetector;

    move-result-object v0

    sput-object v0, Ljava/nio/file/Files$FileTypeDetectors;->defaultFileTypeDetector:Ljava/nio/file/spi/FileTypeDetector;

    invoke-static {}, Ljava/nio/file/Files$FileTypeDetectors;->loadInstalledDetectors()Ljava/util/List;

    move-result-object v0

    sput-object v0, Ljava/nio/file/Files$FileTypeDetectors;->installeDetectors:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createDefaultFileTypeDetector()Ljava/nio/file/spi/FileTypeDetector;
    .locals 1

    new-instance v0, Ljava/nio/file/Files$FileTypeDetectors$1;

    invoke-direct {v0}, Ljava/nio/file/Files$FileTypeDetectors$1;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/file/spi/FileTypeDetector;

    return-object v0
.end method

.method private static loadInstalledDetectors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/nio/file/spi/FileTypeDetector;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/nio/file/Files$FileTypeDetectors$2;

    invoke-direct {v0}, Ljava/nio/file/Files$FileTypeDetectors$2;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method
