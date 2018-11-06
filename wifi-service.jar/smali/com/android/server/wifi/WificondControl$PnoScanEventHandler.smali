.class Lcom/android/server/wifi/WificondControl$PnoScanEventHandler;
.super Landroid/net/wifi/IPnoScanEvent$Stub;
.source "WificondControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WificondControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PnoScanEventHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WificondControl;


# direct methods
.method private constructor <init>(Lcom/android/server/wifi/WificondControl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wifi/WificondControl$PnoScanEventHandler;->this$0:Lcom/android/server/wifi/WificondControl;

    invoke-direct {p0}, Landroid/net/wifi/IPnoScanEvent$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wifi/WificondControl;Lcom/android/server/wifi/WificondControl$PnoScanEventHandler;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wifi/WificondControl$PnoScanEventHandler;-><init>(Lcom/android/server/wifi/WificondControl;)V

    return-void
.end method


# virtual methods
.method public OnPnoNetworkFound()V
    .locals 2

    const-string/jumbo v0, "WificondControl"

    const-string/jumbo v1, "Pno scan result event"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/wifi/WificondControl$PnoScanEventHandler;->this$0:Lcom/android/server/wifi/WificondControl;

    invoke-static {v0}, Lcom/android/server/wifi/WificondControl;->-get1(Lcom/android/server/wifi/WificondControl;)Lcom/android/server/wifi/WifiMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/WificondControl$PnoScanEventHandler;->this$0:Lcom/android/server/wifi/WificondControl;

    invoke-static {v1}, Lcom/android/server/wifi/WificondControl;->-get0(Lcom/android/server/wifi/WificondControl;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiMonitor;->broadcastPnoScanResultEvent(Ljava/lang/String;)V

    return-void
.end method

.method public OnPnoScanFailed()V
    .locals 2

    const-string/jumbo v0, "WificondControl"

    const-string/jumbo v1, "Pno Scan failed event"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
