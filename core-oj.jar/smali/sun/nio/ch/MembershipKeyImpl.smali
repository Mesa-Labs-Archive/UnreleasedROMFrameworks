.class Lsun/nio/ch/MembershipKeyImpl;
.super Ljava/nio/channels/MembershipKey;
.source "MembershipKeyImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/nio/ch/MembershipKeyImpl$Type4;,
        Lsun/nio/ch/MembershipKeyImpl$Type6;
    }
.end annotation


# instance fields
.field private blockedSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation
.end field

.field private final ch:Ljava/nio/channels/MulticastChannel;

.field private final group:Ljava/net/InetAddress;

.field private final interf:Ljava/net/NetworkInterface;

.field private final source:Ljava/net/InetAddress;

.field private stateLock:Ljava/lang/Object;

.field private volatile valid:Z


# direct methods
.method private constructor <init>(Ljava/nio/channels/MulticastChannel;Ljava/net/InetAddress;Ljava/net/NetworkInterface;Ljava/net/InetAddress;)V
    .locals 1

    invoke-direct {p0}, Ljava/nio/channels/MembershipKey;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun/nio/ch/MembershipKeyImpl;->valid:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lsun/nio/ch/MembershipKeyImpl;->stateLock:Ljava/lang/Object;

    iput-object p1, p0, Lsun/nio/ch/MembershipKeyImpl;->ch:Ljava/nio/channels/MulticastChannel;

    iput-object p2, p0, Lsun/nio/ch/MembershipKeyImpl;->group:Ljava/net/InetAddress;

    iput-object p3, p0, Lsun/nio/ch/MembershipKeyImpl;->interf:Ljava/net/NetworkInterface;

    iput-object p4, p0, Lsun/nio/ch/MembershipKeyImpl;->source:Ljava/net/InetAddress;

    return-void
.end method

.method synthetic constructor <init>(Ljava/nio/channels/MulticastChannel;Ljava/net/InetAddress;Ljava/net/NetworkInterface;Ljava/net/InetAddress;Lsun/nio/ch/MembershipKeyImpl;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lsun/nio/ch/MembershipKeyImpl;-><init>(Ljava/nio/channels/MulticastChannel;Ljava/net/InetAddress;Ljava/net/NetworkInterface;Ljava/net/InetAddress;)V

    return-void
.end method


# virtual methods
.method public block(Ljava/net/InetAddress;)Ljava/nio/channels/MembershipKey;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lsun/nio/ch/MembershipKeyImpl;->source:Ljava/net/InetAddress;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "key is source-specific"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v1, p0, Lsun/nio/ch/MembershipKeyImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lsun/nio/ch/MembershipKeyImpl;->blockedSet:Ljava/util/HashSet;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lsun/nio/ch/MembershipKeyImpl;->blockedSet:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    monitor-exit v1

    return-object p0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lsun/nio/ch/MembershipKeyImpl;->ch:Ljava/nio/channels/MulticastChannel;

    check-cast v0, Lsun/nio/ch/DatagramChannelImpl;

    invoke-virtual {v0, p0, p1}, Lsun/nio/ch/DatagramChannelImpl;->block(Lsun/nio/ch/MembershipKeyImpl;Ljava/net/InetAddress;)V

    iget-object v0, p0, Lsun/nio/ch/MembershipKeyImpl;->blockedSet:Ljava/util/HashSet;

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lsun/nio/ch/MembershipKeyImpl;->blockedSet:Ljava/util/HashSet;

    :cond_2
    iget-object v0, p0, Lsun/nio/ch/MembershipKeyImpl;->blockedSet:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-object p0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public channel()Ljava/nio/channels/MulticastChannel;
    .locals 1

    iget-object v0, p0, Lsun/nio/ch/MembershipKeyImpl;->ch:Ljava/nio/channels/MulticastChannel;

    return-object v0
.end method

.method public drop()V
    .locals 1

    iget-object v0, p0, Lsun/nio/ch/MembershipKeyImpl;->ch:Ljava/nio/channels/MulticastChannel;

    check-cast v0, Lsun/nio/ch/DatagramChannelImpl;

    invoke-virtual {v0, p0}, Lsun/nio/ch/DatagramChannelImpl;->drop(Lsun/nio/ch/MembershipKeyImpl;)V

    return-void
.end method

.method public group()Ljava/net/InetAddress;
    .locals 1

    iget-object v0, p0, Lsun/nio/ch/MembershipKeyImpl;->group:Ljava/net/InetAddress;

    return-object v0
.end method

.method invalidate()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/nio/ch/MembershipKeyImpl;->valid:Z

    return-void
.end method

.method public isValid()Z
    .locals 1

    iget-boolean v0, p0, Lsun/nio/ch/MembershipKeyImpl;->valid:Z

    return v0
.end method

.method public networkInterface()Ljava/net/NetworkInterface;
    .locals 1

    iget-object v0, p0, Lsun/nio/ch/MembershipKeyImpl;->interf:Ljava/net/NetworkInterface;

    return-object v0
.end method

.method public sourceAddress()Ljava/net/InetAddress;
    .locals 1

    iget-object v0, p0, Lsun/nio/ch/MembershipKeyImpl;->source:Ljava/net/InetAddress;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/16 v2, 0x2c

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lsun/nio/ch/MembershipKeyImpl;->group:Ljava/net/InetAddress;

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lsun/nio/ch/MembershipKeyImpl;->interf:Ljava/net/NetworkInterface;

    invoke-virtual {v1}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lsun/nio/ch/MembershipKeyImpl;->source:Ljava/net/InetAddress;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lsun/nio/ch/MembershipKeyImpl;->source:Ljava/net/InetAddress;

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public unblock(Ljava/net/InetAddress;)Ljava/nio/channels/MembershipKey;
    .locals 3

    iget-object v1, p0, Lsun/nio/ch/MembershipKeyImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lsun/nio/ch/MembershipKeyImpl;->blockedSet:Ljava/util/HashSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsun/nio/ch/MembershipKeyImpl;->blockedSet:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "not blocked"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lsun/nio/ch/MembershipKeyImpl;->ch:Ljava/nio/channels/MulticastChannel;

    check-cast v0, Lsun/nio/ch/DatagramChannelImpl;

    invoke-virtual {v0, p0, p1}, Lsun/nio/ch/DatagramChannelImpl;->unblock(Lsun/nio/ch/MembershipKeyImpl;Ljava/net/InetAddress;)V

    iget-object v0, p0, Lsun/nio/ch/MembershipKeyImpl;->blockedSet:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-object p0
.end method
