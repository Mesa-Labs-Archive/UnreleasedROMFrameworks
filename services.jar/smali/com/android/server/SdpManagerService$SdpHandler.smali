.class Lcom/android/server/SdpManagerService$SdpHandler;
.super Landroid/os/Handler;
.source "SdpManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SdpManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SdpHandler"
.end annotation


# static fields
.field private static final HANDLER_TAG:Ljava/lang/String; = "SdpManagerService.Handler"


# instance fields
.field final synthetic this$0:Lcom/android/server/SdpManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/SdpManagerService;Landroid/os/Looper;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/SdpManagerService$SdpHandler;->this$0:Lcom/android/server/SdpManagerService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const-string/jumbo v0, "SdpHandler"

    invoke-static {p1, v0}, Lcom/android/server/SdpManagerService;->-wrap10(Lcom/android/server/SdpManagerService;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 16

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/SdpManagerService$SdpHandler;->this$0:Lcom/android/server/SdpManagerService;

    const-string/jumbo v14, "SdpHandler"

    invoke-static {v13, v14}, Lcom/android/server/SdpManagerService;->-wrap10(Lcom/android/server/SdpManagerService;Ljava/lang/String;)I

    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->what:I

    packed-switch v13, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/SdpManagerService$SdpHandler;->this$0:Lcom/android/server/SdpManagerService;

    invoke-static {v13}, Lcom/android/server/SdpManagerService;->-wrap4(Lcom/android/server/SdpManagerService;)Z

    move-result v13

    if-nez v13, :cond_1

    return-void

    :cond_1
    const-string/jumbo v13, "SdpManagerService.Handler"

    const-string/jumbo v14, "received MSG_SYSTEM_READY. "

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/SdpManagerService$SdpHandler;->this$0:Lcom/android/server/SdpManagerService;

    invoke-static {v13}, Lcom/android/server/SdpManagerService;->-wrap31(Lcom/android/server/SdpManagerService;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/SdpManagerService$SdpHandler;->this$0:Lcom/android/server/SdpManagerService;

    invoke-static {v13}, Lcom/android/server/SdpManagerService;->-wrap33(Lcom/android/server/SdpManagerService;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/SdpManagerService$SdpHandler;->this$0:Lcom/android/server/SdpManagerService;

    invoke-static {v13}, Lcom/android/server/SdpManagerService;->-get8(Lcom/android/server/SdpManagerService;)Lcom/android/server/SdpManagerService$SecureFileSystemManager;

    move-result-object v13

    invoke-static {v13}, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->-wrap1(Lcom/android/server/SdpManagerService$SecureFileSystemManager;)Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/SdpManagerService$SdpHandler;->this$0:Lcom/android/server/SdpManagerService;

    invoke-static {v13}, Lcom/android/server/SdpManagerService;->-get8(Lcom/android/server/SdpManagerService;)Lcom/android/server/SdpManagerService$SecureFileSystemManager;

    move-result-object v13

    invoke-static {v13}, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->-wrap0(Lcom/android/server/SdpManagerService$SecureFileSystemManager;)Z

    move-result v13

    if-eqz v13, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/SdpManagerService$SdpHandler;->this$0:Lcom/android/server/SdpManagerService;

    invoke-static {v13}, Lcom/android/server/SdpManagerService;->-get8(Lcom/android/server/SdpManagerService;)Lcom/android/server/SdpManagerService$SecureFileSystemManager;

    move-result-object v13

    invoke-static {v13}, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->-wrap3(Lcom/android/server/SdpManagerService$SecureFileSystemManager;)Z

    :cond_2
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/SdpManagerService$SdpHandler;->this$0:Lcom/android/server/SdpManagerService;

    invoke-static {v13}, Lcom/android/server/SdpManagerService;->-get7(Lcom/android/server/SdpManagerService;)Landroid/util/SparseArray;

    move-result-object v13

    invoke-virtual {v13}, Landroid/util/SparseArray;->size()I

    move-result v7

    :goto_1
    if-ge v5, v7, :cond_3

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/SdpManagerService$SdpHandler;->this$0:Lcom/android/server/SdpManagerService;

    invoke-static {v13}, Lcom/android/server/SdpManagerService;->-get7(Lcom/android/server/SdpManagerService;)Landroid/util/SparseArray;

    move-result-object v13

    invoke-virtual {v13, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    invoke-virtual {v6}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getId()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/SdpManagerService$SdpHandler;->this$0:Lcom/android/server/SdpManagerService;

    invoke-static {v13, v4}, Lcom/android/server/SdpManagerService;->-wrap15(Lcom/android/server/SdpManagerService;I)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/SdpManagerService$SdpHandler;->this$0:Lcom/android/server/SdpManagerService;

    invoke-virtual {v13, v4}, Lcom/android/server/SdpManagerService;->boot(I)I

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/sec/knox/container/util/KeyManagementUtil;->isSkmmSupported()Z

    move-result v13

    if-eqz v13, :cond_4

    const-string/jumbo v13, "SdpManagerService.Handler"

    const-string/jumbo v14, "Init SKMM library beforehand for better performance."

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/SdpManagerService$SdpHandler;->this$0:Lcom/android/server/SdpManagerService;

    invoke-static {v13}, Lcom/android/server/SdpManagerService;->-get2(Lcom/android/server/SdpManagerService;)Lcom/sec/knox/container/util/KeyManagementUtil;

    move-result-object v13

    invoke-virtual {v13}, Lcom/sec/knox/container/util/KeyManagementUtil;->initSkmmLibrary()Z

    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/SdpManagerService$SdpHandler;->this$0:Lcom/android/server/SdpManagerService;

    const/4 v14, 0x1

    invoke-static {v13, v14}, Lcom/android/server/SdpManagerService;->-set0(Lcom/android/server/SdpManagerService;Z)Z

    goto/16 :goto_0

    :pswitch_1
    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/SdpManagerService$SdpHandler;->this$0:Lcom/android/server/SdpManagerService;

    invoke-virtual {v13, v12}, Lcom/android/server/SdpManagerService;->onMasterKeyEvictionRequired(I)V

    goto/16 :goto_0

    :pswitch_2
    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v9, v0, Landroid/os/Message;->arg2:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/SdpManagerService$SdpHandler;->this$0:Lcom/android/server/SdpManagerService;

    invoke-virtual {v13, v12, v9}, Lcom/android/server/SdpManagerService;->onMasterKeyDerivationRequired(II)V

    goto/16 :goto_0

    :pswitch_3
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string/jumbo v13, "userId"

    const/4 v14, -0x1

    invoke-virtual {v3, v13, v14}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v12

    const-string/jumbo v13, "pkgName"

    invoke-static {}, Lcom/android/server/SdpManagerService;->-get0()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v13, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/SdpManagerService$SdpHandler;->this$0:Lcom/android/server/SdpManagerService;

    invoke-static {v13, v10, v12}, Lcom/android/server/SdpManagerService;->-wrap19(Lcom/android/server/SdpManagerService;Ljava/lang/String;I)V

    goto/16 :goto_0

    :pswitch_4
    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/SdpManagerService$SdpHandler;->this$0:Lcom/android/server/SdpManagerService;

    invoke-static {v13, v12}, Lcom/android/server/SdpManagerService;->-wrap21(Lcom/android/server/SdpManagerService;I)V

    goto/16 :goto_0

    :pswitch_5
    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/SdpManagerService$SdpHandler;->this$0:Lcom/android/server/SdpManagerService;

    invoke-static {v13, v12}, Lcom/android/server/SdpManagerService;->-wrap22(Lcom/android/server/SdpManagerService;I)V

    goto/16 :goto_0

    :pswitch_6
    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/SdpManagerService$SdpHandler;->this$0:Lcom/android/server/SdpManagerService;

    invoke-static {v13, v12}, Lcom/android/server/SdpManagerService;->-wrap20(Lcom/android/server/SdpManagerService;I)V

    goto/16 :goto_0

    :pswitch_7
    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/SdpManagerService$SdpHandler;->this$0:Lcom/android/server/SdpManagerService;

    invoke-static {v13, v12}, Lcom/android/server/SdpManagerService;->-wrap20(Lcom/android/server/SdpManagerService;I)V

    goto/16 :goto_0

    :pswitch_8
    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/SdpManagerService$SdpHandler;->this$0:Lcom/android/server/SdpManagerService;

    invoke-static {v13, v12}, Lcom/android/server/SdpManagerService;->-wrap16(Lcom/android/server/SdpManagerService;I)V

    goto/16 :goto_0

    :pswitch_9
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/SdpManagerService$SdpHandler;->this$0:Lcom/android/server/SdpManagerService;

    invoke-static {v13}, Lcom/android/server/SdpManagerService;->-wrap17(Lcom/android/server/SdpManagerService;)V

    goto/16 :goto_0

    :pswitch_a
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string/jumbo v13, "credential"

    invoke-static {}, Lcom/android/server/SdpManagerService;->-get0()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v13, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v13, "type"

    const/4 v14, -0x1

    invoke-virtual {v3, v13, v14}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v11

    const-string/jumbo v13, "userId"

    const/4 v14, -0x1

    invoke-virtual {v3, v13, v14}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/SdpManagerService$SdpHandler;->this$0:Lcom/android/server/SdpManagerService;

    invoke-virtual {v13, v2, v11, v12}, Lcom/android/server/SdpManagerService;->doSyntheticPasswordFullMigration(Ljava/lang/String;II)Lcom/android/internal/widget/VerifyCredentialResponse;

    goto/16 :goto_0

    :pswitch_b
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v8, :cond_0

    instance-of v13, v8, Ljava/lang/Integer;

    if-eqz v13, :cond_0

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/SdpManagerService$SdpHandler;->this$0:Lcom/android/server/SdpManagerService;

    invoke-virtual {v13, v12}, Lcom/android/server/SdpManagerService;->clearLegacyResetStatus(I)V

    const-class v13, Landroid/app/ActivityManagerInternal;

    invoke-static {v13}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManagerInternal;

    if-eqz v1, :cond_0

    invoke-static {v12}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v13

    if-eqz v13, :cond_0

    const-string/jumbo v13, "com.android.settings/.ChooseLockGeneric$InternalActivity"

    const/4 v14, 0x0

    const/16 v15, 0x4e2

    invoke-virtual {v1, v13, v14, v15}, Landroid/app/ActivityManagerInternal;->removeTaskByCmpName(Ljava/lang/String;II)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method
