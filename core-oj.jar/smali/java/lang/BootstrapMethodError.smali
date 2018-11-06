.class public Ljava/lang/BootstrapMethodError;
.super Ljava/lang/LinkageError;
.source "BootstrapMethodError.java"


# static fields
.field private static final serialVersionUID:J = 0x124L


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/LinkageError;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/lang/LinkageError;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/LinkageError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    :goto_0
    invoke-direct {p0, v0}, Ljava/lang/LinkageError;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/BootstrapMethodError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
