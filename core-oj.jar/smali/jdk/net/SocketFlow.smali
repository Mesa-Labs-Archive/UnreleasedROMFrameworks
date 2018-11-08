.class public Ljdk/net/SocketFlow;
.super Ljava/lang/Object;
.source "SocketFlow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljdk/net/SocketFlow$Status;
    }
.end annotation


# static fields
.field public static final HIGH_PRIORITY:I = 0x2

.field public static final NORMAL_PRIORITY:I = 0x1

.field private static final UNSET:I = -0x1


# instance fields
.field private bandwidth:J

.field private priority:I

.field private status:Ljdk/net/SocketFlow$Status;


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Ljdk/net/SocketFlow;->priority:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Ljdk/net/SocketFlow;->bandwidth:J

    sget-object v0, Ljdk/net/SocketFlow$Status;->NO_STATUS:Ljdk/net/SocketFlow$Status;

    iput-object v0, p0, Ljdk/net/SocketFlow;->status:Ljdk/net/SocketFlow$Status;

    return-void
.end method

.method public static create()Ljdk/net/SocketFlow;
    .locals 1

    new-instance v0, Ljdk/net/SocketFlow;

    invoke-direct {v0}, Ljdk/net/SocketFlow;-><init>()V

    return-object v0
.end method


# virtual methods
.method public bandwidth()J
    .locals 2

    iget-wide v0, p0, Ljdk/net/SocketFlow;->bandwidth:J

    return-wide v0
.end method

.method public bandwidth(J)Ljdk/net/SocketFlow;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "invalid bandwidth"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-wide p1, p0, Ljdk/net/SocketFlow;->bandwidth:J

    return-object p0
.end method

.method public priority()I
    .locals 1

    iget v0, p0, Ljdk/net/SocketFlow;->priority:I

    return v0
.end method

.method public priority(I)Ljdk/net/SocketFlow;
    .locals 2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "invalid priority"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput p1, p0, Ljdk/net/SocketFlow;->priority:I

    return-object p0
.end method

.method public status()Ljdk/net/SocketFlow$Status;
    .locals 1

    iget-object v0, p0, Ljdk/net/SocketFlow;->status:Ljdk/net/SocketFlow$Status;

    return-object v0
.end method
