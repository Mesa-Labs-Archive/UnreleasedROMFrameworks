.class Lsun/nio/fs/AbstractWatchKey$Event;
.super Ljava/lang/Object;
.source "AbstractWatchKey.java"

# interfaces
.implements Ljava/nio/file/WatchEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/nio/fs/AbstractWatchKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Event"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/nio/file/WatchEvent",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final context:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private count:I

.field private final kind:Ljava/nio/file/WatchEvent$Kind;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/nio/file/WatchEvent$Kind",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/nio/file/WatchEvent$Kind;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/WatchEvent$Kind",
            "<TT;>;TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsun/nio/fs/AbstractWatchKey$Event;->kind:Ljava/nio/file/WatchEvent$Kind;

    iput-object p2, p0, Lsun/nio/fs/AbstractWatchKey$Event;->context:Ljava/lang/Object;

    const/4 v0, 0x1

    iput v0, p0, Lsun/nio/fs/AbstractWatchKey$Event;->count:I

    return-void
.end method


# virtual methods
.method public context()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lsun/nio/fs/AbstractWatchKey$Event;->context:Ljava/lang/Object;

    return-object v0
.end method

.method public count()I
    .locals 1

    iget v0, p0, Lsun/nio/fs/AbstractWatchKey$Event;->count:I

    return v0
.end method

.method increment()V
    .locals 1

    iget v0, p0, Lsun/nio/fs/AbstractWatchKey$Event;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lsun/nio/fs/AbstractWatchKey$Event;->count:I

    return-void
.end method

.method public kind()Ljava/nio/file/WatchEvent$Kind;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/nio/file/WatchEvent$Kind",
            "<TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lsun/nio/fs/AbstractWatchKey$Event;->kind:Ljava/nio/file/WatchEvent$Kind;

    return-object v0
.end method
