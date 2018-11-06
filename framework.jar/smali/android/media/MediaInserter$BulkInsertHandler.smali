.class Landroid/media/MediaInserter$BulkInsertHandler;
.super Landroid/os/Handler;
.source "MediaInserter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaInserter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BulkInsertHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/MediaInserter;


# direct methods
.method constructor <init>(Landroid/media/MediaInserter;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Landroid/media/MediaInserter$BulkInsertHandler;->this$0:Landroid/media/MediaInserter;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    iget v4, p1, Landroid/os/Message;->what:I

    if-nez v4, :cond_0

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, [Landroid/content/ContentValues;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v5, "tableUri"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    :try_start_0
    iget-object v4, p0, Landroid/media/MediaInserter$BulkInsertHandler;->this$0:Landroid/media/MediaInserter;

    invoke-static {v4}, Landroid/media/MediaInserter;->-get0(Landroid/media/MediaInserter;)Landroid/content/ContentProviderClient;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Landroid/content/ContentProviderClient;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteFullException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_0
    iget-object v4, p0, Landroid/media/MediaInserter$BulkInsertHandler;->this$0:Landroid/media/MediaInserter;

    invoke-static {v4}, Landroid/media/MediaInserter;->-get1(Landroid/media/MediaInserter;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    :try_start_1
    iget-object v4, p0, Landroid/media/MediaInserter$BulkInsertHandler;->this$0:Landroid/media/MediaInserter;

    invoke-static {v4}, Landroid/media/MediaInserter;->-get1(Landroid/media/MediaInserter;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->notify()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v5

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method
