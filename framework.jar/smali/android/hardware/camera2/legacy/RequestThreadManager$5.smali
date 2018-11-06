.class Landroid/hardware/camera2/legacy/RequestThreadManager$5;
.super Ljava/lang/Object;
.source "RequestThreadManager.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/legacy/RequestThreadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mCleanup:Z

.field private final mMapper:Landroid/hardware/camera2/legacy/LegacyResultMapper;

.field final synthetic this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;


# direct methods
.method constructor <init>(Landroid/hardware/camera2/legacy/RequestThreadManager;)V
    .locals 1

    iput-object p1, p0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->mCleanup:Z

    new-instance v0, Landroid/hardware/camera2/legacy/LegacyResultMapper;

    invoke-direct {v0}, Landroid/hardware/camera2/legacy/LegacyResultMapper;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->mMapper:Landroid/hardware/camera2/legacy/LegacyResultMapper;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 31

    move-object/from16 v0, p0

    iget-boolean v5, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->mCleanup:Z

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    return v5

    :cond_0
    const-wide/16 v28, 0x0

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    :pswitch_0
    new-instance v5, Ljava/lang/AssertionError;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Unhandled message "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    iget v8, v0, Landroid/os/Message;->what:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " on RequestThread."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v5

    :pswitch_1
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/hardware/camera2/legacy/RequestThreadManager$ConfigureHolder;

    iget-object v5, v12, Landroid/hardware/camera2/legacy/RequestThreadManager$ConfigureHolder;->surfaces:Ljava/util/Collection;

    if-eqz v5, :cond_3

    iget-object v5, v12, Landroid/hardware/camera2/legacy/RequestThreadManager$ConfigureHolder;->surfaces:Ljava/util/Collection;

    invoke-interface {v5}, Ljava/util/Collection;->size()I

    move-result v27

    :goto_0
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v5}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get0(Landroid/hardware/camera2/legacy/RequestThreadManager;)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Configure outputs: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v27

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " surfaces configured."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v5}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get3(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CaptureCollector;

    move-result-object v5

    const-wide/16 v8, 0xfa0

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v8, v9, v7}, Landroid/hardware/camera2/legacy/CaptureCollector;->waitForEmpty(JLjava/util/concurrent/TimeUnit;)Z

    move-result v30

    if-nez v30, :cond_1

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v5}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get0(Landroid/hardware/camera2/legacy/RequestThreadManager;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v7, "Timed out while queueing configure request."

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v5}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get3(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CaptureCollector;

    move-result-object v5

    invoke-virtual {v5}, Landroid/hardware/camera2/legacy/CaptureCollector;->failAll()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    iget-object v7, v12, Landroid/hardware/camera2/legacy/RequestThreadManager$ConfigureHolder;->surfaces:Ljava/util/Collection;

    invoke-static {v5, v7}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-wrap0(Landroid/hardware/camera2/legacy/RequestThreadManager;Ljava/util/Collection;)V

    iget-object v5, v12, Landroid/hardware/camera2/legacy/RequestThreadManager$ConfigureHolder;->condition:Landroid/os/ConditionVariable;

    invoke-virtual {v5}, Landroid/os/ConditionVariable;->open()V

    :cond_2
    :goto_1
    :pswitch_2
    const/4 v5, 0x1

    return v5

    :cond_3
    const/16 v27, 0x0

    goto :goto_0

    :catch_0
    move-exception v14

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v5}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get0(Landroid/hardware/camera2/legacy/RequestThreadManager;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v7, "Interrupted while waiting for requests to complete."

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v5}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get5(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CameraDeviceState;

    move-result-object v5

    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Landroid/hardware/camera2/legacy/CameraDeviceState;->setError(I)V

    goto :goto_1

    :pswitch_3
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v5}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get15(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/RequestHandlerThread;

    move-result-object v5

    invoke-virtual {v5}, Landroid/hardware/camera2/legacy/RequestHandlerThread;->getHandler()Landroid/os/Handler;

    move-result-object v16

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v5}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get14(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/RequestQueue;

    move-result-object v5

    invoke-virtual {v5}, Landroid/hardware/camera2/legacy/RequestQueue;->getNext()Landroid/hardware/camera2/legacy/RequestQueue$RequestQueueEntry;

    move-result-object v21

    if-nez v21, :cond_6

    :try_start_1
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v5}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get3(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CaptureCollector;

    move-result-object v5

    const-wide/16 v8, 0xfa0

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v8, v9, v7}, Landroid/hardware/camera2/legacy/CaptureCollector;->waitForEmpty(JLjava/util/concurrent/TimeUnit;)Z

    move-result v30

    if-nez v30, :cond_4

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v5}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get0(Landroid/hardware/camera2/legacy/RequestThreadManager;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v7, "Timed out while waiting for prior requests to complete."

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v5}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get3(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CaptureCollector;

    move-result-object v5

    invoke-virtual {v5}, Landroid/hardware/camera2/legacy/CaptureCollector;->failAll()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_4
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v5}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get9(Landroid/hardware/camera2/legacy/RequestThreadManager;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    :try_start_2
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v5}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get14(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/RequestQueue;

    move-result-object v5

    invoke-virtual {v5}, Landroid/hardware/camera2/legacy/RequestQueue;->getNext()Landroid/hardware/camera2/legacy/RequestQueue$RequestQueueEntry;

    move-result-object v21

    if-nez v21, :cond_5

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v5}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get5(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CameraDeviceState;

    move-result-object v5

    invoke-virtual {v5}, Landroid/hardware/camera2/legacy/CameraDeviceState;->setIdle()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v7

    goto/16 :goto_1

    :catch_1
    move-exception v14

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v5}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get0(Landroid/hardware/camera2/legacy/RequestThreadManager;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v7, "Interrupted while waiting for requests to complete: "

    invoke-static {v5, v7, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v5}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get5(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CameraDeviceState;

    move-result-object v5

    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Landroid/hardware/camera2/legacy/CameraDeviceState;->setError(I)V

    goto/16 :goto_1

    :cond_5
    monitor-exit v7

    :cond_6
    if-eqz v21, :cond_7

    const/4 v5, 0x2

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    invoke-virtual/range {v21 .. v21}, Landroid/hardware/camera2/legacy/RequestQueue$RequestQueueEntry;->isQueueEmpty()Z

    move-result v5

    if-eqz v5, :cond_7

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v5}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get5(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CameraDeviceState;

    move-result-object v5

    invoke-virtual {v5}, Landroid/hardware/camera2/legacy/CameraDeviceState;->setRequestQueueEmpty()V

    :cond_7
    invoke-virtual/range {v21 .. v21}, Landroid/hardware/camera2/legacy/RequestQueue$RequestQueueEntry;->getBurstHolder()Landroid/hardware/camera2/legacy/BurstHolder;

    move-result-object v11

    invoke-virtual/range {v21 .. v21}, Landroid/hardware/camera2/legacy/RequestQueue$RequestQueueEntry;->getFrameNumber()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v11, v8, v9}, Landroid/hardware/camera2/legacy/BurstHolder;->produceRequestHolders(J)Ljava/util/List;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_8
    :goto_2
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/camera2/legacy/RequestHolder;

    invoke-virtual {v6}, Landroid/hardware/camera2/legacy/RequestHolder;->getRequest()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v24

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v5}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get11(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/LegacyRequest;

    move-result-object v5

    if-eqz v5, :cond_9

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v5}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get11(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/LegacyRequest;

    move-result-object v5

    iget-object v5, v5, Landroid/hardware/camera2/legacy/LegacyRequest;->captureRequest:Landroid/hardware/camera2/CaptureRequest;

    move-object/from16 v0, v24

    if-eq v5, v0, :cond_b

    :cond_9
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v5}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get12(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/Camera$Parameters;

    move-result-object v5

    invoke-virtual {v5}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v5

    invoke-static {v5}, Landroid/hardware/camera2/legacy/ParameterUtils;->convertSize(Landroid/hardware/Camera$Size;)Landroid/util/Size;

    move-result-object v23

    new-instance v20, Landroid/hardware/camera2/legacy/LegacyRequest;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v5}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get4(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v7}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get12(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/Camera$Parameters;

    move-result-object v7

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    move-object/from16 v2, v23

    invoke-direct {v0, v5, v1, v2, v7}, Landroid/hardware/camera2/legacy/LegacyRequest;-><init>(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CaptureRequest;Landroid/util/Size;Landroid/hardware/Camera$Parameters;)V

    invoke-static/range {v20 .. v20}, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->convertRequestMetadata(Landroid/hardware/camera2/legacy/LegacyRequest;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v5}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get12(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/Camera$Parameters;

    move-result-object v5

    move-object/from16 v0, v20

    iget-object v7, v0, Landroid/hardware/camera2/legacy/LegacyRequest;->parameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v5, v7}, Landroid/hardware/Camera$Parameters;->same(Landroid/hardware/Camera$Parameters;)Z

    move-result v5

    if-nez v5, :cond_a

    :try_start_3
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v5}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get2(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/Camera;

    move-result-object v5

    move-object/from16 v0, v20

    iget-object v7, v0, Landroid/hardware/camera2/legacy/LegacyRequest;->parameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v5, v7}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_3

    const/16 v22, 0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    move-object/from16 v0, v20

    iget-object v7, v0, Landroid/hardware/camera2/legacy/LegacyRequest;->parameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v5, v7}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-set3(Landroid/hardware/camera2/legacy/RequestThreadManager;Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;

    :cond_a
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    move-object/from16 v0, v20

    invoke-static {v5, v0}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-set2(Landroid/hardware/camera2/legacy/RequestThreadManager;Landroid/hardware/camera2/legacy/LegacyRequest;)Landroid/hardware/camera2/legacy/LegacyRequest;

    :cond_b
    :try_start_4
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v5}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get3(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CaptureCollector;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v7}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get11(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/LegacyRequest;

    move-result-object v7

    const-wide/16 v8, 0xfa0

    sget-object v10, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual/range {v5 .. v10}, Landroid/hardware/camera2/legacy/CaptureCollector;->queueRequest(Landroid/hardware/camera2/legacy/RequestHolder;Landroid/hardware/camera2/legacy/LegacyRequest;JLjava/util/concurrent/TimeUnit;)Z

    move-result v30

    if-nez v30, :cond_d

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v5}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get0(Landroid/hardware/camera2/legacy/RequestThreadManager;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v7, "Timed out while queueing capture request."

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v6}, Landroid/hardware/camera2/legacy/RequestHolder;->failRequest()V

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v5}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get5(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CameraDeviceState;

    move-result-object v5

    const-wide/16 v8, 0x0

    const/4 v7, 0x3

    invoke-virtual {v5, v6, v8, v9, v7}, Landroid/hardware/camera2/legacy/CameraDeviceState;->setCaptureStart(Landroid/hardware/camera2/legacy/RequestHolder;JI)Z
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_5

    goto/16 :goto_2

    :catch_2
    move-exception v13

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v5}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get0(Landroid/hardware/camera2/legacy/RequestThreadManager;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v7, "Received device exception during capture call: "

    invoke-static {v5, v7, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v5}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get5(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CameraDeviceState;

    move-result-object v5

    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Landroid/hardware/camera2/legacy/CameraDeviceState;->setError(I)V

    :cond_c
    :goto_3
    if-eqz v4, :cond_2

    invoke-virtual {v11}, Landroid/hardware/camera2/legacy/BurstHolder;->isRepeating()Z

    move-result v5

    if-eqz v5, :cond_2

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-virtual {v11}, Landroid/hardware/camera2/legacy/BurstHolder;->getRequestId()I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/hardware/camera2/legacy/RequestThreadManager;->cancelRepeating(I)J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v5}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get5(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CameraDeviceState;

    move-result-object v5

    move-wide/from16 v0, v18

    invoke-virtual {v5, v0, v1}, Landroid/hardware/camera2/legacy/CameraDeviceState;->setRepeatingRequestError(J)V

    goto/16 :goto_1

    :catchall_0
    move-exception v5

    monitor-exit v7

    throw v5

    :catch_3
    move-exception v15

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v5}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get0(Landroid/hardware/camera2/legacy/RequestThreadManager;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v7, "Exception while setting camera parameters: "

    invoke-static {v5, v7, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v6}, Landroid/hardware/camera2/legacy/RequestHolder;->failRequest()V

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v5}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get5(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CameraDeviceState;

    move-result-object v5

    const-wide/16 v8, 0x0

    const/4 v7, 0x3

    invoke-virtual {v5, v6, v8, v9, v7}, Landroid/hardware/camera2/legacy/CameraDeviceState;->setCaptureStart(Landroid/hardware/camera2/legacy/RequestHolder;JI)Z

    goto/16 :goto_2

    :cond_d
    :try_start_5
    invoke-virtual {v6}, Landroid/hardware/camera2/legacy/RequestHolder;->hasPreviewTargets()Z

    move-result v5

    if-eqz v5, :cond_e

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v5, v6}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-wrap3(Landroid/hardware/camera2/legacy/RequestThreadManager;Landroid/hardware/camera2/legacy/RequestHolder;)V

    :cond_e
    invoke-virtual {v6}, Landroid/hardware/camera2/legacy/RequestHolder;->hasJpegTargets()Z

    move-result v5

    if-eqz v5, :cond_10

    :goto_4
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v5}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get3(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CaptureCollector;

    move-result-object v5

    const-wide/16 v8, 0x3e8

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v8, v9, v7}, Landroid/hardware/camera2/legacy/CaptureCollector;->waitForPreviewsEmpty(JLjava/util/concurrent/TimeUnit;)Z

    move-result v5

    if-nez v5, :cond_f

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v5}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get0(Landroid/hardware/camera2/legacy/RequestThreadManager;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v7, "Timed out while waiting for preview requests to complete."

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v5}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get3(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CaptureCollector;

    move-result-object v5

    invoke-virtual {v5}, Landroid/hardware/camera2/legacy/CaptureCollector;->failNextPreview()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_4

    :catch_4
    move-exception v14

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v5}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get0(Landroid/hardware/camera2/legacy/RequestThreadManager;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v7, "Interrupted during capture: "

    invoke-static {v5, v7, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v5}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get5(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CameraDeviceState;

    move-result-object v5

    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Landroid/hardware/camera2/legacy/CameraDeviceState;->setError(I)V

    goto/16 :goto_3

    :cond_f
    :try_start_6
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v5}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get13(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/os/ConditionVariable;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/ConditionVariable;->close()V

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v5, v6}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-wrap1(Landroid/hardware/camera2/legacy/RequestThreadManager;Landroid/hardware/camera2/legacy/RequestHolder;)V

    :cond_10
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v5}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get6(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v7}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get12(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/Camera$Parameters;

    move-result-object v7

    move-object/from16 v0, v24

    invoke-virtual {v5, v0, v7}, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->processFaceDetectMode(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/Camera$Parameters;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v5}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get7(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v7}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get12(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/Camera$Parameters;

    move-result-object v7

    move-object/from16 v0, v24

    invoke-virtual {v5, v0, v7}, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->processRequestTriggers(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/Camera$Parameters;)V

    invoke-virtual {v6}, Landroid/hardware/camera2/legacy/RequestHolder;->hasJpegTargets()Z

    move-result v5

    if-eqz v5, :cond_11

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v5, v6}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-wrap2(Landroid/hardware/camera2/legacy/RequestThreadManager;Landroid/hardware/camera2/legacy/RequestHolder;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v5}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get13(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/os/ConditionVariable;

    move-result-object v5

    const-wide/16 v8, 0xfa0

    invoke-virtual {v5, v8, v9}, Landroid/os/ConditionVariable;->block(J)Z

    move-result v5

    if-nez v5, :cond_11

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v5}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get0(Landroid/hardware/camera2/legacy/RequestThreadManager;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v7, "Hit timeout for jpeg callback!"

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v5}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get3(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CaptureCollector;

    move-result-object v5

    invoke-virtual {v5}, Landroid/hardware/camera2/legacy/CaptureCollector;->failNextJpeg()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_5

    :cond_11
    if-eqz v22, :cond_12

    :try_start_7
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v7}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get2(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/Camera;

    move-result-object v7

    invoke-virtual {v7}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-set3(Landroid/hardware/camera2/legacy/RequestThreadManager;Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_6

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v5}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get11(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/LegacyRequest;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v7}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get12(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/Camera$Parameters;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/hardware/camera2/legacy/LegacyRequest;->setParameters(Landroid/hardware/Camera$Parameters;)V

    :cond_12
    new-instance v10, Landroid/util/MutableLong;

    const-wide/16 v8, 0x0

    invoke-direct {v10, v8, v9}, Landroid/util/MutableLong;-><init>(J)V

    :try_start_8
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v5}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get3(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CaptureCollector;

    move-result-object v5

    const-wide/16 v7, 0xfa0

    sget-object v9, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual/range {v5 .. v10}, Landroid/hardware/camera2/legacy/CaptureCollector;->waitForRequestCompleted(Landroid/hardware/camera2/legacy/RequestHolder;JLjava/util/concurrent/TimeUnit;Landroid/util/MutableLong;)Z

    move-result v30

    if-nez v30, :cond_13

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v5}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get0(Landroid/hardware/camera2/legacy/RequestThreadManager;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v7, "Timed out while waiting for request to complete."

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v5}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get3(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CaptureCollector;

    move-result-object v5

    invoke-virtual {v5}, Landroid/hardware/camera2/legacy/CaptureCollector;->failAll()V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_7

    :cond_13
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->mMapper:Landroid/hardware/camera2/legacy/LegacyResultMapper;

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v7}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get11(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/LegacyRequest;

    move-result-object v7

    iget-wide v8, v10, Landroid/util/MutableLong;->value:J

    invoke-virtual {v5, v7, v8, v9}, Landroid/hardware/camera2/legacy/LegacyResultMapper;->cachedConvertResultMetadata(Landroid/hardware/camera2/legacy/LegacyRequest;J)Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v5}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get7(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;

    move-result-object v5

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->mapResultTriggers(Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v5}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get6(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v7}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get11(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/LegacyRequest;

    move-result-object v7

    move-object/from16 v0, v26

    invoke-virtual {v5, v0, v7}, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->mapResultFaces(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/camera2/legacy/LegacyRequest;)V

    invoke-virtual {v6}, Landroid/hardware/camera2/legacy/RequestHolder;->requestFailed()Z

    move-result v5

    if-nez v5, :cond_14

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v5}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get5(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CameraDeviceState;

    move-result-object v5

    move-object/from16 v0, v26

    invoke-virtual {v5, v6, v0}, Landroid/hardware/camera2/legacy/CameraDeviceState;->setCaptureResult(Landroid/hardware/camera2/legacy/RequestHolder;Landroid/hardware/camera2/impl/CameraMetadataNative;)Z

    :cond_14
    invoke-virtual {v6}, Landroid/hardware/camera2/legacy/RequestHolder;->isOutputAbandoned()Z

    move-result v5

    if-eqz v5, :cond_8

    const/4 v4, 0x1

    goto/16 :goto_2

    :catch_5
    move-exception v15

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v5}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get0(Landroid/hardware/camera2/legacy/RequestThreadManager;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v7, "Received device exception during capture call: "

    invoke-static {v5, v7, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v5}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get5(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CameraDeviceState;

    move-result-object v5

    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Landroid/hardware/camera2/legacy/CameraDeviceState;->setError(I)V

    goto/16 :goto_3

    :catch_6
    move-exception v15

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v5}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get0(Landroid/hardware/camera2/legacy/RequestThreadManager;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v7, "Received device exception: "

    invoke-static {v5, v7, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v5}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get5(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CameraDeviceState;

    move-result-object v5

    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Landroid/hardware/camera2/legacy/CameraDeviceState;->setError(I)V

    goto/16 :goto_3

    :catch_7
    move-exception v14

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v5}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get0(Landroid/hardware/camera2/legacy/RequestThreadManager;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v7, "Interrupted waiting for request completion: "

    invoke-static {v5, v7, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v5}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get5(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CameraDeviceState;

    move-result-object v5

    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Landroid/hardware/camera2/legacy/CameraDeviceState;->setError(I)V

    goto/16 :goto_3

    :pswitch_4
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->mCleanup:Z

    :try_start_9
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v5}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get3(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CaptureCollector;

    move-result-object v5

    const-wide/16 v8, 0xfa0

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v8, v9, v7}, Landroid/hardware/camera2/legacy/CaptureCollector;->waitForEmpty(JLjava/util/concurrent/TimeUnit;)Z

    move-result v30

    if-nez v30, :cond_15

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v5}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get0(Landroid/hardware/camera2/legacy/RequestThreadManager;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v7, "Timed out while queueing cleanup request."

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v5}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get3(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CaptureCollector;

    move-result-object v5

    invoke-virtual {v5}, Landroid/hardware/camera2/legacy/CaptureCollector;->failAll()V
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_8

    :cond_15
    :goto_5
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v5}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get8(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/GLThreadManager;

    move-result-object v5

    if-eqz v5, :cond_16

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v5}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get8(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/GLThreadManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/hardware/camera2/legacy/GLThreadManager;->quit()V

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    const/4 v7, 0x0

    invoke-static {v5, v7}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-set1(Landroid/hardware/camera2/legacy/RequestThreadManager;Landroid/hardware/camera2/legacy/GLThreadManager;)Landroid/hardware/camera2/legacy/GLThreadManager;

    :cond_16
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v5}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get2(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/Camera;

    move-result-object v5

    if-eqz v5, :cond_17

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v5}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get2(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/Camera;

    move-result-object v5

    invoke-virtual {v5}, Landroid/hardware/Camera;->release()V

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    const/4 v7, 0x0

    invoke-static {v5, v7}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-set0(Landroid/hardware/camera2/legacy/RequestThreadManager;Landroid/hardware/Camera;)Landroid/hardware/Camera;

    :cond_17
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v7}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get1(Landroid/hardware/camera2/legacy/RequestThreadManager;)Ljava/util/List;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-wrap4(Landroid/hardware/camera2/legacy/RequestThreadManager;Ljava/util/Collection;)V

    goto/16 :goto_1

    :catch_8
    move-exception v14

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v5}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get0(Landroid/hardware/camera2/legacy/RequestThreadManager;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v7, "Interrupted while waiting for requests to complete: "

    invoke-static {v5, v7, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v5}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get5(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CameraDeviceState;

    move-result-object v5

    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Landroid/hardware/camera2/legacy/CameraDeviceState;->setError(I)V

    goto :goto_5

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
