.class public final Ljava/nio/file/attribute/AclEntry$Builder;
.super Ljava/lang/Object;
.source "AclEntry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/nio/file/attribute/AclEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z


# instance fields
.field private flags:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/nio/file/attribute/AclEntryFlag;",
            ">;"
        }
    .end annotation
.end field

.field private perms:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/nio/file/attribute/AclEntryPermission;",
            ">;"
        }
    .end annotation
.end field

.field private type:Ljava/nio/file/attribute/AclEntryType;

.field private who:Ljava/nio/file/attribute/UserPrincipal;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Ljava/nio/file/attribute/AclEntry$Builder;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Ljava/nio/file/attribute/AclEntry$Builder;->-assertionsDisabled:Z

    return-void
.end method

.method private constructor <init>(Ljava/nio/file/attribute/AclEntryType;Ljava/nio/file/attribute/UserPrincipal;Ljava/util/Set;Ljava/util/Set;)V
    .locals 1
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

    sget-boolean v0, Ljava/nio/file/attribute/AclEntry$Builder;->-assertionsDisabled:Z

    if-nez v0, :cond_1

    if-eqz p3, :cond_0

    if-nez p4, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    iput-object p1, p0, Ljava/nio/file/attribute/AclEntry$Builder;->type:Ljava/nio/file/attribute/AclEntryType;

    iput-object p2, p0, Ljava/nio/file/attribute/AclEntry$Builder;->who:Ljava/nio/file/attribute/UserPrincipal;

    iput-object p3, p0, Ljava/nio/file/attribute/AclEntry$Builder;->perms:Ljava/util/Set;

    iput-object p4, p0, Ljava/nio/file/attribute/AclEntry$Builder;->flags:Ljava/util/Set;

    return-void
.end method

.method synthetic constructor <init>(Ljava/nio/file/attribute/AclEntryType;Ljava/nio/file/attribute/UserPrincipal;Ljava/util/Set;Ljava/util/Set;Ljava/nio/file/attribute/AclEntry$Builder;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Ljava/nio/file/attribute/AclEntry$Builder;-><init>(Ljava/nio/file/attribute/AclEntryType;Ljava/nio/file/attribute/UserPrincipal;Ljava/util/Set;Ljava/util/Set;)V

    return-void
.end method

.method private static checkSet(Ljava/util/Set;Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public build()Ljava/nio/file/attribute/AclEntry;
    .locals 6

    const/4 v5, 0x0

    iget-object v0, p0, Ljava/nio/file/attribute/AclEntry$Builder;->type:Ljava/nio/file/attribute/AclEntryType;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Missing type component"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Ljava/nio/file/attribute/AclEntry$Builder;->who:Ljava/nio/file/attribute/UserPrincipal;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Missing who component"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/nio/file/attribute/AclEntry;

    iget-object v1, p0, Ljava/nio/file/attribute/AclEntry$Builder;->type:Ljava/nio/file/attribute/AclEntryType;

    iget-object v2, p0, Ljava/nio/file/attribute/AclEntry$Builder;->who:Ljava/nio/file/attribute/UserPrincipal;

    iget-object v3, p0, Ljava/nio/file/attribute/AclEntry$Builder;->perms:Ljava/util/Set;

    iget-object v4, p0, Ljava/nio/file/attribute/AclEntry$Builder;->flags:Ljava/util/Set;

    invoke-direct/range {v0 .. v5}, Ljava/nio/file/attribute/AclEntry;-><init>(Ljava/nio/file/attribute/AclEntryType;Ljava/nio/file/attribute/UserPrincipal;Ljava/util/Set;Ljava/util/Set;Ljava/nio/file/attribute/AclEntry;)V

    return-object v0
.end method

.method public setFlags(Ljava/util/Set;)Ljava/nio/file/attribute/AclEntry$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/nio/file/attribute/AclEntryFlag;",
            ">;)",
            "Ljava/nio/file/attribute/AclEntry$Builder;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Ljava/nio/file/attribute/AclEntry$Builder;->flags:Ljava/util/Set;

    return-object p0

    :cond_0
    invoke-static {p1}, Ljava/util/EnumSet;->copyOf(Ljava/util/Collection;)Ljava/util/EnumSet;

    move-result-object p1

    const-class v0, Ljava/nio/file/attribute/AclEntryFlag;

    invoke-static {p1, v0}, Ljava/nio/file/attribute/AclEntry$Builder;->checkSet(Ljava/util/Set;Ljava/lang/Class;)V

    goto :goto_0
.end method

.method public varargs setFlags([Ljava/nio/file/attribute/AclEntryFlag;)Ljava/nio/file/attribute/AclEntry$Builder;
    .locals 4

    const-class v2, Ljava/nio/file/attribute/AclEntryFlag;

    invoke-static {v2}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v1

    const/4 v2, 0x0

    array-length v3, p1

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v0, p1, v2

    if-nez v0, :cond_0

    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    :cond_0
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iput-object v1, p0, Ljava/nio/file/attribute/AclEntry$Builder;->flags:Ljava/util/Set;

    return-object p0
.end method

.method public setPermissions(Ljava/util/Set;)Ljava/nio/file/attribute/AclEntry$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/nio/file/attribute/AclEntryPermission;",
            ">;)",
            "Ljava/nio/file/attribute/AclEntry$Builder;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Ljava/nio/file/attribute/AclEntry$Builder;->perms:Ljava/util/Set;

    return-object p0

    :cond_0
    invoke-static {p1}, Ljava/util/EnumSet;->copyOf(Ljava/util/Collection;)Ljava/util/EnumSet;

    move-result-object p1

    const-class v0, Ljava/nio/file/attribute/AclEntryPermission;

    invoke-static {p1, v0}, Ljava/nio/file/attribute/AclEntry$Builder;->checkSet(Ljava/util/Set;Ljava/lang/Class;)V

    goto :goto_0
.end method

.method public varargs setPermissions([Ljava/nio/file/attribute/AclEntryPermission;)Ljava/nio/file/attribute/AclEntry$Builder;
    .locals 4

    const-class v2, Ljava/nio/file/attribute/AclEntryPermission;

    invoke-static {v2}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v1

    const/4 v2, 0x0

    array-length v3, p1

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v0, p1, v2

    if-nez v0, :cond_0

    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    :cond_0
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iput-object v1, p0, Ljava/nio/file/attribute/AclEntry$Builder;->perms:Ljava/util/Set;

    return-object p0
.end method

.method public setPrincipal(Ljava/nio/file/attribute/UserPrincipal;)Ljava/nio/file/attribute/AclEntry$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iput-object p1, p0, Ljava/nio/file/attribute/AclEntry$Builder;->who:Ljava/nio/file/attribute/UserPrincipal;

    return-object p0
.end method

.method public setType(Ljava/nio/file/attribute/AclEntryType;)Ljava/nio/file/attribute/AclEntry$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iput-object p1, p0, Ljava/nio/file/attribute/AclEntry$Builder;->type:Ljava/nio/file/attribute/AclEntryType;

    return-object p0
.end method
