.class Lsun/nio/fs/UnixUserPrincipals;
.super Ljava/lang/Object;
.source "UnixUserPrincipals.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/nio/fs/UnixUserPrincipals$Group;,
        Lsun/nio/fs/UnixUserPrincipals$User;
    }
.end annotation


# static fields
.field static final SPECIAL_EVERYONE:Lsun/nio/fs/UnixUserPrincipals$User;

.field static final SPECIAL_GROUP:Lsun/nio/fs/UnixUserPrincipals$User;

.field static final SPECIAL_OWNER:Lsun/nio/fs/UnixUserPrincipals$User;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "OWNER@"

    invoke-static {v0}, Lsun/nio/fs/UnixUserPrincipals;->createSpecial(Ljava/lang/String;)Lsun/nio/fs/UnixUserPrincipals$User;

    move-result-object v0

    sput-object v0, Lsun/nio/fs/UnixUserPrincipals;->SPECIAL_OWNER:Lsun/nio/fs/UnixUserPrincipals$User;

    const-string/jumbo v0, "GROUP@"

    invoke-static {v0}, Lsun/nio/fs/UnixUserPrincipals;->createSpecial(Ljava/lang/String;)Lsun/nio/fs/UnixUserPrincipals$User;

    move-result-object v0

    sput-object v0, Lsun/nio/fs/UnixUserPrincipals;->SPECIAL_GROUP:Lsun/nio/fs/UnixUserPrincipals$User;

    const-string/jumbo v0, "EVERYONE@"

    invoke-static {v0}, Lsun/nio/fs/UnixUserPrincipals;->createSpecial(Ljava/lang/String;)Lsun/nio/fs/UnixUserPrincipals$User;

    move-result-object v0

    sput-object v0, Lsun/nio/fs/UnixUserPrincipals;->SPECIAL_EVERYONE:Lsun/nio/fs/UnixUserPrincipals$User;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createSpecial(Ljava/lang/String;)Lsun/nio/fs/UnixUserPrincipals$User;
    .locals 2

    new-instance v0, Lsun/nio/fs/UnixUserPrincipals$User;

    const/4 v1, -0x1

    invoke-direct {v0, v1, p0}, Lsun/nio/fs/UnixUserPrincipals$User;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method static fromGid(I)Lsun/nio/fs/UnixUserPrincipals$Group;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Lsun/nio/fs/UnixNativeDispatcher;->getgrgid(I)[B

    move-result-object v2

    invoke-static {v2}, Lsun/nio/fs/Util;->toString([B)Ljava/lang/String;
    :try_end_0
    .catch Lsun/nio/fs/UnixException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    new-instance v2, Lsun/nio/fs/UnixUserPrincipals$Group;

    invoke-direct {v2, p0, v0}, Lsun/nio/fs/UnixUserPrincipals$Group;-><init>(ILjava/lang/String;)V

    return-object v2

    :catch_0
    move-exception v1

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static fromUid(I)Lsun/nio/fs/UnixUserPrincipals$User;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Lsun/nio/fs/UnixNativeDispatcher;->getpwuid(I)[B

    move-result-object v2

    invoke-static {v2}, Lsun/nio/fs/Util;->toString([B)Ljava/lang/String;
    :try_end_0
    .catch Lsun/nio/fs/UnixException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    new-instance v2, Lsun/nio/fs/UnixUserPrincipals$User;

    invoke-direct {v2, p0, v0}, Lsun/nio/fs/UnixUserPrincipals$User;-><init>(ILjava/lang/String;)V

    return-object v2

    :catch_0
    move-exception v1

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static lookupGroup(Ljava/lang/String;)Ljava/nio/file/attribute/GroupPrincipal;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x1

    invoke-static {p0, v1}, Lsun/nio/fs/UnixUserPrincipals;->lookupName(Ljava/lang/String;Z)I

    move-result v0

    new-instance v1, Lsun/nio/fs/UnixUserPrincipals$Group;

    invoke-direct {v1, v0, p0}, Lsun/nio/fs/UnixUserPrincipals$Group;-><init>(ILjava/lang/String;)V

    return-object v1
.end method

.method private static lookupName(Ljava/lang/String;Z)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v4, Ljava/lang/RuntimePermission;

    const-string/jumbo v5, "lookupUserInformation"

    invoke-direct {v4, v5}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    :cond_0
    const/4 v0, -0x1

    if-eqz p1, :cond_2

    :try_start_0
    invoke-static {p0}, Lsun/nio/fs/UnixNativeDispatcher;->getgrnam(Ljava/lang/String;)I
    :try_end_0
    .catch Lsun/nio/fs/UnixException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    const/4 v4, -0x1

    if-ne v0, v4, :cond_1

    :try_start_1
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    :cond_1
    return v0

    :cond_2
    :try_start_2
    invoke-static {p0}, Lsun/nio/fs/UnixNativeDispatcher;->getpwnam(Ljava/lang/String;)I
    :try_end_2
    .catch Lsun/nio/fs/UnixException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v3

    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lsun/nio/fs/UnixException;->errorString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    :catch_1
    move-exception v1

    new-instance v4, Ljava/nio/file/attribute/UserPrincipalNotFoundException;

    invoke-direct {v4, p0}, Ljava/nio/file/attribute/UserPrincipalNotFoundException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method static lookupUser(Ljava/lang/String;)Ljava/nio/file/attribute/UserPrincipal;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v1, Lsun/nio/fs/UnixUserPrincipals;->SPECIAL_OWNER:Lsun/nio/fs/UnixUserPrincipals$User;

    invoke-virtual {v1}, Lsun/nio/fs/UnixUserPrincipals$User;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lsun/nio/fs/UnixUserPrincipals;->SPECIAL_OWNER:Lsun/nio/fs/UnixUserPrincipals$User;

    return-object v1

    :cond_0
    sget-object v1, Lsun/nio/fs/UnixUserPrincipals;->SPECIAL_GROUP:Lsun/nio/fs/UnixUserPrincipals$User;

    invoke-virtual {v1}, Lsun/nio/fs/UnixUserPrincipals$User;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lsun/nio/fs/UnixUserPrincipals;->SPECIAL_GROUP:Lsun/nio/fs/UnixUserPrincipals$User;

    return-object v1

    :cond_1
    sget-object v1, Lsun/nio/fs/UnixUserPrincipals;->SPECIAL_EVERYONE:Lsun/nio/fs/UnixUserPrincipals$User;

    invoke-virtual {v1}, Lsun/nio/fs/UnixUserPrincipals$User;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lsun/nio/fs/UnixUserPrincipals;->SPECIAL_EVERYONE:Lsun/nio/fs/UnixUserPrincipals$User;

    return-object v1

    :cond_2
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lsun/nio/fs/UnixUserPrincipals;->lookupName(Ljava/lang/String;Z)I

    move-result v0

    new-instance v1, Lsun/nio/fs/UnixUserPrincipals$User;

    invoke-direct {v1, v0, p0}, Lsun/nio/fs/UnixUserPrincipals$User;-><init>(ILjava/lang/String;)V

    return-object v1
.end method
