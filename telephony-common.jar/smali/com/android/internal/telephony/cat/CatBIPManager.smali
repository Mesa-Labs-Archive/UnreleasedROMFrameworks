.class public Lcom/android/internal/telephony/cat/CatBIPManager;
.super Landroid/os/Handler;
.source "CatBIPManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cat/CatBIPManager$1;
    }
.end annotation


# static fields
.field private static final synthetic -com-android-internal-telephony-cat-NetworkConnectivityListener$StateSwitchesValues:[I = null

.field static final BIP_DATA_STATE_CHANGED:I = 0x4

.field static final BIP_REQUEST_SETUP_DATA:I = 0x1

.field private static final BIP_SESSION_STATUS:Ljava/lang/String; = "ril.bip_in_progress"

.field private static final BIP_TIMEOUT:I = 0xea60

.field private static final DEV_ID_TERMINAL:I = 0x82

.field private static final DEV_ID_UICC:I = 0x81

.field private static final LINK_DROPPED:I = 0x5

.field static final MAX_BIP_CHANNELS:I = 0x7

.field private static final WAKE_LOCK_TIMEOUT:I = 0x2710

.field static channelIds:[Z

.field public static mAPNState:Landroid/net/NetworkInfo$State;

.field public static mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field public static mNetworkRequest:Landroid/net/NetworkRequest;


# instance fields
.field activeClientConnections:I

.field private capabilityType:I

.field private catBipConn:Lcom/android/internal/telephony/cat/CatBIPConnection;

.field private connMgr:Landroid/net/ConnectivityManager;

.field connection_list:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/android/internal/telephony/cat/CatBIPConnection;",
            ">;"
        }
    .end annotation
.end field

.field crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

.field currentChannel:I

.field feature:Ljava/lang/String;

.field isBipOverWifi:Z

.field private isClosing:Z

.field mCatServicehandle:Lcom/android/internal/telephony/cat/CatService;

.field private mConnectivityListener:Lcom/android/internal/telephony/cat/NetworkConnectivityListener;

.field private mContext:Landroid/content/Context;

.field mPhone:Lcom/android/internal/telephony/Phone;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSlotId:I

.field monitorChannelStatusEvent:Z

.field monitorDataDownloadEvent:Z

.field private nwInfo:Landroid/net/NetworkInfo;

.field oldPolicy:Landroid/os/StrictMode$ThreadPolicy;

.field resp_pending:Z


# direct methods
.method static synthetic -get0(Lcom/android/internal/telephony/cat/CatBIPManager;)Lcom/android/internal/telephony/cat/CatBIPConnection;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->catBipConn:Lcom/android/internal/telephony/cat/CatBIPConnection;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/internal/telephony/cat/CatBIPManager;)Landroid/net/ConnectivityManager;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->connMgr:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/internal/telephony/cat/CatBIPManager;)Lcom/android/internal/telephony/cat/NetworkConnectivityListener;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mConnectivityListener:Lcom/android/internal/telephony/cat/NetworkConnectivityListener;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/internal/telephony/cat/CatBIPManager;)I
    .locals 1

    iget v0, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mSlotId:I

    return v0
.end method

.method private static synthetic -getcom-android-internal-telephony-cat-NetworkConnectivityListener$StateSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/internal/telephony/cat/CatBIPManager;->-com-android-internal-telephony-cat-NetworkConnectivityListener$StateSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/cat/CatBIPManager;->-com-android-internal-telephony-cat-NetworkConnectivityListener$StateSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/cat/NetworkConnectivityListener$State;->values()[Lcom/android/internal/telephony/cat/NetworkConnectivityListener$State;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/cat/NetworkConnectivityListener$State;->CONNECTED:Lcom/android/internal/telephony/cat/NetworkConnectivityListener$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/NetworkConnectivityListener$State;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/internal/telephony/cat/NetworkConnectivityListener$State;->CONNECTING:Lcom/android/internal/telephony/cat/NetworkConnectivityListener$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/NetworkConnectivityListener$State;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/internal/telephony/cat/NetworkConnectivityListener$State;->DISCONNECTED:Lcom/android/internal/telephony/cat/NetworkConnectivityListener$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/NetworkConnectivityListener$State;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    sget-object v1, Lcom/android/internal/telephony/cat/NetworkConnectivityListener$State;->UNKNOWN:Lcom/android/internal/telephony/cat/NetworkConnectivityListener$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/NetworkConnectivityListener$State;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    sput-object v0, Lcom/android/internal/telephony/cat/CatBIPManager;->-com-android-internal-telephony-cat-NetworkConnectivityListener$StateSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_0
.end method

.method static synthetic -set0(Lcom/android/internal/telephony/cat/CatBIPManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->isClosing:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/internal/telephony/cat/CatBIPManager;Lcom/android/internal/telephony/cat/CatBIPClientConnection;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/CatBIPManager;->closeClientConnection(Lcom/android/internal/telephony/cat/CatBIPClientConnection;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/internal/telephony/cat/CatBIPManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->continueProcessingOpenChannel()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/internal/telephony/cat/CatBIPManager;Lcom/android/internal/telephony/cat/CatBIPClientConnection;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/CatBIPManager;->openChannelAsRemoteClient(Lcom/android/internal/telephony/cat/CatBIPClientConnection;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/internal/telephony/cat/CatBIPManager;Lcom/android/internal/telephony/cat/CatBIPClientConnection;[BZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/cat/CatBIPManager;->sendDataClientMode(Lcom/android/internal/telephony/cat/CatBIPClientConnection;[BZ)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/internal/telephony/cat/CatBIPManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->sendTrForApnFailedOpenchannel()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/internal/telephony/cat/CatBIPManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->sendTrForOpenchannelTimeout()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    sput-object v0, Lcom/android/internal/telephony/cat/CatBIPManager;->mAPNState:Landroid/net/NetworkInfo$State;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/cat/CatService;I)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->connection_list:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->currentChannel:I

    iput v2, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->activeClientConnections:I

    iput-object v3, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mCatServicehandle:Lcom/android/internal/telephony/cat/CatService;

    iput-object v3, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    iput-boolean v2, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->resp_pending:Z

    iput-boolean v2, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->isBipOverWifi:Z

    iput-boolean v2, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->monitorDataDownloadEvent:Z

    iput-boolean v2, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->monitorChannelStatusEvent:Z

    const-string/jumbo v1, "enableBIP"

    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->feature:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->nwInfo:Landroid/net/NetworkInfo;

    iput-object v3, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->catBipConn:Lcom/android/internal/telephony/cat/CatBIPConnection;

    iput-boolean v2, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->isClosing:Z

    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicy()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->oldPolicy:Landroid/os/StrictMode$ThreadPolicy;

    new-instance v1, Lcom/android/internal/telephony/cat/CatBIPManager$1;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/cat/CatBIPManager$1;-><init>(Lcom/android/internal/telephony/cat/CatBIPManager;)V

    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mReceiver:Landroid/content/BroadcastReceiver;

    const-string/jumbo v1, "Inside CatBIPManager"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mPhone:Lcom/android/internal/telephony/Phone;

    iput-object p1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mCatServicehandle:Lcom/android/internal/telephony/cat/CatService;

    iput p4, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mSlotId:I

    const/4 v1, 0x7

    new-array v1, v1, [Z

    sput-object v1, Lcom/android/internal/telephony/cat/CatBIPManager;->channelIds:[Z

    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->connMgr:Landroid/net/ConnectivityManager;

    new-instance v1, Lcom/android/internal/telephony/cat/NetworkConnectivityListener;

    invoke-direct {v1}, Lcom/android/internal/telephony/cat/NetworkConnectivityListener;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mConnectivityListener:Lcom/android/internal/telephony/cat/NetworkConnectivityListener;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->isBipOverWifiEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->disableBipApn()V

    const-string/jumbo v1, "SPR"

    iget v2, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mSlotId:I

    invoke-static {v2}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "ril.bip_in_progress"

    const-string/jumbo v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private assignChannelId()I
    .locals 3

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/android/internal/telephony/cat/CatBIPManager;->channelIds:[Z

    array-length v1, v1

    if-ge v0, v1, :cond_1

    sget-object v1, Lcom/android/internal/telephony/cat/CatBIPManager;->channelIds:[Z

    aget-boolean v1, v1, v0

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/internal/telephony/cat/CatBIPManager;->channelIds:[Z

    const/4 v2, 0x1

    aput-boolean v2, v1, v0

    add-int/lit8 v1, v0, 0x1

    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method private beginBipConnection(Ljava/lang/String;)I
    .locals 5

    const/4 v3, 0x0

    const-string/jumbo v1, "enableBIP"

    if-ne p1, v1, :cond_1

    const/16 v1, 0x16

    iput v1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->capabilityType:I

    :cond_0
    :goto_0
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    iget v1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->capabilityType:I

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    invoke-virtual {v0, v3}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v1

    sput-object v1, Lcom/android/internal/telephony/cat/CatBIPManager;->mNetworkRequest:Landroid/net/NetworkRequest;

    sget-object v1, Lcom/android/internal/telephony/cat/CatBIPManager;->mAPNState:Landroid/net/NetworkInfo$State;

    sget-object v2, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v1, v2, :cond_3

    const-string/jumbo v1, "SPR"

    iget v2, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mSlotId:I

    invoke-static {v2}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    return v3

    :cond_1
    const-string/jumbo v1, "enableHIPRI"

    if-ne p1, v1, :cond_2

    const/16 v1, 0xc

    iput v1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->capabilityType:I

    goto :goto_0

    :cond_2
    const-string/jumbo v1, "enableIMS"

    if-ne p1, v1, :cond_0

    const/4 v1, 0x4

    iput v1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->capabilityType:I

    goto :goto_0

    :cond_3
    sget-object v1, Lcom/android/internal/telephony/cat/CatBIPManager;->mAPNState:Landroid/net/NetworkInfo$State;

    sget-object v2, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v1, v2, :cond_4

    new-instance v1, Lcom/android/internal/telephony/cat/CatBIPManager$4;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/cat/CatBIPManager$4;-><init>(Lcom/android/internal/telephony/cat/CatBIPManager;)V

    sput-object v1, Lcom/android/internal/telephony/cat/CatBIPManager;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->connMgr:Landroid/net/ConnectivityManager;

    sget-object v2, Lcom/android/internal/telephony/cat/CatBIPManager;->mNetworkRequest:Landroid/net/NetworkRequest;

    sget-object v3, Lcom/android/internal/telephony/cat/CatBIPManager;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    const v4, 0xea60

    invoke-virtual {v1, v2, v3, v4}, Landroid/net/ConnectivityManager;->requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;I)V

    :cond_4
    const-string/jumbo v1, "SPR"

    iget v2, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mSlotId:I

    invoke-static {v2}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string/jumbo v1, "ril.bip_in_progress"

    const-string/jumbo v2, "1"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    const/4 v1, 0x1

    return v1
.end method

.method private channelsAvailable()Z
    .locals 2

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x7

    if-ge v0, v1, :cond_1

    sget-object v1, Lcom/android/internal/telephony/cat/CatBIPManager;->channelIds:[Z

    aget-boolean v1, v1, v0

    if-nez v1, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private checkLinkDrop()Z
    .locals 4

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->connection_list:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cat/CatBIPConnection;

    iget-byte v2, v0, Lcom/android/internal/telephony/cat/CatBIPConnection;->linkStateCause:B

    const/4 v3, 0x5

    if-ne v2, v3, :cond_0

    const-string/jumbo v2, "link drop occured"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x1

    return v2

    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method private checkPortInUse(I)Z
    .locals 4

    const-string/jumbo v2, "checkPortInUse"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->connection_list:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cat/CatBIPConnection;

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPConnection;->uiccTerminalIface:Lcom/android/internal/telephony/cat/TransportLevel;

    iget v2, v2, Lcom/android/internal/telephony/cat/TransportLevel;->portNumber:I

    if-ne v2, p1, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Port "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " in use. Cannot connect"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x1

    return v2

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Port "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " not in use. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    return v2
.end method

.method private closeClientConnection(Lcom/android/internal/telephony/cat/CatBIPClientConnection;)V
    .locals 5

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->checkLinkDrop()Z

    move-result v0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/CatBIPManager;->freeChannel(Lcom/android/internal/telephony/cat/CatBIPConnection;)V

    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->displayConnectionStatus()V

    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    sget-object v3, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    iput-object v3, v2, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    iput-boolean v4, v2, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->hasAdditionalInfo:Z

    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->data:Lcom/android/internal/telephony/cat/ResponseData;

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v2

    const-string/jumbo v3, "CscFeature_RIL_SupportCloseChannelReplyForBIP"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "endBipConnection()"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->endBipConnection()V

    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->feature:Ljava/lang/String;

    const-string/jumbo v3, "enableHIPRI"

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->feature:Ljava/lang/String;

    const-string/jumbo v3, "enableIMS"

    if-ne v2, v3, :cond_4

    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mCatServicehandle:Lcom/android/internal/telephony/cat/CatService;

    const/16 v3, 0x6d

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/cat/CatService;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Sent close Channel TR: FEATURE - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->feature:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-boolean v4, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->isBipOverWifi:Z

    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->connection_list:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "Unregistering..."

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mConnectivityListener:Lcom/android/internal/telephony/cat/NetworkConnectivityListener;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/NetworkConnectivityListener;->stopListening()V

    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mConnectivityListener:Lcom/android/internal/telephony/cat/NetworkConnectivityListener;

    invoke-virtual {v2, p0}, Lcom/android/internal/telephony/cat/NetworkConnectivityListener;->unregisterHandler(Landroid/os/Handler;)V

    :cond_2
    const-string/jumbo v2, "enableBIP"

    iput-object v2, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->feature:Ljava/lang/String;

    :cond_3
    return-void

    :cond_4
    if-nez v0, :cond_1

    iget-boolean v2, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->isBipOverWifi:Z

    if-eqz v2, :cond_3

    goto :goto_0
.end method

.method private continueProcessingCloseChannel()V
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "continueProcessingCloseChannel():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mConnectivityListener:Lcom/android/internal/telephony/cat/NetworkConnectivityListener;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/NetworkConnectivityListener;->getState()Lcom/android/internal/telephony/cat/NetworkConnectivityListener$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/internal/telephony/cat/CatBIPManager;->-getcom-android-internal-telephony-cat-NetworkConnectivityListener$StateSwitchesValues()[I

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mConnectivityListener:Lcom/android/internal/telephony/cat/NetworkConnectivityListener;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/NetworkConnectivityListener;->getState()Lcom/android/internal/telephony/cat/NetworkConnectivityListener$State;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/NetworkConnectivityListener$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    iput-object v2, v1, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->hasAdditionalInfo:Z

    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->data:Lcom/android/internal/telephony/cat/ResponseData;

    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mCatServicehandle:Lcom/android/internal/telephony/cat/CatService;

    const/16 v2, 0x6d

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/cat/CatService;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    const-string/jumbo v1, "Sent close Channel TR:"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->connection_list:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "Unregistering..."

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mConnectivityListener:Lcom/android/internal/telephony/cat/NetworkConnectivityListener;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/NetworkConnectivityListener;->stopListening()V

    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mConnectivityListener:Lcom/android/internal/telephony/cat/NetworkConnectivityListener;

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/cat/NetworkConnectivityListener;->unregisterHandler(Landroid/os/Handler;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private continueProcessingOpenChannel()V
    .locals 14

    const/4 v13, 0x1

    const/16 v12, 0x6d

    const/4 v11, 0x0

    iget v9, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->currentChannel:I

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/cat/CatBIPManager;->getBIPConnection(I)Lcom/android/internal/telephony/cat/CatBIPConnection;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;

    const-string/jumbo v9, "continueProcessingOpenChannel() "

    invoke-static {p0, v9}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez v1, :cond_0

    const-string/jumbo v9, "bipcon is null"

    invoke-static {p0, v9}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v6, 0x0

    iget-object v9, v1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->destination:Ljava/net/InetAddress;

    if-eqz v9, :cond_3

    iget-object v9, v1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->destination:Ljava/net/InetAddress;

    invoke-virtual {v9}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    array-length v9, v0

    const/16 v10, 0x10

    if-ne v9, v10, :cond_1

    :try_start_0
    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    :cond_1
    :try_start_1
    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->setupStreams()V

    iget-object v9, v1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->receiver:Ljava/lang/Thread;

    invoke-virtual {v9}, Ljava/lang/Thread;->start()V

    const/4 v9, 0x0

    iput-boolean v9, v1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->isfirstTime:Z

    iget-object v10, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    iget-boolean v9, v1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->mBuffsizeModified:Z

    if-eqz v9, :cond_6

    sget-object v9, Lcom/android/internal/telephony/cat/ResultCode;->PRFRMD_WITH_MODIFICATION:Lcom/android/internal/telephony/cat/ResultCode;

    :goto_0
    iput-object v9, v10, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    iget-object v9, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    const/4 v10, 0x0

    iput-boolean v10, v9, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->hasAdditionalInfo:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    iget-boolean v9, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->resp_pending:Z

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mCatServicehandle:Lcom/android/internal/telephony/cat/CatService;

    invoke-virtual {v9, v12}, Lcom/android/internal/telephony/cat/CatService;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    new-instance v10, Lcom/android/internal/telephony/cat/OpenChannelResponseData;

    invoke-direct {v10, v1}, Lcom/android/internal/telephony/cat/OpenChannelResponseData;-><init>(Lcom/android/internal/telephony/cat/CatBIPConnection;)V

    iput-object v10, v9, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->data:Lcom/android/internal/telephony/cat/ResponseData;

    iget-object v9, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    iput-object v9, v8, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v8}, Landroid/os/Message;->sendToTarget()V

    iput-boolean v11, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->resp_pending:Z

    :cond_2
    return-void

    :cond_3
    new-instance v5, Landroid/os/Message;

    invoke-direct {v5}, Landroid/os/Message;-><init>()V

    const-string/jumbo v9, "Destination address is null"

    invoke-static {p0, v9}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    sget-object v10, Lcom/android/internal/telephony/cat/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/cat/ResultCode;

    iput-object v10, v9, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    iget-object v9, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    iput-boolean v13, v9, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->hasAdditionalInfo:Z

    iget-object v9, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    iput v11, v9, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->AdditionalInfo:I

    iget-object v9, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mCatServicehandle:Lcom/android/internal/telephony/cat/CatService;

    invoke-virtual {v9, v12}, Lcom/android/internal/telephony/cat/CatService;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    iget-object v9, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    iput-object v9, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    sget-object v9, Lcom/android/internal/telephony/cat/CatBIPManager;->channelIds:[Z

    iget v10, v1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->channelId:I

    add-int/lit8 v10, v10, -0x1

    aput-boolean v11, v9, v10

    iget-object v9, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->connection_list:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v9, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    const-string/jumbo v9, "Removed connection Successfully!!"

    invoke-static {p0, v9}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_4
    const-string/jumbo v9, "StopListening() & unregisterHandler()"

    invoke-static {p0, v9}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mConnectivityListener:Lcom/android/internal/telephony/cat/NetworkConnectivityListener;

    invoke-virtual {v9}, Lcom/android/internal/telephony/cat/NetworkConnectivityListener;->stopListening()V

    iget-object v9, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mConnectivityListener:Lcom/android/internal/telephony/cat/NetworkConnectivityListener;

    invoke-virtual {v9, p0}, Lcom/android/internal/telephony/cat/NetworkConnectivityListener;->unregisterHandler(Landroid/os/Handler;)V

    const-string/jumbo v9, "Time to return"

    invoke-static {p0, v9}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-boolean v11, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->resp_pending:Z

    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->endBipConnection()V

    return-void

    :catch_0
    move-exception v3

    new-instance v5, Landroid/os/Message;

    invoke-direct {v5}, Landroid/os/Message;-><init>()V

    const-string/jumbo v9, "Exception occurred while Setting up streams"

    invoke-static {p0, v9}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    sget-object v10, Lcom/android/internal/telephony/cat/ResultCode;->NETWORK_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    iput-object v10, v9, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    iget-object v9, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    iput-boolean v13, v9, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->hasAdditionalInfo:Z

    iget-object v9, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    iput v11, v9, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->AdditionalInfo:I

    iget-object v9, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mCatServicehandle:Lcom/android/internal/telephony/cat/CatService;

    invoke-virtual {v9, v12}, Lcom/android/internal/telephony/cat/CatService;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    iget-object v9, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    iput-object v9, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    sget-object v9, Lcom/android/internal/telephony/cat/CatBIPManager;->channelIds:[Z

    iget v10, v1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->channelId:I

    add-int/lit8 v10, v10, -0x1

    aput-boolean v11, v9, v10

    iget-object v9, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->connection_list:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v9, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    const-string/jumbo v9, "Removed connection Successfully!!"

    invoke-static {p0, v9}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_5
    const-string/jumbo v9, "StopListening() & unregisterHandler()"

    invoke-static {p0, v9}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mConnectivityListener:Lcom/android/internal/telephony/cat/NetworkConnectivityListener;

    invoke-virtual {v9}, Lcom/android/internal/telephony/cat/NetworkConnectivityListener;->stopListening()V

    iget-object v9, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mConnectivityListener:Lcom/android/internal/telephony/cat/NetworkConnectivityListener;

    invoke-virtual {v9, p0}, Lcom/android/internal/telephony/cat/NetworkConnectivityListener;->unregisterHandler(Landroid/os/Handler;)V

    const-string/jumbo v9, "Time to return"

    invoke-static {p0, v9}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->endBipConnection()V

    iput-boolean v11, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->resp_pending:Z

    return-void

    :cond_6
    :try_start_2
    sget-object v9, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v2

    const-string/jumbo v9, "HandleMessage: Exception occurred while Setting up streams"

    invoke-static {p0, v9}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v9, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->resp_pending:Z

    if-eqz v9, :cond_8

    iget-object v9, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    sget-object v10, Lcom/android/internal/telephony/cat/ResultCode;->NETWORK_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    iput-object v10, v9, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    iget-object v9, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    iput-boolean v13, v9, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->hasAdditionalInfo:Z

    iget-object v9, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    iput v11, v9, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->AdditionalInfo:I

    iget-object v9, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mCatServicehandle:Lcom/android/internal/telephony/cat/CatService;

    invoke-virtual {v9, v12}, Lcom/android/internal/telephony/cat/CatService;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    iput-object v9, v8, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v8}, Landroid/os/Message;->sendToTarget()V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v9, "TIMEOUT"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_9

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/cat/CatBIPManager;->freeChannel(Lcom/android/internal/telephony/cat/CatBIPConnection;)V

    :cond_7
    :goto_1
    const-string/jumbo v9, "Stoplistening(),  Unregistring handler"

    invoke-static {p0, v9}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mConnectivityListener:Lcom/android/internal/telephony/cat/NetworkConnectivityListener;

    invoke-virtual {v9}, Lcom/android/internal/telephony/cat/NetworkConnectivityListener;->stopListening()V

    iget-object v9, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mConnectivityListener:Lcom/android/internal/telephony/cat/NetworkConnectivityListener;

    invoke-virtual {v9, p0}, Lcom/android/internal/telephony/cat/NetworkConnectivityListener;->unregisterHandler(Landroid/os/Handler;)V

    const-string/jumbo v9, "Time to return"

    invoke-static {p0, v9}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->endBipConnection()V

    iput-boolean v11, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->resp_pending:Z

    :cond_8
    return-void

    :cond_9
    sget-object v9, Lcom/android/internal/telephony/cat/CatBIPManager;->channelIds:[Z

    iget v10, v1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->channelId:I

    add-int/lit8 v10, v10, -0x1

    aput-boolean v11, v9, v10

    iget-object v9, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->connection_list:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v9, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    const-string/jumbo v9, "Removed connection  Successfully!!"

    invoke-static {p0, v9}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private disableBipApn()V
    .locals 4

    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    if-nez v1, :cond_0

    const-string/jumbo v2, "disableBipApn : there is no default preferences"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v2, "disableBipApn"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v2, "bip.pref.enable"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private displayConnectionStatus()V
    .locals 6

    const-string/jumbo v3, "ConnectionStatus Channel"

    const/4 v1, 0x0

    :goto_0
    sget-object v4, Lcom/android/internal/telephony/cat/CatBIPManager;->channelIds:[Z

    array-length v4, v4

    if-ge v1, v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", Id"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v1, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/cat/CatBIPManager;->channelIds:[Z

    aget-boolean v5, v5, v1

    invoke-static {v5}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Total number of connections "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->connection_list:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    iget-object v4, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->connection_list:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cat/CatBIPConnection;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ChannelID: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Lcom/android/internal/telephony/cat/CatBIPConnection;->channelId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " iface(protcl , port) =  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/android/internal/telephony/cat/CatBIPConnection;->uiccTerminalIface:Lcom/android/internal/telephony/cat/TransportLevel;

    iget-byte v5, v5, Lcom/android/internal/telephony/cat/TransportLevel;->transportProtocol:B

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/android/internal/telephony/cat/CatBIPConnection;->uiccTerminalIface:Lcom/android/internal/telephony/cat/TransportLevel;

    iget v5, v5, Lcom/android/internal/telephony/cat/TransportLevel;->portNumber:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method private freeChannel(Lcom/android/internal/telephony/cat/CatBIPConnection;)V
    .locals 3

    if-nez p1, :cond_0

    const-string/jumbo v0, "Nothing to Free, No channels Open"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Trying to freeChannel() chanelid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/android/internal/telephony/cat/CatBIPConnection;->channelId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatBIPConnection;->terminateStreams()V

    const-string/jumbo v0, "removing channel id and connection from the list"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/internal/telephony/cat/CatBIPManager;->channelIds:[Z

    iget v1, p1, Lcom/android/internal/telephony/cat/CatBIPConnection;->channelId:I

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->connection_list:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "Removed connection  Successfully!!"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private getBIPConnection(I)Lcom/android/internal/telephony/cat/CatBIPConnection;
    .locals 4

    const-string/jumbo v2, "CatBIPConnection : get ID"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->connection_list:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cat/CatBIPConnection;

    iget v2, v0, Lcom/android/internal/telephony/cat/CatBIPConnection;->channelId:I

    if-ne v2, p1, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "CatBIPConnection : found ID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    :cond_1
    const-string/jumbo v2, "CatBIPConnection : null ID"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    return-object v2
.end method

.method private getDefaultApnName()Ljava/lang/String;
    .locals 4

    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, v3, Lcom/android/internal/telephony/Phone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTracker;

    const/4 v0, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getPreferredApnForBip()Lcom/android/internal/telephony/dataconnection/ApnSetting;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v0, v2, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apn:Ljava/lang/String;

    :cond_0
    return-object v0
.end method

.method private isbearerTypeSupported(I)Z
    .locals 2

    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Unsupported bearer type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    :pswitch_0
    const/4 v0, 0x1

    return v0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private openChannelAsRemoteClient(Lcom/android/internal/telephony/cat/CatBIPClientConnection;)V
    .locals 14

    new-instance v5, Landroid/os/Message;

    invoke-direct {v5}, Landroid/os/Message;-><init>()V

    const-string/jumbo v11, "openChannelAsRemoteClient()"

    invoke-static {p0, v11}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v11, p1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->ConnectionMode:Lcom/android/internal/telephony/cat/BearerMode;

    iget-boolean v11, v11, Lcom/android/internal/telephony/cat/BearerMode;->isBackgroundMode:Z

    if-nez v11, :cond_0

    iget-object v11, p1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->ConnectionMode:Lcom/android/internal/telephony/cat/BearerMode;

    iget-boolean v11, v11, Lcom/android/internal/telephony/cat/BearerMode;->isOnDemand:Z

    if-eqz v11, :cond_2

    :cond_0
    const-string/jumbo v11, "openChannelAsRemoteClient():sending TR connection mode is either backgrnd or ondemand"

    invoke-static {p0, v11}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v12, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    iget-boolean v11, p1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->mBuffsizeModified:Z

    if-eqz v11, :cond_1

    sget-object v11, Lcom/android/internal/telephony/cat/ResultCode;->PRFRMD_WITH_MODIFICATION:Lcom/android/internal/telephony/cat/ResultCode;

    :goto_0
    iput-object v11, v12, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    iget-object v11, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    const/4 v12, 0x0

    iput-boolean v12, v11, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->hasAdditionalInfo:Z

    iget-object v11, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    new-instance v12, Lcom/android/internal/telephony/cat/OpenChannelResponseData;

    invoke-direct {v12, p1}, Lcom/android/internal/telephony/cat/OpenChannelResponseData;-><init>(Lcom/android/internal/telephony/cat/CatBIPConnection;)V

    iput-object v12, v11, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->data:Lcom/android/internal/telephony/cat/ResponseData;

    iget-object v11, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mCatServicehandle:Lcom/android/internal/telephony/cat/CatService;

    const/16 v12, 0x6d

    invoke-virtual {v11, v12}, Lcom/android/internal/telephony/cat/CatService;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    iget-object v11, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    iput-object v11, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    iget-object v11, p1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->ConnectionMode:Lcom/android/internal/telephony/cat/BearerMode;

    iget-boolean v11, v11, Lcom/android/internal/telephony/cat/BearerMode;->isOnDemand:Z

    if-eqz v11, :cond_2

    return-void

    :cond_1
    sget-object v11, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    goto :goto_0

    :cond_2
    const/4 v8, -0x1

    iget-object v11, p1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->ConnectionMode:Lcom/android/internal/telephony/cat/BearerMode;

    iget-boolean v11, v11, Lcom/android/internal/telephony/cat/BearerMode;->isBackgroundMode:Z

    if-nez v11, :cond_3

    iget-object v11, p1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->ConnectionMode:Lcom/android/internal/telephony/cat/BearerMode;

    iget-boolean v11, v11, Lcom/android/internal/telephony/cat/BearerMode;->isOnDemand:Z

    xor-int/lit8 v11, v11, 0x1

    if-eqz v11, :cond_d

    :cond_3
    const-string/jumbo v11, "openChannelAsRemoteClient():requesting PDN connection connection mode :bkgrnd or immediate"

    invoke-static {p0, v11}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v11, 0x0

    iput-boolean v11, p1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->isLinkEstablished:Z

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v11

    iget v12, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mSlotId:I

    const-string/jumbo v13, "CscFeature_RIL_BIPOTAUsimRegistration"

    invoke-virtual {v11, v12, v13}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(ILjava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    const-string/jumbo v11, "CMC"

    const-string/jumbo v12, "CMC"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    const-string/jumbo v11, "3"

    const-string/jumbo v12, "ril.simtype"

    const-string/jumbo v13, ""

    invoke-static {v12, v13}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_4

    const-string/jumbo v11, "18"

    const-string/jumbo v12, "ril.simtype"

    const-string/jumbo v13, ""

    invoke-static {v12, v13}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    :cond_4
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v11

    iget v12, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mSlotId:I

    const-string/jumbo v13, "CscFeature_RIL_BIPOTAApnName"

    invoke-virtual {v11, v12, v13}, Lcom/samsung/android/feature/SemCscFeature;->getString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->NetworkAccessname:Ljava/lang/String;

    :cond_5
    :goto_1
    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->isBipOverWifiEnabled()Z

    move-result v11

    if-eqz v11, :cond_b

    iget-object v11, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->connMgr:Landroid/net/ConnectivityManager;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v10

    if-eqz v10, :cond_b

    invoke-virtual {v10}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v11

    if-eqz v11, :cond_b

    const/4 v3, 0x1

    iget-object v11, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->connMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v11}, Landroid/net/ConnectivityManager;->getAllNetworks()[Landroid/net/Network;

    move-result-object v6

    if-eqz v6, :cond_a

    array-length v11, v6

    if-lez v11, :cond_a

    const/4 v2, 0x0

    :goto_2
    array-length v11, v6

    if-ge v2, v11, :cond_a

    iget-object v11, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->connMgr:Landroid/net/ConnectivityManager;

    aget-object v12, v6, v2

    invoke-virtual {v11, v12}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v7

    if-eqz v7, :cond_6

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->getType()I

    move-result v11

    const/4 v12, 0x1

    if-ne v12, v11, :cond_6

    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->isBipOverWifi:Z

    iget-object v11, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->connMgr:Landroid/net/ConnectivityManager;

    aget-object v12, v6, v2

    invoke-virtual {v11, v12}, Landroid/net/ConnectivityManager;->bindProcessToNetwork(Landroid/net/Network;)Z

    iget-object v11, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mConnectivityListener:Lcom/android/internal/telephony/cat/NetworkConnectivityListener;

    sget-object v12, Lcom/android/internal/telephony/cat/NetworkConnectivityListener$State;->CONNECTED:Lcom/android/internal/telephony/cat/NetworkConnectivityListener$State;

    invoke-virtual {v11, v12}, Lcom/android/internal/telephony/cat/NetworkConnectivityListener;->setState(Lcom/android/internal/telephony/cat/NetworkConnectivityListener$State;)V

    iget-object v11, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mConnectivityListener:Lcom/android/internal/telephony/cat/NetworkConnectivityListener;

    invoke-virtual {v11}, Lcom/android/internal/telephony/cat/NetworkConnectivityListener;->notifyHandler()V

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_7
    const-string/jumbo v11, "2"

    const-string/jumbo v12, "ril.simtype"

    const-string/jumbo v13, ""

    invoke-static {v12, v13}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_8

    const-string/jumbo v11, "20"

    const-string/jumbo v12, "ril.simtype"

    const-string/jumbo v13, ""

    invoke-static {v12, v13}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    :cond_8
    const-string/jumbo v11, "oversea"

    const-string/jumbo v12, "ril.currentplmn"

    invoke-static {v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_9

    const-string/jumbo v11, "KT BIP OTA is progressing for domestic mode"

    invoke-static {p0, v11}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_9
    const-string/jumbo v11, "KT BIP OTA is progressing for oversea mode"

    invoke-static {p0, v11}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v11, "IMS"

    iget-object v12, p1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->NetworkAccessname:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    const/4 v11, 0x0

    iput-object v11, p1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->NetworkAccessname:Ljava/lang/String;

    goto/16 :goto_1

    :cond_a
    const/4 v8, 0x0

    const-string/jumbo v11, "ril.bip_in_progress"

    const-string/jumbo v12, "1"

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    iget-object v11, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mPhone:Lcom/android/internal/telephony/Phone;

    instance-of v11, v11, Lcom/android/internal/telephony/GsmCdmaPhone;

    if-eqz v11, :cond_f

    iget-object v11, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v11, Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v11}, Lcom/android/internal/telephony/GsmCdmaPhone;->getDataServiceState()I

    move-result v11

    if-nez v11, :cond_f

    xor-int/lit8 v11, v3, 0x1

    if-eqz v11, :cond_f

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/CatBIPManager;->requestDataConnection(Lcom/android/internal/telephony/cat/CatBIPClientConnection;)I

    move-result v8

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "requestDataConnection() returns "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {p0, v11}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_c
    :goto_3
    packed-switch v8, :pswitch_data_0

    :cond_d
    :goto_4
    iget-object v11, p1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->ConnectionMode:Lcom/android/internal/telephony/cat/BearerMode;

    iget-boolean v11, v11, Lcom/android/internal/telephony/cat/BearerMode;->isBackgroundMode:Z

    if-eqz v11, :cond_17

    const-string/jumbo v11, "Backgound mode sending channel status to Cat Service"

    invoke-static {p0, v11}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cat/CatBIPManager;->sendChannelStatusEvent(Lcom/android/internal/telephony/cat/CatBIPConnection;)V

    :cond_e
    :goto_5
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->displayConnectionStatus()V

    return-void

    :cond_f
    if-nez v3, :cond_c

    const/4 v8, 0x3

    const-string/jumbo v11, "getDataServiceState is not STATE_IN_SERVICE"

    invoke-static {p0, v11}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_3

    :pswitch_0
    const-string/jumbo v11, "sending Failure TR"

    invoke-static {p0, v11}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v11, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    sget-object v12, Lcom/android/internal/telephony/cat/ResultCode;->NETWORK_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    iput-object v12, v11, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    iget-object v11, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    const/4 v12, 0x1

    iput-boolean v12, v11, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->hasAdditionalInfo:Z

    iget-object v11, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    const/4 v12, 0x0

    iput v12, v11, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->AdditionalInfo:I

    iget-object v11, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mCatServicehandle:Lcom/android/internal/telephony/cat/CatService;

    const/16 v12, 0x6d

    invoke-virtual {v11, v12}, Lcom/android/internal/telephony/cat/CatService;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    iget-object v11, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    iput-object v11, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/CatBIPManager;->freeChannel(Lcom/android/internal/telephony/cat/CatBIPConnection;)V

    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->displayConnectionStatus()V

    return-void

    :pswitch_1
    const-string/jumbo v11, "APN_ALREADY_ACTIVE"

    invoke-static {p0, v11}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    iget-object v11, p1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->destination:Ljava/net/InetAddress;

    invoke-virtual {v11}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    const/4 v9, 0x0

    array-length v11, v0

    const/16 v12, 0x10

    if-ne v11, v12, :cond_11

    const-string/jumbo v11, "Exception occurred while Setting up streams"

    invoke-static {p0, v11}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v11, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    sget-object v12, Lcom/android/internal/telephony/cat/ResultCode;->NETWORK_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    iput-object v12, v11, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    iget-object v11, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    const/4 v12, 0x1

    iput-boolean v12, v11, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->hasAdditionalInfo:Z

    iget-object v11, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    const/4 v12, 0x0

    iput v12, v11, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->AdditionalInfo:I

    iget-object v11, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mCatServicehandle:Lcom/android/internal/telephony/cat/CatService;

    const/16 v12, 0x6d

    invoke-virtual {v11, v12}, Lcom/android/internal/telephony/cat/CatService;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    iget-object v11, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    iput-object v11, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    sget-object v11, Lcom/android/internal/telephony/cat/CatBIPManager;->channelIds:[Z

    iget v12, p1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->channelId:I

    add-int/lit8 v12, v12, -0x1

    const/4 v13, 0x0

    aput-boolean v13, v11, v12

    iget-object v11, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->connection_list:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v11, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_10

    const-string/jumbo v11, "Removed connection  Successfully!!"

    invoke-static {p0, v11}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_10
    const-string/jumbo v11, "StopListening() & unregisterHandler()"

    invoke-static {p0, v11}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v11, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mConnectivityListener:Lcom/android/internal/telephony/cat/NetworkConnectivityListener;

    invoke-virtual {v11}, Lcom/android/internal/telephony/cat/NetworkConnectivityListener;->stopListening()V

    iget-object v11, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mConnectivityListener:Lcom/android/internal/telephony/cat/NetworkConnectivityListener;

    invoke-virtual {v11, p0}, Lcom/android/internal/telephony/cat/NetworkConnectivityListener;->unregisterHandler(Landroid/os/Handler;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->endBipConnection()V

    const-string/jumbo v11, "Time to return"

    invoke-static {p0, v11}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_11
    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->setupStreams()V

    iget-object v11, p1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->receiver:Ljava/lang/Thread;

    invoke-virtual {v11}, Ljava/lang/Thread;->start()V

    const/4 v11, 0x0

    iput-boolean v11, p1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->isfirstTime:Z

    iget-object v12, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    iget-boolean v11, p1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->mBuffsizeModified:Z

    if-eqz v11, :cond_13

    sget-object v11, Lcom/android/internal/telephony/cat/ResultCode;->PRFRMD_WITH_MODIFICATION:Lcom/android/internal/telephony/cat/ResultCode;

    :goto_6
    iput-object v11, v12, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    iget-object v11, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    const/4 v12, 0x0

    iput-boolean v12, v11, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->hasAdditionalInfo:Z

    iget-object v11, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mConnectivityListener:Lcom/android/internal/telephony/cat/NetworkConnectivityListener;

    const/4 v12, 0x4

    invoke-virtual {v11, p0, v12}, Lcom/android/internal/telephony/cat/NetworkConnectivityListener;->registerHandler(Landroid/os/Handler;I)V

    const-string/jumbo v11, "registering handler with ConnectivityListener "

    invoke-static {p0, v11}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v11, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mConnectivityListener:Lcom/android/internal/telephony/cat/NetworkConnectivityListener;

    invoke-virtual {v11}, Lcom/android/internal/telephony/cat/NetworkConnectivityListener;->startListening()V

    const-string/jumbo v11, "mConnectivityListener.startListening() called "

    invoke-static {p0, v11}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v11, "wakelock for OPEN CHANNEL"

    invoke-static {p0, v11}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v11, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mCatServicehandle:Lcom/android/internal/telephony/cat/CatService;

    iget-object v11, v11, Lcom/android/internal/telephony/cat/CatService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v12, 0x2710

    invoke-virtual {v11, v12, v13}, Landroid/os/PowerManager$WakeLock;->acquire(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_4

    :catch_0
    move-exception v1

    const-string/jumbo v11, "Exception occurred while Setting up streams"

    invoke-static {p0, v11}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x1

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v11

    iget v12, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mSlotId:I

    const-string/jumbo v13, "CscFeature_RIL_EnableBIPduringMobileDataOFF"

    invoke-virtual {v11, v12, v13}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(ILjava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_12

    iget-object v11, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v11}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string/jumbo v12, "mobile_data"

    const/4 v13, 0x1

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_14

    const/4 v4, 0x1

    :cond_12
    :goto_7
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "mUserDataEnabled "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {p0, v11}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v11, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mPhone:Lcom/android/internal/telephony/Phone;

    instance-of v11, v11, Lcom/android/internal/telephony/GsmCdmaPhone;

    if-eqz v11, :cond_15

    iget-object v11, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v11, Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v11}, Lcom/android/internal/telephony/GsmCdmaPhone;->getDataServiceState()I

    move-result v11

    if-nez v11, :cond_15

    iget-boolean v11, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->isBipOverWifi:Z

    if-eqz v11, :cond_15

    if-eqz v4, :cond_15

    const/4 v11, 0x0

    iput-boolean v11, p1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->isLinkEstablished:Z

    const-string/jumbo v11, "StopListening() & unregisterHandler()"

    invoke-static {p0, v11}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v11, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mConnectivityListener:Lcom/android/internal/telephony/cat/NetworkConnectivityListener;

    invoke-virtual {v11}, Lcom/android/internal/telephony/cat/NetworkConnectivityListener;->stopListening()V

    iget-object v11, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mConnectivityListener:Lcom/android/internal/telephony/cat/NetworkConnectivityListener;

    invoke-virtual {v11, p0}, Lcom/android/internal/telephony/cat/NetworkConnectivityListener;->unregisterHandler(Landroid/os/Handler;)V

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/CatBIPManager;->requestDataConnection(Lcom/android/internal/telephony/cat/CatBIPClientConnection;)I

    move-result v8

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "requestDataConnection() returns "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {p0, v11}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->isBipOverWifi:Z

    return-void

    :cond_13
    :try_start_1
    sget-object v11, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_6

    :cond_14
    const/4 v4, 0x0

    goto :goto_7

    :cond_15
    iget-object v11, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    sget-object v12, Lcom/android/internal/telephony/cat/ResultCode;->NETWORK_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    iput-object v12, v11, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    iget-object v11, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    const/4 v12, 0x1

    iput-boolean v12, v11, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->hasAdditionalInfo:Z

    iget-object v11, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    const/4 v12, 0x0

    iput v12, v11, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->AdditionalInfo:I

    iget-object v11, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mCatServicehandle:Lcom/android/internal/telephony/cat/CatService;

    const/16 v12, 0x6d

    invoke-virtual {v11, v12}, Lcom/android/internal/telephony/cat/CatService;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    iget-object v11, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    iput-object v11, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    sget-object v11, Lcom/android/internal/telephony/cat/CatBIPManager;->channelIds:[Z

    iget v12, p1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->channelId:I

    add-int/lit8 v12, v12, -0x1

    const/4 v13, 0x0

    aput-boolean v13, v11, v12

    iget-object v11, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->connection_list:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v11, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_16

    const-string/jumbo v11, "Removed connection  Successfully!!"

    invoke-static {p0, v11}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_16
    const-string/jumbo v11, "StopListening() & unregisterHandler()"

    invoke-static {p0, v11}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v11, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mConnectivityListener:Lcom/android/internal/telephony/cat/NetworkConnectivityListener;

    invoke-virtual {v11}, Lcom/android/internal/telephony/cat/NetworkConnectivityListener;->stopListening()V

    iget-object v11, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mConnectivityListener:Lcom/android/internal/telephony/cat/NetworkConnectivityListener;

    invoke-virtual {v11, p0}, Lcom/android/internal/telephony/cat/NetworkConnectivityListener;->unregisterHandler(Landroid/os/Handler;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->endBipConnection()V

    const-string/jumbo v11, "Time to return"

    invoke-static {p0, v11}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :pswitch_2
    const-string/jumbo v11, "APN_REQUEST_STARTED , wait till we hear from NetworkListener, returning "

    invoke-static {p0, v11}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_17
    iget-object v11, p1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->ConnectionMode:Lcom/android/internal/telephony/cat/BearerMode;

    iget-boolean v11, v11, Lcom/android/internal/telephony/cat/BearerMode;->isOnDemand:Z

    if-nez v11, :cond_e

    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->resp_pending:Z

    const-string/jumbo v11, "Immediate mode Sending TR to Cat Service"

    invoke-static {p0, v11}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v11, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mCatServicehandle:Lcom/android/internal/telephony/cat/CatService;

    const/16 v12, 0x6d

    invoke-virtual {v11, v12}, Lcom/android/internal/telephony/cat/CatService;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    iget-object v11, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    new-instance v12, Lcom/android/internal/telephony/cat/OpenChannelResponseData;

    invoke-direct {v12, p1}, Lcom/android/internal/telephony/cat/OpenChannelResponseData;-><init>(Lcom/android/internal/telephony/cat/CatBIPConnection;)V

    iput-object v12, v11, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->data:Lcom/android/internal/telephony/cat/ResponseData;

    iget-object v11, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    iput-object v11, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_5

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private receiveDataClientMode(Lcom/android/internal/telephony/cat/CatBIPClientConnection;I)V
    .locals 5

    const/4 v0, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    sget-object v4, Lcom/android/internal/telephony/cat/ResultCode;->PRFRMD_WITH_MISSING_INFO:Lcom/android/internal/telephony/cat/ResultCode;

    iput-object v4, v3, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->hasAdditionalInfo:Z

    and-int/lit16 v3, p2, 0xff

    const/16 v4, 0xed

    if-le v3, v4, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "receiveDataClientMode: requestedLength is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 p2, 0xed

    :cond_0
    and-int/lit16 v3, p2, 0xff

    invoke-virtual {p1, v3}, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->getRxData(I)[B

    move-result-object v1

    if-nez v1, :cond_1

    const-string/jumbo v3, "receiveDataClientMode: RxData is null"

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    new-instance v4, Lcom/android/internal/telephony/cat/ReceiveDataResponse;

    invoke-direct {v4, v1, v2, v0}, Lcom/android/internal/telephony/cat/ReceiveDataResponse;-><init>([BII)V

    iput-object v4, v3, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->data:Lcom/android/internal/telephony/cat/ResponseData;

    return-void

    :cond_1
    array-length v3, v1

    and-int/lit16 v4, p2, 0xff

    if-ge v3, v4, :cond_2

    array-length v2, v1

    const-string/jumbo v3, "receiveDataClientMode: RxData is shorter than requested length"

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    sget-object v4, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    iput-object v4, v3, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    iget-object v3, p1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->rxBuf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v3

    iget v4, p1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->lastReadPosition:I

    sub-int v0, v3, v4

    array-length v2, v1

    goto :goto_0
.end method

.method private requestDataConnection(Lcom/android/internal/telephony/cat/CatBIPClientConnection;)I
    .locals 13

    iget-object v0, p1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->NetworkAccessname:Ljava/lang/String;

    if-nez v0, :cond_7

    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->disableBipApn()V

    iget v0, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mSlotId:I

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v11

    const/4 v9, 0x0

    const/4 v6, 0x0

    const-string/jumbo v0, "content://telephony/carriers"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    if-eqz v11, :cond_0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    const/4 v2, 0x0

    aget v2, v11, v2

    invoke-virtual {v0, v2}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v9

    :cond_0
    const-string/jumbo v0, "enableHIPRI"

    iput-object v0, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->feature:Ljava/lang/String;

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "numeric = \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "\' AND type = \'bip\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    const-string/jumbo v0, "enableBIP"

    iput-object v0, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->feature:Ljava/lang/String;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_0
    const-string/jumbo v0, "SPR"

    iget v2, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mSlotId:I

    invoke-static {v2}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->feature:Ljava/lang/String;

    const-string/jumbo v2, "enableHIPRI"

    if-ne v0, v2, :cond_3

    const-string/jumbo v0, "Forcing BIP APN for SPR"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "enableBIP"

    iput-object v0, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->feature:Ljava/lang/String;

    const-string/jumbo v0, "otasn"

    iput-object v0, p1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->NetworkAccessname:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/CatBIPManager;->setBipApn(Lcom/android/internal/telephony/cat/CatBIPClientConnection;)V

    :cond_3
    :goto_1
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mSlotId:I

    const-string/jumbo v4, "CscFeature_RIL_EnableBIPduringMobileDataOFF"

    invoke-virtual {v0, v2, v4}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string/jumbo v0, "CSCFEATURE_RIL_ENABLEBIPDURINGMOBILEDATAOFF"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "mobile_data"

    const/4 v4, 0x1

    invoke-static {v0, v2, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_9

    const/4 v12, 0x1

    :goto_2
    iget v0, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mSlotId:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v4, "ATT"

    const/4 v5, 0x0

    aput-object v4, v2, v5

    invoke-static {v0, v2}, Lcom/android/internal/telephony/TelephonyFeatures;->isNetworkCodeSpecific(I[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    xor-int/lit8 v0, v12, 0x1

    if-eqz v0, :cond_5

    :cond_4
    const-string/jumbo v0, "set feature : BIP"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "enableBIP"

    iput-object v0, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->feature:Ljava/lang/String;

    :cond_5
    iget v0, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mSlotId:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v4, "ATT"

    const/4 v5, 0x0

    aput-object v4, v2, v5

    invoke-static {v0, v2}, Lcom/android/internal/telephony/TelephonyFeatures;->isNetworkCodeSpecific(I[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    if-nez v12, :cond_a

    const-string/jumbo v0, "Mobile Data off"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x3

    return v0

    :catch_0
    move-exception v8

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Exception caught during check apn : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    if-eqz v6, :cond_6

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0

    :cond_7
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->getDefaultApnName()Ljava/lang/String;

    move-result-object v7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "defaultApnName = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v7, :cond_8

    iget-object v0, p1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->NetworkAccessname:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string/jumbo v0, "con.NetworkAccessname is same as default APN"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "enableHIPRI"

    iput-object v0, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->feature:Ljava/lang/String;

    :goto_3
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/CatBIPManager;->setBipApn(Lcom/android/internal/telephony/cat/CatBIPClientConnection;)V

    goto/16 :goto_1

    :cond_8
    const-string/jumbo v0, "enableBIP"

    iput-object v0, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->feature:Ljava/lang/String;

    goto :goto_3

    :cond_9
    const/4 v12, 0x0

    goto/16 :goto_2

    :cond_a
    const-string/jumbo v0, "2"

    const-string/jumbo v2, "ril.simtype"

    const-string/jumbo v4, ""

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string/jumbo v0, "20"

    const-string/jumbo v2, "ril.simtype"

    const-string/jumbo v4, ""

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_b
    const-string/jumbo v0, "IMS"

    iget-object v2, p1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->NetworkAccessname:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string/jumbo v0, "enableIMS"

    iput-object v0, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->feature:Ljava/lang/String;

    :cond_c
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->feature:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cat/CatBIPManager;->beginBipConnection(Ljava/lang/String;)I

    move-result v10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "result of beginBipConnection("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->feature:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ") "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-ne v0, v10, :cond_d

    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mConnectivityListener:Lcom/android/internal/telephony/cat/NetworkConnectivityListener;

    const/4 v2, 0x4

    invoke-virtual {v0, p0, v2}, Lcom/android/internal/telephony/cat/NetworkConnectivityListener;->registerHandler(Landroid/os/Handler;I)V

    const-string/jumbo v0, "registering handler with ConnectivityListener "

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mConnectivityListener:Lcom/android/internal/telephony/cat/NetworkConnectivityListener;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/NetworkConnectivityListener;->startListening()V

    const-string/jumbo v0, "mConnectivityListener.startListening() called "

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "wakelock for OPEN CHANNEL"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mCatServicehandle:Lcom/android/internal/telephony/cat/CatService;

    iget-object v0, v0, Lcom/android/internal/telephony/cat/CatService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v4, 0x2710

    invoke-virtual {v0, v4, v5}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    :cond_d
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->resp_pending:Z

    return v10
.end method

.method private sendDataClientMode(Lcom/android/internal/telephony/cat/CatBIPClientConnection;[BZ)V
    .locals 27

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->ConnectionMode:Lcom/android/internal/telephony/cat/BearerMode;

    iget-boolean v2, v2, Lcom/android/internal/telephony/cat/BearerMode;->isOnDemand:Z

    if-eqz v2, :cond_4

    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->isfirstTime:Z

    if-eqz v2, :cond_4

    const-string/jumbo v2, "ConnectionMode.isOnDemand && con.isfirstTime = true"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v21, -0x1

    const/4 v15, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->isBipOverWifiEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPManager;->connMgr:Landroid/net/ConnectivityManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v26

    if-eqz v26, :cond_2

    invoke-virtual/range {v26 .. v26}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPManager;->connMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getAllNetworks()[Landroid/net/Network;

    move-result-object v19

    if-eqz v19, :cond_1

    move-object/from16 v0, v19

    array-length v2, v0

    if-lez v2, :cond_1

    const/4 v12, 0x0

    :goto_0
    move-object/from16 v0, v19

    array-length v2, v0

    if-ge v12, v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPManager;->connMgr:Landroid/net/ConnectivityManager;

    aget-object v3, v19, v12

    invoke-virtual {v2, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v20

    if-eqz v20, :cond_0

    invoke-virtual/range {v20 .. v20}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v3, v2, :cond_0

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/cat/CatBIPManager;->isBipOverWifi:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPManager;->connMgr:Landroid/net/ConnectivityManager;

    aget-object v3, v19, v12

    invoke-virtual {v2, v3}, Landroid/net/ConnectivityManager;->bindProcessToNetwork(Landroid/net/Network;)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPManager;->mConnectivityListener:Lcom/android/internal/telephony/cat/NetworkConnectivityListener;

    sget-object v3, Lcom/android/internal/telephony/cat/NetworkConnectivityListener$State;->CONNECTED:Lcom/android/internal/telephony/cat/NetworkConnectivityListener$State;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/cat/NetworkConnectivityListener;->setState(Lcom/android/internal/telephony/cat/NetworkConnectivityListener$State;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPManager;->mConnectivityListener:Lcom/android/internal/telephony/cat/NetworkConnectivityListener;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/NetworkConnectivityListener;->notifyHandler()V

    :cond_0
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_1
    const/16 v21, 0x0

    const-string/jumbo v2, "ril.bip_in_progress"

    const-string/jumbo v3, "1"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPManager;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v2, Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->getDataServiceState()I

    move-result v2

    if-nez v2, :cond_8

    xor-int/lit8 v2, v15, 0x1

    if-eqz v2, :cond_8

    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/cat/CatBIPManager;->requestDataConnection(Lcom/android/internal/telephony/cat/CatBIPClientConnection;)I

    move-result v21

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "requestDataConnection() returns "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_3
    :goto_1
    packed-switch v21, :pswitch_data_0

    :cond_4
    :goto_2
    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->isfirstTime:Z

    if-nez v2, :cond_13

    const-string/jumbo v2, "con.isfirstTime = false"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    sget-object v3, Lcom/android/internal/telephony/cat/ResultCode;->BIP_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

    iput-object v3, v2, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->hasAdditionalInfo:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    new-instance v3, Lcom/android/internal/telephony/cat/SendDataResponse;

    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->bufferSize:I

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/cat/SendDataResponse;-><init>(I)V

    iput-object v3, v2, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->data:Lcom/android/internal/telephony/cat/ResponseData;

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->uiccTerminalIface:Lcom/android/internal/telephony/cat/TransportLevel;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/TransportLevel;->isTCPRemoteClient()Z

    move-result v2

    if-eqz v2, :cond_f

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->socket:Ljava/lang/Object;

    move-object/from16 v25, v0

    check-cast v25, Ljava/net/Socket;

    const-string/jumbo v2, "TCP Remote Client"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {v25 .. v25}, Ljava/net/Socket;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual/range {v25 .. v25}, Ljava/net/Socket;->isClosed()Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_5
    const/4 v2, 0x0

    move-object/from16 v0, p1

    iput-boolean v2, v0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->isLinkEstablished:Z

    :cond_6
    :goto_3
    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->isLinkEstablished:Z

    if-nez v2, :cond_11

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Socket is Closed or Not Connected isLinkEstablished  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget-boolean v3, v0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->isLinkEstablished:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    const/4 v3, 0x2

    iput v3, v2, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->AdditionalInfo:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPManager;->mCatServicehandle:Lcom/android/internal/telephony/cat/CatService;

    const/16 v3, 0x6d

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/cat/CatService;->obtainMessage(I)Landroid/os/Message;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    move-object/from16 v0, v17

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual/range {v17 .. v17}, Landroid/os/Message;->sendToTarget()V

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->uiccTerminalIface:Lcom/android/internal/telephony/cat/TransportLevel;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/TransportLevel;->isTCPRemoteClient()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/cat/CatBIPManager;->freeChannel(Lcom/android/internal/telephony/cat/CatBIPConnection;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->displayConnectionStatus()V

    :cond_7
    return-void

    :cond_8
    if-nez v15, :cond_3

    const/16 v21, 0x3

    const-string/jumbo v2, "getDataServiceState is not STATE_IN_SERVICE"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_0
    const-string/jumbo v2, "sending Failure TR"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    sget-object v3, Lcom/android/internal/telephony/cat/ResultCode;->NETWORK_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    iput-object v3, v2, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->hasAdditionalInfo:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    const/4 v3, 0x0

    iput v3, v2, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->AdditionalInfo:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    new-instance v3, Lcom/android/internal/telephony/cat/SendDataResponse;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/cat/SendDataResponse;-><init>(I)V

    iput-object v3, v2, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->data:Lcom/android/internal/telephony/cat/ResponseData;

    const/4 v2, 0x0

    move-object/from16 v0, p1

    iput-boolean v2, v0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->isLinkEstablished:Z

    const/4 v2, 0x0

    move-object/from16 v0, p1

    iput-byte v2, v0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->linkStateCause:B

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPManager;->mCatServicehandle:Lcom/android/internal/telephony/cat/CatService;

    const/16 v3, 0x6d

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/cat/CatService;->obtainMessage(I)Landroid/os/Message;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    move-object/from16 v0, v17

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual/range {v17 .. v17}, Landroid/os/Message;->sendToTarget()V

    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/cat/CatBIPManager;->freeChannel(Lcom/android/internal/telephony/cat/CatBIPConnection;)V

    return-void

    :pswitch_1
    const-string/jumbo v2, "APN_ALREADY_ACTIVE"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->destination:Ljava/net/InetAddress;

    invoke-virtual {v2}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v7

    const/16 v22, 0x0

    array-length v2, v7

    const/16 v3, 0x10

    if-ne v2, v3, :cond_9

    new-instance v18, Landroid/os/Message;

    invoke-direct/range {v18 .. v18}, Landroid/os/Message;-><init>()V

    const-string/jumbo v2, "Exception occurred while Setting up streams"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    sget-object v3, Lcom/android/internal/telephony/cat/ResultCode;->NETWORK_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    iput-object v3, v2, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->hasAdditionalInfo:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    const/4 v3, 0x0

    iput v3, v2, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->AdditionalInfo:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPManager;->mCatServicehandle:Lcom/android/internal/telephony/cat/CatService;

    const/16 v3, 0x6d

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/cat/CatService;->obtainMessage(I)Landroid/os/Message;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    move-object/from16 v0, v18

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual/range {v18 .. v18}, Landroid/os/Message;->sendToTarget()V

    const-string/jumbo v2, "StopListening() & unregisterHandler()"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPManager;->mConnectivityListener:Lcom/android/internal/telephony/cat/NetworkConnectivityListener;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/NetworkConnectivityListener;->stopListening()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPManager;->mConnectivityListener:Lcom/android/internal/telephony/cat/NetworkConnectivityListener;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/cat/NetworkConnectivityListener;->unregisterHandler(Landroid/os/Handler;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->endBipConnection()V

    const-string/jumbo v2, "Time to return"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_9
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->setupStreams()V

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->receiver:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    const/4 v2, 0x0

    move-object/from16 v0, p1

    iput-boolean v2, v0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->isfirstTime:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception v9

    const-string/jumbo v2, "Exception occurred while Setting up streams"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v16, 0x1

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/cat/CatBIPManager;->mSlotId:I

    const-string/jumbo v4, "CscFeature_RIL_EnableBIPduringMobileDataOFF"

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(ILjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "mobile_data"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_b

    const/16 v16, 0x1

    :cond_a
    :goto_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mUserDataEnabled "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPManager;->mPhone:Lcom/android/internal/telephony/Phone;

    instance-of v2, v2, Lcom/android/internal/telephony/GsmCdmaPhone;

    if-eqz v2, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPManager;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v2, Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->getDataServiceState()I

    move-result v2

    if-nez v2, :cond_c

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/telephony/cat/CatBIPManager;->isBipOverWifi:Z

    if-eqz v2, :cond_c

    if-eqz v16, :cond_c

    const/4 v2, 0x0

    move-object/from16 v0, p1

    iput-boolean v2, v0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->isLinkEstablished:Z

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/cat/CatBIPManager;->isBipOverWifi:Z

    const-string/jumbo v2, "StopListening() & unregisterHandler()"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPManager;->mConnectivityListener:Lcom/android/internal/telephony/cat/NetworkConnectivityListener;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/NetworkConnectivityListener;->stopListening()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPManager;->mConnectivityListener:Lcom/android/internal/telephony/cat/NetworkConnectivityListener;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/cat/NetworkConnectivityListener;->unregisterHandler(Landroid/os/Handler;)V

    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/cat/CatBIPManager;->requestDataConnection(Lcom/android/internal/telephony/cat/CatBIPClientConnection;)I

    move-result v21

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "requestDataConnection() returns "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_b
    const/16 v16, 0x0

    goto :goto_4

    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    sget-object v3, Lcom/android/internal/telephony/cat/ResultCode;->NETWORK_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    iput-object v3, v2, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->hasAdditionalInfo:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    const/4 v3, 0x0

    iput v3, v2, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->AdditionalInfo:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    new-instance v3, Lcom/android/internal/telephony/cat/SendDataResponse;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/cat/SendDataResponse;-><init>(I)V

    iput-object v3, v2, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->data:Lcom/android/internal/telephony/cat/ResponseData;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPManager;->mCatServicehandle:Lcom/android/internal/telephony/cat/CatService;

    const/16 v3, 0x6d

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/cat/CatService;->obtainMessage(I)Landroid/os/Message;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    move-object/from16 v0, v17

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual/range {v17 .. v17}, Landroid/os/Message;->sendToTarget()V

    invoke-virtual {v9}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v23

    const-string/jumbo v2, "TIMEOUT"

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/cat/CatBIPManager;->freeChannel(Lcom/android/internal/telephony/cat/CatBIPConnection;)V

    :cond_d
    :goto_5
    const-string/jumbo v2, "StopListening() & Unregister Handle"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPManager;->mConnectivityListener:Lcom/android/internal/telephony/cat/NetworkConnectivityListener;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/NetworkConnectivityListener;->stopListening()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPManager;->mConnectivityListener:Lcom/android/internal/telephony/cat/NetworkConnectivityListener;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/cat/NetworkConnectivityListener;->unregisterHandler(Landroid/os/Handler;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->endBipConnection()V

    const-string/jumbo v2, "Time to return"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_e
    sget-object v2, Lcom/android/internal/telephony/cat/CatBIPManager;->channelIds:[Z

    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->channelId:I

    add-int/lit8 v3, v3, -0x1

    const/4 v4, 0x0

    aput-boolean v4, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPManager;->connection_list:Ljava/util/concurrent/CopyOnWriteArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    const-string/jumbo v2, "Removed connection  Successfully!!"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_5

    :pswitch_2
    const-string/jumbo v2, "APN_REQUEST_STARTED , wait till we hear from NetworkListner"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_f
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->uiccTerminalIface:Lcom/android/internal/telephony/cat/TransportLevel;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/TransportLevel;->isUDPRemoteClient()Z

    move-result v2

    if-eqz v2, :cond_6

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->socket:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, Ljava/net/DatagramSocket;

    const-string/jumbo v2, "UDP Remote Client"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {v24 .. v24}, Ljava/net/DatagramSocket;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-virtual/range {v24 .. v24}, Ljava/net/DatagramSocket;->isClosed()Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_10
    const/4 v2, 0x0

    move-object/from16 v0, p1

    iput-boolean v2, v0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->isLinkEstablished:Z

    goto/16 :goto_3

    :cond_11
    const-string/jumbo v2, "Socket is neither Closed nor Not Connected"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "storing bytes: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static/range {p2 .. p2}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "txIndex : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->txIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " channeldatalength =  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->txBuf:Ljava/io/ByteArrayOutputStream;

    move-object/from16 v0, p2

    array-length v3, v0

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v2, v0, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->txIndex:I

    move-object/from16 v0, p2

    array-length v3, v0

    add-int/2addr v2, v3

    move-object/from16 v0, p1

    iput v2, v0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->txIndex:I
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_6
    if-eqz p3, :cond_15

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->uiccTerminalIface:Lcom/android/internal/telephony/cat/TransportLevel;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/TransportLevel;->isUDPRemoteClient()Z

    move-result v2

    if-eqz v2, :cond_14

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->socket:Ljava/lang/Object;

    check-cast v8, Ljava/net/DatagramSocket;

    new-instance v1, Ljava/net/DatagramPacket;

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->txBuf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->txBuf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v4

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->destination:Ljava/net/InetAddress;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->uiccTerminalIface:Lcom/android/internal/telephony/cat/TransportLevel;

    iget v6, v3, Lcom/android/internal/telephony/cat/TransportLevel;->portNumber:I

    const/4 v3, 0x0

    invoke-direct/range {v1 .. v6}, Ljava/net/DatagramPacket;-><init>([BIILjava/net/InetAddress;I)V

    :try_start_2
    invoke-virtual {v8, v1}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    const-string/jumbo v2, "Packet Ready sent"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    sget-object v3, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    iput-object v3, v2, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->hasAdditionalInfo:Z

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->txBuf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->reset()V

    const/4 v2, 0x0

    move-object/from16 v0, p1

    iput v2, v0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->txIndex:I

    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->bufferSize:I

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->txBuf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v3

    sub-int v11, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    new-instance v3, Lcom/android/internal/telephony/cat/SendDataResponse;

    invoke-direct {v3, v11}, Lcom/android/internal/telephony/cat/SendDataResponse;-><init>(I)V

    iput-object v3, v2, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->data:Lcom/android/internal/telephony/cat/ResponseData;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    :cond_12
    :goto_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPManager;->mCatServicehandle:Lcom/android/internal/telephony/cat/CatService;

    const/16 v3, 0x6d

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/cat/CatService;->obtainMessage(I)Landroid/os/Message;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    move-object/from16 v0, v17

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual/range {v17 .. v17}, Landroid/os/Message;->sendToTarget()V

    :cond_13
    return-void

    :catch_1
    move-exception v14

    const-string/jumbo v2, "IndexOutOfBounds Exception while writing to tx buf "

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_6

    :catch_2
    move-exception v10

    const-string/jumbo v2, "Nul pointer Exception while writing to tx buf "

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_6

    :catch_3
    move-exception v13

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "IOException while sending UDP packet : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v13}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    const/4 v3, 0x0

    iput v3, v2, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->AdditionalInfo:I

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->txBuf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->reset()V

    const/4 v2, 0x0

    move-object/from16 v0, p1

    iput v2, v0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->txIndex:I

    goto :goto_7

    :cond_14
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->uiccTerminalIface:Lcom/android/internal/telephony/cat/TransportLevel;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/TransportLevel;->isTCPRemoteClient()Z

    move-result v2

    if-eqz v2, :cond_12

    :try_start_3
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->out:Ljava/io/DataOutputStream;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->txBuf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->txBuf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v4}, Ljava/io/DataOutputStream;->write([BII)V

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->txBuf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v23

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Data written to TCP sockt "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    sget-object v3, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    iput-object v3, v2, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->hasAdditionalInfo:Z

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->txBuf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->reset()V

    const/4 v2, 0x0

    move-object/from16 v0, p1

    iput v2, v0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->txIndex:I

    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->bufferSize:I

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->txBuf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v3

    sub-int v11, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    new-instance v3, Lcom/android/internal/telephony/cat/SendDataResponse;

    invoke-direct {v3, v11}, Lcom/android/internal/telephony/cat/SendDataResponse;-><init>(I)V

    iput-object v3, v2, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->data:Lcom/android/internal/telephony/cat/ResponseData;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    goto/16 :goto_7

    :catch_4
    move-exception v9

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Exception while sending to TCP packet : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v9}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    const/4 v3, 0x0

    iput v3, v2, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->AdditionalInfo:I

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->txBuf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->reset()V

    const/4 v2, 0x0

    move-object/from16 v0, p1

    iput v2, v0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->txIndex:I

    goto/16 :goto_7

    :cond_15
    const-string/jumbo v2, "Data Stored. Send Response"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    sget-object v3, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    iput-object v3, v2, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->hasAdditionalInfo:Z

    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->bufferSize:I

    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->txIndex:I

    sub-int v11, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    new-instance v3, Lcom/android/internal/telephony/cat/SendDataResponse;

    invoke-direct {v3, v11}, Lcom/android/internal/telephony/cat/SendDataResponse;-><init>(I)V

    iput-object v3, v2, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->data:Lcom/android/internal/telephony/cat/ResponseData;

    goto/16 :goto_7

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private sendTrForApnFailedOpenchannel()V
    .locals 5

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mCatServicehandle:Lcom/android/internal/telephony/cat/CatService;

    sget-object v2, Lcom/android/internal/telephony/cat/CatService;->mBIPCurrntCmd:Lcom/android/internal/telephony/cat/CommandParams;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/CommandParams;->getCommandType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->OPEN_CHANNEL:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->currentChannel:I

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/cat/CatBIPManager;->getBIPConnection(I)Lcom/android/internal/telephony/cat/CatBIPConnection;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;

    const-string/jumbo v2, " sendTrForApnFailedOpenchannel Send the fail TR"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    sget-object v3, Lcom/android/internal/telephony/cat/ResultCode;->BIP_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

    iput-object v3, v2, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->hasAdditionalInfo:Z

    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    iput v4, v2, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->AdditionalInfo:I

    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    new-instance v3, Lcom/android/internal/telephony/cat/OpenChannelResponseData;

    invoke-direct {v3}, Lcom/android/internal/telephony/cat/OpenChannelResponseData;-><init>()V

    iput-object v3, v2, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->data:Lcom/android/internal/telephony/cat/ResponseData;

    const-string/jumbo v2, "sendTrForApnFailedOpenchannel: Filled Open Channel Terminal Response params"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->resp_pending:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mCatServicehandle:Lcom/android/internal/telephony/cat/CatService;

    const/16 v3, 0x6d

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/cat/CatService;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    iput-boolean v4, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->resp_pending:Z

    :cond_0
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cat/CatBIPManager;->freeChannel(Lcom/android/internal/telephony/cat/CatBIPConnection;)V

    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->displayConnectionStatus()V

    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->connection_list:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mConnectivityListener:Lcom/android/internal/telephony/cat/NetworkConnectivityListener;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/NetworkConnectivityListener;->stopListening()V

    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mConnectivityListener:Lcom/android/internal/telephony/cat/NetworkConnectivityListener;

    invoke-virtual {v2, p0}, Lcom/android/internal/telephony/cat/NetworkConnectivityListener;->unregisterHandler(Landroid/os/Handler;)V

    :cond_1
    const-string/jumbo v2, "continueProcessingOpenChannel() :: endBipConnection()"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->endBipConnection()V

    :cond_2
    return-void
.end method

.method private sendTrForOpenchannelTimeout()V
    .locals 5

    const/4 v4, 0x0

    iget v2, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->currentChannel:I

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/cat/CatBIPManager;->getBIPConnection(I)Lcom/android/internal/telephony/cat/CatBIPConnection;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;

    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    sget-object v3, Lcom/android/internal/telephony/cat/ResultCode;->NETWORK_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    iput-object v3, v2, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->hasAdditionalInfo:Z

    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    iput v4, v2, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->AdditionalInfo:I

    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mCatServicehandle:Lcom/android/internal/telephony/cat/CatService;

    const/16 v3, 0x6d

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/cat/CatService;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cat/CatBIPManager;->freeChannel(Lcom/android/internal/telephony/cat/CatBIPConnection;)V

    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->displayConnectionStatus()V

    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->connection_list:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mConnectivityListener:Lcom/android/internal/telephony/cat/NetworkConnectivityListener;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/NetworkConnectivityListener;->stopListening()V

    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mConnectivityListener:Lcom/android/internal/telephony/cat/NetworkConnectivityListener;

    invoke-virtual {v2, p0}, Lcom/android/internal/telephony/cat/NetworkConnectivityListener;->unregisterHandler(Landroid/os/Handler;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->endBipConnection()V

    iput-boolean v4, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->resp_pending:Z

    return-void
.end method

.method private setBipApn(Lcom/android/internal/telephony/cat/CatBIPClientConnection;)V
    .locals 5

    const/4 v4, 0x1

    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    if-nez v1, :cond_0

    const-string/jumbo v2, "setBipApn : there is no default preferences"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v2, "setBipApn : set values"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->feature:Ljava/lang/String;

    const-string/jumbo v3, "enableHIPRI"

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->feature:Ljava/lang/String;

    const-string/jumbo v3, "enableIMS"

    if-ne v2, v3, :cond_3

    :cond_1
    const-string/jumbo v2, "bip.pref.enable"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    :cond_2
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void

    :cond_3
    const-string/jumbo v2, "KDI"

    iget v3, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mSlotId:I

    invoke-static {v3}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "SPR"

    iget v3, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mSlotId:I

    invoke-static {v3}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mPhone:Lcom/android/internal/telephony/Phone;

    instance-of v2, v2, Lcom/android/internal/telephony/GsmCdmaPhone;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v2, Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v2, Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v2, Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v2

    const/16 v3, 0xe

    if-eq v2, v3, :cond_4

    const-string/jumbo v2, "bip.pref.enable"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v2, "bip.pref.apn"

    const-string/jumbo v3, "cinet.spcs"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    :cond_4
    const-string/jumbo v2, "bip.pref.enable"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v2, "bip.pref.apn"

    iget-object v3, p1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->NetworkAccessname:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v2, "bip.pref.user"

    iget-object v3, p1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->userName:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v2, "bip.pref.passwd"

    iget-object v3, p1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->passwd:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v2, "VZW"

    iget v3, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mSlotId:I

    invoke-static {v3}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "bip.pref.protocol"

    const-string/jumbo v3, "IPV4V6"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v2, "bip.pref.roaming_protocol"

    const-string/jumbo v3, "IPV4V6"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_0
.end method


# virtual methods
.method public dispose()V
    .locals 3

    const-string/jumbo v1, "dispose CatBIPManager"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mConnectivityListener:Lcom/android/internal/telephony/cat/NetworkConnectivityListener;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/NetworkConnectivityListener;->stopListening()V

    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mConnectivityListener:Lcom/android/internal/telephony/cat/NetworkConnectivityListener;

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/cat/NetworkConnectivityListener;->unregisterHandler(Landroid/os/Handler;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->endBipConnection()V

    iget v1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->currentChannel:I

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/cat/CatBIPManager;->getBIPConnection(I)Lcom/android/internal/telephony/cat/CatBIPConnection;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cat/CatBIPManager;->freeChannel(Lcom/android/internal/telephony/cat/CatBIPConnection;)V

    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method

.method protected endBipConnection()V
    .locals 4

    const/4 v3, 0x0

    sget-object v1, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    sput-object v1, Lcom/android/internal/telephony/cat/CatBIPManager;->mAPNState:Landroid/net/NetworkInfo$State;

    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->connMgr:Landroid/net/ConnectivityManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->connMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v1, v3}, Landroid/net/ConnectivityManager;->bindProcessToNetwork(Landroid/net/Network;)Z

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->connMgr:Landroid/net/ConnectivityManager;

    sget-object v2, Lcom/android/internal/telephony/cat/CatBIPManager;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v1, v2}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sput-object v3, Lcom/android/internal/telephony/cat/CatBIPManager;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    :cond_0
    const-string/jumbo v1, "SPR"

    iget v2, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mSlotId:I

    invoke-static {v2}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "ril.bip_in_progress"

    const-string/jumbo v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "IllegalArgumentException happens"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getChannelStatus(Lcom/android/internal/telephony/cat/CommandParams;)V
    .locals 5

    new-instance v2, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    invoke-direct {v2}, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    iget-object v3, p1, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iput-object v3, v2, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    sget-object v3, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    iput-object v3, v2, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->hasAdditionalInfo:Z

    const-string/jumbo v2, "getChannelStatus"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->connection_list:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    new-instance v3, Lcom/android/internal/telephony/cat/GetChannelStatusResponse;

    sget-object v4, Lcom/android/internal/telephony/cat/CatBIPManager;->channelIds:[Z

    invoke-direct {v3, v0, v4}, Lcom/android/internal/telephony/cat/GetChannelStatusResponse;-><init>(Ljava/util/Iterator;[Z)V

    iput-object v3, v2, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->data:Lcom/android/internal/telephony/cat/ResponseData;

    const-string/jumbo v2, "Filled crnt_resp.data"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mCatServicehandle:Lcom/android/internal/telephony/cat/CatService;

    const/16 v3, 0x6d

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/cat/CatService;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public handleCloseChannel(Lcom/android/internal/telephony/cat/CloseChannelParams;)V
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x1

    const-string/jumbo v3, "handleCloseChannel"

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    iget v3, p1, Lcom/android/internal/telephony/cat/CloseChannelParams;->mChannelId:I

    and-int/lit8 v1, v3, 0x7

    new-instance v3, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    invoke-direct {v3}, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;-><init>()V

    iput-object v3, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mCatServicehandle:Lcom/android/internal/telephony/cat/CatService;

    const/16 v4, 0x6d

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/cat/CatService;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleCloseChannel: Requested Chanel ID = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    iget-object v4, p1, Lcom/android/internal/telephony/cat/CloseChannelParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iput-object v4, v3, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    sget-object v4, Lcom/android/internal/telephony/cat/ResultCode;->BIP_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

    iput-object v4, v3, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    iput-boolean v5, v3, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->hasAdditionalInfo:Z

    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->displayConnectionStatus()V

    iget v3, p1, Lcom/android/internal/telephony/cat/CloseChannelParams;->mChannelId:I

    const/16 v4, 0x21

    if-lt v3, v4, :cond_0

    iget v3, p1, Lcom/android/internal/telephony/cat/CloseChannelParams;->mChannelId:I

    const/16 v4, 0x27

    if-le v3, v4, :cond_1

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleCloseChannel: Invalid Channel Id! BIP\'s cid ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " params.mChannelId"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lcom/android/internal/telephony/cat/CloseChannelParams;->mChannelId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    iput v6, v3, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->AdditionalInfo:I

    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    iput-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_1
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/cat/CatBIPManager;->getBIPConnection(I)Lcom/android/internal/telephony/cat/CatBIPConnection;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleCloseChannel: No Channel Available! BIP cid ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " params.mChannelId ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lcom/android/internal/telephony/cat/CloseChannelParams;->mChannelId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    iput v6, v3, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->AdditionalInfo:I

    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    iput-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_2
    iget-object v3, v0, Lcom/android/internal/telephony/cat/CatBIPConnection;->uiccTerminalIface:Lcom/android/internal/telephony/cat/TransportLevel;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cat/TransportLevel;->isClient()Z

    move-result v3

    if-eqz v3, :cond_4

    const-string/jumbo v3, "handleCloseChannel: UICC in CLIENT Mode"

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v3

    const-string/jumbo v4, "CscFeature_RIL_SupportCloseChannelReplyForBIP"

    invoke-virtual {v3, v4}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    iput-object v0, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->catBipConn:Lcom/android/internal/telephony/cat/CatBIPConnection;

    const-string/jumbo v3, "endBipConnection()"

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-boolean v5, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->isClosing:Z

    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->endBipConnection()V

    :goto_0
    const-string/jumbo v3, "Be back to old StrictMode"

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->oldPolicy:Landroid/os/StrictMode$ThreadPolicy;

    invoke-static {v3}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    :goto_1
    return-void

    :cond_3
    check-cast v0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cat/CatBIPManager;->closeClientConnection(Lcom/android/internal/telephony/cat/CatBIPClientConnection;)V

    goto :goto_0

    :cond_4
    const-string/jumbo v3, "handleCloseChannel: UICC in SERVER Mode"

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    const/4 v7, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "handling Message : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    const-string/jumbo v5, "handleMessage: default"

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const-string/jumbo v5, "BIP_DATA_STATE_CHANGED"

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->feature:Ljava/lang/String;

    const-string/jumbo v6, "enableBIP"

    if-ne v5, v6, :cond_2

    iget-object v5, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mConnectivityListener:Lcom/android/internal/telephony/cat/NetworkConnectivityListener;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cat/NetworkConnectivityListener;->getType()Lcom/android/internal/telephony/cat/NetworkConnectivityListener$Type;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/cat/NetworkConnectivityListener$Type;->BIP:Lcom/android/internal/telephony/cat/NetworkConnectivityListener$Type;

    if-eq v5, v6, :cond_2

    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "feature is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->feature:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " mConnectivityListener.getType() is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mConnectivityListener:Lcom/android/internal/telephony/cat/NetworkConnectivityListener;

    invoke-virtual {v6}, Lcom/android/internal/telephony/cat/NetworkConnectivityListener;->getType()Lcom/android/internal/telephony/cat/NetworkConnectivityListener$Type;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_2
    iget-object v5, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->feature:Ljava/lang/String;

    const-string/jumbo v6, "enableHIPRI"

    if-ne v5, v6, :cond_3

    iget-object v5, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mConnectivityListener:Lcom/android/internal/telephony/cat/NetworkConnectivityListener;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cat/NetworkConnectivityListener;->getType()Lcom/android/internal/telephony/cat/NetworkConnectivityListener$Type;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/cat/NetworkConnectivityListener$Type;->HIPRI:Lcom/android/internal/telephony/cat/NetworkConnectivityListener$Type;

    if-ne v5, v6, :cond_1

    :cond_3
    iget-object v5, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->feature:Ljava/lang/String;

    const-string/jumbo v6, "enableIMS"

    if-ne v5, v6, :cond_4

    iget-object v5, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mConnectivityListener:Lcom/android/internal/telephony/cat/NetworkConnectivityListener;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cat/NetworkConnectivityListener;->getType()Lcom/android/internal/telephony/cat/NetworkConnectivityListener$Type;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/cat/NetworkConnectivityListener$Type;->IMS:Lcom/android/internal/telephony/cat/NetworkConnectivityListener$Type;

    if-ne v5, v6, :cond_1

    :cond_4
    iget-object v5, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mConnectivityListener:Lcom/android/internal/telephony/cat/NetworkConnectivityListener;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cat/NetworkConnectivityListener;->getState()Lcom/android/internal/telephony/cat/NetworkConnectivityListener$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/cat/NetworkConnectivityListener$State;->DISCONNECTED:Lcom/android/internal/telephony/cat/NetworkConnectivityListener$State;

    if-ne v5, v6, :cond_6

    iget-object v5, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mConnectivityListener:Lcom/android/internal/telephony/cat/NetworkConnectivityListener;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cat/NetworkConnectivityListener;->stopListening()V

    iget-object v5, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mConnectivityListener:Lcom/android/internal/telephony/cat/NetworkConnectivityListener;

    invoke-virtual {v5, p0}, Lcom/android/internal/telephony/cat/NetworkConnectivityListener;->unregisterHandler(Landroid/os/Handler;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->endBipConnection()V

    iget v5, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mSlotId:I

    const/16 v6, 0xa

    invoke-static {v5, v6}, Lcom/android/internal/telephony/cat/CatEventDownload;->isMonitoringEvent(II)Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->connection_list:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cat/CatBIPConnection;

    iget-object v5, v0, Lcom/android/internal/telephony/cat/CatBIPConnection;->uiccTerminalIface:Lcom/android/internal/telephony/cat/TransportLevel;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cat/TransportLevel;->isServer()Z

    move-result v5

    if-nez v5, :cond_5

    move-object v1, v0

    check-cast v1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;

    iget-object v5, v1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->uiccTerminalIface:Lcom/android/internal/telephony/cat/TransportLevel;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cat/TransportLevel;->isRemoteClient()Z

    move-result v5

    if-eqz v5, :cond_5

    iput-boolean v7, v1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->isLinkEstablished:Z

    const/4 v5, 0x5

    iput-byte v5, v1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->linkStateCause:B

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cat/CatBIPManager;->sendChannelStatusEvent(Lcom/android/internal/telephony/cat/CatBIPConnection;)V

    goto :goto_1

    :cond_6
    iget-object v5, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mCatServicehandle:Lcom/android/internal/telephony/cat/CatService;

    sget-object v5, Lcom/android/internal/telephony/cat/CatService;->mBIPCurrntCmd:Lcom/android/internal/telephony/cat/CommandParams;

    if-nez v5, :cond_7

    const-string/jumbo v5, "No BIP cmd is being processed, May not have been unregistered from NWConnectivityListener  "

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_7
    iget-object v5, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mCatServicehandle:Lcom/android/internal/telephony/cat/CatService;

    sget-object v5, Lcom/android/internal/telephony/cat/CatService;->mBIPCurrntCmd:Lcom/android/internal/telephony/cat/CommandParams;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cat/CommandParams;->getCommandType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->OPEN_CHANNEL:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    if-ne v5, v6, :cond_8

    iget-object v5, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mConnectivityListener:Lcom/android/internal/telephony/cat/NetworkConnectivityListener;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cat/NetworkConnectivityListener;->getState()Lcom/android/internal/telephony/cat/NetworkConnectivityListener$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/cat/NetworkConnectivityListener$State;->DISCONNECTED:Lcom/android/internal/telephony/cat/NetworkConnectivityListener$State;

    if-ne v5, v6, :cond_8

    const-string/jumbo v5, "Sending Failure TR..."

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    sget-object v6, Lcom/android/internal/telephony/cat/ResultCode;->NETWORK_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    iput-object v6, v5, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    iget-object v5, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->hasAdditionalInfo:Z

    iget-object v5, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    iput v7, v5, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->AdditionalInfo:I

    iget-boolean v5, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->resp_pending:Z

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mCatServicehandle:Lcom/android/internal/telephony/cat/CatService;

    const/16 v6, 0x6d

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/cat/CatService;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    iput-object v5, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    iget v5, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->currentChannel:I

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/cat/CatBIPManager;->getBIPConnection(I)Lcom/android/internal/telephony/cat/CatBIPConnection;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/cat/CatBIPClientConnection;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/cat/CatBIPManager;->freeChannel(Lcom/android/internal/telephony/cat/CatBIPConnection;)V

    iput-boolean v7, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->resp_pending:Z

    :cond_8
    iget-object v5, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mCatServicehandle:Lcom/android/internal/telephony/cat/CatService;

    sget-object v5, Lcom/android/internal/telephony/cat/CatService;->mBIPCurrntCmd:Lcom/android/internal/telephony/cat/CommandParams;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cat/CommandParams;->getCommandType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->CLOSE_CHANNEL:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    if-ne v5, v6, :cond_0

    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->continueProcessingCloseChannel()V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public handleOpenChannel(Lcom/android/internal/telephony/cat/OpenChannelParams;)V
    .locals 20

    const-string/jumbo v2, "handleOpenChannel"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v15, 0x0

    const/4 v1, 0x0

    new-instance v2, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    invoke-direct {v2}, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/cat/OpenChannelParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iput-object v3, v2, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    sget-object v3, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    iput-object v3, v2, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->hasAdditionalInfo:Z

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->channelsAvailable()Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "Bearer type not supported"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    sget-object v3, Lcom/android/internal/telephony/cat/ResultCode;->BEYOND_TERMINAL_CAPABILITY:Lcom/android/internal/telephony/cat/ResultCode;

    iput-object v3, v2, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->hasAdditionalInfo:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPManager;->mCatServicehandle:Lcom/android/internal/telephony/cat/CatService;

    const/16 v3, 0x6d

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/cat/CatService;->obtainMessage(I)Landroid/os/Message;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    iput-object v2, v15, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v15}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_0
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/cat/CatBIPManager;->mSlotId:I

    const-string/jumbo v4, "CscFeature_RIL_EnableBIPduringMobileDataOFF"

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(ILjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "mobile_data"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    const/4 v14, 0x1

    :goto_0
    const/4 v13, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->isBipOverWifiEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPManager;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/net/ConnectivityManager;

    const/4 v2, 0x1

    invoke-virtual {v12, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v19

    if-eqz v19, :cond_1

    invoke-virtual/range {v19 .. v19}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v13, 0x1

    :cond_1
    if-nez v14, :cond_3

    xor-int/lit8 v2, v13, 0x1

    if-eqz v2, :cond_3

    const-string/jumbo v2, "Mobile data and WiFi both are disable."

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    sget-object v3, Lcom/android/internal/telephony/cat/ResultCode;->NETWORK_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    iput-object v3, v2, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->hasAdditionalInfo:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPManager;->mCatServicehandle:Lcom/android/internal/telephony/cat/CatService;

    const/16 v3, 0x6d

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/cat/CatService;->obtainMessage(I)Landroid/os/Message;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    iput-object v2, v15, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v15}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_2
    const/4 v14, 0x0

    goto :goto_0

    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->displayConnectionStatus()V

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/cat/OpenChannelParams;->mTransportLevel:Lcom/android/internal/telephony/cat/TransportLevel;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/TransportLevel;->isClient()Z

    move-result v2

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPManager;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/telephony/TelephonyManager;

    invoke-virtual/range {v18 .. v18}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v16

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "networkType : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/cat/OpenChannelParams;->mBearerDesc:Lcom/android/internal/telephony/cat/BearerDescription;

    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/internal/telephony/cat/OpenChannelParams;->mBufferSize:I

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/cat/OpenChannelParams;->mTransportLevel:Lcom/android/internal/telephony/cat/TransportLevel;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/internal/telephony/cat/OpenChannelParams;->mNetworkAccessName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/internal/telephony/cat/OpenChannelParams;->mBearerMode:Lcom/android/internal/telephony/cat/BearerMode;

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/internal/telephony/cat/OpenChannelParams;->mDataDestinationAddress:Lcom/android/internal/telephony/cat/DataDestinationAddress;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/internal/telephony/cat/OpenChannelParams;->mUsernameTextMessage:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v9, v5, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/internal/telephony/cat/OpenChannelParams;->mPasswordTextMessage:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v10, v5, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    move-object/from16 v5, p0

    invoke-direct/range {v1 .. v10}, Lcom/android/internal/telephony/cat/CatBIPClientConnection;-><init>(Lcom/android/internal/telephony/cat/BearerDescription;ILcom/android/internal/telephony/cat/TransportLevel;Lcom/android/internal/telephony/cat/CatBIPManager;Ljava/lang/String;Lcom/android/internal/telephony/cat/BearerMode;Lcom/android/internal/telephony/cat/DataDestinationAddress;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "Change the StrictMode for BIP client Mode"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v2}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    invoke-virtual {v2}, Landroid/os/StrictMode$ThreadPolicy$Builder;->detectNetwork()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/StrictMode$ThreadPolicy$Builder;->penaltyDropBox()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v2

    invoke-static {v2}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->assignChannelId()I

    move-result v2

    iput v2, v1, Lcom/android/internal/telephony/cat/CatBIPConnection;->channelId:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPManager;->connection_list:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Channel Assigned  = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/android/internal/telephony/cat/CatBIPConnection;->channelId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget v2, v1, Lcom/android/internal/telephony/cat/CatBIPConnection;->channelId:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/cat/CatBIPManager;->currentChannel:I

    move-object v11, v1

    new-instance v17, Ljava/lang/Thread;

    new-instance v2, Lcom/android/internal/telephony/cat/CatBIPManager$2;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v1}, Lcom/android/internal/telephony/cat/CatBIPManager$2;-><init>(Lcom/android/internal/telephony/cat/CatBIPManager;Lcom/android/internal/telephony/cat/CatBIPConnection;)V

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Thread;->start()V

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->displayConnectionStatus()V

    :goto_1
    return-void

    :cond_4
    const-string/jumbo v2, "handleOpenChannel: UICC in SERVER mode"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public handleReceiveData(Lcom/android/internal/telephony/cat/ReceiveDataParams;)V
    .locals 6

    const/4 v5, 0x1

    const-string/jumbo v3, "handleReceiveData"

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget v3, p1, Lcom/android/internal/telephony/cat/ReceiveDataParams;->mChannelId:I

    and-int/lit8 v1, v3, 0x7

    new-instance v3, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    invoke-direct {v3}, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;-><init>()V

    iput-object v3, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mCatServicehandle:Lcom/android/internal/telephony/cat/CatService;

    const/16 v4, 0x6d

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/cat/CatService;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    iget-object v4, p1, Lcom/android/internal/telephony/cat/ReceiveDataParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iput-object v4, v3, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    sget-object v4, Lcom/android/internal/telephony/cat/ResultCode;->BIP_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

    iput-object v4, v3, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    iput-boolean v5, v3, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->hasAdditionalInfo:Z

    const-string/jumbo v3, "handleReceiveData: Created partial Receive Data Terminal Response"

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget v3, p1, Lcom/android/internal/telephony/cat/ReceiveDataParams;->mChannelId:I

    const/16 v4, 0x21

    if-lt v3, v4, :cond_0

    iget v3, p1, Lcom/android/internal/telephony/cat/ReceiveDataParams;->mChannelId:I

    const/16 v4, 0x27

    if-le v3, v4, :cond_1

    :cond_0
    const-string/jumbo v3, "handleReceiveData: Invalid Channel ID"

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    const/4 v4, 0x3

    iput v4, v3, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->AdditionalInfo:I

    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    iput-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_1
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/cat/CatBIPManager;->getBIPConnection(I)Lcom/android/internal/telephony/cat/CatBIPConnection;

    move-result-object v0

    if-nez v0, :cond_2

    const-string/jumbo v3, "handleReceiveData: No Channel available"

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    iput v5, v3, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->AdditionalInfo:I

    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    iput-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_2
    iget-object v3, v0, Lcom/android/internal/telephony/cat/CatBIPConnection;->uiccTerminalIface:Lcom/android/internal/telephony/cat/TransportLevel;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cat/TransportLevel;->isClient()Z

    move-result v3

    if-eqz v3, :cond_3

    const-string/jumbo v3, "Receiving Data in Client mode"

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;

    iget-byte v3, p1, Lcom/android/internal/telephony/cat/ReceiveDataParams;->mChannelDataLength:B

    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/cat/CatBIPManager;->receiveDataClientMode(Lcom/android/internal/telephony/cat/CatBIPClientConnection;I)V

    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    iput-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    const-string/jumbo v3, "handleReceiveData: Sending Receive Data Terminal Response to mCatService handle"

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_3
    const-string/jumbo v3, "handleReceiveData: BIP Connection Found. UICC in SERVER mode"

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public handleSendData(Lcom/android/internal/telephony/cat/SendDataParams;)V
    .locals 9

    const-string/jumbo v7, "handleSendData"

    invoke-static {p0, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    iget v7, p1, Lcom/android/internal/telephony/cat/SendDataParams;->mChannelId:I

    and-int/lit8 v3, v7, 0x7

    iget-object v7, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mCatServicehandle:Lcom/android/internal/telephony/cat/CatService;

    const/16 v8, 0x6d

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/cat/CatService;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    new-instance v7, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    invoke-direct {v7}, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;-><init>()V

    iput-object v7, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    iget-object v7, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    iget-object v8, p1, Lcom/android/internal/telephony/cat/SendDataParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iput-object v8, v7, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iget-object v7, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    sget-object v8, Lcom/android/internal/telephony/cat/ResultCode;->BIP_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

    iput-object v8, v7, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    iget-object v7, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    const/4 v8, 0x1

    iput-boolean v8, v7, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->hasAdditionalInfo:Z

    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->displayConnectionStatus()V

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/cat/CatBIPManager;->getBIPConnection(I)Lcom/android/internal/telephony/cat/CatBIPConnection;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v7, p1, Lcom/android/internal/telephony/cat/SendDataParams;->mChannelId:I

    const/16 v8, 0x21

    if-lt v7, v8, :cond_0

    iget v7, p1, Lcom/android/internal/telephony/cat/SendDataParams;->mChannelId:I

    const/16 v8, 0x27

    if-le v7, v8, :cond_1

    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "handleSendData: No Channel available : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    const/4 v8, 0x3

    iput v8, v7, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->AdditionalInfo:I

    iget-object v7, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    iput-object v7, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_1
    iget-object v7, v0, Lcom/android/internal/telephony/cat/CatBIPConnection;->uiccTerminalIface:Lcom/android/internal/telephony/cat/TransportLevel;

    invoke-virtual {v7}, Lcom/android/internal/telephony/cat/TransportLevel;->isClient()Z

    move-result v7

    if-eqz v7, :cond_2

    const-string/jumbo v7, "handleSendData: UICC in CLIENT mode"

    invoke-static {p0, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, v0

    iget-object v7, p1, Lcom/android/internal/telephony/cat/SendDataParams;->mChannelData:[B

    invoke-virtual {v7}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    iget-boolean v4, p1, Lcom/android/internal/telephony/cat/SendDataParams;->mSendImmediate:Z

    new-instance v6, Ljava/lang/Thread;

    new-instance v7, Lcom/android/internal/telephony/cat/CatBIPManager$3;

    invoke-direct {v7, p0, v0, v2, v4}, Lcom/android/internal/telephony/cat/CatBIPManager$3;-><init>(Lcom/android/internal/telephony/cat/CatBIPManager;Lcom/android/internal/telephony/cat/CatBIPConnection;[BZ)V

    invoke-direct {v6, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    :goto_0
    return-void

    :cond_2
    const-string/jumbo v7, "handleSendData: UICC in SERVER mode"

    invoke-static {p0, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method isBipOverWifiEnabled()Z
    .locals 3

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v1, "CscFeature_RIL_SupportBipOverWifi"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/internal/telephony/TelephonyFeatures;->SHIP_BUILD:Z

    if-nez v0, :cond_1

    const-string/jumbo v0, "1"

    const-string/jumbo v1, "persist.radio.bipoverwifi"

    const-string/jumbo v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public linkDropWhenConnectionReset(Lcom/android/internal/telephony/cat/CatBIPClientConnection;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mConnectivityListener:Lcom/android/internal/telephony/cat/NetworkConnectivityListener;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/NetworkConnectivityListener;->stopListening()V

    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mConnectivityListener:Lcom/android/internal/telephony/cat/NetworkConnectivityListener;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/cat/NetworkConnectivityListener;->unregisterHandler(Landroid/os/Handler;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->endBipConnection()V

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->isLinkEstablished:Z

    const/4 v0, 0x5

    iput-byte v0, p1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->linkStateCause:B

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cat/CatBIPManager;->sendChannelStatusEvent(Lcom/android/internal/telephony/cat/CatBIPConnection;)V

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/CatBIPManager;->freeChannel(Lcom/android/internal/telephony/cat/CatBIPConnection;)V

    return-void
.end method

.method public registerPhone(Lcom/android/internal/telephony/Phone;)V
    .locals 1

    const-string/jumbo v0, "CatBIPManager phone reloaded!"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mPhone:Lcom/android/internal/telephony/Phone;

    return-void
.end method

.method public sendBipOtaFailIntent()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.sec.android.sktota.usim.FAIL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public sendChannelStatusEvent(Lcom/android/internal/telephony/cat/CatBIPConnection;)V
    .locals 9

    const/16 v8, 0xa

    iget v5, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mSlotId:I

    invoke-static {v5, v8}, Lcom/android/internal/telephony/cat/CatEventDownload;->isMonitoringEvent(II)Z

    move-result v5

    if-nez v5, :cond_0

    const-string/jumbo v5, "CatBIPManager"

    const-string/jumbo v6, "sendChannelStatusEvent: not set"

    invoke-static {v5, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v5, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->CHANNEL_STATUS:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v5

    or-int/lit16 v4, v5, 0x80

    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    iget v5, p1, Lcom/android/internal/telephony/cat/CatBIPConnection;->channelId:I

    and-int/lit8 v5, v5, 0x7

    int-to-byte v3, v5

    iget-object v5, p1, Lcom/android/internal/telephony/cat/CatBIPConnection;->uiccTerminalIface:Lcom/android/internal/telephony/cat/TransportLevel;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cat/TransportLevel;->isServer()Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v5, p1

    check-cast v5, Lcom/android/internal/telephony/cat/CatBIPServerConnection;

    iget-byte v5, v5, Lcom/android/internal/telephony/cat/CatBIPServerConnection;->linkState:B

    shl-int/lit8 v5, v5, 0x6

    or-int/2addr v5, v3

    int-to-byte v3, v5

    :cond_1
    :goto_0
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    iget-byte v5, p1, Lcom/android/internal/telephony/cat/CatBIPConnection;->linkStateCause:B

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    new-instance v1, Lcom/android/internal/telephony/cat/CatEnvelopeMessage;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    const/16 v6, 0x82

    const/16 v7, 0x81

    invoke-direct {v1, v8, v6, v7, v5}, Lcom/android/internal/telephony/cat/CatEnvelopeMessage;-><init>(III[B)V

    iget-object v5, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mCatServicehandle:Lcom/android/internal/telephony/cat/CatService;

    const/16 v6, 0x6a

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/cat/CatService;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-string/jumbo v5, "CatBIPManager"

    const-string/jumbo v6, "sendChannelStatusEvent: Send EVENT_DOWNLOAD_CHANNEL_STATUS Envelope Message to mCatService handle"

    invoke-static {v5, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_2
    move-object v5, p1

    check-cast v5, Lcom/android/internal/telephony/cat/CatBIPClientConnection;

    iget-boolean v5, v5, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->isLinkEstablished:Z

    if-eqz v5, :cond_1

    or-int/lit16 v5, v3, 0x80

    int-to-byte v3, v5

    goto :goto_0
.end method

.method public sendDataAvailableEvent(Lcom/android/internal/telephony/cat/CatBIPConnection;)V
    .locals 11

    const/16 v10, 0x9

    iget v7, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mSlotId:I

    invoke-static {v7, v10}, Lcom/android/internal/telephony/cat/CatEventDownload;->isMonitoringEvent(II)Z

    move-result v7

    if-nez v7, :cond_0

    const-string/jumbo v7, "CatBIPManager"

    const-string/jumbo v8, "sendDataAvailableEvent: not set"

    invoke-static {v7, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v7, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->CHANNEL_STATUS:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v7}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v7

    or-int/lit16 v6, v7, 0x80

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 v7, 0x2

    invoke-virtual {v0, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    iget v7, p1, Lcom/android/internal/telephony/cat/CatBIPConnection;->channelId:I

    and-int/lit8 v7, v7, 0x7

    int-to-byte v5, v7

    iget-object v7, p1, Lcom/android/internal/telephony/cat/CatBIPConnection;->uiccTerminalIface:Lcom/android/internal/telephony/cat/TransportLevel;

    invoke-virtual {v7}, Lcom/android/internal/telephony/cat/TransportLevel;->isServer()Z

    move-result v7

    if-eqz v7, :cond_2

    move-object v7, p1

    check-cast v7, Lcom/android/internal/telephony/cat/CatBIPServerConnection;

    iget-byte v7, v7, Lcom/android/internal/telephony/cat/CatBIPServerConnection;->linkState:B

    shl-int/lit8 v7, v7, 0x6

    or-int/2addr v7, v5

    int-to-byte v5, v7

    :cond_1
    :goto_0
    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    sget-object v7, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->CHANNEL_DATA_LENGTH:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v7}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v7

    or-int/lit16 v6, v7, 0x80

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 v2, 0x0

    iget-object v7, p1, Lcom/android/internal/telephony/cat/CatBIPConnection;->uiccTerminalIface:Lcom/android/internal/telephony/cat/TransportLevel;

    invoke-virtual {v7}, Lcom/android/internal/telephony/cat/TransportLevel;->isServer()Z

    move-result v7

    if-eqz v7, :cond_3

    const/16 v2, 0xff

    :goto_1
    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    new-instance v3, Lcom/android/internal/telephony/cat/CatEnvelopeMessage;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    const/16 v8, 0x82

    const/16 v9, 0x81

    invoke-direct {v3, v10, v8, v9, v7}, Lcom/android/internal/telephony/cat/CatEnvelopeMessage;-><init>(III[B)V

    iget-object v7, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mCatServicehandle:Lcom/android/internal/telephony/cat/CatService;

    const/16 v8, 0x6a

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/cat/CatService;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    const-string/jumbo v7, "CatBIPManager"

    const-string/jumbo v8, "sendDataAvailableEvent: Send EVENT_DOWNLOAD_DATA_AVAILABLE Envelope Message to mCatService handle"

    invoke-static {v7, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_2
    move-object v7, p1

    check-cast v7, Lcom/android/internal/telephony/cat/CatBIPClientConnection;

    iget-boolean v7, v7, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->isLinkEstablished:Z

    if-eqz v7, :cond_1

    or-int/lit16 v7, v5, 0x80

    int-to-byte v5, v7

    goto :goto_0

    :cond_3
    check-cast p1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;

    iget-object v7, p1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->rxBuf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v1

    const/16 v7, 0xff

    if-le v1, v7, :cond_4

    const/16 v2, 0xff

    goto :goto_1

    :cond_4
    move v2, v1

    goto :goto_1
.end method
