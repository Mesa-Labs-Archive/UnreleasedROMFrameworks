.class Lsun/nio/fs/UnixUserPrincipals$Group;
.super Lsun/nio/fs/UnixUserPrincipals$User;
.source "UnixUserPrincipals.java"

# interfaces
.implements Ljava/nio/file/attribute/GroupPrincipal;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/nio/fs/UnixUserPrincipals;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Group"
.end annotation


# direct methods
.method constructor <init>(ILjava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, p2, v1}, Lsun/nio/fs/UnixUserPrincipals$User;-><init>(IZLjava/lang/String;Lsun/nio/fs/UnixUserPrincipals$User;)V

    return-void
.end method
