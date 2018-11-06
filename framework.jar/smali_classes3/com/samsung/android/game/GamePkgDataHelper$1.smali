.class Lcom/samsung/android/game/GamePkgDataHelper$1;
.super Landroid/os/Handler;
.source "GamePkgDataHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/game/GamePkgDataHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mPrevCreateTime:J

.field final synthetic this$0:Lcom/samsung/android/game/GamePkgDataHelper;


# direct methods
.method constructor <init>(Lcom/samsung/android/game/GamePkgDataHelper;Landroid/os/Looper;)V
    .locals 2

    iput-object p1, p0, Lcom/samsung/android/game/GamePkgDataHelper$1;->this$0:Lcom/samsung/android/game/GamePkgDataHelper;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/game/GamePkgDataHelper$1;->mPrevCreateTime:J

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/samsung/android/game/GamePkgDataHelper$1;->mPrevCreateTime:J

    sub-long v4, v0, v4

    const-wide/16 v6, 0x1f4

    cmp-long v4, v4, v6

    if-ltz v4, :cond_0

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/game/GamePkgDataHelper$1;->this$0:Lcom/samsung/android/game/GamePkgDataHelper;

    invoke-static {v4}, Lcom/samsung/android/game/GamePkgDataHelper;->-get0(Lcom/samsung/android/game/GamePkgDataHelper;)Lcom/samsung/android/game/GamePkgDataHelper$IGameCreateListener;

    move-result-object v4

    if-eqz v4, :cond_1

    if-eqz v3, :cond_1

    iget-object v4, p0, Lcom/samsung/android/game/GamePkgDataHelper$1;->this$0:Lcom/samsung/android/game/GamePkgDataHelper;

    iget-object v4, v4, Lcom/samsung/android/game/GamePkgDataHelper;->mGamePkgDataMap:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/game/GamePkgDataHelper$GamePkgData;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/samsung/android/game/GamePkgDataHelper$GamePkgData;->getCategory()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    iget-object v4, p0, Lcom/samsung/android/game/GamePkgDataHelper$1;->this$0:Lcom/samsung/android/game/GamePkgDataHelper;

    invoke-static {v4}, Lcom/samsung/android/game/GamePkgDataHelper;->-get0(Lcom/samsung/android/game/GamePkgDataHelper;)Lcom/samsung/android/game/GamePkgDataHelper$IGameCreateListener;

    move-result-object v4

    invoke-interface {v4, v3}, Lcom/samsung/android/game/GamePkgDataHelper$IGameCreateListener;->onGameCreate(Ljava/lang/String;)V

    :cond_1
    iput-wide v0, p0, Lcom/samsung/android/game/GamePkgDataHelper$1;->mPrevCreateTime:J

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
    .end packed-switch
.end method
