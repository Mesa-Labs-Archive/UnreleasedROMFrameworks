.class Lsun/nio/ch/Invoker$GroupAndInvokeCount;
.super Ljava/lang/Object;
.source "Invoker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/nio/ch/Invoker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GroupAndInvokeCount"
.end annotation


# instance fields
.field private final group:Lsun/nio/ch/AsynchronousChannelGroupImpl;

.field private handlerInvokeCount:I


# direct methods
.method static synthetic -get0(Lsun/nio/ch/Invoker$GroupAndInvokeCount;)Lsun/nio/ch/AsynchronousChannelGroupImpl;
    .locals 1

    iget-object v0, p0, Lsun/nio/ch/Invoker$GroupAndInvokeCount;->group:Lsun/nio/ch/AsynchronousChannelGroupImpl;

    return-object v0
.end method

.method constructor <init>(Lsun/nio/ch/AsynchronousChannelGroupImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsun/nio/ch/Invoker$GroupAndInvokeCount;->group:Lsun/nio/ch/AsynchronousChannelGroupImpl;

    return-void
.end method


# virtual methods
.method group()Lsun/nio/ch/AsynchronousChannelGroupImpl;
    .locals 1

    iget-object v0, p0, Lsun/nio/ch/Invoker$GroupAndInvokeCount;->group:Lsun/nio/ch/AsynchronousChannelGroupImpl;

    return-object v0
.end method

.method incrementInvokeCount()V
    .locals 1

    iget v0, p0, Lsun/nio/ch/Invoker$GroupAndInvokeCount;->handlerInvokeCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lsun/nio/ch/Invoker$GroupAndInvokeCount;->handlerInvokeCount:I

    return-void
.end method

.method invokeCount()I
    .locals 1

    iget v0, p0, Lsun/nio/ch/Invoker$GroupAndInvokeCount;->handlerInvokeCount:I

    return v0
.end method

.method resetInvokeCount()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lsun/nio/ch/Invoker$GroupAndInvokeCount;->handlerInvokeCount:I

    return-void
.end method

.method setInvokeCount(I)V
    .locals 0

    iput p1, p0, Lsun/nio/ch/Invoker$GroupAndInvokeCount;->handlerInvokeCount:I

    return-void
.end method
