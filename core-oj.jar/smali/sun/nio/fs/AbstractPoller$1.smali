.class Lsun/nio/fs/AbstractPoller$1;
.super Ljava/lang/Object;
.source "AbstractPoller.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsun/nio/fs/AbstractPoller;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lsun/nio/fs/AbstractPoller;

.field final synthetic val$thisRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lsun/nio/fs/AbstractPoller;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lsun/nio/fs/AbstractPoller$1;->this$0:Lsun/nio/fs/AbstractPoller;

    iput-object p2, p0, Lsun/nio/fs/AbstractPoller$1;->val$thisRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lsun/nio/fs/AbstractPoller$1;->val$thisRunnable:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const/4 v1, 0x0

    return-object v1
.end method
