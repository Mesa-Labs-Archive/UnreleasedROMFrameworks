.class Lsun/nio/fs/UnixUserPrincipals$User;
.super Ljava/lang/Object;
.source "UnixUserPrincipals.java"

# interfaces
.implements Ljava/nio/file/attribute/UserPrincipal;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/nio/fs/UnixUserPrincipals;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "User"
.end annotation


# instance fields
.field private final id:I

.field private final isGroup:Z

.field private final name:Ljava/lang/String;


# direct methods
.method constructor <init>(ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lsun/nio/fs/UnixUserPrincipals$User;-><init>(IZLjava/lang/String;)V

    return-void
.end method

.method private constructor <init>(IZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lsun/nio/fs/UnixUserPrincipals$User;->id:I

    iput-boolean p2, p0, Lsun/nio/fs/UnixUserPrincipals$User;->isGroup:Z

    iput-object p3, p0, Lsun/nio/fs/UnixUserPrincipals$User;->name:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(IZLjava/lang/String;Lsun/nio/fs/UnixUserPrincipals$User;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lsun/nio/fs/UnixUserPrincipals$User;-><init>(IZLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, -0x1

    if-ne p1, p0, :cond_0

    return v5

    :cond_0
    instance-of v1, p1, Lsun/nio/fs/UnixUserPrincipals$User;

    if-nez v1, :cond_1

    return v4

    :cond_1
    move-object v0, p1

    check-cast v0, Lsun/nio/fs/UnixUserPrincipals$User;

    iget v1, p0, Lsun/nio/fs/UnixUserPrincipals$User;->id:I

    iget v2, v0, Lsun/nio/fs/UnixUserPrincipals$User;->id:I

    if-ne v1, v2, :cond_2

    iget-boolean v1, p0, Lsun/nio/fs/UnixUserPrincipals$User;->isGroup:Z

    iget-boolean v2, v0, Lsun/nio/fs/UnixUserPrincipals$User;->isGroup:Z

    if-eq v1, v2, :cond_3

    :cond_2
    return v4

    :cond_3
    iget v1, p0, Lsun/nio/fs/UnixUserPrincipals$User;->id:I

    if-ne v1, v3, :cond_4

    iget v1, v0, Lsun/nio/fs/UnixUserPrincipals$User;->id:I

    if-ne v1, v3, :cond_4

    iget-object v1, p0, Lsun/nio/fs/UnixUserPrincipals$User;->name:Ljava/lang/String;

    iget-object v2, v0, Lsun/nio/fs/UnixUserPrincipals$User;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    :cond_4
    return v5
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsun/nio/fs/UnixUserPrincipals$User;->name:Ljava/lang/String;

    return-object v0
.end method

.method gid()I
    .locals 1

    iget-boolean v0, p0, Lsun/nio/fs/UnixUserPrincipals$User;->isGroup:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lsun/nio/fs/UnixUserPrincipals$User;->id:I

    return v0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lsun/nio/fs/UnixUserPrincipals$User;->id:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lsun/nio/fs/UnixUserPrincipals$User;->id:I

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lsun/nio/fs/UnixUserPrincipals$User;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method isSpecial()Z
    .locals 2

    iget v0, p0, Lsun/nio/fs/UnixUserPrincipals$User;->id:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsun/nio/fs/UnixUserPrincipals$User;->name:Ljava/lang/String;

    return-object v0
.end method

.method uid()I
    .locals 1

    iget-boolean v0, p0, Lsun/nio/fs/UnixUserPrincipals$User;->isGroup:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lsun/nio/fs/UnixUserPrincipals$User;->id:I

    return v0
.end method
