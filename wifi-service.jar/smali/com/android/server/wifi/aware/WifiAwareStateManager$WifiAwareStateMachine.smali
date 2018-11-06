.class Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;
.super Lcom/android/internal/util/StateMachine;
.source "WifiAwareStateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/aware/WifiAwareStateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WifiAwareStateMachine"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine$DefaultState;,
        Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine$WaitForResponseState;,
        Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine$WaitState;
    }
.end annotation


# static fields
.field private static final AWARE_SEND_MESSAGE_TIMEOUT:J = 0x2710L

.field private static final AWARE_WAIT_FOR_DP_CONFIRM_TIMEOUT:J = 0x1388L

.field private static final TRANSACTION_ID_IGNORE:I


# instance fields
.field private mCurrentCommand:Landroid/os/Message;

.field private mCurrentTransactionId:S

.field private final mDataPathConfirmTimeoutMessages:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;",
            "Lcom/android/internal/util/WakeupMessage;",
            ">;"
        }
    .end annotation
.end field

.field private mDefaultState:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine$DefaultState;

.field private final mFwQueuedSendMessages:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Short;",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field private final mHostQueuedSendMessages:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field public mNextSessionId:I

.field private mNextTransactionId:S

.field private mSendArrivalSequenceCounter:I

.field private mSendMessageTimeoutMessage:Lcom/android/internal/util/WakeupMessage;

.field private mSendQueueBlocked:Z

.field private mWaitForResponseState:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine$WaitForResponseState;

.field private mWaitState:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine$WaitState;

.field final synthetic this$0:Lcom/android/server/wifi/aware/WifiAwareStateManager;


# direct methods
.method static synthetic -get0(Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;)Landroid/os/Message;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mCurrentCommand:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;)S
    .locals 1

    iget-short v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mCurrentTransactionId:S

    return v0
.end method

.method static synthetic -get2(Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mDataPathConfirmTimeoutMessages:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;)Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine$WaitForResponseState;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mWaitForResponseState:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine$WaitForResponseState;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;)Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine$WaitState;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mWaitState:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine$WaitState;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;Landroid/os/Message;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->processCommand(Landroid/os/Message;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->processNotification(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->processResponse(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->processSendMessageTimeout()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->processTimeout(Landroid/os/Message;)V

    return-void
.end method

.method constructor <init>(Lcom/android/server/wifi/aware/WifiAwareStateManager;Ljava/lang/String;Landroid/os/Looper;)V
    .locals 5

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->this$0:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    invoke-direct {p0, p2, p3}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;Landroid/os/Looper;)V

    new-instance v0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine$DefaultState;

    invoke-direct {v0, p0, v2}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine$DefaultState;-><init>(Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine$DefaultState;)V

    iput-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mDefaultState:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine$DefaultState;

    new-instance v0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine$WaitState;

    invoke-direct {v0, p0, v2}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine$WaitState;-><init>(Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine$WaitState;)V

    iput-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mWaitState:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine$WaitState;

    new-instance v0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine$WaitForResponseState;

    invoke-direct {v0, p0, v2}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine$WaitForResponseState;-><init>(Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine$WaitForResponseState;)V

    iput-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mWaitForResponseState:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine$WaitForResponseState;

    iput-short v3, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mNextTransactionId:S

    iput v3, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mNextSessionId:I

    iput-short v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mCurrentTransactionId:S

    iput v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mSendArrivalSequenceCounter:I

    iput-boolean v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mSendQueueBlocked:Z

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mHostQueuedSendMessages:Landroid/util/SparseArray;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mFwQueuedSendMessages:Ljava/util/Map;

    new-instance v0, Lcom/android/internal/util/WakeupMessage;

    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->this$0:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    invoke-static {v1}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->-get1(Lcom/android/server/wifi/aware/WifiAwareStateManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const-string/jumbo v3, "WifiAwareStateManager HAL Send Message Timeout"

    const/4 v4, 0x5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/util/WakeupMessage;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mSendMessageTimeoutMessage:Lcom/android/internal/util/WakeupMessage;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mDataPathConfirmTimeoutMessages:Ljava/util/Map;

    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mDefaultState:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine$DefaultState;

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->addState(Lcom/android/internal/util/State;)V

    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mWaitState:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine$WaitState;

    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mDefaultState:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine$DefaultState;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mWaitForResponseState:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine$WaitForResponseState;

    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mDefaultState:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine$DefaultState;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mWaitState:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine$WaitState;

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->setInitialState(Lcom/android/internal/util/State;)V

    return-void
.end method

.method private processCommand(Landroid/os/Message;)Z
    .locals 45

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mCurrentCommand:Landroid/os/Message;

    if-eqz v2, :cond_0

    const-string/jumbo v2, "WifiAwareStateManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "processCommand: receiving a command (msg="

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v11, ") but current (previous) command isn\'t null (prev_msg="

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mCurrentCommand:Landroid/os/Message;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v11, ")"

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mCurrentCommand:Landroid/os/Message;

    :cond_0
    move-object/from16 v0, p0

    iget-short v2, v0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mNextTransactionId:S

    add-int/lit8 v3, v2, 0x1

    int-to-short v3, v3

    move-object/from16 v0, p0

    iput-short v3, v0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mNextTransactionId:S

    int-to-short v2, v2

    move-object/from16 v0, p0

    iput-short v2, v0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mCurrentTransactionId:S

    const/16 v44, 0x1

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    packed-switch v2, :pswitch_data_0

    const/16 v44, 0x0

    const-string/jumbo v2, "WifiAwareStateManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "processCommand: this isn\'t a COMMAND -- msg="

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    if-nez v44, :cond_5

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-short v2, v0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mCurrentTransactionId:S

    :goto_1
    return v44

    :pswitch_0
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg2:I

    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/net/wifi/aware/IWifiAwareEventCallback;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "config"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v9

    check-cast v9, Landroid/net/wifi/aware/ConfigRequest;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "uid"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "pid"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "calling_package"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "notify_identity_chg"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->this$0:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    move-object/from16 v0, p0

    iget-short v3, v0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mCurrentTransactionId:S

    invoke-static/range {v2 .. v10}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->-wrap0(Lcom/android/server/wifi/aware/WifiAwareStateManager;SIIILjava/lang/String;Landroid/net/wifi/aware/IWifiAwareEventCallback;Landroid/net/wifi/aware/ConfigRequest;Z)Z

    move-result v44

    goto :goto_0

    :pswitch_1
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg2:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->this$0:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    move-object/from16 v0, p0

    iget-short v3, v0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mCurrentTransactionId:S

    invoke-static {v2, v3, v4}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->-wrap1(Lcom/android/server/wifi/aware/WifiAwareStateManager;SI)Z

    move-result v44

    goto :goto_0

    :pswitch_2
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg2:I

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->this$0:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    invoke-static {v2, v4, v14}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->-wrap33(Lcom/android/server/wifi/aware/WifiAwareStateManager;II)V

    const/16 v44, 0x0

    goto :goto_0

    :pswitch_3
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg2:I

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v36, v0

    check-cast v36, Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "config"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v39

    check-cast v39, Landroid/net/wifi/aware/PublishConfig;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->this$0:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    move-object/from16 v0, p0

    iget-short v3, v0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mCurrentTransactionId:S

    move-object/from16 v0, v39

    move-object/from16 v1, v36

    invoke-static {v2, v3, v4, v0, v1}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->-wrap4(Lcom/android/server/wifi/aware/WifiAwareStateManager;SILandroid/net/wifi/aware/PublishConfig;Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;)Z

    move-result v44

    goto/16 :goto_0

    :pswitch_4
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg2:I

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "session_id"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v39, v0

    check-cast v39, Landroid/net/wifi/aware/PublishConfig;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->this$0:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    move-object/from16 v0, p0

    iget-short v3, v0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mCurrentTransactionId:S

    move-object/from16 v0, v39

    invoke-static {v2, v3, v4, v14, v0}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->-wrap8(Lcom/android/server/wifi/aware/WifiAwareStateManager;SIILandroid/net/wifi/aware/PublishConfig;)Z

    move-result v44

    goto/16 :goto_0

    :pswitch_5
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg2:I

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v36, v0

    check-cast v36, Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "config"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v43

    check-cast v43, Landroid/net/wifi/aware/SubscribeConfig;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->this$0:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    move-object/from16 v0, p0

    iget-short v3, v0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mCurrentTransactionId:S

    move-object/from16 v0, v43

    move-object/from16 v1, v36

    invoke-static {v2, v3, v4, v0, v1}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->-wrap7(Lcom/android/server/wifi/aware/WifiAwareStateManager;SILandroid/net/wifi/aware/SubscribeConfig;Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;)Z

    move-result v44

    goto/16 :goto_0

    :pswitch_6
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg2:I

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "session_id"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v43, v0

    check-cast v43, Landroid/net/wifi/aware/SubscribeConfig;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->this$0:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    move-object/from16 v0, p0

    iget-short v3, v0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mCurrentTransactionId:S

    move-object/from16 v0, v43

    invoke-static {v2, v3, v4, v14, v0}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->-wrap9(Lcom/android/server/wifi/aware/WifiAwareStateManager;SIILandroid/net/wifi/aware/SubscribeConfig;)Z

    move-result v44

    goto/16 :goto_0

    :pswitch_7
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v42

    move-object/from16 v0, v42

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/os/Message;->copyFrom(Landroid/os/Message;)V

    invoke-virtual/range {v42 .. v42}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "message_arrival_seq"

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mSendArrivalSequenceCounter:I

    invoke-virtual {v2, v3, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mHostQueuedSendMessages:Landroid/util/SparseArray;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mSendArrivalSequenceCounter:I

    move-object/from16 v0, v42

    invoke-virtual {v2, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mSendArrivalSequenceCounter:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mSendArrivalSequenceCounter:I

    const/16 v44, 0x0

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mSendQueueBlocked:Z

    if-nez v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->this$0:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    invoke-static {v2}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->-wrap34(Lcom/android/server/wifi/aware/WifiAwareStateManager;)V

    goto/16 :goto_0

    :pswitch_8
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mSendQueueBlocked:Z

    if-nez v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mHostQueuedSendMessages:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    const/16 v44, 0x0

    goto/16 :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mHostQueuedSendMessages:Landroid/util/SparseArray;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Landroid/os/Message;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mHostQueuedSendMessages:Landroid/util/SparseArray;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->removeAt(I)V

    invoke-virtual/range {v41 .. v41}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v37

    move-object/from16 v0, v41

    iget v4, v0, Landroid/os/Message;->arg2:I

    invoke-virtual/range {v41 .. v41}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "session_id"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v14

    const-string/jumbo v2, "message_peer_id"

    move-object/from16 v0, v37

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v15

    const-string/jumbo v2, "message"

    move-object/from16 v0, v37

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v16

    const-string/jumbo v2, "message_id"

    move-object/from16 v0, v37

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v17

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "send_message"

    move-object/from16 v0, v41

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->this$0:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    move-object/from16 v0, p0

    iget-short v12, v0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mCurrentTransactionId:S

    move v13, v4

    invoke-static/range {v11 .. v17}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->-wrap6(Lcom/android/server/wifi/aware/WifiAwareStateManager;SIII[BI)Z

    move-result v44

    goto/16 :goto_0

    :pswitch_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->this$0:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    invoke-static {v2}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->-wrap12(Lcom/android/server/wifi/aware/WifiAwareStateManager;)V

    const/16 v44, 0x0

    goto/16 :goto_0

    :pswitch_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->this$0:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    invoke-static {v2}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->-wrap11(Lcom/android/server/wifi/aware/WifiAwareStateManager;)V

    const/16 v44, 0x0

    goto/16 :goto_0

    :pswitch_b
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v37

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg2:I

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v38, v0

    check-cast v38, [Landroid/net/wifi/RttManager$RttParams;

    const-string/jumbo v2, "session_id"

    move-object/from16 v0, v37

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v14

    const-string/jumbo v2, "ranging_id"

    move-object/from16 v0, v37

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v40

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->this$0:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    move-object/from16 v0, v38

    move/from16 v1, v40

    invoke-static {v2, v4, v14, v0, v1}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->-wrap32(Lcom/android/server/wifi/aware/WifiAwareStateManager;II[Landroid/net/wifi/RttManager$RttParams;I)V

    const/16 v44, 0x0

    goto/16 :goto_0

    :pswitch_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->this$0:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    invoke-static {v2}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->-get0(Lcom/android/server/wifi/aware/WifiAwareStateManager;)Lcom/android/server/wifi/aware/Capabilities;

    move-result-object v2

    if-nez v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->this$0:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    invoke-static {v2}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->-get3(Lcom/android/server/wifi/aware/WifiAwareStateManager;)Lcom/android/server/wifi/aware/WifiAwareNativeApi;

    move-result-object v2

    move-object/from16 v0, p0

    iget-short v3, v0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mCurrentTransactionId:S

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/aware/WifiAwareNativeApi;->getCapabilities(S)Z

    move-result v44

    goto/16 :goto_0

    :cond_4
    const/16 v44, 0x0

    goto/16 :goto_0

    :pswitch_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->this$0:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    invoke-static {v2}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->-get2(Lcom/android/server/wifi/aware/WifiAwareStateManager;)Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->createAllInterfaces()V

    const/16 v44, 0x0

    goto/16 :goto_0

    :pswitch_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->this$0:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    invoke-static {v2}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->-get2(Lcom/android/server/wifi/aware/WifiAwareStateManager;)Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->deleteAllInterfaces()V

    const/16 v44, 0x0

    goto/16 :goto_0

    :pswitch_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->this$0:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    invoke-static {v2}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->-get3(Lcom/android/server/wifi/aware/WifiAwareStateManager;)Lcom/android/server/wifi/aware/WifiAwareNativeApi;

    move-result-object v3

    move-object/from16 v0, p0

    iget-short v11, v0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mCurrentTransactionId:S

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v11, v2}, Lcom/android/server/wifi/aware/WifiAwareNativeApi;->createAwareNetworkInterface(SLjava/lang/String;)Z

    move-result v44

    goto/16 :goto_0

    :pswitch_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->this$0:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    invoke-static {v2}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->-get3(Lcom/android/server/wifi/aware/WifiAwareStateManager;)Lcom/android/server/wifi/aware/WifiAwareNativeApi;

    move-result-object v3

    move-object/from16 v0, p0

    iget-short v11, v0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mCurrentTransactionId:S

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v11, v2}, Lcom/android/server/wifi/aware/WifiAwareNativeApi;->deleteAwareNetworkInterface(SLjava/lang/String;)Z

    move-result v44

    goto/16 :goto_0

    :pswitch_11
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v37

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;

    const-string/jumbo v2, "peer_id"

    move-object/from16 v0, v37

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v15

    const-string/jumbo v2, "channel_request_type"

    move-object/from16 v0, v37

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v22

    const-string/jumbo v2, "channel"

    move-object/from16 v0, v37

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v23

    const-string/jumbo v2, "mac_address"

    move-object/from16 v0, v37

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v24

    const-string/jumbo v2, "interface_name"

    move-object/from16 v0, v37

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    const-string/jumbo v2, "pmk"

    move-object/from16 v0, v37

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v26

    const-string/jumbo v2, "passphrase"

    move-object/from16 v0, v37

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->this$0:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mCurrentTransactionId:S

    move/from16 v19, v0

    move/from16 v21, v15

    invoke-static/range {v18 .. v27}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->-wrap3(Lcom/android/server/wifi/aware/WifiAwareStateManager;SLandroid/net/wifi/aware/WifiAwareNetworkSpecifier;III[BLjava/lang/String;[BLjava/lang/String;)Z

    move-result v44

    if-eqz v44, :cond_1

    new-instance v28, Lcom/android/internal/util/WakeupMessage;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->this$0:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    invoke-static {v2}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->-get1(Lcom/android/server/wifi/aware/WifiAwareStateManager;)Landroid/content/Context;

    move-result-object v29

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v30

    const-string/jumbo v31, "WifiAwareStateManager HAL Data Path Confirm Timeout"

    const/16 v32, 0x6

    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v35, v20

    invoke-direct/range {v28 .. v35}, Lcom/android/internal/util/WakeupMessage;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;IIILjava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mDataPathConfirmTimeoutMessages:Ljava/util/Map;

    move-object/from16 v0, v20

    move-object/from16 v1, v28

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v12, 0x1388

    add-long/2addr v2, v12

    move-object/from16 v0, v28

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/util/WakeupMessage;->schedule(J)V

    goto/16 :goto_0

    :pswitch_12
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v37

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v32, v0

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v31

    const-string/jumbo v2, "interface_name"

    move-object/from16 v0, v37

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    const-string/jumbo v2, "pmk"

    move-object/from16 v0, v37

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v26

    const-string/jumbo v2, "passphrase"

    move-object/from16 v0, v37

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->this$0:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mCurrentTransactionId:S

    move/from16 v30, v0

    move-object/from16 v33, v25

    move-object/from16 v34, v26

    move-object/from16 v35, v27

    invoke-static/range {v29 .. v35}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->-wrap5(Lcom/android/server/wifi/aware/WifiAwareStateManager;SZILjava/lang/String;[BLjava/lang/String;)Z

    move-result v44

    goto/16 :goto_0

    :pswitch_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->this$0:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    move-object/from16 v0, p0

    iget-short v3, v0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mCurrentTransactionId:S

    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->arg2:I

    invoke-static {v2, v3, v11}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->-wrap2(Lcom/android/server/wifi/aware/WifiAwareStateManager;SI)Z

    move-result v44

    goto/16 :goto_0

    :cond_5
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mCurrentCommand:Landroid/os/Message;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mCurrentCommand:Landroid/os/Message;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/os/Message;->copyFrom(Landroid/os/Message;)V

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_8
    .end packed-switch
.end method

.method private processNotification(Landroid/os/Message;)V
    .locals 27

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    packed-switch v2, :pswitch_data_0

    const-string/jumbo v2, "WifiAwareStateManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "processNotification: this isn\'t a NOTIFICATION -- msg="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_0
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, [B

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->this$0:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    move-object/from16 v0, v20

    invoke-static {v2, v0}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->-wrap23(Lcom/android/server/wifi/aware/WifiAwareStateManager;[B)V

    :cond_0
    :goto_0
    return-void

    :pswitch_1
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v18, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, [B

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->this$0:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    move/from16 v0, v18

    move-object/from16 v1, v17

    invoke-static {v2, v0, v1}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->-wrap15(Lcom/android/server/wifi/aware/WifiAwareStateManager;I[B)V

    goto :goto_0

    :pswitch_2
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg2:I

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v9, "req_instance_id"

    invoke-virtual {v2, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v9, "mac_address"

    invoke-virtual {v2, v9}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v9, "ssi_data"

    invoke-virtual {v2, v9}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v9, "filter_data"

    invoke-virtual {v2, v9}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->this$0:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    invoke-static/range {v2 .. v7}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->-wrap24(Lcom/android/server/wifi/aware/WifiAwareStateManager;II[B[B[B)V

    goto :goto_0

    :pswitch_3
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg2:I

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v23

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v9, "session_type"

    invoke-virtual {v2, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v19

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->this$0:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    move/from16 v0, v19

    move/from16 v1, v23

    invoke-static {v2, v3, v0, v1}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->-wrap31(Lcom/android/server/wifi/aware/WifiAwareStateManager;IZI)V

    goto :goto_0

    :pswitch_4
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg2:I

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v9, "mac_address"

    invoke-virtual {v2, v9}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v9, "message_data"

    invoke-virtual {v2, v9}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->this$0:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    move-object/from16 v0, v21

    invoke-static {v2, v3, v4, v5, v0}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->-wrap25(Lcom/android/server/wifi/aware/WifiAwareStateManager;II[B[B)V

    goto/16 :goto_0

    :pswitch_5
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->this$0:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    invoke-static {v2}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->-wrap13(Lcom/android/server/wifi/aware/WifiAwareStateManager;)V

    goto/16 :goto_0

    :pswitch_6
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg2:I

    int-to-short v0, v2

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mFwQueuedSendMessages:Ljava/util/Map;

    invoke-static/range {v26 .. v26}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v9

    invoke-interface {v2, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/os/Message;

    if-nez v22, :cond_1

    const-string/jumbo v2, "WifiAwareStateManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "processNotification: NOTIFICATION_TYPE_ON_MESSAGE_SEND_SUCCESS: transactionId="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, v26

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " - no such queued send command (timed-out?)"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mSendQueueBlocked:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->this$0:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    invoke-static {v2}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->-wrap34(Lcom/android/server/wifi/aware/WifiAwareStateManager;)V

    goto/16 :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mFwQueuedSendMessages:Ljava/util/Map;

    invoke-static/range {v26 .. v26}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v9

    invoke-interface {v2, v9}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->updateSendMessageTimeout()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->this$0:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    move-object/from16 v0, v22

    invoke-static {v2, v0}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->-wrap27(Lcom/android/server/wifi/aware/WifiAwareStateManager;Landroid/os/Message;)V

    goto :goto_1

    :pswitch_7
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg2:I

    int-to-short v0, v2

    move/from16 v26, v0

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v23

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mFwQueuedSendMessages:Ljava/util/Map;

    invoke-static/range {v26 .. v26}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v9

    invoke-interface {v2, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/os/Message;

    if-nez v25, :cond_2

    const-string/jumbo v2, "WifiAwareStateManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "processNotification: NOTIFICATION_TYPE_ON_MESSAGE_SEND_FAIL: transactionId="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, v26

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " - no such queued send command (timed-out?)"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mFwQueuedSendMessages:Ljava/util/Map;

    invoke-static/range {v26 .. v26}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v9

    invoke-interface {v2, v9}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->updateSendMessageTimeout()V

    invoke-virtual/range {v25 .. v25}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v9, "retry_count"

    invoke-virtual {v2, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v24

    if-lez v24, :cond_3

    const/16 v2, 0x9

    move/from16 v0, v23

    if-ne v0, v2, :cond_3

    invoke-virtual/range {v25 .. v25}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v9, "retry_count"

    add-int/lit8 v10, v24, -0x1

    invoke-virtual {v2, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual/range {v25 .. v25}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v9, "message_arrival_seq"

    invoke-virtual {v2, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mHostQueuedSendMessages:Landroid/util/SparseArray;

    move/from16 v0, v16

    move-object/from16 v1, v25

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :goto_2
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mSendQueueBlocked:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->this$0:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    invoke-static {v2}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->-wrap34(Lcom/android/server/wifi/aware/WifiAwareStateManager;)V

    goto/16 :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->this$0:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    move-object/from16 v0, v25

    move/from16 v1, v23

    invoke-static {v2, v0, v1}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->-wrap26(Lcom/android/server/wifi/aware/WifiAwareStateManager;Landroid/os/Message;I)V

    goto :goto_2

    :pswitch_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->this$0:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    invoke-static {v2}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->-get2(Lcom/android/server/wifi/aware/WifiAwareStateManager;)Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;

    move-result-object v9

    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg2:I

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v11, "mac_address"

    invoke-virtual {v2, v11}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v11

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v9, v10, v11, v2}, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->onDataPathRequest(I[BI)Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;

    move-result-object v15

    if-eqz v15, :cond_0

    new-instance v8, Lcom/android/internal/util/WakeupMessage;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->this$0:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    invoke-static {v2}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->-get1(Lcom/android/server/wifi/aware/WifiAwareStateManager;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v10

    const-string/jumbo v11, "WifiAwareStateManager HAL Data Path Confirm Timeout"

    const/4 v12, 0x6

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-direct/range {v8 .. v15}, Lcom/android/internal/util/WakeupMessage;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;IIILjava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mDataPathConfirmTimeoutMessages:Ljava/util/Map;

    invoke-interface {v2, v15, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    const-wide/16 v12, 0x1388

    add-long/2addr v10, v12

    invoke-virtual {v8, v10, v11}, Lcom/android/internal/util/WakeupMessage;->schedule(J)V

    goto/16 :goto_0

    :pswitch_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->this$0:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    invoke-static {v2}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->-get2(Lcom/android/server/wifi/aware/WifiAwareStateManager;)Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;

    move-result-object v9

    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg2:I

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v11, "mac_address"

    invoke-virtual {v2, v11}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v12, "success_flag"

    invoke-virtual {v2, v12}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v12

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v13, "status_code"

    invoke-virtual {v2, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v13

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v14, "message_data"

    invoke-virtual {v2, v14}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v14

    invoke-virtual/range {v9 .. v14}, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->onDataPathConfirm(I[BZI[B)Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;

    move-result-object v15

    if-eqz v15, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mDataPathConfirmTimeoutMessages:Ljava/util/Map;

    invoke-interface {v2, v15}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/util/WakeupMessage;

    if-eqz v8, :cond_0

    invoke-virtual {v8}, Lcom/android/internal/util/WakeupMessage;->cancel()V

    goto/16 :goto_0

    :pswitch_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->this$0:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    invoke-static {v2}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->-get2(Lcom/android/server/wifi/aware/WifiAwareStateManager;)Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;

    move-result-object v2

    move-object/from16 v0, p1

    iget v9, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {v2, v9}, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->onDataPathEnd(I)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x12d
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
    .end packed-switch
.end method

.method private processResponse(Landroid/os/Message;)V
    .locals 12

    const/4 v7, 0x1

    const/4 v11, 0x0

    const/4 v10, 0x0

    iget-object v5, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mCurrentCommand:Landroid/os/Message;

    if-nez v5, :cond_0

    const-string/jumbo v5, "WifiAwareStateManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "processResponse: no existing command stored!? msg="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    iput-short v10, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mCurrentTransactionId:S

    return-void

    :cond_0
    iget v5, p1, Landroid/os/Message;->arg1:I

    packed-switch v5, :pswitch_data_0

    const-string/jumbo v5, "WifiAwareStateManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "processResponse: this isn\'t a RESPONSE -- msg="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v11, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mCurrentCommand:Landroid/os/Message;

    iput-short v10, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mCurrentTransactionId:S

    return-void

    :pswitch_0
    iget-object v5, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->this$0:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    iget-object v6, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mCurrentCommand:Landroid/os/Message;

    invoke-static {v5, v6}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->-wrap16(Lcom/android/server/wifi/aware/WifiAwareStateManager;Landroid/os/Message;)V

    :cond_1
    :goto_0
    iput-object v11, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mCurrentCommand:Landroid/os/Message;

    iput-short v10, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mCurrentTransactionId:S

    return-void

    :pswitch_1
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v5, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->this$0:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    iget-object v6, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mCurrentCommand:Landroid/os/Message;

    invoke-static {v5, v6, v3}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->-wrap17(Lcom/android/server/wifi/aware/WifiAwareStateManager;Landroid/os/Message;I)V

    goto :goto_0

    :pswitch_2
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    const-string/jumbo v6, "session_type"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iget-object v5, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->this$0:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    iget-object v6, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mCurrentCommand:Landroid/os/Message;

    invoke-static {v5, v6, v2, v1}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->-wrap30(Lcom/android/server/wifi/aware/WifiAwareStateManager;Landroid/os/Message;IZ)V

    goto :goto_0

    :pswitch_3
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    const-string/jumbo v6, "session_type"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iget-object v5, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->this$0:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    iget-object v6, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mCurrentCommand:Landroid/os/Message;

    invoke-static {v5, v6, v1, v3}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->-wrap29(Lcom/android/server/wifi/aware/WifiAwareStateManager;Landroid/os/Message;ZI)V

    goto :goto_0

    :pswitch_4
    iget-object v5, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mCurrentCommand:Landroid/os/Message;

    invoke-virtual {v5}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    const-string/jumbo v6, "send_message"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/os/Message;

    invoke-virtual {v4}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    const-string/jumbo v6, "message_queue_time"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    invoke-virtual {v5, v6, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget-object v5, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mFwQueuedSendMessages:Ljava/util/Map;

    iget-short v6, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mCurrentTransactionId:S

    invoke-static {v6}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v6

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->updateSendMessageTimeout()V

    iget-boolean v5, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mSendQueueBlocked:Z

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->this$0:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    invoke-static {v5}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->-wrap34(Lcom/android/server/wifi/aware/WifiAwareStateManager;)V

    goto :goto_0

    :pswitch_5
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v5, 0xb

    if-ne v3, v5, :cond_2

    iget-object v5, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mCurrentCommand:Landroid/os/Message;

    invoke-virtual {v5}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    const-string/jumbo v6, "send_message"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/os/Message;

    invoke-virtual {v4}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    const-string/jumbo v6, "message_arrival_seq"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iget-object v5, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mHostQueuedSendMessages:Landroid/util/SparseArray;

    invoke-virtual {v5, v0, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iput-boolean v7, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mSendQueueBlocked:Z

    goto/16 :goto_0

    :cond_2
    iget-object v5, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mCurrentCommand:Landroid/os/Message;

    invoke-virtual {v5}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    const-string/jumbo v6, "send_message"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/os/Message;

    iget-object v5, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->this$0:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    invoke-static {v5, v4, v7}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->-wrap26(Lcom/android/server/wifi/aware/WifiAwareStateManager;Landroid/os/Message;I)V

    iget-boolean v5, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mSendQueueBlocked:Z

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->this$0:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    invoke-static {v5}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->-wrap34(Lcom/android/server/wifi/aware/WifiAwareStateManager;)V

    goto/16 :goto_0

    :pswitch_6
    iget-object v6, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->this$0:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Lcom/android/server/wifi/aware/Capabilities;

    invoke-static {v6, v5}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->-wrap14(Lcom/android/server/wifi/aware/WifiAwareStateManager;Lcom/android/server/wifi/aware/Capabilities;)V

    goto/16 :goto_0

    :pswitch_7
    iget-object v5, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->this$0:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    iget-object v6, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mCurrentCommand:Landroid/os/Message;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v7

    const-string/jumbo v8, "success_flag"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v8

    const-string/jumbo v9, "status_code"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v5, v6, v7, v8}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->-wrap18(Lcom/android/server/wifi/aware/WifiAwareStateManager;Landroid/os/Message;ZI)V

    goto/16 :goto_0

    :pswitch_8
    iget-object v5, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->this$0:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    iget-object v6, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mCurrentCommand:Landroid/os/Message;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v7

    const-string/jumbo v8, "success_flag"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v8

    const-string/jumbo v9, "status_code"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v5, v6, v7, v8}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->-wrap19(Lcom/android/server/wifi/aware/WifiAwareStateManager;Landroid/os/Message;ZI)V

    goto/16 :goto_0

    :pswitch_9
    iget-object v6, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->this$0:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    iget-object v7, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mCurrentCommand:Landroid/os/Message;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v6, v7, v5}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->-wrap22(Lcom/android/server/wifi/aware/WifiAwareStateManager;Landroid/os/Message;I)V

    goto/16 :goto_0

    :pswitch_a
    iget-object v6, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->this$0:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    iget-object v7, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mCurrentCommand:Landroid/os/Message;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v6, v7, v5}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->-wrap21(Lcom/android/server/wifi/aware/WifiAwareStateManager;Landroid/os/Message;I)V

    goto/16 :goto_0

    :pswitch_b
    iget-object v5, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->this$0:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    iget-object v6, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mCurrentCommand:Landroid/os/Message;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v7

    const-string/jumbo v8, "success_flag"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v8

    const-string/jumbo v9, "status_code"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v5, v6, v7, v8}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->-wrap28(Lcom/android/server/wifi/aware/WifiAwareStateManager;Landroid/os/Message;ZI)V

    goto/16 :goto_0

    :pswitch_c
    iget-object v5, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->this$0:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    iget-object v6, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mCurrentCommand:Landroid/os/Message;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v7

    const-string/jumbo v8, "success_flag"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v8

    const-string/jumbo v9, "status_code"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v5, v6, v7, v8}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->-wrap20(Lcom/android/server/wifi/aware/WifiAwareStateManager;Landroid/os/Message;ZI)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0xc8
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
        :pswitch_c
    .end packed-switch
.end method

.method private processSendMessageTimeout()V
    .locals 12

    const/4 v3, 0x1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v9, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mFwQueuedSendMessages:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Short;

    invoke-virtual {v9}, Ljava/lang/Short;->shortValue()S

    move-result v8

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Message;

    invoke-virtual {v5}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v9

    const-string/jumbo v10, "message_queue_time"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    if-nez v3, :cond_0

    const-wide/16 v10, 0x2710

    add-long/2addr v10, v6

    cmp-long v9, v10, v0

    if-gtz v9, :cond_1

    :cond_0
    iget-object v9, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->this$0:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    const/4 v10, 0x1

    invoke-static {v9, v5, v10}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->-wrap26(Lcom/android/server/wifi/aware/WifiAwareStateManager;Landroid/os/Message;I)V

    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->updateSendMessageTimeout()V

    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mSendQueueBlocked:Z

    iget-object v9, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->this$0:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    invoke-static {v9}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->-wrap34(Lcom/android/server/wifi/aware/WifiAwareStateManager;)V

    return-void
.end method

.method private processTimeout(Landroid/os/Message;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mCurrentCommand:Landroid/os/Message;

    if-nez v1, :cond_0

    const-string/jumbo v1, "WifiAwareStateManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "processTimeout: no existing command stored!? msg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    iput-short v4, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mCurrentTransactionId:S

    return-void

    :cond_0
    iget v1, p1, Landroid/os/Message;->arg1:I

    packed-switch v1, :pswitch_data_0

    const-string/jumbo v1, "WifiAwareStateManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "processTimeout: this isn\'t a COMMAND -- msg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iput-object v5, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mCurrentCommand:Landroid/os/Message;

    iput-short v4, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mCurrentTransactionId:S

    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->this$0:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    iget-object v2, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mCurrentCommand:Landroid/os/Message;

    invoke-static {v1, v2, v3}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->-wrap17(Lcom/android/server/wifi/aware/WifiAwareStateManager;Landroid/os/Message;I)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->this$0:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    iget-object v2, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mCurrentCommand:Landroid/os/Message;

    invoke-static {v1, v2, v3}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->-wrap17(Lcom/android/server/wifi/aware/WifiAwareStateManager;Landroid/os/Message;I)V

    goto :goto_0

    :pswitch_2
    const-string/jumbo v1, "WifiAwareStateManager"

    const-string/jumbo v2, "processTimeout: TERMINATE_SESSION - shouldn\'t be waiting!"

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_3
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->this$0:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    iget-object v2, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mCurrentCommand:Landroid/os/Message;

    invoke-static {v1, v2, v3, v3}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->-wrap29(Lcom/android/server/wifi/aware/WifiAwareStateManager;Landroid/os/Message;ZI)V

    goto :goto_0

    :pswitch_4
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->this$0:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    iget-object v2, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mCurrentCommand:Landroid/os/Message;

    invoke-static {v1, v2, v3, v3}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->-wrap29(Lcom/android/server/wifi/aware/WifiAwareStateManager;Landroid/os/Message;ZI)V

    goto :goto_0

    :pswitch_5
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->this$0:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    iget-object v2, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mCurrentCommand:Landroid/os/Message;

    invoke-static {v1, v2, v4, v3}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->-wrap29(Lcom/android/server/wifi/aware/WifiAwareStateManager;Landroid/os/Message;ZI)V

    goto :goto_0

    :pswitch_6
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->this$0:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    iget-object v2, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mCurrentCommand:Landroid/os/Message;

    invoke-static {v1, v2, v4, v3}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->-wrap29(Lcom/android/server/wifi/aware/WifiAwareStateManager;Landroid/os/Message;ZI)V

    goto :goto_0

    :pswitch_7
    const-string/jumbo v1, "WifiAwareStateManager"

    const-string/jumbo v2, "processTimeout: ENQUEUE_SEND_MESSAGE - shouldn\'t be waiting!"

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_8
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mCurrentCommand:Landroid/os/Message;

    invoke-virtual {v1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "send_message"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/Message;

    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->this$0:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    invoke-static {v1, v0, v3}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->-wrap26(Lcom/android/server/wifi/aware/WifiAwareStateManager;Landroid/os/Message;I)V

    iput-boolean v4, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mSendQueueBlocked:Z

    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->this$0:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    invoke-static {v1}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->-wrap34(Lcom/android/server/wifi/aware/WifiAwareStateManager;)V

    goto :goto_0

    :pswitch_9
    const-string/jumbo v1, "WifiAwareStateManager"

    const-string/jumbo v2, "processTimeout: ENABLE_USAGE - shouldn\'t be waiting!"

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_a
    const-string/jumbo v1, "WifiAwareStateManager"

    const-string/jumbo v2, "processTimeout: DISABLE_USAGE - shouldn\'t be waiting!"

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_b
    const-string/jumbo v1, "WifiAwareStateManager"

    const-string/jumbo v2, "processTimeout: START_RANGING - shouldn\'t be waiting!"

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_c
    const-string/jumbo v1, "WifiAwareStateManager"

    const-string/jumbo v2, "processTimeout: GET_CAPABILITIES timed-out - strange, will try again when next enabled!?"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_d
    const-string/jumbo v1, "WifiAwareStateManager"

    const-string/jumbo v2, "processTimeout: CREATE_ALL_DATA_PATH_INTERFACES - shouldn\'t be waiting!"

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_e
    const-string/jumbo v1, "WifiAwareStateManager"

    const-string/jumbo v2, "processTimeout: DELETE_ALL_DATA_PATH_INTERFACES - shouldn\'t be waiting!"

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_f
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->this$0:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    iget-object v2, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mCurrentCommand:Landroid/os/Message;

    invoke-static {v1, v2, v4, v4}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->-wrap18(Lcom/android/server/wifi/aware/WifiAwareStateManager;Landroid/os/Message;ZI)V

    goto/16 :goto_0

    :pswitch_10
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->this$0:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    iget-object v2, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mCurrentCommand:Landroid/os/Message;

    invoke-static {v1, v2, v4, v4}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->-wrap19(Lcom/android/server/wifi/aware/WifiAwareStateManager;Landroid/os/Message;ZI)V

    goto/16 :goto_0

    :pswitch_11
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->this$0:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    iget-object v2, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mCurrentCommand:Landroid/os/Message;

    invoke-static {v1, v2, v4}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->-wrap21(Lcom/android/server/wifi/aware/WifiAwareStateManager;Landroid/os/Message;I)V

    goto/16 :goto_0

    :pswitch_12
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->this$0:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    iget-object v2, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mCurrentCommand:Landroid/os/Message;

    invoke-static {v1, v2, v4, v4}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->-wrap28(Lcom/android/server/wifi/aware/WifiAwareStateManager;Landroid/os/Message;ZI)V

    goto/16 :goto_0

    :pswitch_13
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->this$0:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    iget-object v2, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mCurrentCommand:Landroid/os/Message;

    invoke-static {v1, v2, v4, v4}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->-wrap20(Lcom/android/server/wifi/aware/WifiAwareStateManager;Landroid/os/Message;ZI)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_8
    .end packed-switch
.end method

.method private updateSendMessageTimeout()V
    .locals 8

    iget-object v2, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mFwQueuedSendMessages:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Message;

    iget-object v2, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mSendMessageTimeoutMessage:Lcom/android/internal/util/WakeupMessage;

    invoke-virtual {v1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "message_queue_time"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    const-wide/16 v6, 0x2710

    add-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Lcom/android/internal/util/WakeupMessage;->schedule(J)V

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mSendMessageTimeoutMessage:Lcom/android/internal/util/WakeupMessage;

    invoke-virtual {v2}, Lcom/android/internal/util/WakeupMessage;->cancel()V

    goto :goto_0
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "WifiAwareStateMachine:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mNextTransactionId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-short v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mNextTransactionId:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mNextSessionId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mNextSessionId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mCurrentCommand: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mCurrentCommand:Landroid/os/Message;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mCurrentTransaction: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-short v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mCurrentTransactionId:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mSendQueueBlocked: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mSendQueueBlocked:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mSendArrivalSequenceCounter: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mSendArrivalSequenceCounter:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mHostQueuedSendMessages: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mHostQueuedSendMessages:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mFwQueuedSendMessages: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mFwQueuedSendMessages:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/util/StateMachine;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method protected getLogRecString(Landroid/os/Message;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->-wrap10(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-short v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mCurrentTransactionId:S

    if-eqz v1, :cond_0

    const-string/jumbo v1, " (Transaction ID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-short v2, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mCurrentTransactionId:S

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public onAwareDownCleanupSendQueueState()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mSendQueueBlocked:Z

    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mHostQueuedSendMessages:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mFwQueuedSendMessages:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method
