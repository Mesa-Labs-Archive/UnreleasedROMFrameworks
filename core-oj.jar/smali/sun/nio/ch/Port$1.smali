.class Lsun/nio/ch/Port$1;
.super Ljava/lang/Object;
.source "Port.java"

# interfaces
.implements Lsun/nio/ch/Port$PollableChannel;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsun/nio/ch/Port;->attachForeignChannel(Ljava/nio/channels/Channel;Ljava/io/FileDescriptor;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lsun/nio/ch/Port;

.field final synthetic val$channel:Ljava/nio/channels/Channel;


# direct methods
.method constructor <init>(Lsun/nio/ch/Port;Ljava/nio/channels/Channel;)V
    .locals 0

    iput-object p1, p0, Lsun/nio/ch/Port$1;->this$0:Lsun/nio/ch/Port;

    iput-object p2, p0, Lsun/nio/ch/Port$1;->val$channel:Ljava/nio/channels/Channel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lsun/nio/ch/Port$1;->val$channel:Ljava/nio/channels/Channel;

    invoke-interface {v0}, Ljava/nio/channels/Channel;->close()V

    return-void
.end method

.method public onEvent(IZ)V
    .locals 0

    return-void
.end method
