.class Lsun/nio/ch/MembershipRegistry;
.super Ljava/lang/Object;
.source "MembershipRegistry.java"


# instance fields
.field private groups:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/net/InetAddress;",
            "Ljava/util/List",
            "<",
            "Lsun/nio/ch/MembershipKeyImpl;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lsun/nio/ch/MembershipRegistry;->groups:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method add(Lsun/nio/ch/MembershipKeyImpl;)V
    .locals 3

    invoke-virtual {p1}, Lsun/nio/ch/MembershipKeyImpl;->group()Ljava/net/InetAddress;

    move-result-object v0

    iget-object v2, p0, Lsun/nio/ch/MembershipRegistry;->groups:Ljava/util/Map;

    if-nez v2, :cond_1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lsun/nio/ch/MembershipRegistry;->groups:Ljava/util/Map;

    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_0

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iget-object v2, p0, Lsun/nio/ch/MembershipRegistry;->groups:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_1
    iget-object v2, p0, Lsun/nio/ch/MembershipRegistry;->groups:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    goto :goto_0
.end method

.method checkMembership(Ljava/net/InetAddress;Ljava/net/NetworkInterface;Ljava/net/InetAddress;)Ljava/nio/channels/MembershipKey;
    .locals 5

    const/4 v4, 0x0

    iget-object v3, p0, Lsun/nio/ch/MembershipRegistry;->groups:Ljava/util/Map;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lsun/nio/ch/MembershipRegistry;->groups:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_4

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/nio/ch/MembershipKeyImpl;

    invoke-virtual {v0}, Lsun/nio/ch/MembershipKeyImpl;->networkInterface()Ljava/net/NetworkInterface;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/net/NetworkInterface;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-nez p3, :cond_2

    invoke-virtual {v0}, Lsun/nio/ch/MembershipKeyImpl;->sourceAddress()Ljava/net/InetAddress;

    move-result-object v3

    if-nez v3, :cond_1

    return-object v0

    :cond_1
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "Already a member to receive all packets"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_2
    invoke-virtual {v0}, Lsun/nio/ch/MembershipKeyImpl;->sourceAddress()Ljava/net/InetAddress;

    move-result-object v3

    if-nez v3, :cond_3

    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "Already have source-specific membership"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_3
    invoke-virtual {v0}, Lsun/nio/ch/MembershipKeyImpl;->sourceAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v0

    :cond_4
    return-object v4
.end method

.method invalidateAll()V
    .locals 5

    iget-object v4, p0, Lsun/nio/ch/MembershipRegistry;->groups:Ljava/util/Map;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lsun/nio/ch/MembershipRegistry;->groups:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    iget-object v4, p0, Lsun/nio/ch/MembershipRegistry;->groups:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsun/nio/ch/MembershipKeyImpl;

    invoke-virtual {v2}, Lsun/nio/ch/MembershipKeyImpl;->invalidate()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method remove(Lsun/nio/ch/MembershipKeyImpl;)V
    .locals 4

    invoke-virtual {p1}, Lsun/nio/ch/MembershipKeyImpl;->group()Ljava/net/InetAddress;

    move-result-object v0

    iget-object v3, p0, Lsun/nio/ch/MembershipRegistry;->groups:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p1, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    :cond_1
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lsun/nio/ch/MembershipRegistry;->groups:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method
