.class public Lcom/android/server/wifi/aware/WifiAwareStateManager;
.super Ljava/lang/Object;
.source "WifiAwareStateManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;
    }
.end annotation


# static fields
.field private static final ALL_ZERO_MAC:[B

.field private static final COMMAND_TYPE_CONNECT:I = 0x64

.field private static final COMMAND_TYPE_CREATE_ALL_DATA_PATH_INTERFACES:I = 0x70

.field private static final COMMAND_TYPE_CREATE_DATA_PATH_INTERFACE:I = 0x72

.field private static final COMMAND_TYPE_DELETE_ALL_DATA_PATH_INTERFACES:I = 0x71

.field private static final COMMAND_TYPE_DELETE_DATA_PATH_INTERFACE:I = 0x73

.field private static final COMMAND_TYPE_DISABLE_USAGE:I = 0x6d

.field private static final COMMAND_TYPE_DISCONNECT:I = 0x65

.field private static final COMMAND_TYPE_ENABLE_USAGE:I = 0x6c

.field private static final COMMAND_TYPE_END_DATA_PATH:I = 0x76

.field private static final COMMAND_TYPE_ENQUEUE_SEND_MESSAGE:I = 0x6b

.field private static final COMMAND_TYPE_GET_CAPABILITIES:I = 0x6f

.field private static final COMMAND_TYPE_INITIATE_DATA_PATH_SETUP:I = 0x74

.field private static final COMMAND_TYPE_PUBLISH:I = 0x67

.field private static final COMMAND_TYPE_RESPOND_TO_DATA_PATH_SETUP_REQUEST:I = 0x75

.field private static final COMMAND_TYPE_START_RANGING:I = 0x6e

.field private static final COMMAND_TYPE_SUBSCRIBE:I = 0x69

.field private static final COMMAND_TYPE_TERMINATE_SESSION:I = 0x66

.field private static final COMMAND_TYPE_TRANSMIT_NEXT_MESSAGE:I = 0x77

.field private static final COMMAND_TYPE_UPDATE_PUBLISH:I = 0x68

.field private static final COMMAND_TYPE_UPDATE_SUBSCRIBE:I = 0x6a

.field private static final DBG:Z = false

.field public static final HAL_COMMAND_TIMEOUT_TAG:Ljava/lang/String; = "WifiAwareStateManager HAL Command Timeout"

.field public static final HAL_DATA_PATH_CONFIRM_TIMEOUT_TAG:Ljava/lang/String; = "WifiAwareStateManager HAL Data Path Confirm Timeout"

.field public static final HAL_SEND_MESSAGE_TIMEOUT_TAG:Ljava/lang/String; = "WifiAwareStateManager HAL Send Message Timeout"

.field private static final MESSAGE_BUNDLE_KEY_CALLING_PACKAGE:Ljava/lang/String; = "calling_package"

.field private static final MESSAGE_BUNDLE_KEY_CHANNEL:Ljava/lang/String; = "channel"

.field private static final MESSAGE_BUNDLE_KEY_CHANNEL_REQ_TYPE:Ljava/lang/String; = "channel_request_type"

.field private static final MESSAGE_BUNDLE_KEY_CONFIG:Ljava/lang/String; = "config"

.field private static final MESSAGE_BUNDLE_KEY_FILTER_DATA:Ljava/lang/String; = "filter_data"

.field private static final MESSAGE_BUNDLE_KEY_INTERFACE_NAME:Ljava/lang/String; = "interface_name"

.field private static final MESSAGE_BUNDLE_KEY_MAC_ADDRESS:Ljava/lang/String; = "mac_address"

.field private static final MESSAGE_BUNDLE_KEY_MESSAGE:Ljava/lang/String; = "message"

.field private static final MESSAGE_BUNDLE_KEY_MESSAGE_ARRIVAL_SEQ:Ljava/lang/String; = "message_arrival_seq"

.field private static final MESSAGE_BUNDLE_KEY_MESSAGE_DATA:Ljava/lang/String; = "message_data"

.field private static final MESSAGE_BUNDLE_KEY_MESSAGE_ID:Ljava/lang/String; = "message_id"

.field private static final MESSAGE_BUNDLE_KEY_MESSAGE_PEER_ID:Ljava/lang/String; = "message_peer_id"

.field private static final MESSAGE_BUNDLE_KEY_NOTIFY_IDENTITY_CHANGE:Ljava/lang/String; = "notify_identity_chg"

.field private static final MESSAGE_BUNDLE_KEY_PASSPHRASE:Ljava/lang/String; = "passphrase"

.field private static final MESSAGE_BUNDLE_KEY_PEER_ID:Ljava/lang/String; = "peer_id"

.field private static final MESSAGE_BUNDLE_KEY_PID:Ljava/lang/String; = "pid"

.field private static final MESSAGE_BUNDLE_KEY_PMK:Ljava/lang/String; = "pmk"

.field private static final MESSAGE_BUNDLE_KEY_RANGING_ID:Ljava/lang/String; = "ranging_id"

.field private static final MESSAGE_BUNDLE_KEY_REQ_INSTANCE_ID:Ljava/lang/String; = "req_instance_id"

.field private static final MESSAGE_BUNDLE_KEY_RETRY_COUNT:Ljava/lang/String; = "retry_count"

.field private static final MESSAGE_BUNDLE_KEY_SEND_MESSAGE_ENQUEUE_TIME:Ljava/lang/String; = "message_queue_time"

.field private static final MESSAGE_BUNDLE_KEY_SENT_MESSAGE:Ljava/lang/String; = "send_message"

.field private static final MESSAGE_BUNDLE_KEY_SESSION_ID:Ljava/lang/String; = "session_id"

.field private static final MESSAGE_BUNDLE_KEY_SESSION_TYPE:Ljava/lang/String; = "session_type"

.field private static final MESSAGE_BUNDLE_KEY_SSI_DATA:Ljava/lang/String; = "ssi_data"

.field private static final MESSAGE_BUNDLE_KEY_STATUS_CODE:Ljava/lang/String; = "status_code"

.field private static final MESSAGE_BUNDLE_KEY_SUCCESS_FLAG:Ljava/lang/String; = "success_flag"

.field private static final MESSAGE_BUNDLE_KEY_UID:Ljava/lang/String; = "uid"

.field private static final MESSAGE_TYPE_COMMAND:I = 0x1

.field private static final MESSAGE_TYPE_DATA_PATH_TIMEOUT:I = 0x6

.field private static final MESSAGE_TYPE_NOTIFICATION:I = 0x3

.field private static final MESSAGE_TYPE_RESPONSE:I = 0x2

.field private static final MESSAGE_TYPE_RESPONSE_TIMEOUT:I = 0x4

.field private static final MESSAGE_TYPE_SEND_MESSAGE_TIMEOUT:I = 0x5

.field private static final NOTIFICATION_TYPE_AWARE_DOWN:I = 0x132

.field private static final NOTIFICATION_TYPE_CLUSTER_CHANGE:I = 0x12e

.field private static final NOTIFICATION_TYPE_INTERFACE_CHANGE:I = 0x12d

.field private static final NOTIFICATION_TYPE_MATCH:I = 0x12f

.field private static final NOTIFICATION_TYPE_MESSAGE_RECEIVED:I = 0x131

.field private static final NOTIFICATION_TYPE_ON_DATA_PATH_CONFIRM:I = 0x136

.field private static final NOTIFICATION_TYPE_ON_DATA_PATH_END:I = 0x137

.field private static final NOTIFICATION_TYPE_ON_DATA_PATH_REQUEST:I = 0x135

.field private static final NOTIFICATION_TYPE_ON_MESSAGE_SEND_FAIL:I = 0x134

.field private static final NOTIFICATION_TYPE_ON_MESSAGE_SEND_SUCCESS:I = 0x133

.field private static final NOTIFICATION_TYPE_SESSION_TERMINATED:I = 0x130

.field private static final RESPONSE_TYPE_ON_CAPABILITIES_UPDATED:I = 0xce

.field private static final RESPONSE_TYPE_ON_CONFIG_FAIL:I = 0xc9

.field private static final RESPONSE_TYPE_ON_CONFIG_SUCCESS:I = 0xc8

.field private static final RESPONSE_TYPE_ON_CREATE_INTERFACE:I = 0xcf

.field private static final RESPONSE_TYPE_ON_DELETE_INTERFACE:I = 0xd0

.field private static final RESPONSE_TYPE_ON_END_DATA_PATH:I = 0xd4

.field private static final RESPONSE_TYPE_ON_INITIATE_DATA_PATH_FAIL:I = 0xd2

.field private static final RESPONSE_TYPE_ON_INITIATE_DATA_PATH_SUCCESS:I = 0xd1

.field private static final RESPONSE_TYPE_ON_MESSAGE_SEND_QUEUED_FAIL:I = 0xcd

.field private static final RESPONSE_TYPE_ON_MESSAGE_SEND_QUEUED_SUCCESS:I = 0xcc

.field private static final RESPONSE_TYPE_ON_RESPOND_TO_DATA_PATH_SETUP_REQUEST:I = 0xd3

.field private static final RESPONSE_TYPE_ON_SESSION_CONFIG_FAIL:I = 0xcb

.field private static final RESPONSE_TYPE_ON_SESSION_CONFIG_SUCCESS:I = 0xca

.field private static final TAG:Ljava/lang/String; = "WifiAwareStateManager"

.field private static final VDBG:Z

.field private static final sSmToString:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private volatile mCapabilities:Lcom/android/server/wifi/aware/Capabilities;

.field private volatile mCharacteristics:Landroid/net/wifi/aware/Characteristics;

.field private final mClients:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/wifi/aware/WifiAwareClientState;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mCurrentAwareConfiguration:Landroid/net/wifi/aware/ConfigRequest;

.field private mCurrentDiscoveryInterfaceMac:[B

.field private mCurrentIdentityNotification:Z

.field private mDataPathMgr:Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;

.field private mRtt:Lcom/android/server/wifi/aware/WifiAwareRttStateManager;

.field private mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

.field private volatile mUsageEnabled:Z

.field private mWifiAwareNativeApi:Lcom/android/server/wifi/aware/WifiAwareNativeApi;


# direct methods
.method static synthetic -get0(Lcom/android/server/wifi/aware/WifiAwareStateManager;)Lcom/android/server/wifi/aware/Capabilities;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mCapabilities:Lcom/android/server/wifi/aware/Capabilities;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/wifi/aware/WifiAwareStateManager;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/wifi/aware/WifiAwareStateManager;)Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mDataPathMgr:Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/wifi/aware/WifiAwareStateManager;)Lcom/android/server/wifi/aware/WifiAwareNativeApi;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mWifiAwareNativeApi:Lcom/android/server/wifi/aware/WifiAwareNativeApi;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/wifi/aware/WifiAwareStateManager;SIIILjava/lang/String;Landroid/net/wifi/aware/IWifiAwareEventCallback;Landroid/net/wifi/aware/ConfigRequest;Z)Z
    .locals 1

    invoke-direct/range {p0 .. p8}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->connectLocal(SIIILjava/lang/String;Landroid/net/wifi/aware/IWifiAwareEventCallback;Landroid/net/wifi/aware/ConfigRequest;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/wifi/aware/WifiAwareStateManager;SI)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->disconnectLocal(SI)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap10(Landroid/os/Message;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->messageToString(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap11(Lcom/android/server/wifi/aware/WifiAwareStateManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->disableUsageLocal()V

    return-void
.end method

.method static synthetic -wrap12(Lcom/android/server/wifi/aware/WifiAwareStateManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->enableUsageLocal()V

    return-void
.end method

.method static synthetic -wrap13(Lcom/android/server/wifi/aware/WifiAwareStateManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->onAwareDownLocal()V

    return-void
.end method

.method static synthetic -wrap14(Lcom/android/server/wifi/aware/WifiAwareStateManager;Lcom/android/server/wifi/aware/Capabilities;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->onCapabilitiesUpdatedResponseLocal(Lcom/android/server/wifi/aware/Capabilities;)V

    return-void
.end method

.method static synthetic -wrap15(Lcom/android/server/wifi/aware/WifiAwareStateManager;I[B)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->onClusterChangeLocal(I[B)V

    return-void
.end method

.method static synthetic -wrap16(Lcom/android/server/wifi/aware/WifiAwareStateManager;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->onConfigCompletedLocal(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic -wrap17(Lcom/android/server/wifi/aware/WifiAwareStateManager;Landroid/os/Message;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->onConfigFailedLocal(Landroid/os/Message;I)V

    return-void
.end method

.method static synthetic -wrap18(Lcom/android/server/wifi/aware/WifiAwareStateManager;Landroid/os/Message;ZI)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->onCreateDataPathInterfaceResponseLocal(Landroid/os/Message;ZI)V

    return-void
.end method

.method static synthetic -wrap19(Lcom/android/server/wifi/aware/WifiAwareStateManager;Landroid/os/Message;ZI)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->onDeleteDataPathInterfaceResponseLocal(Landroid/os/Message;ZI)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/wifi/aware/WifiAwareStateManager;SI)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->endDataPathLocal(SI)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap20(Lcom/android/server/wifi/aware/WifiAwareStateManager;Landroid/os/Message;ZI)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->onEndPathEndResponseLocal(Landroid/os/Message;ZI)V

    return-void
.end method

.method static synthetic -wrap21(Lcom/android/server/wifi/aware/WifiAwareStateManager;Landroid/os/Message;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->onInitiateDataPathResponseFailLocal(Landroid/os/Message;I)V

    return-void
.end method

.method static synthetic -wrap22(Lcom/android/server/wifi/aware/WifiAwareStateManager;Landroid/os/Message;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->onInitiateDataPathResponseSuccessLocal(Landroid/os/Message;I)V

    return-void
.end method

.method static synthetic -wrap23(Lcom/android/server/wifi/aware/WifiAwareStateManager;[B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->onInterfaceAddressChangeLocal([B)V

    return-void
.end method

.method static synthetic -wrap24(Lcom/android/server/wifi/aware/WifiAwareStateManager;II[B[B[B)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->onMatchLocal(II[B[B[B)V

    return-void
.end method

.method static synthetic -wrap25(Lcom/android/server/wifi/aware/WifiAwareStateManager;II[B[B)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->onMessageReceivedLocal(II[B[B)V

    return-void
.end method

.method static synthetic -wrap26(Lcom/android/server/wifi/aware/WifiAwareStateManager;Landroid/os/Message;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->onMessageSendFailLocal(Landroid/os/Message;I)V

    return-void
.end method

.method static synthetic -wrap27(Lcom/android/server/wifi/aware/WifiAwareStateManager;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->onMessageSendSuccessLocal(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic -wrap28(Lcom/android/server/wifi/aware/WifiAwareStateManager;Landroid/os/Message;ZI)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->onRespondToDataPathSetupRequestResponseLocal(Landroid/os/Message;ZI)V

    return-void
.end method

.method static synthetic -wrap29(Lcom/android/server/wifi/aware/WifiAwareStateManager;Landroid/os/Message;ZI)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->onSessionConfigFailLocal(Landroid/os/Message;ZI)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/wifi/aware/WifiAwareStateManager;SLandroid/net/wifi/aware/WifiAwareNetworkSpecifier;III[BLjava/lang/String;[BLjava/lang/String;)Z
    .locals 1

    invoke-direct/range {p0 .. p9}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->initiateDataPathSetupLocal(SLandroid/net/wifi/aware/WifiAwareNetworkSpecifier;III[BLjava/lang/String;[BLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap30(Lcom/android/server/wifi/aware/WifiAwareStateManager;Landroid/os/Message;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->onSessionConfigSuccessLocal(Landroid/os/Message;IZ)V

    return-void
.end method

.method static synthetic -wrap31(Lcom/android/server/wifi/aware/WifiAwareStateManager;IZI)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->onSessionTerminatedLocal(IZI)V

    return-void
.end method

.method static synthetic -wrap32(Lcom/android/server/wifi/aware/WifiAwareStateManager;II[Landroid/net/wifi/RttManager$RttParams;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->startRangingLocal(II[Landroid/net/wifi/RttManager$RttParams;I)V

    return-void
.end method

.method static synthetic -wrap33(Lcom/android/server/wifi/aware/WifiAwareStateManager;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->terminateSessionLocal(II)V

    return-void
.end method

.method static synthetic -wrap34(Lcom/android/server/wifi/aware/WifiAwareStateManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->transmitNextMessage()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/wifi/aware/WifiAwareStateManager;SILandroid/net/wifi/aware/PublishConfig;Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;)Z
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->publishLocal(SILandroid/net/wifi/aware/PublishConfig;Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap5(Lcom/android/server/wifi/aware/WifiAwareStateManager;SZILjava/lang/String;[BLjava/lang/String;)Z
    .locals 1

    invoke-direct/range {p0 .. p6}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->respondToDataPathRequestLocal(SZILjava/lang/String;[BLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap6(Lcom/android/server/wifi/aware/WifiAwareStateManager;SIII[BI)Z
    .locals 1

    invoke-direct/range {p0 .. p6}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->sendFollowonMessageLocal(SIII[BI)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap7(Lcom/android/server/wifi/aware/WifiAwareStateManager;SILandroid/net/wifi/aware/SubscribeConfig;Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;)Z
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->subscribeLocal(SILandroid/net/wifi/aware/SubscribeConfig;Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap8(Lcom/android/server/wifi/aware/WifiAwareStateManager;SIILandroid/net/wifi/aware/PublishConfig;)Z
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->updatePublishLocal(SIILandroid/net/wifi/aware/PublishConfig;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap9(Lcom/android/server/wifi/aware/WifiAwareStateManager;SIILandroid/net/wifi/aware/SubscribeConfig;)Z
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->updateSubscribeLocal(SIILandroid/net/wifi/aware/SubscribeConfig;)Z

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-array v0, v4, [Ljava/lang/Class;

    const-class v1, Lcom/android/server/wifi/aware/WifiAwareStateManager;

    aput-object v1, v0, v3

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "MESSAGE_TYPE"

    aput-object v2, v1, v3

    const-string/jumbo v2, "COMMAND_TYPE"

    aput-object v2, v1, v4

    const-string/jumbo v2, "RESPONSE_TYPE"

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const-string/jumbo v2, "NOTIFICATION_TYPE"

    const/4 v3, 0x3

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/android/internal/util/MessageUtils;->findMessageNames([Ljava/lang/Class;[Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v0

    sput-object v0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->sSmToString:Landroid/util/SparseArray;

    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->ALL_ZERO_MAC:[B

    return-void

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mUsageEnabled:Z

    iput-object v2, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mCharacteristics:Landroid/net/wifi/aware/Characteristics;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mClients:Landroid/util/SparseArray;

    iput-object v2, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mCurrentAwareConfiguration:Landroid/net/wifi/aware/ConfigRequest;

    iput-boolean v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mCurrentIdentityNotification:Z

    sget-object v0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->ALL_ZERO_MAC:[B

    iput-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mCurrentDiscoveryInterfaceMac:[B

    return-void
.end method

.method private connectLocal(SIIILjava/lang/String;Landroid/net/wifi/aware/IWifiAwareEventCallback;Landroid/net/wifi/aware/ConfigRequest;Z)Z
    .locals 15

    iget-boolean v3, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mUsageEnabled:Z

    if-nez v3, :cond_0

    const-string/jumbo v3, "WifiAwareStateManager"

    const-string/jumbo v4, "connect(): called with mUsageEnabled=false"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    return v3

    :cond_0
    iget-object v3, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mClients:Landroid/util/SparseArray;

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    const-string/jumbo v3, "WifiAwareStateManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "connectLocal: entry already exists for clientId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move-object/from16 v0, p7

    invoke-direct {p0, v0}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mergeConfigRequests(Landroid/net/wifi/aware/ConfigRequest;)Landroid/net/wifi/aware/ConfigRequest;

    move-result-object v12

    if-nez v12, :cond_2

    const-string/jumbo v3, "WifiAwareStateManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "connectLocal: requested configRequest="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p7

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", incompatible with current configurations"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    :try_start_0
    move-object/from16 v0, p6

    invoke-interface {v0, v3}, Landroid/net/wifi/aware/IWifiAwareEventCallback;->onConnectFail(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v3, 0x0

    return v3

    :catch_0
    move-exception v11

    const-string/jumbo v3, "WifiAwareStateManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "connectLocal onConnectFail(): RemoteException (FYI): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mCurrentAwareConfiguration:Landroid/net/wifi/aware/ConfigRequest;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mCurrentAwareConfiguration:Landroid/net/wifi/aware/ConfigRequest;

    invoke-virtual {v3, v12}, Landroid/net/wifi/aware/ConfigRequest;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mCurrentIdentityNotification:Z

    move/from16 v0, p8

    if-ne v3, v0, :cond_3

    :try_start_1
    move-object/from16 v0, p6

    move/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/net/wifi/aware/IWifiAwareEventCallback;->onConnectSuccess(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    new-instance v2, Lcom/android/server/wifi/aware/WifiAwareClientState;

    iget-object v3, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mContext:Landroid/content/Context;

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v10, p8

    invoke-direct/range {v2 .. v10}, Lcom/android/server/wifi/aware/WifiAwareClientState;-><init>(Landroid/content/Context;IIILjava/lang/String;Landroid/net/wifi/aware/IWifiAwareEventCallback;Landroid/net/wifi/aware/ConfigRequest;Z)V

    iget-object v3, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mCurrentDiscoveryInterfaceMac:[B

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/aware/WifiAwareClientState;->onInterfaceAddressChange([B)V

    iget-object v3, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mClients:Landroid/util/SparseArray;

    move/from16 v0, p2

    invoke-virtual {v3, v0, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/4 v3, 0x0

    return v3

    :catch_1
    move-exception v11

    const-string/jumbo v3, "WifiAwareStateManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "connectLocal onConnectSuccess(): RemoteException (FYI): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->doesAnyClientNeedIdentityChangeNotifications()Z

    move-result v3

    if-nez v3, :cond_5

    move/from16 v13, p8

    :goto_2
    iget-object v4, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mWifiAwareNativeApi:Lcom/android/server/wifi/aware/WifiAwareNativeApi;

    iget-object v3, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mCurrentAwareConfiguration:Landroid/net/wifi/aware/ConfigRequest;

    if-nez v3, :cond_6

    const/4 v3, 0x1

    :goto_3
    move/from16 v0, p1

    invoke-virtual {v4, v0, v12, v13, v3}, Lcom/android/server/wifi/aware/WifiAwareNativeApi;->enableAndConfigure(SLandroid/net/wifi/aware/ConfigRequest;ZZ)Z

    move-result v14

    if-nez v14, :cond_4

    const/4 v3, 0x1

    :try_start_2
    move-object/from16 v0, p6

    invoke-interface {v0, v3}, Landroid/net/wifi/aware/IWifiAwareEventCallback;->onConnectFail(I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_4
    :goto_4
    return v14

    :cond_5
    const/4 v13, 0x1

    goto :goto_2

    :cond_6
    const/4 v3, 0x0

    goto :goto_3

    :catch_2
    move-exception v11

    const-string/jumbo v3, "WifiAwareStateManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "connectLocal onConnectFail(): RemoteException (FYI):  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method

.method private disableUsageLocal()V
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mUsageEnabled:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->onAwareDownLocal()V

    invoke-virtual {p0}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->deleteAllDataPathInterfaces()V

    iput-boolean v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mUsageEnabled:Z

    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mWifiAwareNativeApi:Lcom/android/server/wifi/aware/WifiAwareNativeApi;

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/aware/WifiAwareNativeApi;->disable(S)Z

    invoke-direct {p0, v1}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->sendAwareStateChangedBroadcast(Z)V

    return-void
.end method

.method private disconnectLocal(SI)Z
    .locals 7

    const/4 v4, 0x0

    const/4 v6, 0x0

    iget-object v3, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mClients:Landroid/util/SparseArray;

    invoke-virtual {v3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/aware/WifiAwareClientState;

    if-nez v0, :cond_0

    const-string/jumbo v3, "WifiAwareStateManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "disconnectLocal: no entry for clientId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_0
    iget-object v3, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mClients:Landroid/util/SparseArray;

    invoke-virtual {v3, p2}, Landroid/util/SparseArray;->delete(I)V

    invoke-virtual {v0}, Lcom/android/server/wifi/aware/WifiAwareClientState;->destroy()V

    iget-object v3, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mClients:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-nez v3, :cond_1

    iput-object v4, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mCurrentAwareConfiguration:Landroid/net/wifi/aware/ConfigRequest;

    iget-object v3, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mWifiAwareNativeApi:Lcom/android/server/wifi/aware/WifiAwareNativeApi;

    invoke-virtual {v3, v6}, Lcom/android/server/wifi/aware/WifiAwareNativeApi;->disable(S)Z

    return v6

    :cond_1
    invoke-direct {p0, v4}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mergeConfigRequests(Landroid/net/wifi/aware/ConfigRequest;)Landroid/net/wifi/aware/ConfigRequest;

    move-result-object v1

    if-nez v1, :cond_2

    const-string/jumbo v3, "WifiAwareStateManager"

    const-string/jumbo v4, "disconnectLocal: got an incompatible merge on remaining configs!?"

    invoke-static {v3, v4}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_2
    invoke-direct {p0}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->doesAnyClientNeedIdentityChangeNotifications()Z

    move-result v2

    iget-object v3, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mCurrentAwareConfiguration:Landroid/net/wifi/aware/ConfigRequest;

    invoke-virtual {v1, v3}, Landroid/net/wifi/aware/ConfigRequest;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mCurrentIdentityNotification:Z

    if-ne v3, v2, :cond_3

    return v6

    :cond_3
    iget-object v3, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mWifiAwareNativeApi:Lcom/android/server/wifi/aware/WifiAwareNativeApi;

    invoke-virtual {v3, p1, v1, v2, v6}, Lcom/android/server/wifi/aware/WifiAwareNativeApi;->enableAndConfigure(SLandroid/net/wifi/aware/ConfigRequest;ZZ)Z

    move-result v3

    return v3
.end method

.method private doesAnyClientNeedIdentityChangeNotifications()Z
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mClients:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mClients:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wifi/aware/WifiAwareClientState;

    invoke-virtual {v1}, Lcom/android/server/wifi/aware/WifiAwareClientState;->getNotifyIdentityChange()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private enableUsageLocal()V
    .locals 2

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mUsageEnabled:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-boolean v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mUsageEnabled:Z

    invoke-virtual {p0}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->queryCapabilities()V

    invoke-virtual {p0}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->createAllDataPathInterfaces()V

    invoke-direct {p0, v1}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->sendAwareStateChangedBroadcast(Z)V

    return-void
.end method

.method private endDataPathLocal(SI)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mWifiAwareNativeApi:Lcom/android/server/wifi/aware/WifiAwareNativeApi;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/aware/WifiAwareNativeApi;->endDataPath(SI)Z

    move-result v0

    return v0
.end method

.method private getClientSessionForPubSubId(I)Landroid/util/Pair;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/Pair",
            "<",
            "Lcom/android/server/wifi/aware/WifiAwareClientState;",
            "Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;",
            ">;"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mClients:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    iget-object v3, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mClients:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/aware/WifiAwareClientState;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/aware/WifiAwareClientState;->getAwareSessionStateForPubSubId(I)Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v3, Landroid/util/Pair;

    invoke-direct {v3, v0, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v4
.end method

.method private initiateDataPathSetupLocal(SLandroid/net/wifi/aware/WifiAwareNetworkSpecifier;III[BLjava/lang/String;[BLjava/lang/String;)Z
    .locals 11

    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mWifiAwareNativeApi:Lcom/android/server/wifi/aware/WifiAwareNativeApi;

    iget-object v9, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mCapabilities:Lcom/android/server/wifi/aware/Capabilities;

    move v1, p1

    move v2, p3

    move v3, p4

    move/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/wifi/aware/WifiAwareNativeApi;->initiateDataPath(SIII[BLjava/lang/String;[BLjava/lang/String;Lcom/android/server/wifi/aware/Capabilities;)Z

    move-result v10

    if-nez v10, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mDataPathMgr:Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;

    const/4 v1, 0x1

    invoke-virtual {v0, p2, v1}, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->onDataPathInitiateFail(Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;I)V

    :cond_0
    return v10
.end method

.method private mergeConfigRequests(Landroid/net/wifi/aware/ConfigRequest;)Landroid/net/wifi/aware/ConfigRequest;
    .locals 12

    iget-object v10, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mClients:Landroid/util/SparseArray;

    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    move-result v10

    if-nez v10, :cond_0

    if-nez p1, :cond_0

    const-string/jumbo v10, "WifiAwareStateManager"

    const-string/jumbo v11, "mergeConfigRequests: invalid state - called with 0 clients registered!"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v10, 0x0

    return-object v10

    :cond_0
    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const v2, 0xffff

    const/4 v10, -0x1

    const/4 v11, -0x1

    filled-new-array {v10, v11}, [I

    move-result-object v6

    if-eqz p1, :cond_1

    iget-boolean v9, p1, Landroid/net/wifi/aware/ConfigRequest;->mSupport5gBand:Z

    iget v8, p1, Landroid/net/wifi/aware/ConfigRequest;->mMasterPreference:I

    const/4 v3, 0x1

    iget v4, p1, Landroid/net/wifi/aware/ConfigRequest;->mClusterLow:I

    iget v2, p1, Landroid/net/wifi/aware/ConfigRequest;->mClusterHigh:I

    iget-object v6, p1, Landroid/net/wifi/aware/ConfigRequest;->mDiscoveryWindowInterval:[I

    :cond_1
    const/4 v7, 0x0

    :goto_0
    iget-object v10, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mClients:Landroid/util/SparseArray;

    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    move-result v10

    if-ge v7, v10, :cond_a

    iget-object v10, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mClients:Landroid/util/SparseArray;

    invoke-virtual {v10, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/wifi/aware/WifiAwareClientState;

    invoke-virtual {v10}, Lcom/android/server/wifi/aware/WifiAwareClientState;->getConfigRequest()Landroid/net/wifi/aware/ConfigRequest;

    move-result-object v5

    iget-boolean v10, v5, Landroid/net/wifi/aware/ConfigRequest;->mSupport5gBand:Z

    if-eqz v10, :cond_2

    const/4 v9, 0x1

    :cond_2
    iget v10, v5, Landroid/net/wifi/aware/ConfigRequest;->mMasterPreference:I

    invoke-static {v8, v10}, Ljava/lang/Math;->max(II)I

    move-result v8

    if-nez v3, :cond_5

    const/4 v3, 0x1

    iget v4, v5, Landroid/net/wifi/aware/ConfigRequest;->mClusterLow:I

    iget v2, v5, Landroid/net/wifi/aware/ConfigRequest;->mClusterHigh:I

    :cond_3
    const/4 v0, 0x0

    :goto_1
    const/4 v10, 0x1

    if-gt v0, v10, :cond_9

    aget v10, v6, v0

    const/4 v11, -0x1

    if-ne v10, v11, :cond_7

    iget-object v10, v5, Landroid/net/wifi/aware/ConfigRequest;->mDiscoveryWindowInterval:[I

    aget v10, v10, v0

    aput v10, v6, v0

    :cond_4
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    iget v10, v5, Landroid/net/wifi/aware/ConfigRequest;->mClusterLow:I

    if-eq v4, v10, :cond_6

    const/4 v10, 0x0

    return-object v10

    :cond_6
    iget v10, v5, Landroid/net/wifi/aware/ConfigRequest;->mClusterHigh:I

    if-eq v2, v10, :cond_3

    const/4 v10, 0x0

    return-object v10

    :cond_7
    iget-object v10, v5, Landroid/net/wifi/aware/ConfigRequest;->mDiscoveryWindowInterval:[I

    aget v10, v10, v0

    const/4 v11, -0x1

    if-eq v10, v11, :cond_4

    aget v10, v6, v0

    if-nez v10, :cond_8

    iget-object v10, v5, Landroid/net/wifi/aware/ConfigRequest;->mDiscoveryWindowInterval:[I

    aget v10, v10, v0

    aput v10, v6, v0

    goto :goto_2

    :cond_8
    iget-object v10, v5, Landroid/net/wifi/aware/ConfigRequest;->mDiscoveryWindowInterval:[I

    aget v10, v10, v0

    if-eqz v10, :cond_4

    aget v10, v6, v0

    iget-object v11, v5, Landroid/net/wifi/aware/ConfigRequest;->mDiscoveryWindowInterval:[I

    aget v11, v11, v0

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    aput v10, v6, v0

    goto :goto_2

    :cond_9
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_a
    new-instance v10, Landroid/net/wifi/aware/ConfigRequest$Builder;

    invoke-direct {v10}, Landroid/net/wifi/aware/ConfigRequest$Builder;-><init>()V

    invoke-virtual {v10, v9}, Landroid/net/wifi/aware/ConfigRequest$Builder;->setSupport5gBand(Z)Landroid/net/wifi/aware/ConfigRequest$Builder;

    move-result-object v10

    invoke-virtual {v10, v8}, Landroid/net/wifi/aware/ConfigRequest$Builder;->setMasterPreference(I)Landroid/net/wifi/aware/ConfigRequest$Builder;

    move-result-object v10

    invoke-virtual {v10, v4}, Landroid/net/wifi/aware/ConfigRequest$Builder;->setClusterLow(I)Landroid/net/wifi/aware/ConfigRequest$Builder;

    move-result-object v10

    invoke-virtual {v10, v2}, Landroid/net/wifi/aware/ConfigRequest$Builder;->setClusterHigh(I)Landroid/net/wifi/aware/ConfigRequest$Builder;

    move-result-object v1

    const/4 v0, 0x0

    :goto_3
    const/4 v10, 0x1

    if-gt v0, v10, :cond_c

    aget v10, v6, v0

    const/4 v11, -0x1

    if-eq v10, v11, :cond_b

    aget v10, v6, v0

    invoke-virtual {v1, v0, v10}, Landroid/net/wifi/aware/ConfigRequest$Builder;->setDiscoveryWindowInterval(II)Landroid/net/wifi/aware/ConfigRequest$Builder;

    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_c
    invoke-virtual {v1}, Landroid/net/wifi/aware/ConfigRequest$Builder;->build()Landroid/net/wifi/aware/ConfigRequest;

    move-result-object v10

    return-object v10
.end method

.method private static messageToString(Landroid/os/Message;)Ljava/lang/String;
    .locals 5

    const/4 v4, 0x2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/server/wifi/aware/WifiAwareStateManager;->sSmToString:Landroid/util/SparseArray;

    iget v3, p0, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    const-string/jumbo v0, "<unknown>"

    :cond_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/os/Message;->what:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    iget v2, p0, Landroid/os/Message;->what:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_6

    :cond_1
    :goto_0
    sget-object v2, Lcom/android/server/wifi/aware/WifiAwareStateManager;->sSmToString:Landroid/util/SparseArray;

    iget v3, p0, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_2

    const-string/jumbo v0, "<unknown>"

    :cond_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    iget v2, p0, Landroid/os/Message;->what:I

    if-eq v2, v4, :cond_4

    iget v2, p0, Landroid/os/Message;->what:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_5

    :cond_4
    const-string/jumbo v2, " (Transaction ID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/os/Message;->arg2:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_6
    iget v2, p0, Landroid/os/Message;->what:I

    if-ne v2, v4, :cond_3

    goto :goto_0
.end method

.method private onAwareDownLocal()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mClients:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mCurrentAwareConfiguration:Landroid/net/wifi/aware/ConfigRequest;

    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->onAwareDownCleanupSendQueueState()V

    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mDataPathMgr:Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;

    invoke-virtual {v0}, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->onAwareDownCleanupDataPaths()V

    sget-object v0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->ALL_ZERO_MAC:[B

    iput-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mCurrentDiscoveryInterfaceMac:[B

    return-void
.end method

.method private onCapabilitiesUpdatedResponseLocal(Lcom/android/server/wifi/aware/Capabilities;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mCapabilities:Lcom/android/server/wifi/aware/Capabilities;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mCharacteristics:Landroid/net/wifi/aware/Characteristics;

    return-void
.end method

.method private onClusterChangeLocal(I[B)V
    .locals 3

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mClients:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mClients:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/aware/WifiAwareClientState;

    iget-object v2, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mCurrentDiscoveryInterfaceMac:[B

    invoke-virtual {v0, p1, p2, v2}, Lcom/android/server/wifi/aware/WifiAwareClientState;->onClusterChange(I[B[B)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private onConfigCompletedLocal(Landroid/os/Message;)V
    .locals 14

    const/4 v13, 0x0

    iget v1, p1, Landroid/os/Message;->arg1:I

    const/16 v11, 0x64

    if-ne v1, v11, :cond_2

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v9

    iget v2, p1, Landroid/os/Message;->arg2:I

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/net/wifi/aware/IWifiAwareEventCallback;

    const-string/jumbo v1, "config"

    invoke-virtual {v9, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/aware/ConfigRequest;

    const-string/jumbo v1, "uid"

    invoke-virtual {v9, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v1, "pid"

    invoke-virtual {v9, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string/jumbo v1, "notify_identity_chg"

    invoke-virtual {v9, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    const-string/jumbo v1, "calling_package"

    invoke-virtual {v9, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v0, Lcom/android/server/wifi/aware/WifiAwareClientState;

    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mContext:Landroid/content/Context;

    invoke-direct/range {v0 .. v8}, Lcom/android/server/wifi/aware/WifiAwareClientState;-><init>(Landroid/content/Context;IIILjava/lang/String;Landroid/net/wifi/aware/IWifiAwareEventCallback;Landroid/net/wifi/aware/ConfigRequest;Z)V

    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mClients:Landroid/util/SparseArray;

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :try_start_0
    invoke-interface {v6, v2}, Landroid/net/wifi/aware/IWifiAwareEventCallback;->onConnectSuccess(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mCurrentDiscoveryInterfaceMac:[B

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/aware/WifiAwareClientState;->onInterfaceAddressChange([B)V

    :cond_0
    invoke-direct {p0, v13}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mergeConfigRequests(Landroid/net/wifi/aware/ConfigRequest;)Landroid/net/wifi/aware/ConfigRequest;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mCurrentAwareConfiguration:Landroid/net/wifi/aware/ConfigRequest;

    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mCurrentAwareConfiguration:Landroid/net/wifi/aware/ConfigRequest;

    if-nez v1, :cond_1

    const-string/jumbo v1, "WifiAwareStateManager"

    const-string/jumbo v11, "onConfigCompletedLocal: got a null merged configuration after config!?"

    invoke-static {v1, v11}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-direct {p0}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->doesAnyClientNeedIdentityChangeNotifications()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mCurrentIdentityNotification:Z

    return-void

    :catch_0
    move-exception v10

    const-string/jumbo v1, "WifiAwareStateManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "onConfigCompletedLocal onConnectSuccess(): RemoteException (FYI): "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v1, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget v1, p1, Landroid/os/Message;->arg1:I

    const/16 v11, 0x65

    if-eq v1, v11, :cond_0

    const-string/jumbo v1, "WifiAwareStateManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "onConfigCompletedLocal: unexpected completedCommand="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v1, v11}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private onConfigFailedLocal(Landroid/os/Message;I)V
    .locals 5

    iget v2, p1, Landroid/os/Message;->arg1:I

    const/16 v3, 0x64

    if-ne v2, v3, :cond_1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/wifi/aware/IWifiAwareEventCallback;

    :try_start_0
    invoke-interface {v0, p2}, Landroid/net/wifi/aware/IWifiAwareEventCallback;->onConnectFail(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    const-string/jumbo v2, "WifiAwareStateManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onConfigFailedLocal onConnectFail(): RemoteException (FYI): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget v2, p1, Landroid/os/Message;->arg1:I

    const/16 v3, 0x65

    if-eq v2, v3, :cond_0

    const-string/jumbo v2, "WifiAwareStateManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onConfigFailedLocal: unexpected failedCommand="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private onCreateDataPathInterfaceResponseLocal(Landroid/os/Message;ZI)V
    .locals 3

    if-eqz p2, :cond_0

    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mDataPathMgr:Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->onInterfaceCreated(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "WifiAwareStateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCreateDataPathInterfaceResponseLocal: failed when trying to create interface "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ". Reason code="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private onDeleteDataPathInterfaceResponseLocal(Landroid/os/Message;ZI)V
    .locals 3

    if-eqz p2, :cond_0

    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mDataPathMgr:Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->onInterfaceDeleted(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "WifiAwareStateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDeleteDataPathInterfaceResponseLocal: failed when trying to delete interface "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ". Reason code="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private onEndPathEndResponseLocal(Landroid/os/Message;ZI)V
    .locals 0

    return-void
.end method

.method private onInitiateDataPathResponseFailLocal(Landroid/os/Message;I)V
    .locals 2

    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mDataPathMgr:Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;

    invoke-virtual {v1, v0, p2}, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->onDataPathInitiateFail(Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;I)V

    return-void
.end method

.method private onInitiateDataPathResponseSuccessLocal(Landroid/os/Message;I)V
    .locals 2

    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mDataPathMgr:Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;

    invoke-virtual {v1, v0, p2}, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->onDataPathInitiateSuccess(Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;I)V

    return-void
.end method

.method private onInterfaceAddressChangeLocal([B)V
    .locals 3

    iput-object p1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mCurrentDiscoveryInterfaceMac:[B

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mClients:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mClients:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/aware/WifiAwareClientState;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/aware/WifiAwareClientState;->onInterfaceAddressChange([B)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private onMatchLocal(II[B[B[B)V
    .locals 4

    invoke-direct {p0, p1}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->getClientSessionForPubSubId(I)Landroid/util/Pair;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v1, "WifiAwareStateManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onMatch: no session found for pubSubId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;

    invoke-virtual {v1, p2, p3, p4, p5}, Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;->onMatch(I[B[B[B)V

    return-void
.end method

.method private onMessageReceivedLocal(II[B[B)V
    .locals 4

    invoke-direct {p0, p1}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->getClientSessionForPubSubId(I)Landroid/util/Pair;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v1, "WifiAwareStateManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onMessageReceivedLocal: no session found for pubSubId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;

    invoke-virtual {v1, p2, p3, p4}, Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;->onMessageReceived(I[B[B)V

    return-void
.end method

.method private onMessageSendFailLocal(Landroid/os/Message;I)V
    .locals 9

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v6

    const-string/jumbo v7, "session_id"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v6

    const-string/jumbo v7, "message_id"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iget-object v6, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mClients:Landroid/util/SparseArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/aware/WifiAwareClientState;

    if-nez v0, :cond_0

    const-string/jumbo v6, "WifiAwareStateManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onMessageSendFailLocal: no client exists for clientId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {v0, v5}, Lcom/android/server/wifi/aware/WifiAwareClientState;->getSession(I)Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;

    move-result-object v4

    if-nez v4, :cond_1

    const-string/jumbo v6, "WifiAwareStateManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onMessageSendFailLocal: no session exists for clientId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", sessionId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    :try_start_0
    invoke-virtual {v4}, Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;->getCallback()Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;

    move-result-object v6

    invoke-interface {v6, v3, p2}, Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;->onMessageSendFail(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v2

    const-string/jumbo v6, "WifiAwareStateManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onMessageSendFailLocal: onMessageSendFail RemoteException="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private onMessageSendSuccessLocal(Landroid/os/Message;)V
    .locals 9

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v6

    const-string/jumbo v7, "session_id"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v6

    const-string/jumbo v7, "message_id"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iget-object v6, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mClients:Landroid/util/SparseArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/aware/WifiAwareClientState;

    if-nez v0, :cond_0

    const-string/jumbo v6, "WifiAwareStateManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onMessageSendSuccessLocal: no client exists for clientId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {v0, v5}, Lcom/android/server/wifi/aware/WifiAwareClientState;->getSession(I)Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;

    move-result-object v4

    if-nez v4, :cond_1

    const-string/jumbo v6, "WifiAwareStateManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onMessageSendSuccessLocal: no session exists for clientId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", sessionId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    :try_start_0
    invoke-virtual {v4}, Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;->getCallback()Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;

    move-result-object v6

    invoke-interface {v6, v3}, Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;->onMessageSendSuccess(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v2

    const-string/jumbo v6, "WifiAwareStateManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onMessageSendSuccessLocal: RemoteException (FYI): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private onRespondToDataPathSetupRequestResponseLocal(Landroid/os/Message;ZI)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mDataPathMgr:Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v1, p2}, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->onRespondToDataPathRequest(IZ)V

    return-void
.end method

.method private onSessionConfigFailLocal(Landroid/os/Message;ZI)V
    .locals 9

    iget v6, p1, Landroid/os/Message;->arg1:I

    const/16 v7, 0x67

    if-eq v6, v7, :cond_0

    iget v6, p1, Landroid/os/Message;->arg1:I

    const/16 v7, 0x69

    if-ne v6, v7, :cond_1

    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;

    :try_start_0
    invoke-interface {v0, p3}, Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;->onSessionConfigFail(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v3

    const-string/jumbo v6, "WifiAwareStateManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onSessionConfigFailLocal onSessionConfigFail(): RemoteException (FYI): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget v6, p1, Landroid/os/Message;->arg1:I

    const/16 v7, 0x68

    if-eq v6, v7, :cond_2

    iget v6, p1, Landroid/os/Message;->arg1:I

    const/16 v7, 0x6a

    if-ne v6, v7, :cond_5

    :cond_2
    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v6

    const-string/jumbo v7, "session_id"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    iget-object v6, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mClients:Landroid/util/SparseArray;

    invoke-virtual {v6, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wifi/aware/WifiAwareClientState;

    if-nez v1, :cond_3

    const-string/jumbo v6, "WifiAwareStateManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onSessionConfigFailLocal: no client exists for clientId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    invoke-virtual {v1, v5}, Lcom/android/server/wifi/aware/WifiAwareClientState;->getSession(I)Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;

    move-result-object v4

    if-nez v4, :cond_4

    const-string/jumbo v6, "WifiAwareStateManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onSessionConfigFailLocal: no session exists for clientId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", sessionId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    :try_start_1
    invoke-virtual {v4}, Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;->getCallback()Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;

    move-result-object v6

    invoke-interface {v6, p3}, Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;->onSessionConfigFail(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v3

    const-string/jumbo v6, "WifiAwareStateManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onSessionConfigFailLocal: onSessionConfigFail() RemoteException="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_5
    const-string/jumbo v6, "WifiAwareStateManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onSessionConfigFailLocal: unexpected failedCommand="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private onSessionConfigSuccessLocal(Landroid/os/Message;IZ)V
    .locals 9

    iget v1, p1, Landroid/os/Message;->arg1:I

    const/16 v3, 0x67

    if-eq v1, v3, :cond_0

    iget v1, p1, Landroid/os/Message;->arg1:I

    const/16 v3, 0x69

    if-ne v1, v3, :cond_2

    :cond_0
    iget v7, p1, Landroid/os/Message;->arg2:I

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;

    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mClients:Landroid/util/SparseArray;

    invoke-virtual {v1, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wifi/aware/WifiAwareClientState;

    if-nez v6, :cond_1

    const-string/jumbo v1, "WifiAwareStateManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onSessionConfigSuccessLocal: no client exists for clientId="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    iget v2, v1, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mNextSessionId:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v1, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mNextSessionId:I

    :try_start_0
    invoke-interface {v4, v2}, Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;->onSessionStarted(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v0, Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;

    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mWifiAwareNativeApi:Lcom/android/server/wifi/aware/WifiAwareNativeApi;

    move v3, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;-><init>(Lcom/android/server/wifi/aware/WifiAwareNativeApi;IILandroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;Z)V

    invoke-virtual {v6, v0}, Lcom/android/server/wifi/aware/WifiAwareClientState;->addSession(Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;)V

    :goto_0
    return-void

    :catch_0
    move-exception v8

    const-string/jumbo v1, "WifiAwareStateManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onSessionConfigSuccessLocal: onSessionStarted() RemoteException="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    iget v1, p1, Landroid/os/Message;->arg1:I

    const/16 v3, 0x68

    if-eq v1, v3, :cond_3

    iget v1, p1, Landroid/os/Message;->arg1:I

    const/16 v3, 0x6a

    if-ne v1, v3, :cond_6

    :cond_3
    iget v7, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v3, "session_id"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mClients:Landroid/util/SparseArray;

    invoke-virtual {v1, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wifi/aware/WifiAwareClientState;

    if-nez v6, :cond_4

    const-string/jumbo v1, "WifiAwareStateManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onSessionConfigSuccessLocal: no client exists for clientId="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    invoke-virtual {v6, v2}, Lcom/android/server/wifi/aware/WifiAwareClientState;->getSession(I)Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;

    move-result-object v0

    if-nez v0, :cond_5

    const-string/jumbo v1, "WifiAwareStateManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onSessionConfigSuccessLocal: no session exists for clientId="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, ", sessionId="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5
    :try_start_1
    invoke-virtual {v0}, Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;->getCallback()Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;

    move-result-object v1

    invoke-interface {v1}, Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;->onSessionConfigSuccess()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v8

    const-string/jumbo v1, "WifiAwareStateManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onSessionConfigSuccessLocal: onSessionConfigSuccess() RemoteException="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_6
    const-string/jumbo v1, "WifiAwareStateManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onSessionConfigSuccessLocal: unexpected completedCommand="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private onSessionTerminatedLocal(IZI)V
    .locals 5

    invoke-direct {p0, p1}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->getClientSessionForPubSubId(I)Landroid/util/Pair;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v2, "WifiAwareStateManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onSessionTerminatedLocal: no session found for pubSubId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;

    invoke-virtual {v2}, Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;->getCallback()Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;

    move-result-object v2

    invoke-interface {v2, p3}, Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;->onSessionTerminated(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/wifi/aware/WifiAwareClientState;

    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;

    invoke-virtual {v3}, Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;->getSessionId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/aware/WifiAwareClientState;->removeSession(I)V

    return-void

    :catch_0
    move-exception v1

    const-string/jumbo v2, "WifiAwareStateManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onSessionTerminatedLocal onSessionTerminated(): RemoteException (FYI): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private publishLocal(SILandroid/net/wifi/aware/PublishConfig;Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;)Z
    .locals 7

    const/4 v6, 0x0

    iget-object v3, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mClients:Landroid/util/SparseArray;

    invoke-virtual {v3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/aware/WifiAwareClientState;

    if-nez v0, :cond_0

    const-string/jumbo v3, "WifiAwareStateManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "publishLocal: no client exists for clientId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_0
    iget-object v3, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mWifiAwareNativeApi:Lcom/android/server/wifi/aware/WifiAwareNativeApi;

    invoke-virtual {v3, p1, v6, p3}, Lcom/android/server/wifi/aware/WifiAwareNativeApi;->publish(SILandroid/net/wifi/aware/PublishConfig;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v3, 0x1

    :try_start_0
    invoke-interface {p4, v3}, Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;->onSessionConfigFail(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return v2

    :catch_0
    move-exception v1

    const-string/jumbo v3, "WifiAwareStateManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "publishLocal onSessionConfigFail(): RemoteException (FYI): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private respondToDataPathRequestLocal(SZILjava/lang/String;[BLjava/lang/String;)Z
    .locals 9

    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mWifiAwareNativeApi:Lcom/android/server/wifi/aware/WifiAwareNativeApi;

    iget-object v7, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mCapabilities:Lcom/android/server/wifi/aware/Capabilities;

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/wifi/aware/WifiAwareNativeApi;->respondToDataPathRequest(SZILjava/lang/String;[BLjava/lang/String;Lcom/android/server/wifi/aware/Capabilities;)Z

    move-result v8

    if-nez v8, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mDataPathMgr:Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p3, v1}, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->onRespondToDataPathRequest(IZ)V

    :cond_0
    return v8
.end method

.method private sendAwareStateChangedBroadcast(Z)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.net.wifi.aware.action.WIFI_AWARE_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method private sendFollowonMessageLocal(SIII[BI)Z
    .locals 6

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mClients:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/aware/WifiAwareClientState;

    if-nez v0, :cond_0

    const-string/jumbo v2, "WifiAwareStateManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sendFollowonMessageLocal: no client exists for clientId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_0
    invoke-virtual {v0, p3}, Lcom/android/server/wifi/aware/WifiAwareClientState;->getSession(I)Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;

    move-result-object v1

    if-nez v1, :cond_1

    const-string/jumbo v2, "WifiAwareStateManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sendFollowonMessageLocal: no session exists for clientId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", sessionId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_1
    invoke-virtual {v1, p1, p4, p5, p6}, Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;->sendMessage(SI[BI)Z

    move-result v2

    return v2
.end method

.method private startRangingLocal(II[Landroid/net/wifi/RttManager$RttParams;I)V
    .locals 10

    iget-object v5, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mClients:Landroid/util/SparseArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/aware/WifiAwareClientState;

    if-nez v0, :cond_0

    const-string/jumbo v5, "WifiAwareStateManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "startRangingLocal: no client exists for clientId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {v0, p2}, Lcom/android/server/wifi/aware/WifiAwareClientState;->getSession(I)Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;

    move-result-object v4

    if-nez v4, :cond_1

    const-string/jumbo v5, "WifiAwareStateManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "startRangingLocal: no session exists for clientId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", sessionId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v5, "Invalid session ID"

    const/4 v6, -0x4

    invoke-virtual {v0, p4, v6, v5}, Lcom/android/server/wifi/aware/WifiAwareClientState;->onRangingFailure(IILjava/lang/String;)V

    return-void

    :cond_1
    const/4 v5, 0x0

    array-length v6, p3

    :goto_0
    if-ge v5, v6, :cond_3

    aget-object v2, p3, v5

    iget-object v3, v2, Landroid/net/wifi/RttManager$RttParams;->bssid:Ljava/lang/String;

    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    const-string/jumbo v8, ":"

    invoke-virtual {v4, v7, v8}, Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;->getMac(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v2, Landroid/net/wifi/RttManager$RttParams;->bssid:Ljava/lang/String;

    iget-object v7, v2, Landroid/net/wifi/RttManager$RttParams;->bssid:Ljava/lang/String;

    if-nez v7, :cond_2

    const-string/jumbo v7, "WifiAwareStateManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "startRangingLocal: no MAC address for peer ID="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v7, ""

    iput-object v7, v2, Landroid/net/wifi/RttManager$RttParams;->bssid:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v7, "WifiAwareStateManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "startRangingLocal: invalid peer ID specification (in bssid field): \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v7, ""

    iput-object v7, v2, Landroid/net/wifi/RttManager$RttParams;->bssid:Ljava/lang/String;

    goto :goto_1

    :cond_3
    iget-object v5, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mRtt:Lcom/android/server/wifi/aware/WifiAwareRttStateManager;

    invoke-virtual {v5, p4, v0, p3}, Lcom/android/server/wifi/aware/WifiAwareRttStateManager;->startRanging(ILcom/android/server/wifi/aware/WifiAwareClientState;[Landroid/net/wifi/RttManager$RttParams;)V

    return-void
.end method

.method private subscribeLocal(SILandroid/net/wifi/aware/SubscribeConfig;Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;)Z
    .locals 7

    const/4 v6, 0x0

    iget-object v3, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mClients:Landroid/util/SparseArray;

    invoke-virtual {v3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/aware/WifiAwareClientState;

    if-nez v0, :cond_0

    const-string/jumbo v3, "WifiAwareStateManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "subscribeLocal: no client exists for clientId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_0
    iget-object v3, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mWifiAwareNativeApi:Lcom/android/server/wifi/aware/WifiAwareNativeApi;

    invoke-virtual {v3, p1, v6, p3}, Lcom/android/server/wifi/aware/WifiAwareNativeApi;->subscribe(SILandroid/net/wifi/aware/SubscribeConfig;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v3, 0x1

    :try_start_0
    invoke-interface {p4, v3}, Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;->onSessionConfigFail(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return v2

    :catch_0
    move-exception v1

    const-string/jumbo v3, "WifiAwareStateManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "subscribeLocal onSessionConfigFail(): RemoteException (FYI): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private terminateSessionLocal(II)V
    .locals 4

    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mClients:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/aware/WifiAwareClientState;

    if-nez v0, :cond_0

    const-string/jumbo v1, "WifiAwareStateManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "terminateSession: no client exists for clientId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {v0, p2}, Lcom/android/server/wifi/aware/WifiAwareClientState;->terminateSession(I)V

    return-void
.end method

.method private transmitNextMessage()V
    .locals 3

    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x77

    iput v1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method private updatePublishLocal(SIILandroid/net/wifi/aware/PublishConfig;)Z
    .locals 6

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mClients:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/aware/WifiAwareClientState;

    if-nez v0, :cond_0

    const-string/jumbo v2, "WifiAwareStateManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updatePublishLocal: no client exists for clientId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_0
    invoke-virtual {v0, p3}, Lcom/android/server/wifi/aware/WifiAwareClientState;->getSession(I)Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;

    move-result-object v1

    if-nez v1, :cond_1

    const-string/jumbo v2, "WifiAwareStateManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updatePublishLocal: no session exists for clientId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", sessionId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_1
    invoke-virtual {v1, p1, p4}, Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;->updatePublish(SLandroid/net/wifi/aware/PublishConfig;)Z

    move-result v2

    return v2
.end method

.method private updateSubscribeLocal(SIILandroid/net/wifi/aware/SubscribeConfig;)Z
    .locals 6

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mClients:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/aware/WifiAwareClientState;

    if-nez v0, :cond_0

    const-string/jumbo v2, "WifiAwareStateManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateSubscribeLocal: no client exists for clientId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_0
    invoke-virtual {v0, p3}, Lcom/android/server/wifi/aware/WifiAwareClientState;->getSession(I)Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;

    move-result-object v1

    if-nez v1, :cond_1

    const-string/jumbo v2, "WifiAwareStateManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateSubscribeLocal: no session exists for clientId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", sessionId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_1
    invoke-virtual {v1, p1, p4}, Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;->updateSubscribe(SLandroid/net/wifi/aware/SubscribeConfig;)Z

    move-result v2

    return v2
.end method


# virtual methods
.method public connect(IIILjava/lang/String;Landroid/net/wifi/aware/IWifiAwareEventCallback;Landroid/net/wifi/aware/ConfigRequest;Z)V
    .locals 3

    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x64

    iput v1, v0, Landroid/os/Message;->arg1:I

    iput p1, v0, Landroid/os/Message;->arg2:I

    iput-object p5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "config"

    invoke-virtual {v1, v2, p6}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "uid"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "pid"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "calling_package"

    invoke-virtual {v1, v2, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "notify_identity_chg"

    invoke-virtual {v1, v2, p7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public createAllDataPathInterfaces()V
    .locals 3

    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x70

    iput v1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public createDataPathInterface(Ljava/lang/String;)V
    .locals 3

    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x72

    iput v1, v0, Landroid/os/Message;->arg1:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public deleteAllDataPathInterfaces()V
    .locals 3

    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x71

    iput v1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public deleteDataPathInterface(Ljava/lang/String;)V
    .locals 3

    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x73

    iput v1, v0, Landroid/os/Message;->arg1:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public disableUsage()V
    .locals 3

    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x6d

    iput v1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public disconnect(I)V
    .locals 3

    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x65

    iput v1, v0, Landroid/os/Message;->arg1:I

    iput p1, v0, Landroid/os/Message;->arg2:I

    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    const-string/jumbo v1, "AwareStateManager:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "  mClients: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mClients:Landroid/util/SparseArray;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "  mUsageEnabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mUsageEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "  mCapabilities: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mCapabilities:Lcom/android/server/wifi/aware/Capabilities;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "  mCurrentAwareConfiguration: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mCurrentAwareConfiguration:Landroid/net/wifi/aware/ConfigRequest;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "  mCurrentIdentityNotification: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mCurrentIdentityNotification:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mClients:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mClients:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wifi/aware/WifiAwareClientState;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/wifi/aware/WifiAwareClientState;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mRtt:Lcom/android/server/wifi/aware/WifiAwareRttStateManager;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/wifi/aware/WifiAwareRttStateManager;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mDataPathMgr:Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mWifiAwareNativeApi:Lcom/android/server/wifi/aware/WifiAwareNativeApi;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/wifi/aware/WifiAwareNativeApi;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public enableUsage()V
    .locals 3

    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x6c

    iput v1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public endDataPath(I)V
    .locals 3

    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x76

    iput v1, v0, Landroid/os/Message;->arg1:I

    iput p1, v0, Landroid/os/Message;->arg2:I

    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public getCapabilities()Lcom/android/server/wifi/aware/Capabilities;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mCapabilities:Lcom/android/server/wifi/aware/Capabilities;

    return-object v0
.end method

.method public getCharacteristics()Landroid/net/wifi/aware/Characteristics;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mCharacteristics:Landroid/net/wifi/aware/Characteristics;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mCapabilities:Lcom/android/server/wifi/aware/Capabilities;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mCapabilities:Lcom/android/server/wifi/aware/Capabilities;

    invoke-virtual {v0}, Lcom/android/server/wifi/aware/Capabilities;->toPublicCharacteristics()Landroid/net/wifi/aware/Characteristics;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mCharacteristics:Landroid/net/wifi/aware/Characteristics;

    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mCharacteristics:Landroid/net/wifi/aware/Characteristics;

    return-object v0
.end method

.method getClient(I)Lcom/android/server/wifi/aware/WifiAwareClientState;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mClients:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/aware/WifiAwareClientState;

    return-object v0
.end method

.method public initiateDataPathSetup(Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;III[BLjava/lang/String;[BLjava/lang/String;)V
    .locals 3

    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x74

    iput v1, v0, Landroid/os/Message;->arg1:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "peer_id"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "channel_request_type"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "channel"

    invoke-virtual {v1, v2, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "mac_address"

    invoke-virtual {v1, v2, p5}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "interface_name"

    invoke-virtual {v1, v2, p6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "pmk"

    invoke-virtual {v1, v2, p7}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "passphrase"

    invoke-virtual {v1, v2, p8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public isUsageEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mUsageEnabled:Z

    return v0
.end method

.method public onAwareDownNotification(I)V
    .locals 3

    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x132

    iput v1, v0, Landroid/os/Message;->arg1:I

    iput p1, v0, Landroid/os/Message;->arg2:I

    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public onCapabilitiesUpdateResponse(SLcom/android/server/wifi/aware/Capabilities;)V
    .locals 3

    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0xce

    iput v1, v0, Landroid/os/Message;->arg1:I

    iput p1, v0, Landroid/os/Message;->arg2:I

    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public onClusterChangeNotification(I[B)V
    .locals 3

    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x12e

    iput v1, v0, Landroid/os/Message;->arg1:I

    iput p1, v0, Landroid/os/Message;->arg2:I

    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public onConfigFailedResponse(SI)V
    .locals 3

    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0xc9

    iput v1, v0, Landroid/os/Message;->arg1:I

    iput p1, v0, Landroid/os/Message;->arg2:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public onConfigSuccessResponse(S)V
    .locals 3

    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0xc8

    iput v1, v0, Landroid/os/Message;->arg1:I

    iput p1, v0, Landroid/os/Message;->arg2:I

    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public onCreateDataPathInterfaceResponse(SZI)V
    .locals 3

    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0xcf

    iput v1, v0, Landroid/os/Message;->arg1:I

    iput p1, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "success_flag"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "status_code"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public onDataPathConfirmNotification(I[BZI[B)V
    .locals 3

    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x136

    iput v1, v0, Landroid/os/Message;->arg1:I

    iput p1, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "mac_address"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "success_flag"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "status_code"

    invoke-virtual {v1, v2, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "message_data"

    invoke-virtual {v1, v2, p5}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public onDataPathEndNotification(I)V
    .locals 3

    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x137

    iput v1, v0, Landroid/os/Message;->arg1:I

    iput p1, v0, Landroid/os/Message;->arg2:I

    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public onDataPathRequestNotification(I[BI)V
    .locals 3

    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x135

    iput v1, v0, Landroid/os/Message;->arg1:I

    iput p1, v0, Landroid/os/Message;->arg2:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "mac_address"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public onDeleteDataPathInterfaceResponse(SZI)V
    .locals 3

    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0xd0

    iput v1, v0, Landroid/os/Message;->arg1:I

    iput p1, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "success_flag"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "status_code"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public onEndDataPathResponse(SZI)V
    .locals 3

    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0xd4

    iput v1, v0, Landroid/os/Message;->arg1:I

    iput p1, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "success_flag"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "status_code"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public onInitiateDataPathResponseFail(SI)V
    .locals 3

    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0xd2

    iput v1, v0, Landroid/os/Message;->arg1:I

    iput p1, v0, Landroid/os/Message;->arg2:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public onInitiateDataPathResponseSuccess(SI)V
    .locals 3

    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0xd1

    iput v1, v0, Landroid/os/Message;->arg1:I

    iput p1, v0, Landroid/os/Message;->arg2:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public onInterfaceAddressChangeNotification([B)V
    .locals 3

    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x12d

    iput v1, v0, Landroid/os/Message;->arg1:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public onMatchNotification(II[B[B[B)V
    .locals 3

    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x12f

    iput v1, v0, Landroid/os/Message;->arg1:I

    iput p1, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "req_instance_id"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "mac_address"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "ssi_data"

    invoke-virtual {v1, v2, p4}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "filter_data"

    invoke-virtual {v1, v2, p5}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public onMessageReceivedNotification(II[B[B)V
    .locals 3

    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x131

    iput v1, v0, Landroid/os/Message;->arg1:I

    iput p1, v0, Landroid/os/Message;->arg2:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "mac_address"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "message_data"

    invoke-virtual {v1, v2, p4}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public onMessageSendFailNotification(SI)V
    .locals 3

    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x134

    iput v1, v0, Landroid/os/Message;->arg1:I

    iput p1, v0, Landroid/os/Message;->arg2:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public onMessageSendQueuedFailResponse(SI)V
    .locals 3

    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0xcd

    iput v1, v0, Landroid/os/Message;->arg1:I

    iput p1, v0, Landroid/os/Message;->arg2:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public onMessageSendQueuedSuccessResponse(S)V
    .locals 3

    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0xcc

    iput v1, v0, Landroid/os/Message;->arg1:I

    iput p1, v0, Landroid/os/Message;->arg2:I

    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public onMessageSendSuccessNotification(S)V
    .locals 3

    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x133

    iput v1, v0, Landroid/os/Message;->arg1:I

    iput p1, v0, Landroid/os/Message;->arg2:I

    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public onRespondToDataPathSetupRequestResponse(SZI)V
    .locals 3

    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0xd3

    iput v1, v0, Landroid/os/Message;->arg1:I

    iput p1, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "success_flag"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "status_code"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public onSessionConfigFailResponse(SZI)V
    .locals 3

    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0xcb

    iput v1, v0, Landroid/os/Message;->arg1:I

    iput p1, v0, Landroid/os/Message;->arg2:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "session_type"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public onSessionConfigSuccessResponse(SZI)V
    .locals 3

    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0xca

    iput v1, v0, Landroid/os/Message;->arg1:I

    iput p1, v0, Landroid/os/Message;->arg2:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "session_type"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public onSessionTerminatedNotification(IIZ)V
    .locals 3

    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x130

    iput v1, v0, Landroid/os/Message;->arg1:I

    iput p1, v0, Landroid/os/Message;->arg2:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "session_type"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public publish(ILandroid/net/wifi/aware/PublishConfig;Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;)V
    .locals 3

    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x67

    iput v1, v0, Landroid/os/Message;->arg1:I

    iput p1, v0, Landroid/os/Message;->arg2:I

    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "config"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public queryCapabilities()V
    .locals 3

    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x6f

    iput v1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public respondToDataPathRequest(ZILjava/lang/String;[BLjava/lang/String;)V
    .locals 3

    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x75

    iput v1, v0, Landroid/os/Message;->arg1:I

    iput p2, v0, Landroid/os/Message;->arg2:I

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "interface_name"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "pmk"

    invoke-virtual {v1, v2, p4}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "passphrase"

    invoke-virtual {v1, v2, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public sendMessage(III[BII)V
    .locals 3

    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x6b

    iput v1, v0, Landroid/os/Message;->arg1:I

    iput p1, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "session_id"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "message_peer_id"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "message"

    invoke-virtual {v1, v2, p4}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "message_id"

    invoke-virtual {v1, v2, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "retry_count"

    invoke-virtual {v1, v2, p6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public setNative(Lcom/android/server/wifi/aware/WifiAwareNativeApi;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mWifiAwareNativeApi:Lcom/android/server/wifi/aware/WifiAwareNativeApi;

    return-void
.end method

.method public start(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 3

    const-string/jumbo v0, "WifiAwareStateManager"

    const-string/jumbo v1, "start()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    const-string/jumbo v1, "WifiAwareStateManager"

    invoke-direct {v0, p0, v1, p2}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;-><init>(Lcom/android/server/wifi/aware/WifiAwareStateManager;Ljava/lang/String;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->setDbg(Z)V

    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->start()V

    new-instance v0, Lcom/android/server/wifi/aware/WifiAwareRttStateManager;

    invoke-direct {v0}, Lcom/android/server/wifi/aware/WifiAwareRttStateManager;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mRtt:Lcom/android/server/wifi/aware/WifiAwareRttStateManager;

    new-instance v0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;-><init>(Lcom/android/server/wifi/aware/WifiAwareStateManager;)V

    iput-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mDataPathMgr:Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;

    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mDataPathMgr:Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;

    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    invoke-virtual {v2}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->start(Landroid/content/Context;Landroid/os/Looper;)V

    return-void
.end method

.method public startLate()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mRtt:Lcom/android/server/wifi/aware/WifiAwareRttStateManager;

    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    invoke-virtual {v2}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/aware/WifiAwareRttStateManager;->start(Landroid/content/Context;Landroid/os/Looper;)V

    return-void
.end method

.method public startRanging(II[Landroid/net/wifi/RttManager$RttParams;I)V
    .locals 3

    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x6e

    iput v1, v0, Landroid/os/Message;->arg1:I

    iput p1, v0, Landroid/os/Message;->arg2:I

    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "session_id"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "ranging_id"

    invoke-virtual {v1, v2, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public subscribe(ILandroid/net/wifi/aware/SubscribeConfig;Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;)V
    .locals 3

    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x69

    iput v1, v0, Landroid/os/Message;->arg1:I

    iput p1, v0, Landroid/os/Message;->arg2:I

    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "config"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public terminateSession(II)V
    .locals 3

    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x66

    iput v1, v0, Landroid/os/Message;->arg1:I

    iput p1, v0, Landroid/os/Message;->arg2:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public updatePublish(IILandroid/net/wifi/aware/PublishConfig;)V
    .locals 3

    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x68

    iput v1, v0, Landroid/os/Message;->arg1:I

    iput p1, v0, Landroid/os/Message;->arg2:I

    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "session_id"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public updateSubscribe(IILandroid/net/wifi/aware/SubscribeConfig;)V
    .locals 3

    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x6a

    iput v1, v0, Landroid/os/Message;->arg1:I

    iput p1, v0, Landroid/os/Message;->arg2:I

    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "session_id"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->sendMessage(Landroid/os/Message;)V

    return-void
.end method
