.class public final Ljava/lang/ProcessBuilder;
.super Ljava/lang/Object;
.source "ProcessBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/lang/ProcessBuilder$NullInputStream;,
        Ljava/lang/ProcessBuilder$NullOutputStream;,
        Ljava/lang/ProcessBuilder$Redirect;
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z


# instance fields
.field private command:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private directory:Ljava/io/File;

.field private environment:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private redirectErrorStream:Z

.field private redirects:[Ljava/lang/ProcessBuilder$Redirect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Ljava/lang/ProcessBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Ljava/lang/ProcessBuilder;->-assertionsDisabled:Z

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iput-object p1, p0, Ljava/lang/ProcessBuilder;->command:Ljava/util/List;

    return-void
.end method

.method public varargs constructor <init>([Ljava/lang/String;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    array-length v2, p1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Ljava/lang/ProcessBuilder;->command:Ljava/util/List;

    const/4 v1, 0x0

    array-length v2, p1

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v0, p1, v1

    iget-object v3, p0, Ljava/lang/ProcessBuilder;->command:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private redirects()[Ljava/lang/ProcessBuilder$Redirect;
    .locals 3

    iget-object v0, p0, Ljava/lang/ProcessBuilder;->redirects:[Ljava/lang/ProcessBuilder$Redirect;

    if-nez v0, :cond_0

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/ProcessBuilder$Redirect;

    sget-object v1, Ljava/lang/ProcessBuilder$Redirect;->PIPE:Ljava/lang/ProcessBuilder$Redirect;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Ljava/lang/ProcessBuilder$Redirect;->PIPE:Ljava/lang/ProcessBuilder$Redirect;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Ljava/lang/ProcessBuilder$Redirect;->PIPE:Ljava/lang/ProcessBuilder$Redirect;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iput-object v0, p0, Ljava/lang/ProcessBuilder;->redirects:[Ljava/lang/ProcessBuilder$Redirect;

    :cond_0
    iget-object v0, p0, Ljava/lang/ProcessBuilder;->redirects:[Ljava/lang/ProcessBuilder$Redirect;

    return-object v0
.end method


# virtual methods
.method public command(Ljava/util/List;)Ljava/lang/ProcessBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/ProcessBuilder;"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iput-object p1, p0, Ljava/lang/ProcessBuilder;->command:Ljava/util/List;

    return-object p0
.end method

.method public varargs command([Ljava/lang/String;)Ljava/lang/ProcessBuilder;
    .locals 4

    new-instance v1, Ljava/util/ArrayList;

    array-length v2, p1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Ljava/lang/ProcessBuilder;->command:Ljava/util/List;

    const/4 v1, 0x0

    array-length v2, p1

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v0, p1, v1

    iget-object v3, p0, Ljava/lang/ProcessBuilder;->command:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public command()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Ljava/lang/ProcessBuilder;->command:Ljava/util/List;

    return-object v0
.end method

.method public directory()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Ljava/lang/ProcessBuilder;->directory:Ljava/io/File;

    return-object v0
.end method

.method public directory(Ljava/io/File;)Ljava/lang/ProcessBuilder;
    .locals 0

    iput-object p1, p0, Ljava/lang/ProcessBuilder;->directory:Ljava/io/File;

    return-object p0
.end method

.method environment([Ljava/lang/String;)Ljava/lang/ProcessBuilder;
    .locals 9

    const/4 v8, -0x1

    const/4 v3, 0x0

    sget-boolean v2, Ljava/lang/ProcessBuilder;->-assertionsDisabled:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Ljava/lang/ProcessBuilder;->environment:Ljava/util/Map;

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    :cond_0
    if-eqz p1, :cond_4

    array-length v2, p1

    invoke-static {v2}, Ljava/lang/ProcessEnvironment;->emptyEnvironment(I)Ljava/util/Map;

    move-result-object v2

    iput-object v2, p0, Ljava/lang/ProcessBuilder;->environment:Ljava/util/Map;

    sget-boolean v2, Ljava/lang/ProcessBuilder;->-assertionsDisabled:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Ljava/lang/ProcessBuilder;->environment:Ljava/util/Map;

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    :cond_1
    array-length v4, p1

    move v2, v3

    :goto_0
    if-ge v2, v4, :cond_4

    aget-object v0, p1, v2

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-eq v5, v8, :cond_2

    const-string/jumbo v5, "\u0000.*"

    const-string/jumbo v6, ""

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_2
    const/16 v5, 0x3d

    invoke-virtual {v0, v5, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    if-eq v1, v8, :cond_3

    iget-object v5, p0, Ljava/lang/ProcessBuilder;->environment:Ljava/util/Map;

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v7, v1, 0x1

    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-object p0
.end method

.method public environment()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/RuntimePermission;

    const-string/jumbo v2, "getenv.*"

    invoke-direct {v1, v2}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    :cond_0
    iget-object v1, p0, Ljava/lang/ProcessBuilder;->environment:Ljava/util/Map;

    if-nez v1, :cond_1

    invoke-static {}, Ljava/lang/ProcessEnvironment;->environment()Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Ljava/lang/ProcessBuilder;->environment:Ljava/util/Map;

    :cond_1
    sget-boolean v1, Ljava/lang/ProcessBuilder;->-assertionsDisabled:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Ljava/lang/ProcessBuilder;->environment:Ljava/util/Map;

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_2
    iget-object v1, p0, Ljava/lang/ProcessBuilder;->environment:Ljava/util/Map;

    return-object v1
.end method

.method public inheritIO()Ljava/lang/ProcessBuilder;
    .locals 2

    invoke-direct {p0}, Ljava/lang/ProcessBuilder;->redirects()[Ljava/lang/ProcessBuilder$Redirect;

    move-result-object v0

    sget-object v1, Ljava/lang/ProcessBuilder$Redirect;->INHERIT:Ljava/lang/ProcessBuilder$Redirect;

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public redirectError()Ljava/lang/ProcessBuilder$Redirect;
    .locals 2

    iget-object v0, p0, Ljava/lang/ProcessBuilder;->redirects:[Ljava/lang/ProcessBuilder$Redirect;

    if-nez v0, :cond_0

    sget-object v0, Ljava/lang/ProcessBuilder$Redirect;->PIPE:Ljava/lang/ProcessBuilder$Redirect;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ljava/lang/ProcessBuilder;->redirects:[Ljava/lang/ProcessBuilder$Redirect;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method public redirectError(Ljava/io/File;)Ljava/lang/ProcessBuilder;
    .locals 1

    invoke-static {p1}, Ljava/lang/ProcessBuilder$Redirect;->to(Ljava/io/File;)Ljava/lang/ProcessBuilder$Redirect;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/ProcessBuilder;->redirectError(Ljava/lang/ProcessBuilder$Redirect;)Ljava/lang/ProcessBuilder;

    move-result-object v0

    return-object v0
.end method

.method public redirectError(Ljava/lang/ProcessBuilder$Redirect;)Ljava/lang/ProcessBuilder;
    .locals 3

    invoke-virtual {p1}, Ljava/lang/ProcessBuilder$Redirect;->type()Ljava/lang/ProcessBuilder$Redirect$Type;

    move-result-object v0

    sget-object v1, Ljava/lang/ProcessBuilder$Redirect$Type;->READ:Ljava/lang/ProcessBuilder$Redirect$Type;

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Redirect invalid for writing: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-direct {p0}, Ljava/lang/ProcessBuilder;->redirects()[Ljava/lang/ProcessBuilder$Redirect;

    move-result-object v0

    const/4 v1, 0x2

    aput-object p1, v0, v1

    return-object p0
.end method

.method public redirectErrorStream(Z)Ljava/lang/ProcessBuilder;
    .locals 0

    iput-boolean p1, p0, Ljava/lang/ProcessBuilder;->redirectErrorStream:Z

    return-object p0
.end method

.method public redirectErrorStream()Z
    .locals 1

    iget-boolean v0, p0, Ljava/lang/ProcessBuilder;->redirectErrorStream:Z

    return v0
.end method

.method public redirectInput()Ljava/lang/ProcessBuilder$Redirect;
    .locals 2

    iget-object v0, p0, Ljava/lang/ProcessBuilder;->redirects:[Ljava/lang/ProcessBuilder$Redirect;

    if-nez v0, :cond_0

    sget-object v0, Ljava/lang/ProcessBuilder$Redirect;->PIPE:Ljava/lang/ProcessBuilder$Redirect;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ljava/lang/ProcessBuilder;->redirects:[Ljava/lang/ProcessBuilder$Redirect;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method public redirectInput(Ljava/io/File;)Ljava/lang/ProcessBuilder;
    .locals 1

    invoke-static {p1}, Ljava/lang/ProcessBuilder$Redirect;->from(Ljava/io/File;)Ljava/lang/ProcessBuilder$Redirect;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/ProcessBuilder;->redirectInput(Ljava/lang/ProcessBuilder$Redirect;)Ljava/lang/ProcessBuilder;

    move-result-object v0

    return-object v0
.end method

.method public redirectInput(Ljava/lang/ProcessBuilder$Redirect;)Ljava/lang/ProcessBuilder;
    .locals 3

    invoke-virtual {p1}, Ljava/lang/ProcessBuilder$Redirect;->type()Ljava/lang/ProcessBuilder$Redirect$Type;

    move-result-object v0

    sget-object v1, Ljava/lang/ProcessBuilder$Redirect$Type;->WRITE:Ljava/lang/ProcessBuilder$Redirect$Type;

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/ProcessBuilder$Redirect;->type()Ljava/lang/ProcessBuilder$Redirect$Type;

    move-result-object v0

    sget-object v1, Ljava/lang/ProcessBuilder$Redirect$Type;->APPEND:Ljava/lang/ProcessBuilder$Redirect$Type;

    if-ne v0, v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Redirect invalid for reading: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-direct {p0}, Ljava/lang/ProcessBuilder;->redirects()[Ljava/lang/ProcessBuilder$Redirect;

    move-result-object v0

    const/4 v1, 0x0

    aput-object p1, v0, v1

    return-object p0
.end method

.method public redirectOutput()Ljava/lang/ProcessBuilder$Redirect;
    .locals 2

    iget-object v0, p0, Ljava/lang/ProcessBuilder;->redirects:[Ljava/lang/ProcessBuilder$Redirect;

    if-nez v0, :cond_0

    sget-object v0, Ljava/lang/ProcessBuilder$Redirect;->PIPE:Ljava/lang/ProcessBuilder$Redirect;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ljava/lang/ProcessBuilder;->redirects:[Ljava/lang/ProcessBuilder$Redirect;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method public redirectOutput(Ljava/io/File;)Ljava/lang/ProcessBuilder;
    .locals 1

    invoke-static {p1}, Ljava/lang/ProcessBuilder$Redirect;->to(Ljava/io/File;)Ljava/lang/ProcessBuilder$Redirect;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/ProcessBuilder;->redirectOutput(Ljava/lang/ProcessBuilder$Redirect;)Ljava/lang/ProcessBuilder;

    move-result-object v0

    return-object v0
.end method

.method public redirectOutput(Ljava/lang/ProcessBuilder$Redirect;)Ljava/lang/ProcessBuilder;
    .locals 3

    invoke-virtual {p1}, Ljava/lang/ProcessBuilder$Redirect;->type()Ljava/lang/ProcessBuilder$Redirect$Type;

    move-result-object v0

    sget-object v1, Ljava/lang/ProcessBuilder$Redirect$Type;->READ:Ljava/lang/ProcessBuilder$Redirect$Type;

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Redirect invalid for writing: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-direct {p0}, Ljava/lang/ProcessBuilder;->redirects()[Ljava/lang/ProcessBuilder$Redirect;

    move-result-object v0

    const/4 v1, 0x1

    aput-object p1, v0, v1

    return-object p0
.end method

.method public start()Ljava/lang/Process;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v11, 0x0

    iget-object v10, p0, Ljava/lang/ProcessBuilder;->command:Ljava/util/List;

    iget-object v12, p0, Ljava/lang/ProcessBuilder;->command:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    new-array v12, v12, [Ljava/lang/String;

    invoke-interface {v10, v12}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    array-length v12, v2

    move v10, v11

    :goto_0
    if-ge v10, v12, :cond_1

    aget-object v0, v2, v10

    if-nez v0, :cond_0

    new-instance v10, Ljava/lang/NullPointerException;

    invoke-direct {v10}, Ljava/lang/NullPointerException;-><init>()V

    throw v10

    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_1
    aget-object v7, v2, v11

    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v9

    if-eqz v9, :cond_2

    invoke-virtual {v9, v7}, Ljava/lang/SecurityManager;->checkExec(Ljava/lang/String;)V

    :cond_2
    iget-object v10, p0, Ljava/lang/ProcessBuilder;->directory:Ljava/io/File;

    if-nez v10, :cond_3

    const/4 v3, 0x0

    :goto_1
    const/4 v6, 0x1

    :goto_2
    array-length v10, v2

    if-ge v6, v10, :cond_5

    aget-object v10, v2, v6

    invoke-virtual {v10, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    if-ltz v10, :cond_4

    new-instance v10, Ljava/io/IOException;

    const-string/jumbo v11, "invalid null character in command"

    invoke-direct {v10, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_3
    iget-object v10, p0, Ljava/lang/ProcessBuilder;->directory:Ljava/io/File;

    invoke-virtual {v10}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_5
    :try_start_0
    iget-object v10, p0, Ljava/lang/ProcessBuilder;->environment:Ljava/util/Map;

    iget-object v11, p0, Ljava/lang/ProcessBuilder;->redirects:[Ljava/lang/ProcessBuilder$Redirect;

    iget-boolean v12, p0, Ljava/lang/ProcessBuilder;->redirectErrorStream:Z

    invoke-static {v2, v10, v3, v11, v12}, Ljava/lang/ProcessImpl;->start([Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;[Ljava/lang/ProcessBuilder$Redirect;Z)Ljava/lang/Process;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    return-object v10

    :catch_0
    move-exception v4

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, ": "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v1, v4

    instance-of v10, v4, Ljava/io/IOException;

    if-eqz v10, :cond_6

    if-eqz v9, :cond_6

    :try_start_1
    invoke-virtual {v9, v7}, Ljava/lang/SecurityManager;->checkRead(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_6
    :goto_3
    new-instance v11, Ljava/io/IOException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Cannot run program \""

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v12, "\""

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    if-nez v3, :cond_7

    const-string/jumbo v10, ""

    :goto_4
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v11, v10, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v11

    :catch_1
    move-exception v8

    const-string/jumbo v5, ""

    move-object v1, v8

    goto :goto_3

    :cond_7
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, " (in directory \""

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v13, "\")"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_4
.end method
