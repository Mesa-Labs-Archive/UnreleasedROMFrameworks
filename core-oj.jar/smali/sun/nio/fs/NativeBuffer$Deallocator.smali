.class Lsun/nio/fs/NativeBuffer$Deallocator;
.super Ljava/lang/Object;
.source "NativeBuffer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/nio/fs/NativeBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Deallocator"
.end annotation


# instance fields
.field private final address:J


# direct methods
.method constructor <init>(J)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lsun/nio/fs/NativeBuffer$Deallocator;->address:J

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Lsun/nio/fs/NativeBuffer;->-get0()Lsun/misc/Unsafe;

    move-result-object v0

    iget-wide v2, p0, Lsun/nio/fs/NativeBuffer$Deallocator;->address:J

    invoke-virtual {v0, v2, v3}, Lsun/misc/Unsafe;->freeMemory(J)V

    return-void
.end method
