.class Lsun/nio/ch/MembershipKeyImpl$Type6;
.super Lsun/nio/ch/MembershipKeyImpl;
.source "MembershipKeyImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/nio/ch/MembershipKeyImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Type6"
.end annotation


# instance fields
.field private final groupAddress:[B

.field private final index:I

.field private final sourceAddress:[B


# direct methods
.method constructor <init>(Ljava/nio/channels/MulticastChannel;Ljava/net/InetAddress;Ljava/net/NetworkInterface;Ljava/net/InetAddress;[BI[B)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lsun/nio/ch/MembershipKeyImpl;-><init>(Ljava/nio/channels/MulticastChannel;Ljava/net/InetAddress;Ljava/net/NetworkInterface;Ljava/net/InetAddress;Lsun/nio/ch/MembershipKeyImpl;)V

    iput-object p5, p0, Lsun/nio/ch/MembershipKeyImpl$Type6;->groupAddress:[B

    iput p6, p0, Lsun/nio/ch/MembershipKeyImpl$Type6;->index:I

    iput-object p7, p0, Lsun/nio/ch/MembershipKeyImpl$Type6;->sourceAddress:[B

    return-void
.end method


# virtual methods
.method groupAddress()[B
    .locals 1

    iget-object v0, p0, Lsun/nio/ch/MembershipKeyImpl$Type6;->groupAddress:[B

    return-object v0
.end method

.method index()I
    .locals 1

    iget v0, p0, Lsun/nio/ch/MembershipKeyImpl$Type6;->index:I

    return v0
.end method

.method source()[B
    .locals 1

    iget-object v0, p0, Lsun/nio/ch/MembershipKeyImpl$Type6;->sourceAddress:[B

    return-object v0
.end method
