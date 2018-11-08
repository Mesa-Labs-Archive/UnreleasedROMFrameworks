.class Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;
.super Lcom/android/internal/util/StateMachine;
.source "WifiScanningServiceImpl.java"

# interfaces
.implements Lcom/android/server/wifi/WifiNative$PnoEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WifiPnoScanStateMachine"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine$DefaultState;,
        Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine$HwPnoScanState;,
        Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine$SingleScanState;,
        Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine$StartedState;,
        Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine$SwPnoScanState;
    }
.end annotation


# instance fields
.field private final mActivePnoScans:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList",
            "<",
            "Landroid/util/Pair",
            "<",
            "Landroid/net/wifi/WifiScanner$PnoSettings;",
            "Landroid/net/wifi/WifiScanner$ScanSettings;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mDefaultState:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine$DefaultState;

.field private final mHwPnoScanState:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine$HwPnoScanState;

.field private mInternalClientInfo:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$InternalClientInfo;

.field private final mSingleScanState:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine$SingleScanState;

.field private final mStartedState:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine$StartedState;

.field private final mSwPnoScanState:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine$SwPnoScanState;

.field final synthetic this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;


# direct methods
.method static synthetic -get0(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;)Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine$DefaultState;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;->mDefaultState:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine$DefaultState;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;)Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine$HwPnoScanState;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;->mHwPnoScanState:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine$HwPnoScanState;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;)Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine$SingleScanState;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;->mSingleScanState:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine$SingleScanState;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;)Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine$StartedState;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;->mStartedState:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine$StartedState;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;)Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine$SwPnoScanState;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;->mSwPnoScanState:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine$SwPnoScanState;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;)Landroid/net/wifi/WifiScanner$ScanSettings;
    .locals 1

    invoke-direct {p0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;->getScanSettings()Landroid/net/wifi/WifiScanner$ScanSettings;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;ILandroid/net/wifi/WifiScanner$ScanSettings;Landroid/net/wifi/WifiScanner$PnoSettings;)Z
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;->addHwPnoScanRequest(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;ILandroid/net/wifi/WifiScanner$ScanSettings;Landroid/net/wifi/WifiScanner$PnoSettings;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap10(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;->sendPnoScanFailedToAllAndClear(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;ILandroid/net/wifi/WifiScanner$ScanSettings;Landroid/net/wifi/WifiScanner$PnoSettings;)Z
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;->addSwPnoScanRequest(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;ILandroid/net/wifi/WifiScanner$ScanSettings;Landroid/net/wifi/WifiScanner$PnoSettings;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;[Landroid/net/wifi/ScanResult;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;->isSingleScanNeeded([Landroid/net/wifi/ScanResult;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap4(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;Landroid/net/wifi/WifiScanner$ScanSettings;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;->addSingleScanRequest(Landroid/net/wifi/WifiScanner$ScanSettings;)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;->removeHwPnoScanRequest(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;I)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;->removeInternalClient()V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;->removeSwPnoScanRequest(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;I)V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;[Landroid/net/wifi/ScanResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;->reportPnoNetworkFound([Landroid/net/wifi/ScanResult;)V

    return-void
.end method

.method constructor <init>(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;Landroid/os/Looper;)V
    .locals 3

    iput-object p1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    const-string/jumbo v0, "WifiPnoScanStateMachine"

    invoke-direct {p0, v0, p2}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;Landroid/os/Looper;)V

    new-instance v0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine$DefaultState;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine$DefaultState;-><init>(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;)V

    iput-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;->mDefaultState:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine$DefaultState;

    new-instance v0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine$StartedState;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine$StartedState;-><init>(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;)V

    iput-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;->mStartedState:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine$StartedState;

    new-instance v0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine$HwPnoScanState;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine$HwPnoScanState;-><init>(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;)V

    iput-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;->mHwPnoScanState:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine$HwPnoScanState;

    new-instance v0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine$SwPnoScanState;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine$SwPnoScanState;-><init>(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;)V

    iput-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;->mSwPnoScanState:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine$SwPnoScanState;

    new-instance v0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine$SingleScanState;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine$SingleScanState;-><init>(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;)V

    iput-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;->mSingleScanState:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine$SingleScanState;

    new-instance v0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;

    iget-object v1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;-><init>(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;)V

    iput-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;->mActivePnoScans:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;

    const/16 v0, 0x100

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;->setLogRecSize(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;->setLogOnlyTransitions(Z)V

    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;->mDefaultState:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine$DefaultState;

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;->addState(Lcom/android/internal/util/State;)V

    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;->mStartedState:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine$StartedState;

    iget-object v1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;->mDefaultState:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine$DefaultState;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;->mHwPnoScanState:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine$HwPnoScanState;

    iget-object v1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;->mStartedState:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine$StartedState;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;->mSingleScanState:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine$SingleScanState;

    iget-object v1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;->mHwPnoScanState:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine$HwPnoScanState;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;->mSwPnoScanState:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine$SwPnoScanState;

    iget-object v1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;->mStartedState:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine$StartedState;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;->mDefaultState:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine$DefaultState;

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;->setInitialState(Lcom/android/internal/util/State;)V

    return-void
.end method

.method private addBackgroundScanRequest(Landroid/net/wifi/WifiScanner$ScanSettings;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    const-string/jumbo v1, "Starting background scan"

    invoke-static {v0, v1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->-wrap2(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;->mInternalClientInfo:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$InternalClientInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;->mInternalClientInfo:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$InternalClientInfo;

    sget-object v1, Lcom/android/server/wifi/WifiStateMachine;->WIFI_WORK_SOURCE:Landroid/os/WorkSource;

    const v2, 0x27002

    invoke-virtual {v0, v2, p1, v1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$InternalClientInfo;->sendRequestToClientHandler(ILandroid/net/wifi/WifiScanner$ScanSettings;Landroid/os/WorkSource;)V

    :cond_0
    return-void
.end method

.method private addHwPnoScanRequest(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;ILandroid/net/wifi/WifiScanner$ScanSettings;Landroid/net/wifi/WifiScanner$PnoSettings;)Z
    .locals 8

    const/4 v4, 0x0

    const/4 v3, 0x0

    if-nez p1, :cond_0

    const-string/jumbo v0, "WifiScanningService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Failing scan request ClientInfo not found "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;->mActivePnoScans:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;

    invoke-virtual {v0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "Failing scan request because there is already an active scan"

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;->loge(Ljava/lang/String;)V

    return v3

    :cond_1
    invoke-direct {p0, p3, p4}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;->convertSettingsToPnoNative(Landroid/net/wifi/WifiScanner$ScanSettings;Landroid/net/wifi/WifiScanner$PnoSettings;)Lcom/android/server/wifi/WifiNative$PnoSettings;

    move-result-object v7

    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    invoke-static {v0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->-get13(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Lcom/android/server/wifi/scanner/WifiScannerImpl;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    invoke-static {v1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->-get11(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;

    move-result-object v1

    invoke-virtual {v0, v7, v1}, Lcom/android/server/wifi/scanner/WifiScannerImpl;->setHwPnoList(Lcom/android/server/wifi/WifiNative$PnoSettings;Lcom/android/server/wifi/WifiNative$PnoEventHandler;)Z

    move-result v0

    if-nez v0, :cond_2

    return v3

    :cond_2
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    const-string/jumbo v1, "addHwPnoScanRequest"

    move-object v2, p1

    move v3, p2

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->logScanRequest(Ljava/lang/String;Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;ILandroid/os/WorkSource;Landroid/net/wifi/WifiScanner$ScanSettings;Landroid/net/wifi/WifiScanner$PnoSettings;)V

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;->addPnoScanRequest(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;ILandroid/net/wifi/WifiScanner$ScanSettings;Landroid/net/wifi/WifiScanner$PnoSettings;)V

    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    invoke-static {v0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->-get13(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Lcom/android/server/wifi/scanner/WifiScannerImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wifi/scanner/WifiScannerImpl;->shouldScheduleBackgroundScanForHwPno()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0, p3}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;->addBackgroundScanRequest(Landroid/net/wifi/WifiScanner$ScanSettings;)V

    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method private addInternalClient(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;->mInternalClientInfo:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$InternalClientInfo;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$InternalClientInfo;

    iget-object v1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    invoke-virtual {p1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;->getUid()I

    move-result v2

    new-instance v3, Landroid/os/Messenger;

    invoke-virtual {p0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$InternalClientInfo;-><init>(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;ILandroid/os/Messenger;)V

    iput-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;->mInternalClientInfo:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$InternalClientInfo;

    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;->mInternalClientInfo:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$InternalClientInfo;

    invoke-virtual {v0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$InternalClientInfo;->register()V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "WifiScanningService"

    const-string/jumbo v1, "Internal client for PNO already exists"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private addPnoScanRequest(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;ILandroid/net/wifi/WifiScanner$ScanSettings;Landroid/net/wifi/WifiScanner$PnoSettings;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;->mActivePnoScans:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;

    sget-object v1, Lcom/android/server/wifi/WifiStateMachine;->WIFI_WORK_SOURCE:Landroid/os/WorkSource;

    invoke-static {p4, p3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;->addRequest(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;ILandroid/os/WorkSource;Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;->addInternalClient(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;)V

    return-void
.end method

.method private addSingleScanRequest(Landroid/net/wifi/WifiScanner$ScanSettings;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    const-string/jumbo v1, "Starting single scan"

    invoke-static {v0, v1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->-wrap2(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;->mInternalClientInfo:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$InternalClientInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;->mInternalClientInfo:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$InternalClientInfo;

    sget-object v1, Lcom/android/server/wifi/WifiStateMachine;->WIFI_WORK_SOURCE:Landroid/os/WorkSource;

    const v2, 0x27015

    invoke-virtual {v0, v2, p1, v1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$InternalClientInfo;->sendRequestToClientHandler(ILandroid/net/wifi/WifiScanner$ScanSettings;Landroid/os/WorkSource;)V

    :cond_0
    return-void
.end method

.method private addSwPnoScanRequest(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;ILandroid/net/wifi/WifiScanner$ScanSettings;Landroid/net/wifi/WifiScanner$PnoSettings;)Z
    .locals 7

    const/4 v4, 0x0

    const/4 v3, 0x0

    if-nez p1, :cond_0

    const-string/jumbo v0, "WifiScanningService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Failing scan request ClientInfo not found "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;->mActivePnoScans:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;

    invoke-virtual {v0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "Failing scan request because there is already an active scan"

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;->loge(Ljava/lang/String;)V

    return v3

    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    const-string/jumbo v1, "addSwPnoScanRequest"

    move-object v2, p1

    move v3, p2

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->logScanRequest(Ljava/lang/String;Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;ILandroid/os/WorkSource;Landroid/net/wifi/WifiScanner$ScanSettings;Landroid/net/wifi/WifiScanner$PnoSettings;)V

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;->addPnoScanRequest(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;ILandroid/net/wifi/WifiScanner$ScanSettings;Landroid/net/wifi/WifiScanner$PnoSettings;)V

    const/4 v0, 0x3

    iput v0, p3, Landroid/net/wifi/WifiScanner$ScanSettings;->reportEvents:I

    invoke-direct {p0, p3}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;->addBackgroundScanRequest(Landroid/net/wifi/WifiScanner$ScanSettings;)V

    const/4 v0, 0x1

    return v0
.end method

.method private convertSettingsToPnoNative(Landroid/net/wifi/WifiScanner$ScanSettings;Landroid/net/wifi/WifiScanner$PnoSettings;)Lcom/android/server/wifi/WifiNative$PnoSettings;
    .locals 4

    new-instance v1, Lcom/android/server/wifi/WifiNative$PnoSettings;

    invoke-direct {v1}, Lcom/android/server/wifi/WifiNative$PnoSettings;-><init>()V

    iget v2, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->periodInMs:I

    iput v2, v1, Lcom/android/server/wifi/WifiNative$PnoSettings;->periodInMs:I

    iget v2, p2, Landroid/net/wifi/WifiScanner$PnoSettings;->min5GHzRssi:I

    iput v2, v1, Lcom/android/server/wifi/WifiNative$PnoSettings;->min5GHzRssi:I

    iget v2, p2, Landroid/net/wifi/WifiScanner$PnoSettings;->min24GHzRssi:I

    iput v2, v1, Lcom/android/server/wifi/WifiNative$PnoSettings;->min24GHzRssi:I

    iget v2, p2, Landroid/net/wifi/WifiScanner$PnoSettings;->initialScoreMax:I

    iput v2, v1, Lcom/android/server/wifi/WifiNative$PnoSettings;->initialScoreMax:I

    iget v2, p2, Landroid/net/wifi/WifiScanner$PnoSettings;->currentConnectionBonus:I

    iput v2, v1, Lcom/android/server/wifi/WifiNative$PnoSettings;->currentConnectionBonus:I

    iget v2, p2, Landroid/net/wifi/WifiScanner$PnoSettings;->sameNetworkBonus:I

    iput v2, v1, Lcom/android/server/wifi/WifiNative$PnoSettings;->sameNetworkBonus:I

    iget v2, p2, Landroid/net/wifi/WifiScanner$PnoSettings;->secureBonus:I

    iput v2, v1, Lcom/android/server/wifi/WifiNative$PnoSettings;->secureBonus:I

    iget v2, p2, Landroid/net/wifi/WifiScanner$PnoSettings;->band5GHzBonus:I

    iput v2, v1, Lcom/android/server/wifi/WifiNative$PnoSettings;->band5GHzBonus:I

    iget-boolean v2, p2, Landroid/net/wifi/WifiScanner$PnoSettings;->isConnected:Z

    iput-boolean v2, v1, Lcom/android/server/wifi/WifiNative$PnoSettings;->isConnected:Z

    iget-object v2, p2, Landroid/net/wifi/WifiScanner$PnoSettings;->networkList:[Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;

    array-length v2, v2

    new-array v2, v2, [Lcom/android/server/wifi/WifiNative$PnoNetwork;

    iput-object v2, v1, Lcom/android/server/wifi/WifiNative$PnoSettings;->networkList:[Lcom/android/server/wifi/WifiNative$PnoNetwork;

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p2, Landroid/net/wifi/WifiScanner$PnoSettings;->networkList:[Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    iget-object v2, v1, Lcom/android/server/wifi/WifiNative$PnoSettings;->networkList:[Lcom/android/server/wifi/WifiNative$PnoNetwork;

    new-instance v3, Lcom/android/server/wifi/WifiNative$PnoNetwork;

    invoke-direct {v3}, Lcom/android/server/wifi/WifiNative$PnoNetwork;-><init>()V

    aput-object v3, v2, v0

    iget-object v2, v1, Lcom/android/server/wifi/WifiNative$PnoSettings;->networkList:[Lcom/android/server/wifi/WifiNative$PnoNetwork;

    aget-object v2, v2, v0

    iget-object v3, p2, Landroid/net/wifi/WifiScanner$PnoSettings;->networkList:[Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;

    aget-object v3, v3, v0

    iget-object v3, v3, Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;->ssid:Ljava/lang/String;

    iput-object v3, v2, Lcom/android/server/wifi/WifiNative$PnoNetwork;->ssid:Ljava/lang/String;

    iget-object v2, v1, Lcom/android/server/wifi/WifiNative$PnoSettings;->networkList:[Lcom/android/server/wifi/WifiNative$PnoNetwork;

    aget-object v2, v2, v0

    iget-object v3, p2, Landroid/net/wifi/WifiScanner$PnoSettings;->networkList:[Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;

    aget-object v3, v3, v0

    iget-byte v3, v3, Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;->flags:B

    iput-byte v3, v2, Lcom/android/server/wifi/WifiNative$PnoNetwork;->flags:B

    iget-object v2, v1, Lcom/android/server/wifi/WifiNative$PnoSettings;->networkList:[Lcom/android/server/wifi/WifiNative$PnoNetwork;

    aget-object v2, v2, v0

    iget-object v3, p2, Landroid/net/wifi/WifiScanner$PnoSettings;->networkList:[Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;

    aget-object v3, v3, v0

    iget-byte v3, v3, Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;->authBitField:B

    iput-byte v3, v2, Lcom/android/server/wifi/WifiNative$PnoNetwork;->auth_bit_field:B

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private getScanSettings()Landroid/net/wifi/WifiScanner$ScanSettings;
    .locals 3

    iget-object v2, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;->mActivePnoScans:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;

    invoke-virtual {v2}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;->getAllSettings()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Landroid/net/wifi/WifiScanner$ScanSettings;

    return-object v2

    :cond_0
    const/4 v2, 0x0

    return-object v2
.end method

.method private isSingleScanNeeded([Landroid/net/wifi/ScanResult;)Z
    .locals 5

    const/4 v2, 0x0

    array-length v3, p1

    move v1, v2

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, p1, v1

    iget-object v4, v0, Landroid/net/wifi/ScanResult;->informationElements:[Landroid/net/wifi/ScanResult$InformationElement;

    if-eqz v4, :cond_0

    iget-object v4, v0, Landroid/net/wifi/ScanResult;->informationElements:[Landroid/net/wifi/ScanResult$InformationElement;

    array-length v4, v4

    if-lez v4, :cond_0

    return v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method private removeHwPnoScanRequest(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;I)V
    .locals 8

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;->removePnoScanRequest(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;I)Landroid/util/Pair;

    move-result-object v7

    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    const-string/jumbo v1, "removeHwPnoScanRequest"

    iget-object v5, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Landroid/net/wifi/WifiScanner$ScanSettings;

    iget-object v6, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Landroid/net/wifi/WifiScanner$PnoSettings;

    move-object v2, p1

    move v3, p2

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->logScanRequest(Ljava/lang/String;Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;ILandroid/os/WorkSource;Landroid/net/wifi/WifiScanner$ScanSettings;Landroid/net/wifi/WifiScanner$PnoSettings;)V

    :cond_0
    return-void
.end method

.method private removeInternalClient()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;->mInternalClientInfo:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$InternalClientInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;->mInternalClientInfo:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$InternalClientInfo;

    invoke-virtual {v0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$InternalClientInfo;->cleanup()V

    iput-object v1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;->mInternalClientInfo:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$InternalClientInfo;

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "WifiScanningService"

    const-string/jumbo v1, "No Internal client for PNO"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private removePnoScanRequest(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;I)Landroid/util/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;",
            "I)",
            "Landroid/util/Pair",
            "<",
            "Landroid/net/wifi/WifiScanner$PnoSettings;",
            "Landroid/net/wifi/WifiScanner$ScanSettings;",
            ">;"
        }
    .end annotation

    iget-object v1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;->mActivePnoScans:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;->removeRequest(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    return-object v0
.end method

.method private removeSwPnoScanRequest(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;I)V
    .locals 8

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;->removePnoScanRequest(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;I)Landroid/util/Pair;

    move-result-object v7

    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    const-string/jumbo v1, "removeSwPnoScanRequest"

    iget-object v5, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Landroid/net/wifi/WifiScanner$ScanSettings;

    iget-object v6, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Landroid/net/wifi/WifiScanner$PnoSettings;

    move-object v2, p1

    move v3, p2

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->logScanRequest(Ljava/lang/String;Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;ILandroid/os/WorkSource;Landroid/net/wifi/WifiScanner$ScanSettings;Landroid/net/wifi/WifiScanner$PnoSettings;)V

    :cond_0
    return-void
.end method

.method private reportPnoNetworkFound([Landroid/net/wifi/ScanResult;)V
    .locals 8

    new-instance v4, Landroid/net/wifi/WifiScanner$ParcelableScanResults;

    invoke-direct {v4, p1}, Landroid/net/wifi/WifiScanner$ParcelableScanResults;-><init>([Landroid/net/wifi/ScanResult;)V

    iget-object v5, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;->mActivePnoScans:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;

    iget-object v0, v1, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;->clientInfo:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;

    iget v3, v1, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;->handlerId:I

    iget-object v5, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    const-string/jumbo v6, "pnoNetworkFound"

    invoke-static {p1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->describeForLog([Landroid/net/wifi/ScanResult;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v0, v3, v7}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->logCallback(Ljava/lang/String;Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;ILjava/lang/String;)V

    const v5, 0x2701a

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6, v3, v4}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;->reportEvent(IIILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private sendPnoScanFailedToAllAndClear(ILjava/lang/String;)V
    .locals 7

    iget-object v4, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;->mActivePnoScans:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;

    iget-object v0, v1, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;->clientInfo:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;

    iget v3, v1, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;->handlerId:I

    new-instance v4, Landroid/net/wifi/WifiScanner$OperationResult;

    invoke-direct {v4, p1, p2}, Landroid/net/wifi/WifiScanner$OperationResult;-><init>(ILjava/lang/String;)V

    const v5, 0x27012

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6, v3, v4}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;->reportEvent(IIILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;->mActivePnoScans:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;

    invoke-virtual {v4}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;->clear()V

    return-void
.end method


# virtual methods
.method public onPnoNetworkFound([Landroid/net/wifi/ScanResult;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    const-string/jumbo v1, "onWifiPnoNetworkFound event received"

    invoke-static {v0, v1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->-wrap2(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;Ljava/lang/String;)V

    const v0, 0x2710b

    invoke-virtual {p0, v0, v2, v2, p1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;->sendMessage(IIILjava/lang/Object;)V

    return-void
.end method

.method public onPnoScanFailed()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    const-string/jumbo v1, "onWifiPnoScanFailed event received"

    invoke-static {v0, v1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->-wrap2(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;Ljava/lang/String;)V

    const v0, 0x2710c

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v2, v2, v1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;->sendMessage(IIILjava/lang/Object;)V

    return-void
.end method

.method public removePnoSettings(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;->mActivePnoScans:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;->removeAllForClient(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;)V

    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;->mStartedState:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine$StartedState;

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method
