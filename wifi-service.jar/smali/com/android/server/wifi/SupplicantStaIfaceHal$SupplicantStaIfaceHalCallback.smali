.class Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;
.super Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$Stub;
.source "SupplicantStaIfaceHal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/SupplicantStaIfaceHal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SupplicantStaIfaceHalCallback"
.end annotation


# static fields
.field private static final WLAN_REASON_IE_IN_4WAY_DIFFERS:I = 0x11


# instance fields
.field private mStateIsFourway:Z

.field final synthetic this$0:Lcom/android/server/wifi/SupplicantStaIfaceHal;


# direct methods
.method private constructor <init>(Lcom/android/server/wifi/SupplicantStaIfaceHal;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;->this$0:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-direct {p0}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$Stub;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;->mStateIsFourway:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wifi/SupplicantStaIfaceHal;Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;-><init>(Lcom/android/server/wifi/SupplicantStaIfaceHal;)V

    return-void
.end method

.method private addAnqpElementToMap(Ljava/util/Map;Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;",
            "Lcom/android/server/wifi/hotspot2/anqp/ANQPElement;",
            ">;",
            "Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-direct {p0, p2, p3}, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;->parseAnqpElement(Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;Ljava/util/ArrayList;)Lcom/android/server/wifi/hotspot2/anqp/ANQPElement;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method private parseAnqpElement(Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;Ljava/util/ArrayList;)Lcom/android/server/wifi/hotspot2/anqp/ANQPElement;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Byte;",
            ">;)",
            "Lcom/android/server/wifi/hotspot2/anqp/ANQPElement;"
        }
    .end annotation

    const/4 v4, 0x0

    :try_start_0
    invoke-static {p1}, Lcom/android/server/wifi/hotspot2/anqp/Constants;->getANQPElementID(Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {p2}, Lcom/android/server/wifi/util/NativeUtil;->byteArrayFromArrayList(Ljava/util/ArrayList;)[B

    move-result-object v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/server/wifi/hotspot2/anqp/ANQPParser;->parseElement(Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;Ljava/nio/ByteBuffer;)Lcom/android/server/wifi/hotspot2/anqp/ANQPElement;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    invoke-static {p2}, Lcom/android/server/wifi/util/NativeUtil;->byteArrayFromArrayList(Ljava/util/ArrayList;)[B

    move-result-object v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/server/wifi/hotspot2/anqp/ANQPParser;->parseHS20Element(Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;Ljava/nio/ByteBuffer;)Lcom/android/server/wifi/hotspot2/anqp/ANQPElement;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "SupplicantStaIfaceHal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed parsing ANQP element payload: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v4
.end method


# virtual methods
.method public onAnqpQueryDone([BLandroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$AnqpData;Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$Hs20AnqpData;)V
    .locals 8

    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;->this$0:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    const-string/jumbo v2, "onAnqpQueryDone"

    invoke-static {v1, v2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->-wrap4(Lcom/android/server/wifi/SupplicantStaIfaceHal;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;->this$0:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-static {v1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->-get1(Lcom/android/server/wifi/SupplicantStaIfaceHal;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sget-object v1, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;->ANQPVenueName:Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    iget-object v3, p2, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$AnqpData;->venueName:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v1, v3}, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;->addAnqpElementToMap(Ljava/util/Map;Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;Ljava/util/ArrayList;)V

    sget-object v1, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;->ANQPRoamingConsortium:Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    iget-object v3, p2, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$AnqpData;->roamingConsortium:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v1, v3}, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;->addAnqpElementToMap(Ljava/util/Map;Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;Ljava/util/ArrayList;)V

    sget-object v1, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;->ANQPIPAddrAvailability:Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    iget-object v3, p2, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$AnqpData;->ipAddrTypeAvailability:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v1, v3}, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;->addAnqpElementToMap(Ljava/util/Map;Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;Ljava/util/ArrayList;)V

    sget-object v1, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;->ANQPNAIRealm:Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    iget-object v3, p2, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$AnqpData;->naiRealm:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v1, v3}, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;->addAnqpElementToMap(Ljava/util/Map;Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;Ljava/util/ArrayList;)V

    sget-object v1, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;->ANQP3GPPNetwork:Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    iget-object v3, p2, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$AnqpData;->anqp3gppCellularNetwork:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v1, v3}, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;->addAnqpElementToMap(Ljava/util/Map;Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;Ljava/util/ArrayList;)V

    sget-object v1, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;->ANQPDomName:Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    iget-object v3, p2, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$AnqpData;->domainName:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v1, v3}, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;->addAnqpElementToMap(Ljava/util/Map;Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;Ljava/util/ArrayList;)V

    sget-object v1, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;->HSFriendlyName:Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    iget-object v3, p3, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$Hs20AnqpData;->operatorFriendlyName:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v1, v3}, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;->addAnqpElementToMap(Ljava/util/Map;Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;Ljava/util/ArrayList;)V

    sget-object v1, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;->HSWANMetrics:Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    iget-object v3, p3, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$Hs20AnqpData;->wanMetrics:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v1, v3}, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;->addAnqpElementToMap(Ljava/util/Map;Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;Ljava/util/ArrayList;)V

    sget-object v1, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;->HSConnCapability:Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    iget-object v3, p3, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$Hs20AnqpData;->connectionCapability:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v1, v3}, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;->addAnqpElementToMap(Ljava/util/Map;Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;Ljava/util/ArrayList;)V

    sget-object v1, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;->HSOSUProviders:Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    iget-object v3, p3, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$Hs20AnqpData;->osuProvidersList:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v1, v3}, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;->addAnqpElementToMap(Ljava/util/Map;Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;Ljava/util/ArrayList;)V

    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;->this$0:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-static {v1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->-get3(Lcom/android/server/wifi/SupplicantStaIfaceHal;)Lcom/android/server/wifi/WifiMonitor;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;->this$0:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-static {v3}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->-get0(Lcom/android/server/wifi/SupplicantStaIfaceHal;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/android/server/wifi/hotspot2/AnqpEvent;

    invoke-static {p1}, Lcom/android/server/wifi/util/NativeUtil;->macAddressToLong([B)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-direct {v4, v6, v7, v0}, Lcom/android/server/wifi/hotspot2/AnqpEvent;-><init>(JLjava/util/Map;)V

    invoke-virtual {v1, v3, v4}, Lcom/android/server/wifi/WifiMonitor;->broadcastAnqpDoneEvent(Ljava/lang/String;Lcom/android/server/wifi/hotspot2/AnqpEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public onAssociationRejected([BIZ)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;->this$0:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    const-string/jumbo v1, "onAssociationRejected"

    invoke-static {v0, v1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->-wrap4(Lcom/android/server/wifi/SupplicantStaIfaceHal;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;->this$0:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-static {v0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->-get1(Lcom/android/server/wifi/SupplicantStaIfaceHal;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;->this$0:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-static {v0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->-get3(Lcom/android/server/wifi/SupplicantStaIfaceHal;)Lcom/android/server/wifi/WifiMonitor;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;->this$0:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-static {v2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->-get0(Lcom/android/server/wifi/SupplicantStaIfaceHal;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Lcom/android/server/wifi/util/NativeUtil;->macAddressFromByteArray([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, p2, p3, v3}, Lcom/android/server/wifi/WifiMonitor;->broadcastAssociationRejectionEvent(Ljava/lang/String;IZLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onAuthenticationTimeout([B)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;->this$0:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    const-string/jumbo v1, "onAuthenticationTimeout"

    invoke-static {v0, v1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->-wrap4(Lcom/android/server/wifi/SupplicantStaIfaceHal;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;->this$0:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-static {v0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->-get1(Lcom/android/server/wifi/SupplicantStaIfaceHal;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;->this$0:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-static {v0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->-get3(Lcom/android/server/wifi/SupplicantStaIfaceHal;)Lcom/android/server/wifi/WifiMonitor;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;->this$0:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-static {v2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->-get0(Lcom/android/server/wifi/SupplicantStaIfaceHal;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lcom/android/server/wifi/WifiMonitor;->broadcastAuthenticationFailureEvent(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onBssidChanged(B[B)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;->this$0:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    const-string/jumbo v1, "onBssidChanged"

    invoke-static {v0, v1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->-wrap4(Lcom/android/server/wifi/SupplicantStaIfaceHal;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;->this$0:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-static {v0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->-get1(Lcom/android/server/wifi/SupplicantStaIfaceHal;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    if-nez p1, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;->this$0:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-static {v0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->-get3(Lcom/android/server/wifi/SupplicantStaIfaceHal;)Lcom/android/server/wifi/WifiMonitor;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;->this$0:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-static {v2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->-get0(Lcom/android/server/wifi/SupplicantStaIfaceHal;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p2}, Lcom/android/server/wifi/util/NativeUtil;->macAddressFromByteArray([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/android/server/wifi/WifiMonitor;->broadcastTargetBssidEvent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;->this$0:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-static {v0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->-get3(Lcom/android/server/wifi/SupplicantStaIfaceHal;)Lcom/android/server/wifi/WifiMonitor;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;->this$0:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-static {v2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->-get0(Lcom/android/server/wifi/SupplicantStaIfaceHal;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p2}, Lcom/android/server/wifi/util/NativeUtil;->macAddressFromByteArray([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/android/server/wifi/WifiMonitor;->broadcastAssociatedBssidEvent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onDisconnected([BZI)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;->this$0:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    const-string/jumbo v1, "onDisconnected"

    invoke-static {v0, v1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->-wrap4(Lcom/android/server/wifi/SupplicantStaIfaceHal;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;->this$0:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-static {v0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->-get1(Lcom/android/server/wifi/SupplicantStaIfaceHal;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;->this$0:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-static {v0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->-get2(Lcom/android/server/wifi/SupplicantStaIfaceHal;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "SupplicantStaIfaceHal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onDisconnected 4way="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;->mStateIsFourway:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " locallyGenerated="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " reasonCode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;->mStateIsFourway:Z

    if-eqz v0, :cond_2

    if-eqz p2, :cond_1

    const/16 v0, 0x11

    if-eq p3, v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;->this$0:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-static {v0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->-get3(Lcom/android/server/wifi/SupplicantStaIfaceHal;)Lcom/android/server/wifi/WifiMonitor;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;->this$0:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-static {v2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->-get0(Lcom/android/server/wifi/SupplicantStaIfaceHal;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Lcom/android/server/wifi/WifiMonitor;->broadcastAuthenticationFailureEvent(Ljava/lang/String;I)V

    :cond_2
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;->this$0:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-static {v0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->-get3(Lcom/android/server/wifi/SupplicantStaIfaceHal;)Lcom/android/server/wifi/WifiMonitor;

    move-result-object v2

    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;->this$0:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-static {v0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->-get0(Lcom/android/server/wifi/SupplicantStaIfaceHal;)Ljava/lang/String;

    move-result-object v3

    if-eqz p2, :cond_3

    const/4 v0, 0x1

    :goto_0
    invoke-static {p1}, Lcom/android/server/wifi/util/NativeUtil;->macAddressFromByteArray([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v0, p3, v4}, Lcom/android/server/wifi/WifiMonitor;->broadcastNetworkDisconnectionEvent(Ljava/lang/String;IILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onEapFailure()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;->this$0:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    const-string/jumbo v1, "onEapFailure"

    invoke-static {v0, v1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->-wrap4(Lcom/android/server/wifi/SupplicantStaIfaceHal;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;->this$0:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-static {v0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->-get1(Lcom/android/server/wifi/SupplicantStaIfaceHal;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;->this$0:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-static {v0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->-get3(Lcom/android/server/wifi/SupplicantStaIfaceHal;)Lcom/android/server/wifi/WifiMonitor;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;->this$0:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-static {v2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->-get0(Lcom/android/server/wifi/SupplicantStaIfaceHal;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v0, v2, v3}, Lcom/android/server/wifi/WifiMonitor;->broadcastAuthenticationFailureEvent(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onExtRadioWorkStart(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;->this$0:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    const-string/jumbo v1, "onExtRadioWorkStart"

    invoke-static {v0, v1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->-wrap4(Lcom/android/server/wifi/SupplicantStaIfaceHal;Ljava/lang/String;)V

    return-void
.end method

.method public onExtRadioWorkTimeout(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;->this$0:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    const-string/jumbo v1, "onExtRadioWorkTimeout"

    invoke-static {v0, v1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->-wrap4(Lcom/android/server/wifi/SupplicantStaIfaceHal;Ljava/lang/String;)V

    return-void
.end method

.method public onHs20DeauthImminentNotice([BIILjava/lang/String;)V
    .locals 9

    const/4 v5, 0x1

    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;->this$0:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    const-string/jumbo v1, "onHs20DeauthImminentNotice"

    invoke-static {v0, v1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->-wrap4(Lcom/android/server/wifi/SupplicantStaIfaceHal;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;->this$0:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-static {v0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->-get1(Lcom/android/server/wifi/SupplicantStaIfaceHal;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;->this$0:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-static {v0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->-get3(Lcom/android/server/wifi/SupplicantStaIfaceHal;)Lcom/android/server/wifi/WifiMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;->this$0:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-static {v1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->-get0(Lcom/android/server/wifi/SupplicantStaIfaceHal;)Ljava/lang/String;

    move-result-object v8

    new-instance v1, Lcom/android/server/wifi/hotspot2/WnmData;

    invoke-static {p1}, Lcom/android/server/wifi/util/NativeUtil;->macAddressToLong([B)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    if-ne p2, v5, :cond_0

    :goto_0
    move-object v4, p4

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/server/wifi/hotspot2/WnmData;-><init>(JLjava/lang/String;ZI)V

    invoke-virtual {v0, v8, v1}, Lcom/android/server/wifi/WifiMonitor;->broadcastWnmEvent(Ljava/lang/String;Lcom/android/server/wifi/hotspot2/WnmData;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v7

    return-void

    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v7

    throw v0
.end method

.method public onHs20IconQueryDone([BLjava/lang/String;Ljava/util/ArrayList;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;->this$0:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    const-string/jumbo v1, "onHs20IconQueryDone"

    invoke-static {v0, v1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->-wrap4(Lcom/android/server/wifi/SupplicantStaIfaceHal;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;->this$0:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-static {v0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->-get1(Lcom/android/server/wifi/SupplicantStaIfaceHal;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;->this$0:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-static {v0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->-get3(Lcom/android/server/wifi/SupplicantStaIfaceHal;)Lcom/android/server/wifi/WifiMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;->this$0:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-static {v1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->-get0(Lcom/android/server/wifi/SupplicantStaIfaceHal;)Ljava/lang/String;

    move-result-object v8

    new-instance v1, Lcom/android/server/wifi/hotspot2/IconEvent;

    invoke-static {p1}, Lcom/android/server/wifi/util/NativeUtil;->macAddressToLong([B)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-static {p3}, Lcom/android/server/wifi/util/NativeUtil;->byteArrayFromArrayList(Ljava/util/ArrayList;)[B

    move-result-object v6

    move-object v4, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/server/wifi/hotspot2/IconEvent;-><init>(JLjava/lang/String;I[B)V

    invoke-virtual {v0, v8, v1}, Lcom/android/server/wifi/WifiMonitor;->broadcastIconDoneEvent(Ljava/lang/String;Lcom/android/server/wifi/hotspot2/IconEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v7

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v7

    throw v0
.end method

.method public onHs20SubscriptionRemediation([BBLjava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;->this$0:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    const-string/jumbo v1, "onHs20SubscriptionRemediation"

    invoke-static {v0, v1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->-wrap4(Lcom/android/server/wifi/SupplicantStaIfaceHal;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;->this$0:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-static {v0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->-get1(Lcom/android/server/wifi/SupplicantStaIfaceHal;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;->this$0:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-static {v0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->-get3(Lcom/android/server/wifi/SupplicantStaIfaceHal;)Lcom/android/server/wifi/WifiMonitor;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;->this$0:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-static {v2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->-get0(Lcom/android/server/wifi/SupplicantStaIfaceHal;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/server/wifi/hotspot2/WnmData;

    invoke-static {p1}, Lcom/android/server/wifi/util/NativeUtil;->macAddressToLong([B)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-direct {v3, v4, v5, p3, p2}, Lcom/android/server/wifi/hotspot2/WnmData;-><init>(JLjava/lang/String;I)V

    invoke-virtual {v0, v2, v3}, Lcom/android/server/wifi/WifiMonitor;->broadcastWnmEvent(Ljava/lang/String;Lcom/android/server/wifi/hotspot2/WnmData;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onNetworkAdded(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;->this$0:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    const-string/jumbo v1, "onNetworkAdded"

    invoke-static {v0, v1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->-wrap4(Lcom/android/server/wifi/SupplicantStaIfaceHal;Ljava/lang/String;)V

    return-void
.end method

.method public onNetworkRemoved(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;->this$0:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    const-string/jumbo v1, "onNetworkRemoved"

    invoke-static {v0, v1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->-wrap4(Lcom/android/server/wifi/SupplicantStaIfaceHal;Ljava/lang/String;)V

    return-void
.end method

.method public onStateChanged(I[BILjava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[BI",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;->this$0:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    const-string/jumbo v1, "onStateChanged"

    invoke-static {v0, v1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->-wrap4(Lcom/android/server/wifi/SupplicantStaIfaceHal;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;->this$0:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-static {v0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->-get1(Lcom/android/server/wifi/SupplicantStaIfaceHal;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    :try_start_0
    invoke-static {p1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->-wrap0(I)Landroid/net/wifi/SupplicantState;

    move-result-object v5

    invoke-static {p4}, Lcom/android/server/wifi/util/NativeUtil;->byteArrayFromArrayList(Ljava/util/ArrayList;)[B

    move-result-object v0

    invoke-static {v0}, Landroid/net/wifi/WifiSsid;->createFromByteArray([B)Landroid/net/wifi/WifiSsid;

    move-result-object v3

    invoke-static {p2}, Lcom/android/server/wifi/util/NativeUtil;->macAddressFromByteArray([B)Ljava/lang/String;

    move-result-object v4

    const/4 v0, 0x7

    if-ne p1, v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;->mStateIsFourway:Z

    sget-object v0, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    if-ne v5, v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;->this$0:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-static {v0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->-get3(Lcom/android/server/wifi/SupplicantStaIfaceHal;)Lcom/android/server/wifi/WifiMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;->this$0:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-static {v1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->-get0(Lcom/android/server/wifi/SupplicantStaIfaceHal;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;->this$0:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-static {v2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->-wrap3(Lcom/android/server/wifi/SupplicantStaIfaceHal;)I

    move-result v2

    invoke-virtual {v0, v1, v2, v4}, Lcom/android/server/wifi/WifiMonitor;->broadcastNetworkConnectionEvent(Ljava/lang/String;ILjava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;->this$0:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-static {v0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->-get3(Lcom/android/server/wifi/SupplicantStaIfaceHal;)Lcom/android/server/wifi/WifiMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;->this$0:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-static {v1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->-get0(Lcom/android/server/wifi/SupplicantStaIfaceHal;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;->this$0:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-static {v2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->-wrap3(Lcom/android/server/wifi/SupplicantStaIfaceHal;)I

    move-result v2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wifi/WifiMonitor;->broadcastSupplicantStateChangeEvent(Ljava/lang/String;ILandroid/net/wifi/WifiSsid;Ljava/lang/String;Landroid/net/wifi/SupplicantState;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v6

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v6

    throw v0
.end method

.method public onWpsEventFail([BSS)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;->this$0:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    const-string/jumbo v1, "onWpsEventFail"

    invoke-static {v0, v1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->-wrap4(Lcom/android/server/wifi/SupplicantStaIfaceHal;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;->this$0:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-static {v0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->-get1(Lcom/android/server/wifi/SupplicantStaIfaceHal;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    const/16 v0, 0x10

    if-ne p2, v0, :cond_0

    if-nez p3, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;->this$0:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-static {v0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->-get3(Lcom/android/server/wifi/SupplicantStaIfaceHal;)Lcom/android/server/wifi/WifiMonitor;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;->this$0:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-static {v2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->-get0(Lcom/android/server/wifi/SupplicantStaIfaceHal;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/WifiMonitor;->broadcastWpsTimeoutEvent(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v1

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;->this$0:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-static {v0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->-get3(Lcom/android/server/wifi/SupplicantStaIfaceHal;)Lcom/android/server/wifi/WifiMonitor;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;->this$0:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-static {v2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->-get0(Lcom/android/server/wifi/SupplicantStaIfaceHal;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, p2, p3}, Lcom/android/server/wifi/WifiMonitor;->broadcastWpsFailEvent(Ljava/lang/String;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onWpsEventPbcOverlap()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;->this$0:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    const-string/jumbo v1, "onWpsEventPbcOverlap"

    invoke-static {v0, v1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->-wrap4(Lcom/android/server/wifi/SupplicantStaIfaceHal;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;->this$0:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-static {v0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->-get1(Lcom/android/server/wifi/SupplicantStaIfaceHal;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;->this$0:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-static {v0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->-get3(Lcom/android/server/wifi/SupplicantStaIfaceHal;)Lcom/android/server/wifi/WifiMonitor;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;->this$0:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-static {v2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->-get0(Lcom/android/server/wifi/SupplicantStaIfaceHal;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/WifiMonitor;->broadcastWpsOverlapEvent(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onWpsEventSuccess()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;->this$0:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    const-string/jumbo v1, "onWpsEventSuccess"

    invoke-static {v0, v1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->-wrap4(Lcom/android/server/wifi/SupplicantStaIfaceHal;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;->this$0:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-static {v0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->-get1(Lcom/android/server/wifi/SupplicantStaIfaceHal;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;->this$0:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-static {v0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->-get3(Lcom/android/server/wifi/SupplicantStaIfaceHal;)Lcom/android/server/wifi/WifiMonitor;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;->this$0:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-static {v2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->-get0(Lcom/android/server/wifi/SupplicantStaIfaceHal;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/WifiMonitor;->broadcastWpsSuccessEvent(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
