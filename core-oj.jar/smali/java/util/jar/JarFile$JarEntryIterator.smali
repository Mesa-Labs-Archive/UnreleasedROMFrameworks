.class Ljava/util/jar/JarFile$JarEntryIterator;
.super Ljava/lang/Object;
.source "JarFile.java"

# interfaces
.implements Ljava/util/Enumeration;
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/jar/JarFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "JarEntryIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Enumeration",
        "<",
        "Ljava/util/jar/JarEntry;",
        ">;",
        "Ljava/util/Iterator",
        "<",
        "Ljava/util/jar/JarEntry;",
        ">;"
    }
.end annotation


# instance fields
.field final e:Ljava/util/Enumeration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Enumeration",
            "<+",
            "Ljava/util/zip/ZipEntry;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Ljava/util/jar/JarFile;


# direct methods
.method private constructor <init>(Ljava/util/jar/JarFile;)V
    .locals 1

    iput-object p1, p0, Ljava/util/jar/JarFile$JarEntryIterator;->this$0:Ljava/util/jar/JarFile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p0, Ljava/util/jar/JarFile$JarEntryIterator;->this$0:Ljava/util/jar/JarFile;

    invoke-static {v0}, Ljava/util/jar/JarFile;->-wrap1(Ljava/util/jar/JarFile;)Ljava/util/Enumeration;

    move-result-object v0

    iput-object v0, p0, Ljava/util/jar/JarFile$JarEntryIterator;->e:Ljava/util/Enumeration;

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/jar/JarFile;Ljava/util/jar/JarFile$JarEntryIterator;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/util/jar/JarFile$JarEntryIterator;-><init>(Ljava/util/jar/JarFile;)V

    return-void
.end method


# virtual methods
.method public hasMoreElements()Z
    .locals 1

    invoke-virtual {p0}, Ljava/util/jar/JarFile$JarEntryIterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Ljava/util/jar/JarFile$JarEntryIterator;->e:Ljava/util/Enumeration;

    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ljava/util/jar/JarFile$JarEntryIterator;->next()Ljava/util/jar/JarEntry;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/jar/JarEntry;
    .locals 3

    iget-object v1, p0, Ljava/util/jar/JarFile$JarEntryIterator;->e:Ljava/util/Enumeration;

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/zip/ZipEntry;

    new-instance v1, Ljava/util/jar/JarFile$JarFileEntry;

    iget-object v2, p0, Ljava/util/jar/JarFile$JarEntryIterator;->this$0:Ljava/util/jar/JarFile;

    invoke-direct {v1, v2, v0}, Ljava/util/jar/JarFile$JarFileEntry;-><init>(Ljava/util/jar/JarFile;Ljava/util/zip/ZipEntry;)V

    return-object v1
.end method

.method public bridge synthetic nextElement()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ljava/util/jar/JarFile$JarEntryIterator;->nextElement()Ljava/util/jar/JarEntry;

    move-result-object v0

    return-object v0
.end method

.method public nextElement()Ljava/util/jar/JarEntry;
    .locals 1

    invoke-virtual {p0}, Ljava/util/jar/JarFile$JarEntryIterator;->next()Ljava/util/jar/JarEntry;

    move-result-object v0

    return-object v0
.end method
