.class public final Ljava/nio/file/attribute/AclEntry;
.super Ljava/lang/Object;
.source "AclEntry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/nio/file/attribute/AclEntry$Builder;
    }
.end annotation


# instance fields
.field private final flags:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/nio/file/attribute/AclEntryFlag;",
            ">;"
        }
    .end annotation
.end field

.field private volatile hash:I

.field private final perms:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/nio/file/attribute/AclEntryPermission;",
            ">;"
        }
    .end annotation
.end field

.field private final type:Ljava/nio/file/attribute/AclEntryType;

.field private final who:Ljava/nio/file/attribute/UserPrincipal;


# direct methods
.method private constructor <init>(Ljava/nio/file/attribute/AclEntryType;Ljava/nio/file/attribute/UserPrincipal;Ljava/util/Set;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/attribute/AclEntryType;",
            "Ljava/nio/file/attribute/UserPrincipal;",
            "Ljava/util/Set",
            "<",
            "Ljava/nio/file/attribute/AclEntryPermission;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/nio/file/attribute/AclEntryFlag;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/nio/file/attribute/AclEntry;->type:Ljava/nio/file/attribute/AclEntryType;

    iput-object p2, p0, Ljava/nio/file/attribute/AclEntry;->who:Ljava/nio/file/attribute/UserPrincipal;

    iput-object p3, p0, Ljava/nio/file/attribute/AclEntry;->perms:Ljava/util/Set;

    iput-object p4, p0, Ljava/nio/file/attribute/AclEntry;->flags:Ljava/util/Set;

    return-void
.end method

.method synthetic constructor <init>(Ljava/nio/file/attribute/AclEntryType;Ljava/nio/file/attribute/UserPrincipal;Ljava/util/Set;Ljava/util/Set;Ljava/nio/file/attribute/AclEntry;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Ljava/nio/file/attribute/AclEntry;-><init>(Ljava/nio/file/attribute/AclEntryType;Ljava/nio/file/attribute/UserPrincipal;Ljava/util/Set;Ljava/util/Set;)V

    return-void
.end method

.method private static hash(ILjava/lang/Object;)I
    .locals 2

    mul-int/lit8 v0, p0, 0x7f

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static newBuilder()Ljava/nio/file/attribute/AclEntry$Builder;
    .locals 6

    const/4 v1, 0x0

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v3

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v4

    new-instance v0, Ljava/nio/file/attribute/AclEntry$Builder;

    move-object v2, v1

    move-object v5, v1

    invoke-direct/range {v0 .. v5}, Ljava/nio/file/attribute/AclEntry$Builder;-><init>(Ljava/nio/file/attribute/AclEntryType;Ljava/nio/file/attribute/UserPrincipal;Ljava/util/Set;Ljava/util/Set;Ljava/nio/file/attribute/AclEntry$Builder;)V

    return-object v0
.end method

.method public static newBuilder(Ljava/nio/file/attribute/AclEntry;)Ljava/nio/file/attribute/AclEntry$Builder;
    .locals 6

    new-instance v0, Ljava/nio/file/attribute/AclEntry$Builder;

    iget-object v1, p0, Ljava/nio/file/attribute/AclEntry;->type:Ljava/nio/file/attribute/AclEntryType;

    iget-object v2, p0, Ljava/nio/file/attribute/AclEntry;->who:Ljava/nio/file/attribute/UserPrincipal;

    iget-object v3, p0, Ljava/nio/file/attribute/AclEntry;->perms:Ljava/util/Set;

    iget-object v4, p0, Ljava/nio/file/attribute/AclEntry;->flags:Ljava/util/Set;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Ljava/nio/file/attribute/AclEntry$Builder;-><init>(Ljava/nio/file/attribute/AclEntryType;Ljava/nio/file/attribute/UserPrincipal;Ljava/util/Set;Ljava/util/Set;Ljava/nio/file/attribute/AclEntry$Builder;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    if-ne p1, p0, :cond_0

    return v4

    :cond_0
    if-eqz p1, :cond_1

    instance-of v1, p1, Ljava/nio/file/attribute/AclEntry;

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    :cond_1
    return v3

    :cond_2
    move-object v0, p1

    check-cast v0, Ljava/nio/file/attribute/AclEntry;

    iget-object v1, p0, Ljava/nio/file/attribute/AclEntry;->type:Ljava/nio/file/attribute/AclEntryType;

    iget-object v2, v0, Ljava/nio/file/attribute/AclEntry;->type:Ljava/nio/file/attribute/AclEntryType;

    if-eq v1, v2, :cond_3

    return v3

    :cond_3
    iget-object v1, p0, Ljava/nio/file/attribute/AclEntry;->who:Ljava/nio/file/attribute/UserPrincipal;

    iget-object v2, v0, Ljava/nio/file/attribute/AclEntry;->who:Ljava/nio/file/attribute/UserPrincipal;

    invoke-interface {v1, v2}, Ljava/nio/file/attribute/UserPrincipal;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v3

    :cond_4
    iget-object v1, p0, Ljava/nio/file/attribute/AclEntry;->perms:Ljava/util/Set;

    iget-object v2, v0, Ljava/nio/file/attribute/AclEntry;->perms:Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v3

    :cond_5
    iget-object v1, p0, Ljava/nio/file/attribute/AclEntry;->flags:Ljava/util/Set;

    iget-object v2, v0, Ljava/nio/file/attribute/AclEntry;->flags:Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v3

    :cond_6
    return v4
.end method

.method public flags()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/nio/file/attribute/AclEntryFlag;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Ljava/nio/file/attribute/AclEntry;->flags:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget v1, p0, Ljava/nio/file/attribute/AclEntry;->hash:I

    if-eqz v1, :cond_0

    iget v1, p0, Ljava/nio/file/attribute/AclEntry;->hash:I

    return v1

    :cond_0
    iget-object v1, p0, Ljava/nio/file/attribute/AclEntry;->type:Ljava/nio/file/attribute/AclEntryType;

    invoke-virtual {v1}, Ljava/nio/file/attribute/AclEntryType;->hashCode()I

    move-result v0

    iget-object v1, p0, Ljava/nio/file/attribute/AclEntry;->who:Ljava/nio/file/attribute/UserPrincipal;

    invoke-static {v0, v1}, Ljava/nio/file/attribute/AclEntry;->hash(ILjava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Ljava/nio/file/attribute/AclEntry;->perms:Ljava/util/Set;

    invoke-static {v0, v1}, Ljava/nio/file/attribute/AclEntry;->hash(ILjava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Ljava/nio/file/attribute/AclEntry;->flags:Ljava/util/Set;

    invoke-static {v0, v1}, Ljava/nio/file/attribute/AclEntry;->hash(ILjava/lang/Object;)I

    move-result v0

    iput v0, p0, Ljava/nio/file/attribute/AclEntry;->hash:I

    iget v1, p0, Ljava/nio/file/attribute/AclEntry;->hash:I

    return v1
.end method

.method public permissions()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/nio/file/attribute/AclEntryPermission;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Ljava/nio/file/attribute/AclEntry;->perms:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public principal()Ljava/nio/file/attribute/UserPrincipal;
    .locals 1

    iget-object v0, p0, Ljava/nio/file/attribute/AclEntry;->who:Ljava/nio/file/attribute/UserPrincipal;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    const/16 v7, 0x2f

    const/16 v6, 0x3a

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Ljava/nio/file/attribute/AclEntry;->who:Ljava/nio/file/attribute/UserPrincipal;

    invoke-interface {v5}, Ljava/nio/file/attribute/UserPrincipal;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v5, p0, Ljava/nio/file/attribute/AclEntry;->perms:Ljava/util/Set;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/file/attribute/AclEntryPermission;

    invoke-virtual {v2}, Ljava/nio/file/attribute/AclEntryPermission;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v5, p0, Ljava/nio/file/attribute/AclEntry;->flags:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Ljava/nio/file/attribute/AclEntry;->flags:Ljava/util/Set;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/file/attribute/AclEntryFlag;

    invoke-virtual {v0}, Ljava/nio/file/attribute/AclEntryFlag;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    iget-object v5, p0, Ljava/nio/file/attribute/AclEntry;->type:Ljava/nio/file/attribute/AclEntryType;

    invoke-virtual {v5}, Ljava/nio/file/attribute/AclEntryType;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public type()Ljava/nio/file/attribute/AclEntryType;
    .locals 1

    iget-object v0, p0, Ljava/nio/file/attribute/AclEntry;->type:Ljava/nio/file/attribute/AclEntryType;

    return-object v0
.end method
