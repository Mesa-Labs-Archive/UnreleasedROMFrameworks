.class Lsun/nio/ch/EPollPort$Event;
.super Ljava/lang/Object;
.source "EPollPort.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/nio/ch/EPollPort;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Event"
.end annotation


# instance fields
.field final channel:Lsun/nio/ch/Port$PollableChannel;

.field final events:I


# direct methods
.method constructor <init>(Lsun/nio/ch/Port$PollableChannel;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsun/nio/ch/EPollPort$Event;->channel:Lsun/nio/ch/Port$PollableChannel;

    iput p2, p0, Lsun/nio/ch/EPollPort$Event;->events:I

    return-void
.end method


# virtual methods
.method channel()Lsun/nio/ch/Port$PollableChannel;
    .locals 1

    iget-object v0, p0, Lsun/nio/ch/EPollPort$Event;->channel:Lsun/nio/ch/Port$PollableChannel;

    return-object v0
.end method

.method events()I
    .locals 1

    iget v0, p0, Lsun/nio/ch/EPollPort$Event;->events:I

    return v0
.end method
