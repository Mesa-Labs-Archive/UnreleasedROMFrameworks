.class Lcom/samsung/android/camera/core/SemCamera$EventHandler;
.super Landroid/os/Handler;
.source "SemCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/core/SemCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# instance fields
.field private final mCamera:Lcom/samsung/android/camera/core/SemCamera;

.field final synthetic this$0:Lcom/samsung/android/camera/core/SemCamera;


# direct methods
.method public constructor <init>(Lcom/samsung/android/camera/core/SemCamera;Lcom/samsung/android/camera/core/SemCamera;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->mCamera:Lcom/samsung/android/camera/core/SemCamera;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 24

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const/16 v3, 0x400

    if-ge v2, v3, :cond_0

    const-string/jumbo v2, "SemCamera-JNI-Java"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleMessage: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "SemCamera handleMessage("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-wide/16 v4, 0x400

    invoke-static {v4, v5, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get53(Lcom/samsung/android/camera/core/SemCamera;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get41(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$PostEventListener;

    move-result-object v2

    if-eqz v2, :cond_87

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get41(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$PostEventListener;

    move-result-object v2

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg2:I

    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v2, v4, v5, v6, v7}, Lcom/samsung/android/camera/core/SemCamera$PostEventListener;->onHandleMessage(IIILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_6d

    :goto_0
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    :goto_1
    const-wide/16 v2, 0x400

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :sswitch_0
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get54(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$ShutterCallback;

    move-result-object v2

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get54(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$ShutterCallback;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/camera/core/SemCamera$ShutterCallback;->onShutter()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v2

    const-wide/16 v4, 0x400

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    throw v2

    :sswitch_1
    :try_start_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get47(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$PictureCallback;

    move-result-object v2

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get47(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$PictureCallback;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [B

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->mCamera:Lcom/samsung/android/camera/core/SemCamera;

    invoke-interface {v3, v2, v4}, Lcom/samsung/android/camera/core/SemCamera$PictureCallback;->onPictureTaken([BLcom/samsung/android/camera/core/SemCamera;)V

    goto :goto_1

    :sswitch_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get31(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$PictureCallback;

    move-result-object v2

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get31(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$PictureCallback;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [B

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->mCamera:Lcom/samsung/android/camera/core/SemCamera;

    invoke-interface {v3, v2, v4}, Lcom/samsung/android/camera/core/SemCamera$PictureCallback;->onPictureTaken([BLcom/samsung/android/camera/core/SemCamera;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :sswitch_3
    :try_start_5
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Lcom/samsung/android/camera/core/SemCamera$TimeStampFrame;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get45(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$PreviewCallbackTimeStamp;

    move-result-object v21

    if-eqz v21, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get38(Lcom/samsung/android/camera/core/SemCamera;)Z

    move-result v2

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/samsung/android/camera/core/SemCamera;->-set0(Lcom/samsung/android/camera/core/SemCamera;Lcom/samsung/android/camera/core/SemCamera$PreviewCallback;)Lcom/samsung/android/camera/core/SemCamera$PreviewCallback;

    :cond_2
    :goto_2
    iget-object v2, v13, Lcom/samsung/android/camera/core/SemCamera$TimeStampFrame;->FrameData:[B

    iget-wide v4, v13, Lcom/samsung/android/camera/core/SemCamera$TimeStampFrame;->timeStamp:J

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->mCamera:Lcom/samsung/android/camera/core/SemCamera;

    move-object/from16 v0, v21

    invoke-interface {v0, v2, v4, v5, v3}, Lcom/samsung/android/camera/core/SemCamera$PreviewCallbackTimeStamp;->onPreviewFrame([BJLcom/samsung/android/camera/core/SemCamera;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_1

    :catch_0
    move-exception v9

    :try_start_6
    const-string/jumbo v2, "SemCamera-JNI-Java"

    const-string/jumbo v3, "CAMERA_MSG_PREVIEW_FRAME"

    invoke-static {v2, v3, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_1

    :cond_3
    :try_start_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get60(Lcom/samsung/android/camera/core/SemCamera;)Z

    move-result v2

    if-nez v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Lcom/samsung/android/camera/core/SemCamera;->-wrap0(Lcom/samsung/android/camera/core/SemCamera;ZZZ)V

    goto :goto_2

    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get43(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$PreviewCallback;

    move-result-object v20

    if-eqz v20, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get38(Lcom/samsung/android/camera/core/SemCamera;)Z

    move-result v2

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/samsung/android/camera/core/SemCamera;->-set0(Lcom/samsung/android/camera/core/SemCamera;Lcom/samsung/android/camera/core/SemCamera$PreviewCallback;)Lcom/samsung/android/camera/core/SemCamera$PreviewCallback;

    :cond_5
    :goto_3
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [B

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->mCamera:Lcom/samsung/android/camera/core/SemCamera;

    move-object/from16 v0, v20

    invoke-interface {v0, v2, v3}, Lcom/samsung/android/camera/core/SemCamera$PreviewCallback;->onPreviewFrame([BLcom/samsung/android/camera/core/SemCamera;)V

    goto/16 :goto_1

    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get60(Lcom/samsung/android/camera/core/SemCamera;)Z

    move-result v2

    if-nez v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Lcom/samsung/android/camera/core/SemCamera;->-wrap0(Lcom/samsung/android/camera/core/SemCamera;ZZZ)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_3

    :sswitch_4
    :try_start_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get28(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$IrisDataCallback;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result-object v2

    if-eqz v2, :cond_9

    const/4 v15, 0x0

    :try_start_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get1(Lcom/samsung/android/camera/core/SemCamera;)Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get30(Lcom/samsung/android/camera/core/SemCamera;)Z

    move-result v2

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    iget-object v2, v2, Lcom/samsung/android/camera/core/SemCamera;->mIrisPreviewQueue:Ljava/util/Queue;

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    iget-object v2, v2, Lcom/samsung/android/camera/core/SemCamera;->mIrisPreviewQueue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->size()I

    move-result v2

    if-lez v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    iget-object v2, v2, Lcom/samsung/android/camera/core/SemCamera;->mIrisPreviewQueue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    move-object v15, v0

    const-string/jumbo v2, "SemCamera-JNI-Java"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleMessage: onIrisDataCallback irisPreviewFd = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v15}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :cond_7
    :goto_4
    :try_start_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get1(Lcom/samsung/android/camera/core/SemCamera;)Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :goto_5
    if-eqz v15, :cond_1

    :try_start_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get28(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$IrisDataCallback;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->mCamera:Lcom/samsung/android/camera/core/SemCamera;

    invoke-interface {v2, v15, v3}, Lcom/samsung/android/camera/core/SemCamera$IrisDataCallback;->onIrisDataCallback(Landroid/os/ParcelFileDescriptor;Lcom/samsung/android/camera/core/SemCamera;)V

    invoke-virtual {v15}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/16 :goto_1

    :catch_1
    move-exception v9

    :try_start_c
    const-string/jumbo v2, "SemCamera-JNI-Java"

    const-string/jumbo v3, "CAMERA_MSG_IRIS_PREVIEW_DATA : "

    invoke-static {v2, v3, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto/16 :goto_1

    :cond_8
    :try_start_d
    const-string/jumbo v2, "SemCamera-JNI-Java"

    const-string/jumbo v3, "Check if IrisPreviewCallback is Enabled or not"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_2
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    goto :goto_4

    :catch_2
    move-exception v9

    :try_start_e
    const-string/jumbo v2, "SemCamera-JNI-Java"

    const-string/jumbo v3, "CAMERA_MSG_IRIS_PREVIEW_DATA : onIrisDataCallback fail"

    invoke-static {v2, v3, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    :try_start_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get1(Lcom/samsung/android/camera/core/SemCamera;)Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_5

    :catchall_1
    move-exception v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v3}, Lcom/samsung/android/camera/core/SemCamera;->-get1(Lcom/samsung/android/camera/core/SemCamera;)Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v2

    :cond_9
    const-string/jumbo v2, "SemCamera-JNI-Java"

    const-string/jumbo v3, "mIrisDataCallback is null !!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :sswitch_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get28(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$IrisDataCallback;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    move-result-object v2

    if-eqz v2, :cond_c

    const/4 v14, 0x0

    :try_start_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get0(Lcom/samsung/android/camera/core/SemCamera;)Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get29(Lcom/samsung/android/camera/core/SemCamera;)Z

    move-result v2

    if-eqz v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    iget-object v2, v2, Lcom/samsung/android/camera/core/SemCamera;->mIrisIrQueue:Ljava/util/Queue;

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    iget-object v2, v2, Lcom/samsung/android/camera/core/SemCamera;->mIrisIrQueue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->size()I

    move-result v2

    if-lez v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    iget-object v2, v2, Lcom/samsung/android/camera/core/SemCamera;->mIrisIrQueue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    move-object v14, v0

    const-string/jumbo v2, "SemCamera-JNI-Java"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleMessage: onIrisDataCallback irisIrFd = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v14}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_4
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    :cond_a
    :goto_6
    :try_start_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get0(Lcom/samsung/android/camera/core/SemCamera;)Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    :goto_7
    if-eqz v14, :cond_1

    :try_start_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get28(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$IrisDataCallback;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->mCamera:Lcom/samsung/android/camera/core/SemCamera;

    invoke-interface {v2, v14, v3}, Lcom/samsung/android/camera/core/SemCamera$IrisDataCallback;->onIrisDataCallback(Landroid/os/ParcelFileDescriptor;Lcom/samsung/android/camera/core/SemCamera;)V

    invoke-virtual {v14}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_3
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    goto/16 :goto_1

    :catch_3
    move-exception v9

    :try_start_13
    const-string/jumbo v2, "SemCamera-JNI-Java"

    const-string/jumbo v3, "CAMERA_MSG_IRIS_DATA : "

    invoke-static {v2, v3, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    goto/16 :goto_1

    :cond_b
    :try_start_14
    const-string/jumbo v2, "SemCamera-JNI-Java"

    const-string/jumbo v3, "Check if IrisIrCallback is Enabled or not"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_4
    .catchall {:try_start_14 .. :try_end_14} :catchall_2

    goto :goto_6

    :catch_4
    move-exception v9

    :try_start_15
    const-string/jumbo v2, "SemCamera-JNI-Java"

    const-string/jumbo v3, "CAMERA_MSG_IRIS_DATA : onIrisDataCallback fail"

    invoke-static {v2, v3, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_2

    :try_start_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get0(Lcom/samsung/android/camera/core/SemCamera;)Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_7

    :catchall_2
    move-exception v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v3}, Lcom/samsung/android/camera/core/SemCamera;->-get0(Lcom/samsung/android/camera/core/SemCamera;)Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v2

    :cond_c
    const-string/jumbo v2, "SemCamera-JNI-Java"

    const-string/jumbo v3, "mIrisDataCallback is null !!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :sswitch_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get42(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$PictureCallback;

    move-result-object v2

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get42(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$PictureCallback;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [B

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->mCamera:Lcom/samsung/android/camera/core/SemCamera;

    invoke-interface {v3, v2, v4}, Lcom/samsung/android/camera/core/SemCamera$PictureCallback;->onPictureTaken([BLcom/samsung/android/camera/core/SemCamera;)V

    goto/16 :goto_1

    :sswitch_7
    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get4(Lcom/samsung/android/camera/core/SemCamera;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    :try_start_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get3(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$AutoFocusCallback;
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_3

    move-result-object v8

    :try_start_18
    monitor-exit v3

    if-eqz v8, :cond_1

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->mCamera:Lcom/samsung/android/camera/core/SemCamera;

    invoke-interface {v8, v2, v3}, Lcom/samsung/android/camera/core/SemCamera$AutoFocusCallback;->onAutoFocus(ILcom/samsung/android/camera/core/SemCamera;)V

    goto/16 :goto_1

    :catchall_3
    move-exception v2

    monitor-exit v3

    throw v2

    :sswitch_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get62(Lcom/samsung/android/camera/core/SemCamera;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    :try_start_19
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get61(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$OnZoomChangeListener;

    move-result-object v2

    if-eqz v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get61(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$OnZoomChangeListener;

    move-result-object v4

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg2:I

    if-eqz v2, :cond_e

    const/4 v2, 0x1

    :goto_8
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->mCamera:Lcom/samsung/android/camera/core/SemCamera;

    invoke-interface {v4, v5, v2, v6}, Lcom/samsung/android/camera/core/SemCamera$OnZoomChangeListener;->onZoomChange(IZLcom/samsung/android/camera/core/SemCamera;)V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_4

    :cond_d
    :try_start_1a
    monitor-exit v3

    goto/16 :goto_1

    :cond_e
    const/4 v2, 0x0

    goto :goto_8

    :catchall_4
    move-exception v2

    monitor-exit v3

    throw v2

    :sswitch_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get33(Lcom/samsung/android/camera/core/SemCamera;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_0

    :try_start_1b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get21(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$FaceDetectionListener;

    move-result-object v2

    if-eqz v2, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get20(Lcom/samsung/android/camera/core/SemCamera;)Z

    move-result v2

    if-eqz v2, :cond_f

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get21(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$FaceDetectionListener;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [Lcom/samsung/android/camera/core/SemCamera$Face;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->mCamera:Lcom/samsung/android/camera/core/SemCamera;

    invoke-interface {v4, v2, v5}, Lcom/samsung/android/camera/core/SemCamera$FaceDetectionListener;->onFaceDetection([Lcom/samsung/android/camera/core/SemCamera$Face;Lcom/samsung/android/camera/core/SemCamera;)V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_5

    :cond_f
    :goto_9
    :try_start_1c
    monitor-exit v3
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_0

    goto/16 :goto_1

    :cond_10
    :try_start_1d
    const-string/jumbo v2, "SemCamera-JNI-Java"

    const-string/jumbo v4, "Error : face object is null."

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_5

    goto :goto_9

    :catchall_5
    move-exception v2

    :try_start_1e
    monitor-exit v3

    throw v2

    :sswitch_a
    const-string/jumbo v2, "SemCamera-JNI-Java"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get18(Lcom/samsung/android/camera/core/SemCamera;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_0

    :try_start_1f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get17(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$ErrorCallback;
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_6

    move-result-object v11

    :try_start_20
    monitor-exit v3

    if-eqz v11, :cond_1

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->mCamera:Lcom/samsung/android/camera/core/SemCamera;

    invoke-interface {v11, v2, v3}, Lcom/samsung/android/camera/core/SemCamera$ErrorCallback;->onError(ILcom/samsung/android/camera/core/SemCamera;)V

    goto/16 :goto_1

    :catchall_6
    move-exception v2

    monitor-exit v3

    throw v2

    :sswitch_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get4(Lcom/samsung/android/camera/core/SemCamera;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_0

    :try_start_21
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get5(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$AutoFocusMoveCallback;

    move-result-object v2

    if-eqz v2, :cond_11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get5(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$AutoFocusMoveCallback;

    move-result-object v4

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    if-nez v2, :cond_12

    const/4 v2, 0x0

    :goto_a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->mCamera:Lcom/samsung/android/camera/core/SemCamera;

    invoke-interface {v4, v2, v5}, Lcom/samsung/android/camera/core/SemCamera$AutoFocusMoveCallback;->onAutoFocusMoving(ZLcom/samsung/android/camera/core/SemCamera;)V
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_7

    :cond_11
    :try_start_22
    monitor-exit v3

    goto/16 :goto_1

    :cond_12
    const/4 v2, 0x1

    goto :goto_a

    :catchall_7
    move-exception v2

    monitor-exit v3

    throw v2

    :sswitch_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get33(Lcom/samsung/android/camera/core/SemCamera;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_0

    :try_start_23
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get19(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$ExtraInfoListener;

    move-result-object v2

    if-eqz v2, :cond_13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get19(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$ExtraInfoListener;

    move-result-object v2

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg2:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->mCamera:Lcom/samsung/android/camera/core/SemCamera;

    invoke-interface {v2, v4, v5, v6}, Lcom/samsung/android/camera/core/SemCamera$ExtraInfoListener;->onExtraInfo(IILcom/samsung/android/camera/core/SemCamera;)V
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_8

    :cond_13
    :try_start_24
    monitor-exit v3

    goto/16 :goto_1

    :catchall_8
    move-exception v2

    monitor-exit v3

    throw v2

    :sswitch_d
    const-string/jumbo v2, "SemCamera-JNI-Java"

    const-string/jumbo v3, "SAMSUNG_SHOT_COMPRESSED_IMAGE"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get31(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$PictureCallback;

    move-result-object v2

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get31(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$PictureCallback;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [B

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->mCamera:Lcom/samsung/android/camera/core/SemCamera;

    invoke-interface {v3, v2, v4}, Lcom/samsung/android/camera/core/SemCamera$PictureCallback;->onPictureTaken([BLcom/samsung/android/camera/core/SemCamera;)V

    goto/16 :goto_1

    :sswitch_e
    const-string/jumbo v2, "SemCamera-JNI-Java"

    const-string/jumbo v3, "SAMSUNG_BURST_PANORAMA_SHOT_COMPRESSED_IMAGE"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get31(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$PictureCallback;

    move-result-object v2

    if-eqz v2, :cond_14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get31(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$PictureCallback;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [B

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->mCamera:Lcom/samsung/android/camera/core/SemCamera;

    invoke-interface {v3, v2, v4}, Lcom/samsung/android/camera/core/SemCamera$PictureCallback;->onPictureTaken([BLcom/samsung/android/camera/core/SemCamera;)V

    goto/16 :goto_1

    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get53(Lcom/samsung/android/camera/core/SemCamera;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_0

    :try_start_25
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get39(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$PanoramaEventListener;

    move-result-object v2

    if-eqz v2, :cond_15

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get39(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$PanoramaEventListener;

    move-result-object v2

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Lcom/samsung/android/camera/core/SemCamera$PanoramaEventListener;->onPanoramaError(I)V
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_9

    :cond_15
    :try_start_26
    monitor-exit v3

    goto/16 :goto_1

    :catchall_9
    move-exception v2

    monitor-exit v3

    throw v2

    :sswitch_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get53(Lcom/samsung/android/camera/core/SemCamera;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_0

    :try_start_27
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get39(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$PanoramaEventListener;

    move-result-object v2

    if-eqz v2, :cond_16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get39(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$PanoramaEventListener;

    move-result-object v2

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    invoke-interface {v2, v4}, Lcom/samsung/android/camera/core/SemCamera$PanoramaEventListener;->onPanoramaError(I)V
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_a

    :cond_16
    :try_start_28
    monitor-exit v3

    goto/16 :goto_1

    :catchall_a
    move-exception v2

    monitor-exit v3

    throw v2

    :sswitch_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get53(Lcom/samsung/android/camera/core/SemCamera;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_0

    :try_start_29
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get39(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$PanoramaEventListener;

    move-result-object v2

    if-eqz v2, :cond_17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get39(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$PanoramaEventListener;

    move-result-object v2

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    invoke-interface {v2, v4}, Lcom/samsung/android/camera/core/SemCamera$PanoramaEventListener;->onPanoramaDirectionChanged(I)V
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_b

    :cond_17
    :try_start_2a
    monitor-exit v3

    goto/16 :goto_1

    :catchall_b
    move-exception v2

    monitor-exit v3

    throw v2

    :sswitch_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get53(Lcom/samsung/android/camera/core/SemCamera;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_0

    :try_start_2b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get39(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$PanoramaEventListener;

    move-result-object v2

    if-eqz v2, :cond_18

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get39(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$PanoramaEventListener;

    move-result-object v2

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg2:I

    invoke-interface {v2, v4, v5}, Lcom/samsung/android/camera/core/SemCamera$PanoramaEventListener;->onPanoramaRectChanged(II)V
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_c

    :cond_18
    :try_start_2c
    monitor-exit v3

    goto/16 :goto_1

    :catchall_c
    move-exception v2

    monitor-exit v3

    throw v2

    :sswitch_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get53(Lcom/samsung/android/camera/core/SemCamera;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_0

    :try_start_2d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get39(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$PanoramaEventListener;

    move-result-object v2

    if-eqz v2, :cond_19

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get39(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$PanoramaEventListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/camera/core/SemCamera$PanoramaEventListener;->onPanoramaCapturedNew()V
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_d

    :cond_19
    :try_start_2e
    monitor-exit v3

    goto/16 :goto_1

    :catchall_d
    move-exception v2

    monitor-exit v3

    throw v2

    :sswitch_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get53(Lcom/samsung/android/camera/core/SemCamera;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_0

    :try_start_2f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get39(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$PanoramaEventListener;

    move-result-object v2

    if-eqz v2, :cond_1a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get39(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$PanoramaEventListener;

    move-result-object v2

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    invoke-interface {v2, v4}, Lcom/samsung/android/camera/core/SemCamera$PanoramaEventListener;->onPanoramaProgressStitching(I)V
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_e

    :cond_1a
    :try_start_30
    monitor-exit v3

    goto/16 :goto_1

    :catchall_e
    move-exception v2

    monitor-exit v3

    throw v2

    :sswitch_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get53(Lcom/samsung/android/camera/core/SemCamera;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_0

    :try_start_31
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get39(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$PanoramaEventListener;

    move-result-object v2

    if-eqz v2, :cond_1b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get39(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$PanoramaEventListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/camera/core/SemCamera$PanoramaEventListener;->onPanoramaCaptured()V
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_f

    :cond_1b
    :try_start_32
    monitor-exit v3

    goto/16 :goto_1

    :catchall_f
    move-exception v2

    monitor-exit v3

    throw v2

    :sswitch_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get53(Lcom/samsung/android/camera/core/SemCamera;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_0

    :try_start_33
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get39(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$PanoramaEventListener;

    move-result-object v2

    if-eqz v2, :cond_1c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get39(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$PanoramaEventListener;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [B

    invoke-interface {v4, v2}, Lcom/samsung/android/camera/core/SemCamera$PanoramaEventListener;->onPanoramaLowResolutionData([B)V
    :try_end_33
    .catchall {:try_start_33 .. :try_end_33} :catchall_10

    :cond_1c
    :try_start_34
    monitor-exit v3

    goto/16 :goto_1

    :catchall_10
    move-exception v2

    monitor-exit v3

    throw v2

    :sswitch_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get53(Lcom/samsung/android/camera/core/SemCamera;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_34
    .catchall {:try_start_34 .. :try_end_34} :catchall_0

    :try_start_35
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get39(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$PanoramaEventListener;

    move-result-object v2

    if-eqz v2, :cond_1d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get39(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$PanoramaEventListener;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [B

    invoke-interface {v4, v2}, Lcom/samsung/android/camera/core/SemCamera$PanoramaEventListener;->onPanoramaLivePreviewData([B)V
    :try_end_35
    .catchall {:try_start_35 .. :try_end_35} :catchall_11

    :cond_1d
    :try_start_36
    monitor-exit v3

    goto/16 :goto_1

    :catchall_11
    move-exception v2

    monitor-exit v3

    throw v2

    :sswitch_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get53(Lcom/samsung/android/camera/core/SemCamera;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_36
    .catchall {:try_start_36 .. :try_end_36} :catchall_0

    :try_start_37
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get39(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$PanoramaEventListener;

    move-result-object v2

    if-eqz v2, :cond_1e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get39(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$PanoramaEventListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/camera/core/SemCamera$PanoramaEventListener;->onPanoramaCapturedMaxFrames()V
    :try_end_37
    .catchall {:try_start_37 .. :try_end_37} :catchall_12

    :cond_1e
    :try_start_38
    monitor-exit v3

    goto/16 :goto_1

    :catchall_12
    move-exception v2

    monitor-exit v3

    throw v2

    :sswitch_18
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get53(Lcom/samsung/android/camera/core/SemCamera;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_38
    .catchall {:try_start_38 .. :try_end_38} :catchall_0

    :try_start_39
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get39(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$PanoramaEventListener;

    move-result-object v2

    if-eqz v2, :cond_1f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get39(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$PanoramaEventListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/camera/core/SemCamera$PanoramaEventListener;->onPanoramaSlowMove()V
    :try_end_39
    .catchall {:try_start_39 .. :try_end_39} :catchall_13

    :cond_1f
    :try_start_3a
    monitor-exit v3

    goto/16 :goto_1

    :catchall_13
    move-exception v2

    monitor-exit v3

    throw v2

    :sswitch_19
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get53(Lcom/samsung/android/camera/core/SemCamera;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_3a
    .catchall {:try_start_3a .. :try_end_3a} :catchall_0

    :try_start_3b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get34(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$MotionPanoramaEventListener;

    move-result-object v2

    if-eqz v2, :cond_20

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get34(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$MotionPanoramaEventListener;

    move-result-object v2

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    invoke-interface {v2, v4}, Lcom/samsung/android/camera/core/SemCamera$MotionPanoramaEventListener;->onMotionPanoramaError(I)V
    :try_end_3b
    .catchall {:try_start_3b .. :try_end_3b} :catchall_14

    :cond_20
    :try_start_3c
    monitor-exit v3

    goto/16 :goto_1

    :catchall_14
    move-exception v2

    monitor-exit v3

    throw v2

    :sswitch_1a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get53(Lcom/samsung/android/camera/core/SemCamera;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_3c
    .catchall {:try_start_3c .. :try_end_3c} :catchall_0

    :try_start_3d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get34(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$MotionPanoramaEventListener;

    move-result-object v2

    if-eqz v2, :cond_21

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get34(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$MotionPanoramaEventListener;

    move-result-object v2

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    invoke-interface {v2, v4}, Lcom/samsung/android/camera/core/SemCamera$MotionPanoramaEventListener;->onMotionPanoramaDirectionChanged(I)V
    :try_end_3d
    .catchall {:try_start_3d .. :try_end_3d} :catchall_15

    :cond_21
    :try_start_3e
    monitor-exit v3

    goto/16 :goto_1

    :catchall_15
    move-exception v2

    monitor-exit v3

    throw v2

    :sswitch_1b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get53(Lcom/samsung/android/camera/core/SemCamera;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_3e
    .catchall {:try_start_3e .. :try_end_3e} :catchall_0

    :try_start_3f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get34(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$MotionPanoramaEventListener;

    move-result-object v2

    if-eqz v2, :cond_22

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get34(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$MotionPanoramaEventListener;

    move-result-object v2

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg2:I

    invoke-interface {v2, v4, v5}, Lcom/samsung/android/camera/core/SemCamera$MotionPanoramaEventListener;->onMotionPanoramaRectChanged(II)V
    :try_end_3f
    .catchall {:try_start_3f .. :try_end_3f} :catchall_16

    :cond_22
    :try_start_40
    monitor-exit v3

    goto/16 :goto_1

    :catchall_16
    move-exception v2

    monitor-exit v3

    throw v2

    :sswitch_1c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get53(Lcom/samsung/android/camera/core/SemCamera;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_40
    .catchall {:try_start_40 .. :try_end_40} :catchall_0

    :try_start_41
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get34(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$MotionPanoramaEventListener;

    move-result-object v2

    if-eqz v2, :cond_23

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get34(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$MotionPanoramaEventListener;

    move-result-object v2

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    invoke-interface {v2, v4}, Lcom/samsung/android/camera/core/SemCamera$MotionPanoramaEventListener;->onMotionPanoramaProgressStitching(I)V
    :try_end_41
    .catchall {:try_start_41 .. :try_end_41} :catchall_17

    :cond_23
    :try_start_42
    monitor-exit v3

    goto/16 :goto_1

    :catchall_17
    move-exception v2

    monitor-exit v3

    throw v2

    :sswitch_1d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get53(Lcom/samsung/android/camera/core/SemCamera;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_42
    .catchall {:try_start_42 .. :try_end_42} :catchall_0

    :try_start_43
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get34(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$MotionPanoramaEventListener;

    move-result-object v2

    if-eqz v2, :cond_24

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get34(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$MotionPanoramaEventListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/camera/core/SemCamera$MotionPanoramaEventListener;->onMotionPanoramaCaptured()V
    :try_end_43
    .catchall {:try_start_43 .. :try_end_43} :catchall_18

    :cond_24
    :try_start_44
    monitor-exit v3

    goto/16 :goto_1

    :catchall_18
    move-exception v2

    monitor-exit v3

    throw v2

    :sswitch_1e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get53(Lcom/samsung/android/camera/core/SemCamera;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_44
    .catchall {:try_start_44 .. :try_end_44} :catchall_0

    :try_start_45
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get34(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$MotionPanoramaEventListener;

    move-result-object v2

    if-eqz v2, :cond_25

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get34(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$MotionPanoramaEventListener;

    move-result-object v4

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    const/4 v5, 0x1

    if-ne v2, v5, :cond_26

    const/4 v2, 0x1

    :goto_b
    invoke-interface {v4, v2}, Lcom/samsung/android/camera/core/SemCamera$MotionPanoramaEventListener;->onMotionPanoramaCaptureResult(Z)V
    :try_end_45
    .catchall {:try_start_45 .. :try_end_45} :catchall_19

    :cond_25
    :try_start_46
    monitor-exit v3

    goto/16 :goto_1

    :cond_26
    const/4 v2, 0x0

    goto :goto_b

    :catchall_19
    move-exception v2

    monitor-exit v3

    throw v2

    :sswitch_1f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get53(Lcom/samsung/android/camera/core/SemCamera;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_46
    .catchall {:try_start_46 .. :try_end_46} :catchall_0

    :try_start_47
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get34(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$MotionPanoramaEventListener;

    move-result-object v2

    if-eqz v2, :cond_27

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get34(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$MotionPanoramaEventListener;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [B

    invoke-interface {v4, v2}, Lcom/samsung/android/camera/core/SemCamera$MotionPanoramaEventListener;->onMotionPanoramaThumbnailData([B)V
    :try_end_47
    .catchall {:try_start_47 .. :try_end_47} :catchall_1a

    :cond_27
    :try_start_48
    monitor-exit v3

    goto/16 :goto_1

    :catchall_1a
    move-exception v2

    monitor-exit v3

    throw v2

    :sswitch_20
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get53(Lcom/samsung/android/camera/core/SemCamera;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_48
    .catchall {:try_start_48 .. :try_end_48} :catchall_0

    :try_start_49
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get34(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$MotionPanoramaEventListener;

    move-result-object v2

    if-eqz v2, :cond_28

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get34(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$MotionPanoramaEventListener;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [B

    invoke-interface {v4, v2}, Lcom/samsung/android/camera/core/SemCamera$MotionPanoramaEventListener;->onMotionPanoramaLivePreviewData([B)V
    :try_end_49
    .catchall {:try_start_49 .. :try_end_49} :catchall_1b

    :cond_28
    :try_start_4a
    monitor-exit v3

    goto/16 :goto_1

    :catchall_1b
    move-exception v2

    monitor-exit v3

    throw v2

    :sswitch_21
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get53(Lcom/samsung/android/camera/core/SemCamera;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_4a
    .catchall {:try_start_4a .. :try_end_4a} :catchall_0

    :try_start_4b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get34(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$MotionPanoramaEventListener;

    move-result-object v2

    if-eqz v2, :cond_29

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get34(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$MotionPanoramaEventListener;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [B

    invoke-interface {v4, v2}, Lcom/samsung/android/camera/core/SemCamera$MotionPanoramaEventListener;->onMotionPanoramaUiImageData([B)V
    :try_end_4b
    .catchall {:try_start_4b .. :try_end_4b} :catchall_1c

    :cond_29
    :try_start_4c
    monitor-exit v3

    goto/16 :goto_1

    :catchall_1c
    move-exception v2

    monitor-exit v3

    throw v2

    :sswitch_22
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get53(Lcom/samsung/android/camera/core/SemCamera;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_4c
    .catchall {:try_start_4c .. :try_end_4c} :catchall_0

    :try_start_4d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get34(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$MotionPanoramaEventListener;

    move-result-object v2

    if-eqz v2, :cond_2a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get34(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$MotionPanoramaEventListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/camera/core/SemCamera$MotionPanoramaEventListener;->onMotionPanoramaCapturedMaxFrames()V
    :try_end_4d
    .catchall {:try_start_4d .. :try_end_4d} :catchall_1d

    :cond_2a
    :try_start_4e
    monitor-exit v3

    goto/16 :goto_1

    :catchall_1d
    move-exception v2

    monitor-exit v3

    throw v2

    :sswitch_23
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get53(Lcom/samsung/android/camera/core/SemCamera;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_4e
    .catchall {:try_start_4e .. :try_end_4e} :catchall_0

    :try_start_4f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get34(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$MotionPanoramaEventListener;

    move-result-object v2

    if-eqz v2, :cond_2b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get34(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$MotionPanoramaEventListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/camera/core/SemCamera$MotionPanoramaEventListener;->onMotionPanoramaSlowMove()V
    :try_end_4f
    .catchall {:try_start_4f .. :try_end_4f} :catchall_1e

    :cond_2b
    :try_start_50
    monitor-exit v3

    goto/16 :goto_1

    :catchall_1e
    move-exception v2

    monitor-exit v3

    throw v2

    :sswitch_24
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get53(Lcom/samsung/android/camera/core/SemCamera;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_50
    .catchall {:try_start_50 .. :try_end_50} :catchall_0

    :try_start_51
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get25(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$HdrEventListener;

    move-result-object v2

    if-eqz v2, :cond_2c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get25(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$HdrEventListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/camera/core/SemCamera$HdrEventListener;->onHdrResultStarted()V
    :try_end_51
    .catchall {:try_start_51 .. :try_end_51} :catchall_1f

    :cond_2c
    :try_start_52
    monitor-exit v3

    goto/16 :goto_1

    :catchall_1f
    move-exception v2

    monitor-exit v3

    throw v2

    :sswitch_25
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get53(Lcom/samsung/android/camera/core/SemCamera;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_52
    .catchall {:try_start_52 .. :try_end_52} :catchall_0

    :try_start_53
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get25(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$HdrEventListener;

    move-result-object v2

    if-eqz v2, :cond_2d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get25(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$HdrEventListener;

    move-result-object v2

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    invoke-interface {v2, v4}, Lcom/samsung/android/camera/core/SemCamera$HdrEventListener;->onHdrResultProgress(I)V
    :try_end_53
    .catchall {:try_start_53 .. :try_end_53} :catchall_20

    :cond_2d
    :try_start_54
    monitor-exit v3

    goto/16 :goto_1

    :catchall_20
    move-exception v2

    monitor-exit v3

    throw v2

    :sswitch_26
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get53(Lcom/samsung/android/camera/core/SemCamera;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_54
    .catchall {:try_start_54 .. :try_end_54} :catchall_0

    :try_start_55
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get25(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$HdrEventListener;

    move-result-object v2

    if-eqz v2, :cond_2e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get25(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$HdrEventListener;

    move-result-object v4

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    const/4 v5, 0x1

    if-ne v2, v5, :cond_2f

    const/4 v2, 0x1

    :goto_c
    invoke-interface {v4, v2}, Lcom/samsung/android/camera/core/SemCamera$HdrEventListener;->onHdrResultCompleted(Z)V
    :try_end_55
    .catchall {:try_start_55 .. :try_end_55} :catchall_21

    :cond_2e
    :try_start_56
    monitor-exit v3

    goto/16 :goto_1

    :cond_2f
    const/4 v2, 0x0

    goto :goto_c

    :catchall_21
    move-exception v2

    monitor-exit v3

    throw v2

    :sswitch_27
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get53(Lcom/samsung/android/camera/core/SemCamera;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_56
    .catchall {:try_start_56 .. :try_end_56} :catchall_0

    :try_start_57
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get25(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$HdrEventListener;

    move-result-object v2

    if-eqz v2, :cond_30

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get25(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$HdrEventListener;

    move-result-object v4

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    const/4 v5, 0x1

    if-ne v2, v5, :cond_31

    const/4 v2, 0x1

    :goto_d
    invoke-interface {v4, v2}, Lcom/samsung/android/camera/core/SemCamera$HdrEventListener;->onHdrAllProgressCompleted(Z)V
    :try_end_57
    .catchall {:try_start_57 .. :try_end_57} :catchall_22

    :cond_30
    :try_start_58
    monitor-exit v3

    goto/16 :goto_1

    :cond_31
    const/4 v2, 0x0

    goto :goto_d

    :catchall_22
    move-exception v2

    monitor-exit v3

    throw v2

    :sswitch_28
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get53(Lcom/samsung/android/camera/core/SemCamera;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_58
    .catchall {:try_start_58 .. :try_end_58} :catchall_0

    :try_start_59
    const-string/jumbo v2, "SemCamera-JNI-Java"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "BURST_SHOT_CAPTURING_PROGRESSED("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get9(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$BurstEventListener;

    move-result-object v2

    if-eqz v2, :cond_32

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get9(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$BurstEventListener;

    move-result-object v2

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg2:I

    invoke-interface {v2, v4, v5}, Lcom/samsung/android/camera/core/SemCamera$BurstEventListener;->onBurstCapturingProgressed(II)V
    :try_end_59
    .catchall {:try_start_59 .. :try_end_59} :catchall_23

    :goto_e
    :try_start_5a
    monitor-exit v3
    :try_end_5a
    .catchall {:try_start_5a .. :try_end_5a} :catchall_0

    goto/16 :goto_1

    :cond_32
    :try_start_5b
    const-string/jumbo v2, "SemCamera-JNI-Java"

    const-string/jumbo v4, "mBurstEventListener is null !!!"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5b
    .catchall {:try_start_5b .. :try_end_5b} :catchall_23

    goto :goto_e

    :catchall_23
    move-exception v2

    :try_start_5c
    monitor-exit v3

    throw v2

    :sswitch_29
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get53(Lcom/samsung/android/camera/core/SemCamera;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_5c
    .catchall {:try_start_5c .. :try_end_5c} :catchall_0

    :try_start_5d
    const-string/jumbo v2, "SemCamera-JNI-Java"

    const-string/jumbo v4, "BURST_SHOT_CAPTURING_STOPPED"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get9(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$BurstEventListener;

    move-result-object v2

    if-eqz v2, :cond_33

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get9(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$BurstEventListener;

    move-result-object v2

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    invoke-interface {v2, v4}, Lcom/samsung/android/camera/core/SemCamera$BurstEventListener;->onBurstCapturingStopped(I)V
    :try_end_5d
    .catchall {:try_start_5d .. :try_end_5d} :catchall_24

    :goto_f
    :try_start_5e
    monitor-exit v3
    :try_end_5e
    .catchall {:try_start_5e .. :try_end_5e} :catchall_0

    goto/16 :goto_1

    :cond_33
    :try_start_5f
    const-string/jumbo v2, "SemCamera-JNI-Java"

    const-string/jumbo v4, "mBurstEventListener is null !!!"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5f
    .catchall {:try_start_5f .. :try_end_5f} :catchall_24

    goto :goto_f

    :catchall_24
    move-exception v2

    :try_start_60
    monitor-exit v3

    throw v2

    :sswitch_2a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get53(Lcom/samsung/android/camera/core/SemCamera;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_60
    .catchall {:try_start_60 .. :try_end_60} :catchall_0

    :try_start_61
    const-string/jumbo v2, "SemCamera-JNI-Java"

    const-string/jumbo v4, "BURST_SHOT_SAVING_COMPLETED"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get9(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$BurstEventListener;

    move-result-object v2

    if-eqz v2, :cond_34

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get9(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$BurstEventListener;

    move-result-object v2

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    invoke-interface {v2, v4}, Lcom/samsung/android/camera/core/SemCamera$BurstEventListener;->onBurstSavingCompleted(I)V
    :try_end_61
    .catchall {:try_start_61 .. :try_end_61} :catchall_25

    :goto_10
    :try_start_62
    monitor-exit v3
    :try_end_62
    .catchall {:try_start_62 .. :try_end_62} :catchall_0

    goto/16 :goto_1

    :cond_34
    :try_start_63
    const-string/jumbo v2, "SemCamera-JNI-Java"

    const-string/jumbo v4, "mBurstEventListener is null !!!"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_63
    .catchall {:try_start_63 .. :try_end_63} :catchall_25

    goto :goto_10

    :catchall_25
    move-exception v2

    :try_start_64
    monitor-exit v3

    throw v2

    :sswitch_2b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get53(Lcom/samsung/android/camera/core/SemCamera;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_64
    .catchall {:try_start_64 .. :try_end_64} :catchall_0

    :try_start_65
    const-string/jumbo v2, "SemCamera-JNI-Java"

    const-string/jumbo v4, "BURST_SHOT_FILE_STRING"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get9(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$BurstEventListener;

    move-result-object v2

    if-eqz v2, :cond_35

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get9(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$BurstEventListener;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [B

    invoke-interface {v4, v2}, Lcom/samsung/android/camera/core/SemCamera$BurstEventListener;->onBurstStringProgressed([B)V
    :try_end_65
    .catchall {:try_start_65 .. :try_end_65} :catchall_26

    :goto_11
    :try_start_66
    monitor-exit v3
    :try_end_66
    .catchall {:try_start_66 .. :try_end_66} :catchall_0

    goto/16 :goto_1

    :cond_35
    :try_start_67
    const-string/jumbo v2, "SemCamera-JNI-Java"

    const-string/jumbo v4, "mBurstEventListener is null !!!"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_67
    .catchall {:try_start_67 .. :try_end_67} :catchall_26

    goto :goto_11

    :catchall_26
    move-exception v2

    :try_start_68
    monitor-exit v3

    throw v2

    :sswitch_2c
    const-string/jumbo v2, "SemCamera-JNI-Java"

    const-string/jumbo v3, "BURST_SHOT_POSTVIEW_DATA"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get42(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$PictureCallback;

    move-result-object v2

    if-eqz v2, :cond_36

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get42(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$PictureCallback;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [B

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->mCamera:Lcom/samsung/android/camera/core/SemCamera;

    invoke-interface {v3, v2, v4}, Lcom/samsung/android/camera/core/SemCamera$PictureCallback;->onPictureTaken([BLcom/samsung/android/camera/core/SemCamera;)V

    goto/16 :goto_1

    :cond_36
    const-string/jumbo v2, "SemCamera-JNI-Java"

    const-string/jumbo v3, "mPostviewCallback is null !!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :sswitch_2d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get53(Lcom/samsung/android/camera/core/SemCamera;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_68
    .catchall {:try_start_68 .. :try_end_68} :catchall_0

    :try_start_69
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get36(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$MultiFrameEventListener;

    move-result-object v2

    if-eqz v2, :cond_37

    const-string/jumbo v2, "SemCamera-JNI-Java"

    const-string/jumbo v4, "MULTI_FRAME_SHOT_PROGRESS_POSTPROCESSING "

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get36(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$MultiFrameEventListener;

    move-result-object v2

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg2:I

    invoke-interface {v2, v4, v5}, Lcom/samsung/android/camera/core/SemCamera$MultiFrameEventListener;->onMultiFrameCapturingProgressed(II)V
    :try_end_69
    .catchall {:try_start_69 .. :try_end_69} :catchall_27

    :goto_12
    :try_start_6a
    monitor-exit v3
    :try_end_6a
    .catchall {:try_start_6a .. :try_end_6a} :catchall_0

    goto/16 :goto_1

    :cond_37
    :try_start_6b
    const-string/jumbo v2, "SemCamera-JNI-Java"

    const-string/jumbo v4, "mMultiFrameEventListener is null !!!"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6b
    .catchall {:try_start_6b .. :try_end_6b} :catchall_27

    goto :goto_12

    :catchall_27
    move-exception v2

    :try_start_6c
    monitor-exit v3

    throw v2

    :sswitch_2e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get53(Lcom/samsung/android/camera/core/SemCamera;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_6c
    .catchall {:try_start_6c .. :try_end_6c} :catchall_0

    :try_start_6d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get6(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$BeautyEventListener;

    move-result-object v2

    if-eqz v2, :cond_38

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get6(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$BeautyEventListener;

    move-result-object v2

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    invoke-interface {v2, v4}, Lcom/samsung/android/camera/core/SemCamera$BeautyEventListener;->onBeautySavingProgress(I)V
    :try_end_6d
    .catchall {:try_start_6d .. :try_end_6d} :catchall_28

    :goto_13
    :try_start_6e
    monitor-exit v3
    :try_end_6e
    .catchall {:try_start_6e .. :try_end_6e} :catchall_0

    goto/16 :goto_1

    :cond_38
    :try_start_6f
    const-string/jumbo v2, "SemCamera-JNI-Java"

    const-string/jumbo v4, "mBeautyEventListener is null !!!"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6f
    .catchall {:try_start_6f .. :try_end_6f} :catchall_28

    goto :goto_13

    :catchall_28
    move-exception v2

    :try_start_70
    monitor-exit v3

    throw v2

    :sswitch_2f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get33(Lcom/samsung/android/camera/core/SemCamera;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_70
    .catchall {:try_start_70 .. :try_end_70} :catchall_0

    :try_start_71
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get23(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$HardwareFaceDetectionListener;

    move-result-object v2

    if-eqz v2, :cond_3a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get20(Lcom/samsung/android/camera/core/SemCamera;)Z

    move-result v2

    if-eqz v2, :cond_3a

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_39

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get23(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$HardwareFaceDetectionListener;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [Lcom/samsung/android/camera/core/SemCamera$Face;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->mCamera:Lcom/samsung/android/camera/core/SemCamera;

    invoke-interface {v4, v2, v5}, Lcom/samsung/android/camera/core/SemCamera$HardwareFaceDetectionListener;->onHardwareFaceDetection([Lcom/samsung/android/camera/core/SemCamera$Face;Lcom/samsung/android/camera/core/SemCamera;)V
    :try_end_71
    .catchall {:try_start_71 .. :try_end_71} :catchall_29

    :goto_14
    :try_start_72
    monitor-exit v3
    :try_end_72
    .catchall {:try_start_72 .. :try_end_72} :catchall_0

    goto/16 :goto_1

    :cond_39
    :try_start_73
    const-string/jumbo v2, "SemCamera-JNI-Java"

    const-string/jumbo v4, "Error : face object is null."

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_73
    .catchall {:try_start_73 .. :try_end_73} :catchall_29

    goto :goto_14

    :catchall_29
    move-exception v2

    :try_start_74
    monitor-exit v3

    throw v2
    :try_end_74
    .catchall {:try_start_74 .. :try_end_74} :catchall_0

    :cond_3a
    :try_start_75
    const-string/jumbo v2, "SemCamera-JNI-Java"

    const-string/jumbo v4, "mHardwareFaceDetectionListener is null !!!"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_75
    .catchall {:try_start_75 .. :try_end_75} :catchall_29

    goto :goto_14

    :sswitch_30
    :try_start_76
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get53(Lcom/samsung/android/camera/core/SemCamera;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_76
    .catchall {:try_start_76 .. :try_end_76} :catchall_0

    :try_start_77
    const-string/jumbo v2, "SemCamera-JNI-Java"

    const-string/jumbo v4, "BEAUTY_SHOT_RELIGHT_TRANSFORM_DATA"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get48(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$RelightEventListener;

    move-result-object v2

    if-eqz v2, :cond_3b

    new-instance v19, Lcom/samsung/android/camera/core/SemCamera$RelightTransformData;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [B

    const/4 v5, 0x0

    move-object/from16 v0, v19

    invoke-direct {v0, v4, v2, v5}, Lcom/samsung/android/camera/core/SemCamera$RelightTransformData;-><init>(Lcom/samsung/android/camera/core/SemCamera;[BLcom/samsung/android/camera/core/SemCamera$RelightTransformData;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get48(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$RelightEventListener;

    move-result-object v2

    invoke-static/range {v19 .. v19}, Lcom/samsung/android/camera/core/SemCamera$RelightTransformData;->-get0(Lcom/samsung/android/camera/core/SemCamera$RelightTransformData;)[Lcom/samsung/android/camera/core/SemCamera$TransformData;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/samsung/android/camera/core/SemCamera$RelightEventListener;->onRelightTransformDataUpdated([Lcom/samsung/android/camera/core/SemCamera$TransformData;)V
    :try_end_77
    .catchall {:try_start_77 .. :try_end_77} :catchall_2a

    const/16 v19, 0x0

    :goto_15
    :try_start_78
    monitor-exit v3
    :try_end_78
    .catchall {:try_start_78 .. :try_end_78} :catchall_0

    goto/16 :goto_1

    :cond_3b
    :try_start_79
    const-string/jumbo v2, "SemCamera-JNI-Java"

    const-string/jumbo v4, "mRelightEventListener is null !!!"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_79
    .catchall {:try_start_79 .. :try_end_79} :catchall_2a

    goto :goto_15

    :catchall_2a
    move-exception v2

    :try_start_7a
    monitor-exit v3

    throw v2

    :sswitch_31
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get53(Lcom/samsung/android/camera/core/SemCamera;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_7a
    .catchall {:try_start_7a .. :try_end_7a} :catchall_0

    :try_start_7b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get7(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$BlurEffectEventListener;

    move-result-object v2

    if-eqz v2, :cond_3c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get7(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$BlurEffectEventListener;

    move-result-object v2

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    invoke-interface {v2, v4}, Lcom/samsung/android/camera/core/SemCamera$BlurEffectEventListener;->onNotifyProcessingProgress(I)V
    :try_end_7b
    .catchall {:try_start_7b .. :try_end_7b} :catchall_2b

    :goto_16
    :try_start_7c
    monitor-exit v3
    :try_end_7c
    .catchall {:try_start_7c .. :try_end_7c} :catchall_0

    goto/16 :goto_1

    :cond_3c
    :try_start_7d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get41(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$PostEventListener;

    move-result-object v2

    if-eqz v2, :cond_3d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get41(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$PostEventListener;

    move-result-object v2

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg2:I

    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v2, v4, v5, v6, v7}, Lcom/samsung/android/camera/core/SemCamera$PostEventListener;->onHandleMessage(IIILjava/lang/Object;)V
    :try_end_7d
    .catchall {:try_start_7d .. :try_end_7d} :catchall_2b

    goto :goto_16

    :catchall_2b
    move-exception v2

    :try_start_7e
    monitor-exit v3

    throw v2
    :try_end_7e
    .catchall {:try_start_7e .. :try_end_7e} :catchall_0

    :cond_3d
    :try_start_7f
    const-string/jumbo v2, "SemCamera-JNI-Java"

    const-string/jumbo v4, "EventListener for single blur effect is null !!!"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7f
    .catchall {:try_start_7f .. :try_end_7f} :catchall_2b

    goto :goto_16

    :sswitch_32
    :try_start_80
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get33(Lcom/samsung/android/camera/core/SemCamera;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_80
    .catchall {:try_start_80 .. :try_end_80} :catchall_0

    :try_start_81
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get32(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$LightConditionChangedListener;

    move-result-object v2

    if-eqz v2, :cond_3e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get32(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$LightConditionChangedListener;

    move-result-object v2

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    invoke-interface {v2, v4}, Lcom/samsung/android/camera/core/SemCamera$LightConditionChangedListener;->onLightConditionChanged(I)V
    :try_end_81
    .catchall {:try_start_81 .. :try_end_81} :catchall_2c

    :cond_3e
    :try_start_82
    monitor-exit v3

    goto/16 :goto_1

    :catchall_2c
    move-exception v2

    monitor-exit v3

    throw v2

    :sswitch_33
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get53(Lcom/samsung/android/camera/core/SemCamera;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_82
    .catchall {:try_start_82 .. :try_end_82} :catchall_0

    :try_start_83
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get15(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$DualEventListener;

    move-result-object v2

    if-eqz v2, :cond_3f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get15(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$DualEventListener;

    move-result-object v2

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    invoke-interface {v2, v4}, Lcom/samsung/android/camera/core/SemCamera$DualEventListener;->onDualCaptureAvailable(I)V
    :try_end_83
    .catchall {:try_start_83 .. :try_end_83} :catchall_2d

    :cond_3f
    :try_start_84
    monitor-exit v3

    goto/16 :goto_1

    :catchall_2d
    move-exception v2

    monitor-exit v3

    throw v2

    :sswitch_34
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get53(Lcom/samsung/android/camera/core/SemCamera;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_84
    .catchall {:try_start_84 .. :try_end_84} :catchall_0

    :try_start_85
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get15(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$DualEventListener;

    move-result-object v2

    if-eqz v2, :cond_40

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get15(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$DualEventListener;

    move-result-object v2

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    invoke-interface {v2, v4}, Lcom/samsung/android/camera/core/SemCamera$DualEventListener;->onDualTrackingAvailable(I)V
    :try_end_85
    .catchall {:try_start_85 .. :try_end_85} :catchall_2e

    :cond_40
    :try_start_86
    monitor-exit v3

    goto/16 :goto_1

    :catchall_2e
    move-exception v2

    monitor-exit v3

    throw v2

    :sswitch_35
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get53(Lcom/samsung/android/camera/core/SemCamera;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_86
    .catchall {:try_start_86 .. :try_end_86} :catchall_0

    :try_start_87
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get26(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$ImageEffectEventListener;

    move-result-object v2

    if-eqz v2, :cond_41

    new-instance v12, Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [B

    invoke-direct {v12, v2}, Ljava/lang/String;-><init>([B)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get26(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$ImageEffectEventListener;

    move-result-object v2

    invoke-interface {v2, v12}, Lcom/samsung/android/camera/core/SemCamera$ImageEffectEventListener;->onImageEffectInfo(Ljava/lang/String;)V
    :try_end_87
    .catchall {:try_start_87 .. :try_end_87} :catchall_2f

    const/4 v12, 0x0

    :cond_41
    :try_start_88
    monitor-exit v3

    goto/16 :goto_1

    :catchall_2f
    move-exception v2

    monitor-exit v3

    throw v2

    :sswitch_36
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get53(Lcom/samsung/android/camera/core/SemCamera;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_88
    .catchall {:try_start_88 .. :try_end_88} :catchall_0

    :try_start_89
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get44(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$PreviewCallback;

    move-result-object v2

    if-eqz v2, :cond_42

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get44(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$PreviewCallback;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [B

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->mCamera:Lcom/samsung/android/camera/core/SemCamera;

    invoke-interface {v4, v2, v5}, Lcom/samsung/android/camera/core/SemCamera$PreviewCallback;->onPreviewFrame([BLcom/samsung/android/camera/core/SemCamera;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcom/samsung/android/camera/core/SemCamera;->-set1(Lcom/samsung/android/camera/core/SemCamera;Lcom/samsung/android/camera/core/SemCamera$PreviewCallback;)Lcom/samsung/android/camera/core/SemCamera$PreviewCallback;
    :try_end_89
    .catchall {:try_start_89 .. :try_end_89} :catchall_30

    :cond_42
    :try_start_8a
    monitor-exit v3

    goto/16 :goto_1

    :catchall_30
    move-exception v2

    monitor-exit v3

    throw v2

    :sswitch_37
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get53(Lcom/samsung/android/camera/core/SemCamera;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_8a
    .catchall {:try_start_8a .. :try_end_8a} :catchall_0

    :try_start_8b
    const-string/jumbo v2, "SemCamera-JNI-Java"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "OUTFOCUS_SHOT_PROCESS_PROGRESS("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get51(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$SelectiveFocusEventListener;

    move-result-object v2

    if-eqz v2, :cond_43

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get51(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$SelectiveFocusEventListener;

    move-result-object v2

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg2:I

    invoke-interface {v2, v4, v5}, Lcom/samsung/android/camera/core/SemCamera$SelectiveFocusEventListener;->onSelectiveFocusProcessProgress(II)V
    :try_end_8b
    .catchall {:try_start_8b .. :try_end_8b} :catchall_31

    :goto_17
    :try_start_8c
    monitor-exit v3
    :try_end_8c
    .catchall {:try_start_8c .. :try_end_8c} :catchall_0

    goto/16 :goto_1

    :cond_43
    :try_start_8d
    const-string/jumbo v2, "SemCamera-JNI-Java"

    const-string/jumbo v4, "mSelectiveFocusEventListener is null !!!"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8d
    .catchall {:try_start_8d .. :try_end_8d} :catchall_31

    goto :goto_17

    :catchall_31
    move-exception v2

    :try_start_8e
    monitor-exit v3

    throw v2

    :sswitch_38
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get53(Lcom/samsung/android/camera/core/SemCamera;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_8e
    .catchall {:try_start_8e .. :try_end_8e} :catchall_0

    :try_start_8f
    const-string/jumbo v2, "SemCamera-JNI-Java"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "OUTFOCUS_SHOT_CAPTURE_PROGRESS("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get51(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$SelectiveFocusEventListener;

    move-result-object v2

    if-eqz v2, :cond_44

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get51(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$SelectiveFocusEventListener;

    move-result-object v2

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg2:I

    invoke-interface {v2, v4, v5}, Lcom/samsung/android/camera/core/SemCamera$SelectiveFocusEventListener;->onSelectiveFocusCaptureProgress(II)V
    :try_end_8f
    .catchall {:try_start_8f .. :try_end_8f} :catchall_32

    :goto_18
    :try_start_90
    monitor-exit v3
    :try_end_90
    .catchall {:try_start_90 .. :try_end_90} :catchall_0

    goto/16 :goto_1

    :cond_44
    :try_start_91
    const-string/jumbo v2, "SemCamera-JNI-Java"

    const-string/jumbo v4, "mSelectiveFocusEventListener is null !!!"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_91
    .catchall {:try_start_91 .. :try_end_91} :catchall_32

    goto :goto_18

    :catchall_32
    move-exception v2

    :try_start_92
    monitor-exit v3

    throw v2

    :sswitch_39
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get53(Lcom/samsung/android/camera/core/SemCamera;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_92
    .catchall {:try_start_92 .. :try_end_92} :catchall_0

    :try_start_93
    const-string/jumbo v2, "SemCamera-JNI-Java"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "OUTFOCUS_SHOT_PROCESS_COMPLETE("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get51(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$SelectiveFocusEventListener;

    move-result-object v2

    if-eqz v2, :cond_4b

    const/4 v10, 0x0

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    const/4 v4, -0x1

    if-eq v2, v4, :cond_45

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    const/4 v4, -0x3

    if-ne v2, v4, :cond_46

    :cond_45
    const/4 v10, -0x1

    :cond_46
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    const/4 v4, -0x2

    if-ne v2, v4, :cond_47

    const/4 v10, -0x2

    :cond_47
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    const/16 v4, 0x15

    if-ne v2, v4, :cond_48

    const/4 v10, -0x4

    :cond_48
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    const/16 v4, 0xb

    if-ge v2, v4, :cond_49

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    const/4 v4, -0x4

    if-ne v2, v4, :cond_4a

    :cond_49
    const/4 v10, -0x3

    :cond_4a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get51(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$SelectiveFocusEventListener;

    move-result-object v2

    invoke-interface {v2, v10}, Lcom/samsung/android/camera/core/SemCamera$SelectiveFocusEventListener;->onSelectiveFocusComplete(I)V
    :try_end_93
    .catchall {:try_start_93 .. :try_end_93} :catchall_33

    :goto_19
    :try_start_94
    monitor-exit v3
    :try_end_94
    .catchall {:try_start_94 .. :try_end_94} :catchall_0

    goto/16 :goto_1

    :cond_4b
    :try_start_95
    const-string/jumbo v2, "SemCamera-JNI-Java"

    const-string/jumbo v4, "mSelectiveFocusEventListener is null !!!"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_95
    .catchall {:try_start_95 .. :try_end_95} :catchall_33

    goto :goto_19

    :catchall_33
    move-exception v2

    :try_start_96
    monitor-exit v3

    throw v2

    :sswitch_3a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get53(Lcom/samsung/android/camera/core/SemCamera;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_96
    .catchall {:try_start_96 .. :try_end_96} :catchall_0

    :try_start_97
    const-string/jumbo v2, "SemCamera-JNI-Java"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "DUAL_PORTRAIT_SHOT_PROCESSING_PROGRESS("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get16(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$DualPortraitEventListener;

    move-result-object v2

    if-eqz v2, :cond_4c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get16(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$DualPortraitEventListener;

    move-result-object v2

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg2:I

    invoke-interface {v2, v4, v5}, Lcom/samsung/android/camera/core/SemCamera$DualPortraitEventListener;->onNotifyProcessingProgress(II)V
    :try_end_97
    .catchall {:try_start_97 .. :try_end_97} :catchall_34

    :goto_1a
    :try_start_98
    monitor-exit v3
    :try_end_98
    .catchall {:try_start_98 .. :try_end_98} :catchall_0

    goto/16 :goto_1

    :cond_4c
    :try_start_99
    const-string/jumbo v2, "SemCamera-JNI-Java"

    const-string/jumbo v4, "mDualPortraitEventListener is null !!!"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_99
    .catchall {:try_start_99 .. :try_end_99} :catchall_34

    goto :goto_1a

    :catchall_34
    move-exception v2

    :try_start_9a
    monitor-exit v3

    throw v2

    :sswitch_3b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get53(Lcom/samsung/android/camera/core/SemCamera;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_9a
    .catchall {:try_start_9a .. :try_end_9a} :catchall_0

    :try_start_9b
    const-string/jumbo v2, "SemCamera-JNI-Java"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "DUAL_PORTRAIT_SHOT_PROCESS_COMPLETED("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get16(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$DualPortraitEventListener;

    move-result-object v2

    if-eqz v2, :cond_4d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get16(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$DualPortraitEventListener;

    move-result-object v2

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    invoke-interface {v2, v4}, Lcom/samsung/android/camera/core/SemCamera$DualPortraitEventListener;->onCaptureCompleted(I)V
    :try_end_9b
    .catchall {:try_start_9b .. :try_end_9b} :catchall_35

    :goto_1b
    :try_start_9c
    monitor-exit v3
    :try_end_9c
    .catchall {:try_start_9c .. :try_end_9c} :catchall_0

    goto/16 :goto_1

    :cond_4d
    :try_start_9d
    const-string/jumbo v2, "SemCamera-JNI-Java"

    const-string/jumbo v4, "mDualPortraitEventListener is null !!!"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9d
    .catchall {:try_start_9d .. :try_end_9d} :catchall_35

    goto :goto_1b

    :catchall_35
    move-exception v2

    :try_start_9e
    monitor-exit v3

    throw v2

    :sswitch_3c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get53(Lcom/samsung/android/camera/core/SemCamera;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_9e
    .catchall {:try_start_9e .. :try_end_9e} :catchall_0

    :try_start_9f
    const-string/jumbo v2, "SemCamera-JNI-Java"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "SCENE_DETECT_SHOT_SCENE_INFO("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get49(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$SceneDetectionEventListener;

    move-result-object v2

    if-eqz v2, :cond_4e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get49(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$SceneDetectionEventListener;

    move-result-object v2

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    invoke-interface {v2, v4}, Lcom/samsung/android/camera/core/SemCamera$SceneDetectionEventListener;->onSceneDetectionResult(I)V
    :try_end_9f
    .catchall {:try_start_9f .. :try_end_9f} :catchall_36

    :goto_1c
    :try_start_a0
    monitor-exit v3
    :try_end_a0
    .catchall {:try_start_a0 .. :try_end_a0} :catchall_0

    goto/16 :goto_1

    :cond_4e
    :try_start_a1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get41(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$PostEventListener;

    move-result-object v2

    if-eqz v2, :cond_4f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get41(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$PostEventListener;

    move-result-object v2

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg2:I

    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v2, v4, v5, v6, v7}, Lcom/samsung/android/camera/core/SemCamera$PostEventListener;->onHandleMessage(IIILjava/lang/Object;)V
    :try_end_a1
    .catchall {:try_start_a1 .. :try_end_a1} :catchall_36

    goto :goto_1c

    :catchall_36
    move-exception v2

    :try_start_a2
    monitor-exit v3

    throw v2
    :try_end_a2
    .catchall {:try_start_a2 .. :try_end_a2} :catchall_0

    :cond_4f
    :try_start_a3
    const-string/jumbo v2, "SemCamera-JNI-Java"

    const-string/jumbo v4, "EventListener for scene detection is null !!!"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a3
    .catchall {:try_start_a3 .. :try_end_a3} :catchall_36

    goto :goto_1c

    :sswitch_3d
    :try_start_a4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get53(Lcom/samsung/android/camera/core/SemCamera;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_a4
    .catchall {:try_start_a4 .. :try_end_a4} :catchall_0

    :try_start_a5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get52(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$ShotAndMoreEventListener;

    move-result-object v2

    if-eqz v2, :cond_50

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get52(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$ShotAndMoreEventListener;

    move-result-object v2

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg2:I

    invoke-interface {v2, v4, v5}, Lcom/samsung/android/camera/core/SemCamera$ShotAndMoreEventListener;->onShotAndMoreCaptureProgress(II)V
    :try_end_a5
    .catchall {:try_start_a5 .. :try_end_a5} :catchall_37

    :cond_50
    :try_start_a6
    monitor-exit v3

    goto/16 :goto_1

    :catchall_37
    move-exception v2

    monitor-exit v3

    throw v2

    :sswitch_3e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get53(Lcom/samsung/android/camera/core/SemCamera;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_a6
    .catchall {:try_start_a6 .. :try_end_a6} :catchall_0

    :try_start_a7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get52(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$ShotAndMoreEventListener;

    move-result-object v2

    if-eqz v2, :cond_51

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get52(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$ShotAndMoreEventListener;

    move-result-object v2

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg2:I

    invoke-interface {v2, v4, v5}, Lcom/samsung/android/camera/core/SemCamera$ShotAndMoreEventListener;->onShotAndMoreProcessProgress(II)V
    :try_end_a7
    .catchall {:try_start_a7 .. :try_end_a7} :catchall_38

    :cond_51
    :try_start_a8
    monitor-exit v3

    goto/16 :goto_1

    :catchall_38
    move-exception v2

    monitor-exit v3

    throw v2

    :sswitch_3f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get53(Lcom/samsung/android/camera/core/SemCamera;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_a8
    .catchall {:try_start_a8 .. :try_end_a8} :catchall_0

    :try_start_a9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get52(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$ShotAndMoreEventListener;

    move-result-object v2

    if-eqz v2, :cond_52

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get52(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$ShotAndMoreEventListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/camera/core/SemCamera$ShotAndMoreEventListener;->onShotAndMoreComplete()V
    :try_end_a9
    .catchall {:try_start_a9 .. :try_end_a9} :catchall_39

    :cond_52
    :try_start_aa
    monitor-exit v3

    goto/16 :goto_1

    :catchall_39
    move-exception v2

    monitor-exit v3

    throw v2

    :sswitch_40
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get53(Lcom/samsung/android/camera/core/SemCamera;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_aa
    .catchall {:try_start_aa .. :try_end_aa} :catchall_0

    :try_start_ab
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get52(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$ShotAndMoreEventListener;

    move-result-object v2

    if-eqz v2, :cond_53

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get52(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$ShotAndMoreEventListener;

    move-result-object v2

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    invoke-interface {v2, v4}, Lcom/samsung/android/camera/core/SemCamera$ShotAndMoreEventListener;->onShotAndMoreApplicableMode(I)V
    :try_end_ab
    .catchall {:try_start_ab .. :try_end_ab} :catchall_3a

    :cond_53
    :try_start_ac
    monitor-exit v3

    goto/16 :goto_1

    :catchall_3a
    move-exception v2

    monitor-exit v3

    throw v2

    :sswitch_41
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get53(Lcom/samsung/android/camera/core/SemCamera;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_ac
    .catchall {:try_start_ac .. :try_end_ac} :catchall_0

    :try_start_ad
    const-string/jumbo v2, "SemCamera-JNI-Java"

    const-string/jumbo v4, "HAZE_REMOVAL_SHOT_PROGRESS_POSTPROCESSING "

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get24(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$HazeRemovalEventListener;

    move-result-object v2

    if-eqz v2, :cond_54

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get24(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$HazeRemovalEventListener;

    move-result-object v2

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg2:I

    invoke-interface {v2, v4, v5}, Lcom/samsung/android/camera/core/SemCamera$HazeRemovalEventListener;->onHazeRemovalCapturingProgressed(II)V
    :try_end_ad
    .catchall {:try_start_ad .. :try_end_ad} :catchall_3b

    :goto_1d
    :try_start_ae
    monitor-exit v3
    :try_end_ae
    .catchall {:try_start_ae .. :try_end_ae} :catchall_0

    goto/16 :goto_1

    :cond_54
    :try_start_af
    const-string/jumbo v2, "SemCamera-JNI-Java"

    const-string/jumbo v4, "mHazeRemovalShotEventListener is null !!!"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_af
    .catchall {:try_start_af .. :try_end_af} :catchall_3b

    goto :goto_1d

    :catchall_3b
    move-exception v2

    :try_start_b0
    monitor-exit v3

    throw v2

    :sswitch_42
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get33(Lcom/samsung/android/camera/core/SemCamera;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_b0
    .catchall {:try_start_b0 .. :try_end_b0} :catchall_0

    :try_start_b1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get11(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$CameraSensorDataListener;

    move-result-object v2

    if-eqz v2, :cond_55

    new-instance v16, Lcom/samsung/android/camera/core/SemCamera$CameraSensorData;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [B

    move-object/from16 v0, v16

    invoke-direct {v0, v2}, Lcom/samsung/android/camera/core/SemCamera$CameraSensorData;-><init>([B)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get11(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$CameraSensorDataListener;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-interface {v2, v0}, Lcom/samsung/android/camera/core/SemCamera$CameraSensorDataListener;->onCameraSensorData(Lcom/samsung/android/camera/core/SemCamera$CameraSensorData;)V
    :try_end_b1
    .catchall {:try_start_b1 .. :try_end_b1} :catchall_3c

    const/16 v16, 0x0

    :goto_1e
    :try_start_b2
    monitor-exit v3
    :try_end_b2
    .catchall {:try_start_b2 .. :try_end_b2} :catchall_0

    goto/16 :goto_1

    :cond_55
    :try_start_b3
    const-string/jumbo v2, "SemCamera-JNI-Java"

    const-string/jumbo v4, "mCameraSensorDataListener is null !!!"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b3
    .catchall {:try_start_b3 .. :try_end_b3} :catchall_3c

    goto :goto_1e

    :catchall_3c
    move-exception v2

    :try_start_b4
    monitor-exit v3

    throw v2

    :sswitch_43
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get33(Lcom/samsung/android/camera/core/SemCamera;)Ljava/lang/Object;

    move-result-object v23

    monitor-enter v23
    :try_end_b4
    .catchall {:try_start_b4 .. :try_end_b4} :catchall_0

    :try_start_b5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get40(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$PhaseAutoFocusCallback;

    move-result-object v2

    if-eqz v2, :cond_56

    new-instance v18, Lcom/samsung/android/camera/core/SemCamera$PafResult;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [B

    const/4 v4, 0x0

    move-object/from16 v0, v18

    invoke-direct {v0, v3, v2, v4}, Lcom/samsung/android/camera/core/SemCamera$PafResult;-><init>(Lcom/samsung/android/camera/core/SemCamera;[BLcom/samsung/android/camera/core/SemCamera$PafResult;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get40(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$PhaseAutoFocusCallback;

    move-result-object v2

    invoke-static/range {v18 .. v18}, Lcom/samsung/android/camera/core/SemCamera$PafResult;->-get3(Lcom/samsung/android/camera/core/SemCamera$PafResult;)S

    move-result v3

    invoke-static/range {v18 .. v18}, Lcom/samsung/android/camera/core/SemCamera$PafResult;->-get1(Lcom/samsung/android/camera/core/SemCamera$PafResult;)S

    move-result v4

    invoke-static/range {v18 .. v18}, Lcom/samsung/android/camera/core/SemCamera$PafResult;->-get4(Lcom/samsung/android/camera/core/SemCamera$PafResult;)S

    move-result v5

    invoke-static/range {v18 .. v18}, Lcom/samsung/android/camera/core/SemCamera$PafResult;->-get2(Lcom/samsung/android/camera/core/SemCamera$PafResult;)S

    move-result v6

    invoke-static/range {v18 .. v18}, Lcom/samsung/android/camera/core/SemCamera$PafResult;->-get0(Lcom/samsung/android/camera/core/SemCamera$PafResult;)S

    move-result v7

    invoke-interface/range {v2 .. v7}, Lcom/samsung/android/camera/core/SemCamera$PhaseAutoFocusCallback;->onPhaseAutoFocus(SSSSS)V
    :try_end_b5
    .catchall {:try_start_b5 .. :try_end_b5} :catchall_3d

    const/16 v18, 0x0

    :cond_56
    :try_start_b6
    monitor-exit v23

    goto/16 :goto_1

    :catchall_3d
    move-exception v2

    monitor-exit v23

    throw v2

    :sswitch_44
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get33(Lcom/samsung/android/camera/core/SemCamera;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_b6
    .catchall {:try_start_b6 .. :try_end_b6} :catchall_0

    :try_start_b7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get35(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$MultiAutoFocusCallback;

    move-result-object v2

    if-eqz v2, :cond_57

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get35(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$MultiAutoFocusCallback;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [B

    invoke-interface {v4, v2}, Lcom/samsung/android/camera/core/SemCamera$MultiAutoFocusCallback;->onMultiAutoFocus([B)V
    :try_end_b7
    .catchall {:try_start_b7 .. :try_end_b7} :catchall_3e

    :goto_1f
    :try_start_b8
    monitor-exit v3
    :try_end_b8
    .catchall {:try_start_b8 .. :try_end_b8} :catchall_0

    goto/16 :goto_1

    :cond_57
    :try_start_b9
    const-string/jumbo v2, "SemCamera-JNI-Java"

    const-string/jumbo v4, "mMultiAutoFocusCallback is null !!!"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b9
    .catchall {:try_start_b9 .. :try_end_b9} :catchall_3e

    goto :goto_1f

    :catchall_3e
    move-exception v2

    :try_start_ba
    monitor-exit v3

    throw v2

    :sswitch_45
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get33(Lcom/samsung/android/camera/core/SemCamera;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_ba
    .catchall {:try_start_ba .. :try_end_ba} :catchall_0

    :try_start_bb
    const-string/jumbo v2, "SemCamera-JNI-Java"

    const-string/jumbo v4, "METADATA_OBJECT_TRACKING_AF"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get37(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$ObjectTrackingAutoFocusCallback;

    move-result-object v2

    if-eqz v2, :cond_58

    new-instance v17, Lcom/samsung/android/camera/core/SemCamera$ObjectTrackingData;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [B

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Lcom/samsung/android/camera/core/SemCamera$ObjectTrackingData;-><init>([B)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get37(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$ObjectTrackingAutoFocusCallback;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-interface {v2, v0}, Lcom/samsung/android/camera/core/SemCamera$ObjectTrackingAutoFocusCallback;->onObjectTrackingAutoFocus(Lcom/samsung/android/camera/core/SemCamera$ObjectTrackingData;)V
    :try_end_bb
    .catchall {:try_start_bb .. :try_end_bb} :catchall_3f

    const/16 v17, 0x0

    :goto_20
    :try_start_bc
    monitor-exit v3
    :try_end_bc
    .catchall {:try_start_bc .. :try_end_bc} :catchall_0

    goto/16 :goto_1

    :cond_58
    :try_start_bd
    const-string/jumbo v2, "SemCamera-JNI-Java"

    const-string/jumbo v4, "mObjectTrackingAutoFocusCallback is null !!!"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_bd
    .catchall {:try_start_bd .. :try_end_bd} :catchall_3f

    goto :goto_20

    :catchall_3f
    move-exception v2

    :try_start_be
    monitor-exit v3

    throw v2

    :sswitch_46
    const-string/jumbo v2, "SemCamera-JNI-Java"

    const-string/jumbo v3, "SAMSUNG_WIDE_SELFIE_SHOT_COMPRESSED_IMAGE"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get31(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$PictureCallback;

    move-result-object v2

    if-eqz v2, :cond_59

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get31(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$PictureCallback;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [B

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->mCamera:Lcom/samsung/android/camera/core/SemCamera;

    invoke-interface {v3, v2, v4}, Lcom/samsung/android/camera/core/SemCamera$PictureCallback;->onPictureTaken([BLcom/samsung/android/camera/core/SemCamera;)V

    goto/16 :goto_1

    :cond_59
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get53(Lcom/samsung/android/camera/core/SemCamera;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_be
    .catchall {:try_start_be .. :try_end_be} :catchall_0

    :try_start_bf
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get59(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$WideSelfieEventListener;

    move-result-object v2

    if-eqz v2, :cond_5a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get59(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$WideSelfieEventListener;

    move-result-object v2

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Lcom/samsung/android/camera/core/SemCamera$WideSelfieEventListener;->onWideSelfieError(I)V
    :try_end_bf
    .catchall {:try_start_bf .. :try_end_bf} :catchall_40

    :cond_5a
    :try_start_c0
    monitor-exit v3

    goto/16 :goto_1

    :catchall_40
    move-exception v2

    monitor-exit v3

    throw v2

    :sswitch_47
    const-string/jumbo v2, "SemCamera-JNI-Java"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "WIDE_SELFIE_SHOT_ERR("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get53(Lcom/samsung/android/camera/core/SemCamera;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_c0
    .catchall {:try_start_c0 .. :try_end_c0} :catchall_0

    :try_start_c1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get59(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$WideSelfieEventListener;

    move-result-object v2

    if-eqz v2, :cond_5b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get59(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$WideSelfieEventListener;

    move-result-object v2

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    invoke-interface {v2, v4}, Lcom/samsung/android/camera/core/SemCamera$WideSelfieEventListener;->onWideSelfieError(I)V
    :try_end_c1
    .catchall {:try_start_c1 .. :try_end_c1} :catchall_41

    :cond_5b
    :try_start_c2
    monitor-exit v3

    goto/16 :goto_1

    :catchall_41
    move-exception v2

    monitor-exit v3

    throw v2

    :sswitch_48
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get53(Lcom/samsung/android/camera/core/SemCamera;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_c2
    .catchall {:try_start_c2 .. :try_end_c2} :catchall_0

    :try_start_c3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get59(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$WideSelfieEventListener;

    move-result-object v2

    if-eqz v2, :cond_5c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get59(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$WideSelfieEventListener;

    move-result-object v2

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    invoke-interface {v2, v4}, Lcom/samsung/android/camera/core/SemCamera$WideSelfieEventListener;->onWideSelfieDirectionChanged(I)V
    :try_end_c3
    .catchall {:try_start_c3 .. :try_end_c3} :catchall_42

    :cond_5c
    :try_start_c4
    monitor-exit v3

    goto/16 :goto_1

    :catchall_42
    move-exception v2

    monitor-exit v3

    throw v2

    :sswitch_49
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get53(Lcom/samsung/android/camera/core/SemCamera;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_c4
    .catchall {:try_start_c4 .. :try_end_c4} :catchall_0

    :try_start_c5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get59(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$WideSelfieEventListener;

    move-result-object v2

    if-eqz v2, :cond_5d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get59(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$WideSelfieEventListener;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [B

    invoke-interface {v4, v2}, Lcom/samsung/android/camera/core/SemCamera$WideSelfieEventListener;->onWideSelfieRectChanged([B)V
    :try_end_c5
    .catchall {:try_start_c5 .. :try_end_c5} :catchall_43

    :cond_5d
    :try_start_c6
    monitor-exit v3

    goto/16 :goto_1

    :catchall_43
    move-exception v2

    monitor-exit v3

    throw v2

    :sswitch_4a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get53(Lcom/samsung/android/camera/core/SemCamera;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_c6
    .catchall {:try_start_c6 .. :try_end_c6} :catchall_0

    :try_start_c7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get59(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$WideSelfieEventListener;

    move-result-object v2

    if-eqz v2, :cond_5e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get59(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$WideSelfieEventListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/camera/core/SemCamera$WideSelfieEventListener;->onWideSelfieCapturedNew()V
    :try_end_c7
    .catchall {:try_start_c7 .. :try_end_c7} :catchall_44

    :cond_5e
    :try_start_c8
    monitor-exit v3

    goto/16 :goto_1

    :catchall_44
    move-exception v2

    monitor-exit v3

    throw v2

    :sswitch_4b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get53(Lcom/samsung/android/camera/core/SemCamera;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_c8
    .catchall {:try_start_c8 .. :try_end_c8} :catchall_0

    :try_start_c9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get59(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$WideSelfieEventListener;

    move-result-object v2

    if-eqz v2, :cond_5f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get59(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$WideSelfieEventListener;

    move-result-object v2

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    invoke-interface {v2, v4}, Lcom/samsung/android/camera/core/SemCamera$WideSelfieEventListener;->onWideSelfieProgressStitching(I)V
    :try_end_c9
    .catchall {:try_start_c9 .. :try_end_c9} :catchall_45

    :cond_5f
    :try_start_ca
    monitor-exit v3

    goto/16 :goto_1

    :catchall_45
    move-exception v2

    monitor-exit v3

    throw v2

    :sswitch_4c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get53(Lcom/samsung/android/camera/core/SemCamera;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_ca
    .catchall {:try_start_ca .. :try_end_ca} :catchall_0

    :try_start_cb
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get59(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$WideSelfieEventListener;

    move-result-object v2

    if-eqz v2, :cond_60

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get59(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$WideSelfieEventListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/camera/core/SemCamera$WideSelfieEventListener;->onWideSelfieCaptured()V
    :try_end_cb
    .catchall {:try_start_cb .. :try_end_cb} :catchall_46

    :cond_60
    :try_start_cc
    monitor-exit v3

    goto/16 :goto_1

    :catchall_46
    move-exception v2

    monitor-exit v3

    throw v2

    :sswitch_4d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get53(Lcom/samsung/android/camera/core/SemCamera;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_cc
    .catchall {:try_start_cc .. :try_end_cc} :catchall_0

    :try_start_cd
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get59(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$WideSelfieEventListener;

    move-result-object v2

    if-eqz v2, :cond_61

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get59(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$WideSelfieEventListener;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [B

    invoke-interface {v4, v2}, Lcom/samsung/android/camera/core/SemCamera$WideSelfieEventListener;->onWideSelfieLowResolutionData([B)V
    :try_end_cd
    .catchall {:try_start_cd .. :try_end_cd} :catchall_47

    :cond_61
    :try_start_ce
    monitor-exit v3

    goto/16 :goto_1

    :catchall_47
    move-exception v2

    monitor-exit v3

    throw v2

    :sswitch_4e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get53(Lcom/samsung/android/camera/core/SemCamera;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_ce
    .catchall {:try_start_ce .. :try_end_ce} :catchall_0

    :try_start_cf
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get59(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$WideSelfieEventListener;

    move-result-object v2

    if-eqz v2, :cond_62

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get59(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$WideSelfieEventListener;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [B

    invoke-interface {v4, v2}, Lcom/samsung/android/camera/core/SemCamera$WideSelfieEventListener;->onWideSelfieLivePreviewData([B)V
    :try_end_cf
    .catchall {:try_start_cf .. :try_end_cf} :catchall_48

    :cond_62
    :try_start_d0
    monitor-exit v3

    goto/16 :goto_1

    :catchall_48
    move-exception v2

    monitor-exit v3

    throw v2

    :sswitch_4f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get53(Lcom/samsung/android/camera/core/SemCamera;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_d0
    .catchall {:try_start_d0 .. :try_end_d0} :catchall_0

    :try_start_d1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get59(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$WideSelfieEventListener;

    move-result-object v2

    if-eqz v2, :cond_63

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get59(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$WideSelfieEventListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/camera/core/SemCamera$WideSelfieEventListener;->onWideSelfieCapturedMaxFrames()V
    :try_end_d1
    .catchall {:try_start_d1 .. :try_end_d1} :catchall_49

    :cond_63
    :try_start_d2
    monitor-exit v3

    goto/16 :goto_1

    :catchall_49
    move-exception v2

    monitor-exit v3

    throw v2

    :sswitch_50
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get53(Lcom/samsung/android/camera/core/SemCamera;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_d2
    .catchall {:try_start_d2 .. :try_end_d2} :catchall_0

    :try_start_d3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get59(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$WideSelfieEventListener;

    move-result-object v2

    if-eqz v2, :cond_64

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get59(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$WideSelfieEventListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/camera/core/SemCamera$WideSelfieEventListener;->onWideSelfieSlowMove()V
    :try_end_d3
    .catchall {:try_start_d3 .. :try_end_d3} :catchall_4a

    :cond_64
    :try_start_d4
    monitor-exit v3

    goto/16 :goto_1

    :catchall_4a
    move-exception v2

    monitor-exit v3

    throw v2

    :sswitch_51
    const-string/jumbo v2, "SemCamera-JNI-Java"

    const-string/jumbo v3, "WIDE_SELFIE_SHOT_NEXT_CAPTURE_POSITION"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get53(Lcom/samsung/android/camera/core/SemCamera;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_d4
    .catchall {:try_start_d4 .. :try_end_d4} :catchall_0

    :try_start_d5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get59(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$WideSelfieEventListener;

    move-result-object v2

    if-eqz v2, :cond_65

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get59(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$WideSelfieEventListener;

    move-result-object v2

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg2:I

    invoke-interface {v2, v4, v5}, Lcom/samsung/android/camera/core/SemCamera$WideSelfieEventListener;->onWideSelfieNextCapturePosition(II)V
    :try_end_d5
    .catchall {:try_start_d5 .. :try_end_d5} :catchall_4b

    :goto_21
    :try_start_d6
    monitor-exit v3
    :try_end_d6
    .catchall {:try_start_d6 .. :try_end_d6} :catchall_0

    goto/16 :goto_1

    :cond_65
    :try_start_d7
    const-string/jumbo v2, "SemCamera-JNI-Java"

    const-string/jumbo v4, "mWideSelfieEventListener is null !!!"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d7
    .catchall {:try_start_d7 .. :try_end_d7} :catchall_4b

    goto :goto_21

    :catchall_4b
    move-exception v2

    :try_start_d8
    monitor-exit v3

    throw v2

    :sswitch_52
    const-string/jumbo v2, "SemCamera-JNI-Java"

    const-string/jumbo v3, "WIDE_SELFIE_SHOT_SINGLE_CAPTURE_DONE"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get53(Lcom/samsung/android/camera/core/SemCamera;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_d8
    .catchall {:try_start_d8 .. :try_end_d8} :catchall_0

    :try_start_d9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get59(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$WideSelfieEventListener;

    move-result-object v2

    if-eqz v2, :cond_66

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get59(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$WideSelfieEventListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/camera/core/SemCamera$WideSelfieEventListener;->onWideSelfieSingleCaptureDone()V
    :try_end_d9
    .catchall {:try_start_d9 .. :try_end_d9} :catchall_4c

    :goto_22
    :try_start_da
    monitor-exit v3
    :try_end_da
    .catchall {:try_start_da .. :try_end_da} :catchall_0

    goto/16 :goto_1

    :cond_66
    :try_start_db
    const-string/jumbo v2, "SemCamera-JNI-Java"

    const-string/jumbo v4, "mWideSelfieEventListener is null !!!"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_db
    .catchall {:try_start_db .. :try_end_db} :catchall_4c

    goto :goto_22

    :catchall_4c
    move-exception v2

    :try_start_dc
    monitor-exit v3

    throw v2

    :sswitch_53
    const-string/jumbo v2, "SemCamera-JNI-Java"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "WIDE_MOTION_SELFIE_SHOT_ERR("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get53(Lcom/samsung/android/camera/core/SemCamera;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_dc
    .catchall {:try_start_dc .. :try_end_dc} :catchall_0

    :try_start_dd
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get58(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$WideMotionSelfieEventListener;

    move-result-object v2

    if-eqz v2, :cond_67

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get58(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$WideMotionSelfieEventListener;

    move-result-object v2

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    invoke-interface {v2, v4}, Lcom/samsung/android/camera/core/SemCamera$WideMotionSelfieEventListener;->onWideMotionSelfieError(I)V
    :try_end_dd
    .catchall {:try_start_dd .. :try_end_dd} :catchall_4d

    :cond_67
    :try_start_de
    monitor-exit v3

    goto/16 :goto_1

    :catchall_4d
    move-exception v2

    monitor-exit v3

    throw v2

    :sswitch_54
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get53(Lcom/samsung/android/camera/core/SemCamera;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_de
    .catchall {:try_start_de .. :try_end_de} :catchall_0

    :try_start_df
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get58(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$WideMotionSelfieEventListener;

    move-result-object v2

    if-eqz v2, :cond_68

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get58(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$WideMotionSelfieEventListener;

    move-result-object v2

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    invoke-interface {v2, v4}, Lcom/samsung/android/camera/core/SemCamera$WideMotionSelfieEventListener;->onWideMotionSelfieDirectionChanged(I)V
    :try_end_df
    .catchall {:try_start_df .. :try_end_df} :catchall_4e

    :cond_68
    :try_start_e0
    monitor-exit v3

    goto/16 :goto_1

    :catchall_4e
    move-exception v2

    monitor-exit v3

    throw v2

    :sswitch_55
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get53(Lcom/samsung/android/camera/core/SemCamera;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_e0
    .catchall {:try_start_e0 .. :try_end_e0} :catchall_0

    :try_start_e1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get58(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$WideMotionSelfieEventListener;

    move-result-object v2

    if-eqz v2, :cond_69

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get58(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$WideMotionSelfieEventListener;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [B

    invoke-interface {v4, v2}, Lcom/samsung/android/camera/core/SemCamera$WideMotionSelfieEventListener;->onWideMotionSelfieRectChanged([B)V
    :try_end_e1
    .catchall {:try_start_e1 .. :try_end_e1} :catchall_4f

    :cond_69
    :try_start_e2
    monitor-exit v3

    goto/16 :goto_1

    :catchall_4f
    move-exception v2

    monitor-exit v3

    throw v2

    :sswitch_56
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get53(Lcom/samsung/android/camera/core/SemCamera;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_e2
    .catchall {:try_start_e2 .. :try_end_e2} :catchall_0

    :try_start_e3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get58(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$WideMotionSelfieEventListener;

    move-result-object v2

    if-eqz v2, :cond_6a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get58(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$WideMotionSelfieEventListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/camera/core/SemCamera$WideMotionSelfieEventListener;->onWideMotionSelfieCapturedNew()V
    :try_end_e3
    .catchall {:try_start_e3 .. :try_end_e3} :catchall_50

    :cond_6a
    :try_start_e4
    monitor-exit v3

    goto/16 :goto_1

    :catchall_50
    move-exception v2

    monitor-exit v3

    throw v2

    :sswitch_57
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get53(Lcom/samsung/android/camera/core/SemCamera;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_e4
    .catchall {:try_start_e4 .. :try_end_e4} :catchall_0

    :try_start_e5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get58(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$WideMotionSelfieEventListener;

    move-result-object v2

    if-eqz v2, :cond_6b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get58(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$WideMotionSelfieEventListener;

    move-result-object v2

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    invoke-interface {v2, v4}, Lcom/samsung/android/camera/core/SemCamera$WideMotionSelfieEventListener;->onWideMotionSelfieProgressStitching(I)V
    :try_end_e5
    .catchall {:try_start_e5 .. :try_end_e5} :catchall_51

    :cond_6b
    :try_start_e6
    monitor-exit v3

    goto/16 :goto_1

    :catchall_51
    move-exception v2

    monitor-exit v3

    throw v2

    :sswitch_58
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get53(Lcom/samsung/android/camera/core/SemCamera;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_e6
    .catchall {:try_start_e6 .. :try_end_e6} :catchall_0

    :try_start_e7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get58(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$WideMotionSelfieEventListener;

    move-result-object v2

    if-eqz v2, :cond_6c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get58(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$WideMotionSelfieEventListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/camera/core/SemCamera$WideMotionSelfieEventListener;->onWideMotionSelfieCaptured()V
    :try_end_e7
    .catchall {:try_start_e7 .. :try_end_e7} :catchall_52

    :cond_6c
    :try_start_e8
    monitor-exit v3

    goto/16 :goto_1

    :catchall_52
    move-exception v2

    monitor-exit v3

    throw v2

    :sswitch_59
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get53(Lcom/samsung/android/camera/core/SemCamera;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_e8
    .catchall {:try_start_e8 .. :try_end_e8} :catchall_0

    :try_start_e9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get58(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$WideMotionSelfieEventListener;

    move-result-object v2

    if-eqz v2, :cond_6d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get58(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$WideMotionSelfieEventListener;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [B

    invoke-interface {v4, v2}, Lcom/samsung/android/camera/core/SemCamera$WideMotionSelfieEventListener;->onWideMotionSelfieLivePreviewData([B)V
    :try_end_e9
    .catchall {:try_start_e9 .. :try_end_e9} :catchall_53

    :cond_6d
    :try_start_ea
    monitor-exit v3

    goto/16 :goto_1

    :catchall_53
    move-exception v2

    monitor-exit v3

    throw v2

    :sswitch_5a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get53(Lcom/samsung/android/camera/core/SemCamera;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_ea
    .catchall {:try_start_ea .. :try_end_ea} :catchall_0

    :try_start_eb
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get58(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$WideMotionSelfieEventListener;

    move-result-object v2

    if-eqz v2, :cond_6e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get58(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$WideMotionSelfieEventListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/camera/core/SemCamera$WideMotionSelfieEventListener;->onWideMotionSelfieCapturedMaxFrames()V
    :try_end_eb
    .catchall {:try_start_eb .. :try_end_eb} :catchall_54

    :cond_6e
    :try_start_ec
    monitor-exit v3

    goto/16 :goto_1

    :catchall_54
    move-exception v2

    monitor-exit v3

    throw v2

    :sswitch_5b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get53(Lcom/samsung/android/camera/core/SemCamera;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_ec
    .catchall {:try_start_ec .. :try_end_ec} :catchall_0

    :try_start_ed
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get58(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$WideMotionSelfieEventListener;

    move-result-object v2

    if-eqz v2, :cond_6f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get58(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$WideMotionSelfieEventListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/camera/core/SemCamera$WideMotionSelfieEventListener;->onWideMotionSelfieSlowMove()V
    :try_end_ed
    .catchall {:try_start_ed .. :try_end_ed} :catchall_55

    :cond_6f
    :try_start_ee
    monitor-exit v3

    goto/16 :goto_1

    :catchall_55
    move-exception v2

    monitor-exit v3

    throw v2

    :sswitch_5c
    const-string/jumbo v2, "SemCamera-JNI-Java"

    const-string/jumbo v3, "WIDE_MOTION_SELFIE_SHOT_NEXT_CAPTURE_POSITION"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get53(Lcom/samsung/android/camera/core/SemCamera;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_ee
    .catchall {:try_start_ee .. :try_end_ee} :catchall_0

    :try_start_ef
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get58(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$WideMotionSelfieEventListener;

    move-result-object v2

    if-eqz v2, :cond_70

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get58(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$WideMotionSelfieEventListener;

    move-result-object v2

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg2:I

    invoke-interface {v2, v4, v5}, Lcom/samsung/android/camera/core/SemCamera$WideMotionSelfieEventListener;->onWideMotionSelfieNextCapturePosition(II)V
    :try_end_ef
    .catchall {:try_start_ef .. :try_end_ef} :catchall_56

    :goto_23
    :try_start_f0
    monitor-exit v3
    :try_end_f0
    .catchall {:try_start_f0 .. :try_end_f0} :catchall_0

    goto/16 :goto_1

    :cond_70
    :try_start_f1
    const-string/jumbo v2, "SemCamera-JNI-Java"

    const-string/jumbo v4, "mWideMotionSelfieEventListener is null !!!"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f1
    .catchall {:try_start_f1 .. :try_end_f1} :catchall_56

    goto :goto_23

    :catchall_56
    move-exception v2

    :try_start_f2
    monitor-exit v3

    throw v2

    :sswitch_5d
    const-string/jumbo v2, "SemCamera-JNI-Java"

    const-string/jumbo v3, "WIDE_MOTION_SELFIE_SHOT_SINGLE_CAPTURE_DONE"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get53(Lcom/samsung/android/camera/core/SemCamera;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_f2
    .catchall {:try_start_f2 .. :try_end_f2} :catchall_0

    :try_start_f3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get58(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$WideMotionSelfieEventListener;

    move-result-object v2

    if-eqz v2, :cond_71

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get58(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$WideMotionSelfieEventListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/camera/core/SemCamera$WideMotionSelfieEventListener;->onWideMotionSelfieSingleCaptureDone()V
    :try_end_f3
    .catchall {:try_start_f3 .. :try_end_f3} :catchall_57

    :goto_24
    :try_start_f4
    monitor-exit v3
    :try_end_f4
    .catchall {:try_start_f4 .. :try_end_f4} :catchall_0

    goto/16 :goto_1

    :cond_71
    :try_start_f5
    const-string/jumbo v2, "SemCamera-JNI-Java"

    const-string/jumbo v4, "mWideMotionSelfieEventListener is null !!!"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f5
    .catchall {:try_start_f5 .. :try_end_f5} :catchall_57

    goto :goto_24

    :catchall_57
    move-exception v2

    :try_start_f6
    monitor-exit v3

    throw v2

    :sswitch_5e
    const-string/jumbo v2, "SemCamera-JNI-Java"

    const-string/jumbo v3, "WIDE_MOTION_SELFIE_SHOT_PROCESS_COMPLETE"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get53(Lcom/samsung/android/camera/core/SemCamera;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_f6
    .catchall {:try_start_f6 .. :try_end_f6} :catchall_0

    :try_start_f7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get58(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$WideMotionSelfieEventListener;

    move-result-object v2

    if-eqz v2, :cond_72

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get58(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$WideMotionSelfieEventListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/camera/core/SemCamera$WideMotionSelfieEventListener;->onWideMotionSelfieCompleted()V
    :try_end_f7
    .catchall {:try_start_f7 .. :try_end_f7} :catchall_58

    :goto_25
    :try_start_f8
    monitor-exit v3
    :try_end_f8
    .catchall {:try_start_f8 .. :try_end_f8} :catchall_0

    goto/16 :goto_1

    :cond_72
    :try_start_f9
    const-string/jumbo v2, "SemCamera-JNI-Java"

    const-string/jumbo v4, "mWideMotionSelfieEventListener is null !!!"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f9
    .catchall {:try_start_f9 .. :try_end_f9} :catchall_58

    goto :goto_25

    :catchall_58
    move-exception v2

    :try_start_fa
    monitor-exit v3

    throw v2

    :sswitch_5f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get33(Lcom/samsung/android/camera/core/SemCamera;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_fa
    .catchall {:try_start_fa .. :try_end_fa} :catchall_0

    :try_start_fb
    const-string/jumbo v2, "SemCamera-JNI-Java"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "AE_RESULT("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get2(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$AutoExposureCallback;

    move-result-object v2

    if-eqz v2, :cond_73

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get2(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$AutoExposureCallback;

    move-result-object v2

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    invoke-interface {v2, v4}, Lcom/samsung/android/camera/core/SemCamera$AutoExposureCallback;->onAutoExposure(I)V
    :try_end_fb
    .catchall {:try_start_fb .. :try_end_fb} :catchall_59

    :goto_26
    :try_start_fc
    monitor-exit v3
    :try_end_fc
    .catchall {:try_start_fc .. :try_end_fc} :catchall_0

    goto/16 :goto_1

    :cond_73
    :try_start_fd
    const-string/jumbo v2, "SemCamera-JNI-Java"

    const-string/jumbo v4, "mAutoExposureCallback is null !!!"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_fd
    .catchall {:try_start_fd .. :try_end_fd} :catchall_59

    goto :goto_26

    :catchall_59
    move-exception v2

    :try_start_fe
    monitor-exit v3

    throw v2

    :sswitch_60
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get33(Lcom/samsung/android/camera/core/SemCamera;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_fe
    .catchall {:try_start_fe .. :try_end_fe} :catchall_0

    :try_start_ff
    const-string/jumbo v2, "SemCamera-JNI-Java"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "BRIGHTNESS_VALUE("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    int-to-float v5, v5

    const/high16 v6, 0x43800000    # 256.0f

    div-float/2addr v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get8(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$BrightnessValueCallback;

    move-result-object v2

    if-eqz v2, :cond_74

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get8(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$BrightnessValueCallback;

    move-result-object v2

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    int-to-float v4, v4

    const/high16 v5, 0x43800000    # 256.0f

    div-float/2addr v4, v5

    invoke-interface {v2, v4}, Lcom/samsung/android/camera/core/SemCamera$BrightnessValueCallback;->onBrightnessValue(F)V
    :try_end_ff
    .catchall {:try_start_ff .. :try_end_ff} :catchall_5a

    :goto_27
    :try_start_100
    monitor-exit v3
    :try_end_100
    .catchall {:try_start_100 .. :try_end_100} :catchall_0

    goto/16 :goto_1

    :cond_74
    :try_start_101
    const-string/jumbo v2, "SemCamera-JNI-Java"

    const-string/jumbo v4, "mBrightnessValueCallback is null !!!"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_101
    .catchall {:try_start_101 .. :try_end_101} :catchall_5a

    goto :goto_27

    :catchall_5a
    move-exception v2

    :try_start_102
    monitor-exit v3

    throw v2

    :sswitch_61
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get33(Lcom/samsung/android/camera/core/SemCamera;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_102
    .catchall {:try_start_102 .. :try_end_102} :catchall_0

    :try_start_103
    const-string/jumbo v2, "SemCamera-JNI-Java"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "METADATA_BURSTSHOT_FPS_CHANGED("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get10(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$BurstShotFpsCallback;

    move-result-object v2

    if-eqz v2, :cond_75

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get10(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$BurstShotFpsCallback;

    move-result-object v2

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    invoke-interface {v2, v4}, Lcom/samsung/android/camera/core/SemCamera$BurstShotFpsCallback;->onBurstShotFpsChanged(I)V
    :try_end_103
    .catchall {:try_start_103 .. :try_end_103} :catchall_5b

    :goto_28
    :try_start_104
    monitor-exit v3
    :try_end_104
    .catchall {:try_start_104 .. :try_end_104} :catchall_0

    goto/16 :goto_1

    :cond_75
    :try_start_105
    const-string/jumbo v2, "SemCamera-JNI-Java"

    const-string/jumbo v4, "mBurstShotFpsCallback is null !!!"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_105
    .catchall {:try_start_105 .. :try_end_105} :catchall_5b

    goto :goto_28

    :catchall_5b
    move-exception v2

    :try_start_106
    monitor-exit v3

    throw v2

    :sswitch_62
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get53(Lcom/samsung/android/camera/core/SemCamera;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_106
    .catchall {:try_start_106 .. :try_end_106} :catchall_0

    :try_start_107
    const-string/jumbo v2, "SemCamera-JNI-Java"

    const-string/jumbo v4, "INTERACTIVE_SHOT_DIRECTION_CHANGED"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get27(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$InteractiveShotEventListener;

    move-result-object v2

    if-eqz v2, :cond_76

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get27(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$InteractiveShotEventListener;

    move-result-object v2

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg2:I

    invoke-interface {v2, v4, v5}, Lcom/samsung/android/camera/core/SemCamera$InteractiveShotEventListener;->onInteractiveDirectionChanged(II)V
    :try_end_107
    .catchall {:try_start_107 .. :try_end_107} :catchall_5c

    :goto_29
    :try_start_108
    monitor-exit v3
    :try_end_108
    .catchall {:try_start_108 .. :try_end_108} :catchall_0

    goto/16 :goto_1

    :cond_76
    :try_start_109
    const-string/jumbo v2, "SemCamera-JNI-Java"

    const-string/jumbo v4, "mInteractiveShotEventListener is null !!!"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_109
    .catchall {:try_start_109 .. :try_end_109} :catchall_5c

    goto :goto_29

    :catchall_5c
    move-exception v2

    :try_start_10a
    monitor-exit v3

    throw v2

    :sswitch_63
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get53(Lcom/samsung/android/camera/core/SemCamera;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_10a
    .catchall {:try_start_10a .. :try_end_10a} :catchall_0

    :try_start_10b
    const-string/jumbo v2, "SemCamera-JNI-Java"

    const-string/jumbo v4, "INTERACTIVE_SHOT_DIRECTION_WARNING"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get27(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$InteractiveShotEventListener;

    move-result-object v2

    if-eqz v2, :cond_77

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get27(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$InteractiveShotEventListener;

    move-result-object v2

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    invoke-interface {v2, v4}, Lcom/samsung/android/camera/core/SemCamera$InteractiveShotEventListener;->onInteractiveDirectionWarning(I)V
    :try_end_10b
    .catchall {:try_start_10b .. :try_end_10b} :catchall_5d

    :goto_2a
    :try_start_10c
    monitor-exit v3
    :try_end_10c
    .catchall {:try_start_10c .. :try_end_10c} :catchall_0

    goto/16 :goto_1

    :cond_77
    :try_start_10d
    const-string/jumbo v2, "SemCamera-JNI-Java"

    const-string/jumbo v4, "mInteractiveShotEventListener is null !!!"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10d
    .catchall {:try_start_10d .. :try_end_10d} :catchall_5d

    goto :goto_2a

    :catchall_5d
    move-exception v2

    :try_start_10e
    monitor-exit v3

    throw v2

    :sswitch_64
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get53(Lcom/samsung/android/camera/core/SemCamera;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_10e
    .catchall {:try_start_10e .. :try_end_10e} :catchall_0

    :try_start_10f
    const-string/jumbo v2, "SemCamera-JNI-Java"

    const-string/jumbo v4, "INTERACTIVE_SHOT_CAPTURE_PROGRESS"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get27(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$InteractiveShotEventListener;

    move-result-object v2

    if-eqz v2, :cond_78

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get27(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$InteractiveShotEventListener;

    move-result-object v2

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg2:I

    invoke-interface {v2, v4, v5}, Lcom/samsung/android/camera/core/SemCamera$InteractiveShotEventListener;->onInteractiveCaptureProgressed(II)V
    :try_end_10f
    .catchall {:try_start_10f .. :try_end_10f} :catchall_5e

    :goto_2b
    :try_start_110
    monitor-exit v3
    :try_end_110
    .catchall {:try_start_110 .. :try_end_110} :catchall_0

    goto/16 :goto_1

    :cond_78
    :try_start_111
    const-string/jumbo v2, "SemCamera-JNI-Java"

    const-string/jumbo v4, "mInteractiveShotEventListener is null !!!"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_111
    .catchall {:try_start_111 .. :try_end_111} :catchall_5e

    goto :goto_2b

    :catchall_5e
    move-exception v2

    :try_start_112
    monitor-exit v3

    throw v2

    :sswitch_65
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get53(Lcom/samsung/android/camera/core/SemCamera;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_112
    .catchall {:try_start_112 .. :try_end_112} :catchall_0

    :try_start_113
    const-string/jumbo v2, "SemCamera-JNI-Java"

    const-string/jumbo v4, "INTERACTIVE_SHOT_PROCESS_PROGRESS"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get27(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$InteractiveShotEventListener;

    move-result-object v2

    if-eqz v2, :cond_79

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get27(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$InteractiveShotEventListener;

    move-result-object v2

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg2:I

    invoke-interface {v2, v4, v5}, Lcom/samsung/android/camera/core/SemCamera$InteractiveShotEventListener;->onInteractiveProcessProgressed(II)V
    :try_end_113
    .catchall {:try_start_113 .. :try_end_113} :catchall_5f

    :goto_2c
    :try_start_114
    monitor-exit v3
    :try_end_114
    .catchall {:try_start_114 .. :try_end_114} :catchall_0

    goto/16 :goto_1

    :cond_79
    :try_start_115
    const-string/jumbo v2, "SemCamera-JNI-Java"

    const-string/jumbo v4, "mInteractiveShotEventListener is null !!!"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_115
    .catchall {:try_start_115 .. :try_end_115} :catchall_5f

    goto :goto_2c

    :catchall_5f
    move-exception v2

    :try_start_116
    monitor-exit v3

    throw v2

    :sswitch_66
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get53(Lcom/samsung/android/camera/core/SemCamera;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_116
    .catchall {:try_start_116 .. :try_end_116} :catchall_0

    :try_start_117
    const-string/jumbo v2, "SemCamera-JNI-Java"

    const-string/jumbo v4, "INTERACTIVE_SHOT_PROCESS_COMPLETE"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get27(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$InteractiveShotEventListener;

    move-result-object v2

    if-eqz v2, :cond_7a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get27(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$InteractiveShotEventListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/camera/core/SemCamera$InteractiveShotEventListener;->onInteractiveProcessCompleted()V
    :try_end_117
    .catchall {:try_start_117 .. :try_end_117} :catchall_60

    :goto_2d
    :try_start_118
    monitor-exit v3
    :try_end_118
    .catchall {:try_start_118 .. :try_end_118} :catchall_0

    goto/16 :goto_1

    :cond_7a
    :try_start_119
    const-string/jumbo v2, "SemCamera-JNI-Java"

    const-string/jumbo v4, "mInteractiveShotEventListener is null !!!"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_119
    .catchall {:try_start_119 .. :try_end_119} :catchall_60

    goto :goto_2d

    :catchall_60
    move-exception v2

    :try_start_11a
    monitor-exit v3

    throw v2

    :sswitch_67
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get53(Lcom/samsung/android/camera/core/SemCamera;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_11a
    .catchall {:try_start_11a .. :try_end_11a} :catchall_0

    :try_start_11b
    const-string/jumbo v2, "SemCamera-JNI-Java"

    const-string/jumbo v4, "SINGLE_SHOT_QRCODE_DETECT"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get46(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$QrCodeDetectionEventListener;

    move-result-object v2

    if-eqz v2, :cond_7b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get46(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$QrCodeDetectionEventListener;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [B

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->mCamera:Lcom/samsung/android/camera/core/SemCamera;

    invoke-interface {v4, v2, v5}, Lcom/samsung/android/camera/core/SemCamera$QrCodeDetectionEventListener;->onQrCodeDetection([BLcom/samsung/android/camera/core/SemCamera;)V
    :try_end_11b
    .catchall {:try_start_11b .. :try_end_11b} :catchall_61

    :goto_2e
    :try_start_11c
    monitor-exit v3
    :try_end_11c
    .catchall {:try_start_11c .. :try_end_11c} :catchall_0

    goto/16 :goto_1

    :cond_7b
    :try_start_11d
    const-string/jumbo v2, "SemCamera-JNI-Java"

    const-string/jumbo v4, "mQrCodeDetectionEventListener is null !!!"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11d
    .catchall {:try_start_11d .. :try_end_11d} :catchall_61

    goto :goto_2e

    :catchall_61
    move-exception v2

    :try_start_11e
    monitor-exit v3

    throw v2

    :sswitch_68
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get53(Lcom/samsung/android/camera/core/SemCamera;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_11e
    .catchall {:try_start_11e .. :try_end_11e} :catchall_0

    :try_start_11f
    const-string/jumbo v2, "SemCamera-JNI-Java"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "SINGLE_SHOT_QRCODE_DETECT_ERR("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get46(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$QrCodeDetectionEventListener;

    move-result-object v2

    if-eqz v2, :cond_7c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get46(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$QrCodeDetectionEventListener;

    move-result-object v2

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    invoke-interface {v2, v4}, Lcom/samsung/android/camera/core/SemCamera$QrCodeDetectionEventListener;->onQrCodeDetectionError(I)V
    :try_end_11f
    .catchall {:try_start_11f .. :try_end_11f} :catchall_62

    :goto_2f
    :try_start_120
    monitor-exit v3
    :try_end_120
    .catchall {:try_start_120 .. :try_end_120} :catchall_0

    goto/16 :goto_1

    :cond_7c
    :try_start_121
    const-string/jumbo v2, "SemCamera-JNI-Java"

    const-string/jumbo v4, "mQrCodeDetectionEventListener is null !!!"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_121
    .catchall {:try_start_121 .. :try_end_121} :catchall_62

    goto :goto_2f

    :catchall_62
    move-exception v2

    :try_start_122
    monitor-exit v3

    throw v2

    :sswitch_69
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get53(Lcom/samsung/android/camera/core/SemCamera;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_122
    .catchall {:try_start_122 .. :try_end_122} :catchall_0

    :try_start_123
    const-string/jumbo v2, "SemCamera-JNI-Java"

    const-string/jumbo v4, "FOOD_SHOT_RESULT"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get22(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$FoodShotEventListener;

    move-result-object v2

    if-eqz v2, :cond_7d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get22(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$FoodShotEventListener;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [B

    invoke-interface {v4, v2}, Lcom/samsung/android/camera/core/SemCamera$FoodShotEventListener;->onFoodShotComplete([B)V
    :try_end_123
    .catchall {:try_start_123 .. :try_end_123} :catchall_63

    :goto_30
    :try_start_124
    monitor-exit v3
    :try_end_124
    .catchall {:try_start_124 .. :try_end_124} :catchall_0

    goto/16 :goto_1

    :cond_7d
    :try_start_125
    const-string/jumbo v2, "SemCamera-JNI-Java"

    const-string/jumbo v4, "mFoodShotEventListener is null !!!"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_125
    .catchall {:try_start_125 .. :try_end_125} :catchall_63

    goto :goto_30

    :catchall_63
    move-exception v2

    :try_start_126
    monitor-exit v3

    throw v2

    :sswitch_6a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get53(Lcom/samsung/android/camera/core/SemCamera;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_126
    .catchall {:try_start_126 .. :try_end_126} :catchall_0

    :try_start_127
    const-string/jumbo v2, "SemCamera-JNI-Java"

    const-string/jumbo v4, "COMMON_SHOT_CANCEL_PICTURE_COMPLETED"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get12(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$CommonEventListener;

    move-result-object v2

    if-eqz v2, :cond_7e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get12(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$CommonEventListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/camera/core/SemCamera$CommonEventListener;->onTakePictureCanceled()V
    :try_end_127
    .catchall {:try_start_127 .. :try_end_127} :catchall_64

    :goto_31
    :try_start_128
    monitor-exit v3
    :try_end_128
    .catchall {:try_start_128 .. :try_end_128} :catchall_0

    goto/16 :goto_1

    :cond_7e
    :try_start_129
    const-string/jumbo v2, "SemCamera-JNI-Java"

    const-string/jumbo v4, "mCommonEventListener is null !!!"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_129
    .catchall {:try_start_129 .. :try_end_129} :catchall_64

    goto :goto_31

    :catchall_64
    move-exception v2

    :try_start_12a
    monitor-exit v3

    throw v2

    :sswitch_6b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get53(Lcom/samsung/android/camera/core/SemCamera;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_12a
    .catchall {:try_start_12a .. :try_end_12a} :catchall_0

    :try_start_12b
    const-string/jumbo v2, "SemCamera-JNI-Java"

    const-string/jumbo v4, "COMMON_SHOT_PREVIEW_STARTED"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get12(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$CommonEventListener;

    move-result-object v2

    if-eqz v2, :cond_7f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get12(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$CommonEventListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/camera/core/SemCamera$CommonEventListener;->onPreviewStarted()V
    :try_end_12b
    .catchall {:try_start_12b .. :try_end_12b} :catchall_65

    :goto_32
    :try_start_12c
    monitor-exit v3
    :try_end_12c
    .catchall {:try_start_12c .. :try_end_12c} :catchall_0

    goto/16 :goto_1

    :cond_7f
    :try_start_12d
    const-string/jumbo v2, "SemCamera-JNI-Java"

    const-string/jumbo v4, "mCommonEventListener is null !!!"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12d
    .catchall {:try_start_12d .. :try_end_12d} :catchall_65

    goto :goto_32

    :catchall_65
    move-exception v2

    :try_start_12e
    monitor-exit v3

    throw v2

    :sswitch_6c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get53(Lcom/samsung/android/camera/core/SemCamera;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_12e
    .catchall {:try_start_12e .. :try_end_12e} :catchall_0

    :try_start_12f
    const-string/jumbo v2, "SemCamera-JNI-Java"

    const-string/jumbo v4, "SCREEN_FLASH_TAKEPICTURE_COMPLETED"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get50(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$ScreenFlashEventListener;

    move-result-object v2

    if-eqz v2, :cond_80

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get50(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$ScreenFlashEventListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/camera/core/SemCamera$ScreenFlashEventListener;->onTakePictureCompleted()V
    :try_end_12f
    .catchall {:try_start_12f .. :try_end_12f} :catchall_66

    :goto_33
    :try_start_130
    monitor-exit v3
    :try_end_130
    .catchall {:try_start_130 .. :try_end_130} :catchall_0

    goto/16 :goto_1

    :cond_80
    :try_start_131
    const-string/jumbo v2, "SemCamera-JNI-Java"

    const-string/jumbo v4, "mScreenFlashEventListener is null !!!"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_131
    .catchall {:try_start_131 .. :try_end_131} :catchall_66

    goto :goto_33

    :catchall_66
    move-exception v2

    :try_start_132
    monitor-exit v3

    throw v2

    :sswitch_6d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get53(Lcom/samsung/android/camera/core/SemCamera;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_132
    .catchall {:try_start_132 .. :try_end_132} :catchall_0

    :try_start_133
    const-string/jumbo v2, "SemCamera-JNI-Java"

    const-string/jumbo v4, "SLOW_MOTION_EVENT_RESULT"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get55(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$SlowMotionEventListener;

    move-result-object v2

    if-eqz v2, :cond_81

    new-instance v22, Lcom/samsung/android/camera/core/SemCamera$SlowMotionEventResult;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [B

    const/4 v5, 0x0

    move-object/from16 v0, v22

    invoke-direct {v0, v4, v2, v5}, Lcom/samsung/android/camera/core/SemCamera$SlowMotionEventResult;-><init>(Lcom/samsung/android/camera/core/SemCamera;[BLcom/samsung/android/camera/core/SemCamera$SlowMotionEventResult;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get55(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$SlowMotionEventListener;

    move-result-object v2

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/camera/core/SemCamera$SlowMotionEventResult;->-get0(Lcom/samsung/android/camera/core/SemCamera$SlowMotionEventResult;)[Lcom/samsung/android/camera/core/SemCamera$SlowMotionEvent;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/samsung/android/camera/core/SemCamera$SlowMotionEventListener;->onSlowMotionEventResult([Lcom/samsung/android/camera/core/SemCamera$SlowMotionEvent;)V
    :try_end_133
    .catchall {:try_start_133 .. :try_end_133} :catchall_67

    const/16 v22, 0x0

    :goto_34
    :try_start_134
    monitor-exit v3
    :try_end_134
    .catchall {:try_start_134 .. :try_end_134} :catchall_0

    goto/16 :goto_1

    :cond_81
    :try_start_135
    const-string/jumbo v2, "SemCamera-JNI-Java"

    const-string/jumbo v4, "mSlowMotionEventListener is null !!!"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_135
    .catchall {:try_start_135 .. :try_end_135} :catchall_67

    goto :goto_34

    :catchall_67
    move-exception v2

    :try_start_136
    monitor-exit v3

    throw v2

    :sswitch_6e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get53(Lcom/samsung/android/camera/core/SemCamera;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_136
    .catchall {:try_start_136 .. :try_end_136} :catchall_0

    :try_start_137
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get13(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$DepthMapEventListener;

    move-result-object v2

    if-eqz v2, :cond_82

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get13(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$DepthMapEventListener;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [B

    invoke-interface {v4, v2}, Lcom/samsung/android/camera/core/SemCamera$DepthMapEventListener;->onDepthMapData([B)V
    :try_end_137
    .catchall {:try_start_137 .. :try_end_137} :catchall_68

    :goto_35
    :try_start_138
    monitor-exit v3
    :try_end_138
    .catchall {:try_start_138 .. :try_end_138} :catchall_0

    goto/16 :goto_1

    :cond_82
    :try_start_139
    const-string/jumbo v2, "SemCamera-JNI-Java"

    const-string/jumbo v4, "mDepthMapEventListener is null !!!"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_139
    .catchall {:try_start_139 .. :try_end_139} :catchall_68

    goto :goto_35

    :catchall_68
    move-exception v2

    :try_start_13a
    monitor-exit v3

    throw v2

    :sswitch_6f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get53(Lcom/samsung/android/camera/core/SemCamera;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_13a
    .catchall {:try_start_13a .. :try_end_13a} :catchall_0

    :try_start_13b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get14(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$DualDepthEventListener;

    move-result-object v2

    if-eqz v2, :cond_83

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get14(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$DualDepthEventListener;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [B

    invoke-interface {v4, v2}, Lcom/samsung/android/camera/core/SemCamera$DualDepthEventListener;->onDepthMapData([B)V
    :try_end_13b
    .catchall {:try_start_13b .. :try_end_13b} :catchall_69

    :goto_36
    :try_start_13c
    monitor-exit v3
    :try_end_13c
    .catchall {:try_start_13c .. :try_end_13c} :catchall_0

    goto/16 :goto_1

    :cond_83
    :try_start_13d
    const-string/jumbo v2, "SemCamera-JNI-Java"

    const-string/jumbo v4, "mDualDepthEventListener is null !!!"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13d
    .catchall {:try_start_13d .. :try_end_13d} :catchall_69

    goto :goto_36

    :catchall_69
    move-exception v2

    :try_start_13e
    monitor-exit v3

    throw v2

    :sswitch_70
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get53(Lcom/samsung/android/camera/core/SemCamera;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_13e
    .catchall {:try_start_13e .. :try_end_13e} :catchall_0

    :try_start_13f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get14(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$DualDepthEventListener;

    move-result-object v2

    if-eqz v2, :cond_84

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get14(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$DualDepthEventListener;

    move-result-object v2

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    invoke-interface {v2, v4}, Lcom/samsung/android/camera/core/SemCamera$DualDepthEventListener;->onFocusedObjectDistance(I)V
    :try_end_13f
    .catchall {:try_start_13f .. :try_end_13f} :catchall_6a

    :goto_37
    :try_start_140
    monitor-exit v3
    :try_end_140
    .catchall {:try_start_140 .. :try_end_140} :catchall_0

    goto/16 :goto_1

    :cond_84
    :try_start_141
    const-string/jumbo v2, "SemCamera-JNI-Java"

    const-string/jumbo v4, "mDualDepthEventListener is null !!!"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_141
    .catchall {:try_start_141 .. :try_end_141} :catchall_6a

    goto :goto_37

    :catchall_6a
    move-exception v2

    :try_start_142
    monitor-exit v3

    throw v2

    :sswitch_71
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get53(Lcom/samsung/android/camera/core/SemCamera;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_142
    .catchall {:try_start_142 .. :try_end_142} :catchall_0

    :try_start_143
    const-string/jumbo v2, "SemCamera-JNI-Java"

    const-string/jumbo v4, "STICKER_FACE_ALIGNMENT_DATA"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get57(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$StickerEventListener;

    move-result-object v2

    if-eqz v2, :cond_85

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get57(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$StickerEventListener;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [B

    invoke-interface {v4, v2}, Lcom/samsung/android/camera/core/SemCamera$StickerEventListener;->onFaceAlignmentData([B)V
    :try_end_143
    .catchall {:try_start_143 .. :try_end_143} :catchall_6b

    :goto_38
    :try_start_144
    monitor-exit v3
    :try_end_144
    .catchall {:try_start_144 .. :try_end_144} :catchall_0

    goto/16 :goto_1

    :cond_85
    :try_start_145
    const-string/jumbo v2, "SemCamera-JNI-Java"

    const-string/jumbo v4, "mStickerEventListener is null !!!"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_145
    .catchall {:try_start_145 .. :try_end_145} :catchall_6b

    goto :goto_38

    :catchall_6b
    move-exception v2

    :try_start_146
    monitor-exit v3

    throw v2

    :sswitch_72
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get53(Lcom/samsung/android/camera/core/SemCamera;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_146
    .catchall {:try_start_146 .. :try_end_146} :catchall_0

    :try_start_147
    const-string/jumbo v2, "SemCamera-JNI-Java"

    const-string/jumbo v4, "SMART_FILTER_PARAMETERS_CHANGED"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get56(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$SmartFilterListener;

    move-result-object v2

    if-eqz v2, :cond_86

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get56(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$SmartFilterListener;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [B

    invoke-interface {v4, v2}, Lcom/samsung/android/camera/core/SemCamera$SmartFilterListener;->onParametersChanged([B)V
    :try_end_147
    .catchall {:try_start_147 .. :try_end_147} :catchall_6c

    :goto_39
    :try_start_148
    monitor-exit v3
    :try_end_148
    .catchall {:try_start_148 .. :try_end_148} :catchall_0

    goto/16 :goto_1

    :cond_86
    :try_start_149
    const-string/jumbo v2, "SemCamera-JNI-Java"

    const-string/jumbo v4, "mSmartFilterListener is null !!!"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_149
    .catchall {:try_start_149 .. :try_end_149} :catchall_6c

    goto :goto_39

    :catchall_6c
    move-exception v2

    :try_start_14a
    monitor-exit v3

    throw v2
    :try_end_14a
    .catchall {:try_start_14a .. :try_end_14a} :catchall_0

    :cond_87
    :try_start_14b
    const-string/jumbo v2, "SemCamera-JNI-Java"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unknown message type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14b
    .catchall {:try_start_14b .. :try_end_14b} :catchall_6d

    goto/16 :goto_0

    :catchall_6d
    move-exception v2

    :try_start_14c
    monitor-exit v3

    throw v2
    :try_end_14c
    .catchall {:try_start_14c .. :try_end_14c} :catchall_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_a
        0x2 -> :sswitch_0
        0x4 -> :sswitch_7
        0x8 -> :sswitch_8
        0x10 -> :sswitch_3
        0x40 -> :sswitch_6
        0x80 -> :sswitch_1
        0x100 -> :sswitch_2
        0x400 -> :sswitch_9
        0x800 -> :sswitch_b
        0x8000 -> :sswitch_4
        0xf021 -> :sswitch_f
        0xf022 -> :sswitch_11
        0xf023 -> :sswitch_12
        0xf024 -> :sswitch_13
        0xf025 -> :sswitch_14
        0xf026 -> :sswitch_10
        0xf027 -> :sswitch_15
        0xf028 -> :sswitch_16
        0xf029 -> :sswitch_17
        0xf02a -> :sswitch_18
        0xf041 -> :sswitch_69
        0xf051 -> :sswitch_6d
        0xf081 -> :sswitch_24
        0xf082 -> :sswitch_25
        0xf083 -> :sswitch_26
        0xf084 -> :sswitch_27
        0xf091 -> :sswitch_28
        0xf092 -> :sswitch_29
        0xf093 -> :sswitch_2a
        0xf094 -> :sswitch_2b
        0xf095 -> :sswitch_2c
        0xf123 -> :sswitch_2d
        0xf141 -> :sswitch_71
        0xf151 -> :sswitch_2e
        0xf152 -> :sswitch_2f
        0xf153 -> :sswitch_30
        0xf161 -> :sswitch_31
        0xf201 -> :sswitch_d
        0xf203 -> :sswitch_36
        0xf232 -> :sswitch_32
        0xf251 -> :sswitch_33
        0xf252 -> :sswitch_35
        0xf253 -> :sswitch_34
        0xf274 -> :sswitch_67
        0xf275 -> :sswitch_68
        0xf281 -> :sswitch_41
        0xf291 -> :sswitch_e
        0xf301 -> :sswitch_47
        0xf302 -> :sswitch_49
        0xf303 -> :sswitch_4a
        0xf304 -> :sswitch_4b
        0xf305 -> :sswitch_4c
        0xf306 -> :sswitch_48
        0xf307 -> :sswitch_4d
        0xf308 -> :sswitch_4e
        0xf309 -> :sswitch_4f
        0xf30a -> :sswitch_50
        0xf310 -> :sswitch_51
        0xf311 -> :sswitch_52
        0xf312 -> :sswitch_46
        0xf321 -> :sswitch_37
        0xf322 -> :sswitch_38
        0xf323 -> :sswitch_39
        0xf331 -> :sswitch_3d
        0xf332 -> :sswitch_3e
        0xf333 -> :sswitch_3f
        0xf334 -> :sswitch_40
        0xf341 -> :sswitch_43
        0xf342 -> :sswitch_42
        0xf343 -> :sswitch_45
        0xf344 -> :sswitch_44
        0xf345 -> :sswitch_61
        0xf351 -> :sswitch_5f
        0xf352 -> :sswitch_60
        0xf361 -> :sswitch_62
        0xf362 -> :sswitch_63
        0xf363 -> :sswitch_64
        0xf364 -> :sswitch_65
        0xf365 -> :sswitch_66
        0xf381 -> :sswitch_19
        0xf382 -> :sswitch_1b
        0xf383 -> :sswitch_1c
        0xf384 -> :sswitch_1d
        0xf385 -> :sswitch_1e
        0xf386 -> :sswitch_1a
        0xf387 -> :sswitch_1f
        0xf388 -> :sswitch_20
        0xf389 -> :sswitch_21
        0xf38a -> :sswitch_22
        0xf38b -> :sswitch_23
        0xf391 -> :sswitch_53
        0xf392 -> :sswitch_55
        0xf393 -> :sswitch_56
        0xf394 -> :sswitch_57
        0xf395 -> :sswitch_58
        0xf396 -> :sswitch_54
        0xf398 -> :sswitch_59
        0xf399 -> :sswitch_5a
        0xf39a -> :sswitch_5b
        0xf39b -> :sswitch_5c
        0xf39c -> :sswitch_5d
        0xf39d -> :sswitch_5e
        0xf401 -> :sswitch_c
        0xf411 -> :sswitch_6a
        0xf412 -> :sswitch_6b
        0xf421 -> :sswitch_6c
        0xf431 -> :sswitch_72
        0xf441 -> :sswitch_6e
        0xf442 -> :sswitch_6f
        0xf443 -> :sswitch_70
        0xf451 -> :sswitch_3a
        0xf452 -> :sswitch_3b
        0xf461 -> :sswitch_3c
        0x10000 -> :sswitch_5
    .end sparse-switch
.end method
