.class Lsun/nio/fs/PollingWatchService$2;
.super Ljava/lang/Object;
.source "PollingWatchService.java"

# interfaces
.implements Ljava/security/PrivilegedExceptionAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsun/nio/fs/PollingWatchService;->register(Ljava/nio/file/Path;[Ljava/nio/file/WatchEvent$Kind;[Ljava/nio/file/WatchEvent$Modifier;)Ljava/nio/file/WatchKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedExceptionAction",
        "<",
        "Lsun/nio/fs/PollingWatchService$PollingWatchKey;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lsun/nio/fs/PollingWatchService;

.field final synthetic val$eventSet:Ljava/util/Set;

.field final synthetic val$path:Ljava/nio/file/Path;

.field final synthetic val$s:Lcom/sun/nio/file/SensitivityWatchEventModifier;


# direct methods
.method constructor <init>(Lsun/nio/fs/PollingWatchService;Ljava/nio/file/Path;Ljava/util/Set;Lcom/sun/nio/file/SensitivityWatchEventModifier;)V
    .locals 0

    iput-object p1, p0, Lsun/nio/fs/PollingWatchService$2;->this$0:Lsun/nio/fs/PollingWatchService;

    iput-object p2, p0, Lsun/nio/fs/PollingWatchService$2;->val$path:Ljava/nio/file/Path;

    iput-object p3, p0, Lsun/nio/fs/PollingWatchService$2;->val$eventSet:Ljava/util/Set;

    iput-object p4, p0, Lsun/nio/fs/PollingWatchService$2;->val$s:Lcom/sun/nio/file/SensitivityWatchEventModifier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lsun/nio/fs/PollingWatchService$2;->run()Lsun/nio/fs/PollingWatchService$PollingWatchKey;

    move-result-object v0

    return-object v0
.end method

.method public run()Lsun/nio/fs/PollingWatchService$PollingWatchKey;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lsun/nio/fs/PollingWatchService$2;->this$0:Lsun/nio/fs/PollingWatchService;

    iget-object v1, p0, Lsun/nio/fs/PollingWatchService$2;->val$path:Ljava/nio/file/Path;

    iget-object v2, p0, Lsun/nio/fs/PollingWatchService$2;->val$eventSet:Ljava/util/Set;

    iget-object v3, p0, Lsun/nio/fs/PollingWatchService$2;->val$s:Lcom/sun/nio/file/SensitivityWatchEventModifier;

    invoke-static {v0, v1, v2, v3}, Lsun/nio/fs/PollingWatchService;->-wrap0(Lsun/nio/fs/PollingWatchService;Ljava/nio/file/Path;Ljava/util/Set;Lcom/sun/nio/file/SensitivityWatchEventModifier;)Lsun/nio/fs/PollingWatchService$PollingWatchKey;

    move-result-object v0

    return-object v0
.end method
