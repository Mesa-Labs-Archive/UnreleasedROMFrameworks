.class public Lcom/android/server/wifi/hotspot2/PasspointNetworkScore;
.super Ljava/lang/Object;
.source "PasspointNetworkScore.java"


# static fields
.field private static final BAND_5GHZ_AWARD:I = 0x14

.field private static final BAND_5GHZ_CHANNEL_WIDTH_80MHZ_AWARD:I = 0x5

.field private static final BLUETOOTH_CONNECTION_ACTIVE_PENALTY:I = 0x32

.field private static final CHANNEL_UTILIZATION_SCORES:Landroid/net/RssiCurve;

.field public static final HOME_PROVIDER_AWARD:I = 0x64

.field public static final INTERNET_ACCESS_AWARD:I = 0x32

.field private static final IPV4_SCORES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final IPV6_SCORES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final NETWORK_TYPE_SCORES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final PERSONAL_OR_EMERGENCY_NETWORK_AWARDS:I = 0x2

.field public static final PUBLIC_OR_PRIVATE_NETWORK_AWARDS:I = 0x4

.field public static final RESTRICTED_OR_UNKNOWN_IP_AWARDS:I = 0x1

.field public static final RSSI_SCORE:Landroid/net/RssiCurve;

.field public static final UNRESTRICTED_IP_AWARDS:I = 0x2

.field public static final WAN_PORT_DOWN_OR_CAPPED_PENALTY:I = 0x32


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/4 v9, 0x3

    const/4 v8, 0x4

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/wifi/hotspot2/PasspointNetworkScore;->IPV4_SCORES:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/wifi/hotspot2/PasspointNetworkScore;->IPV6_SCORES:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/wifi/hotspot2/PasspointNetworkScore;->NETWORK_TYPE_SCORES:Ljava/util/Map;

    new-instance v0, Landroid/net/RssiCurve;

    const/4 v1, 0x6

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const/16 v2, -0x50

    const/16 v3, 0x14

    const/16 v4, 0x14

    invoke-direct {v0, v2, v3, v1, v4}, Landroid/net/RssiCurve;-><init>(II[BI)V

    sput-object v0, Lcom/android/server/wifi/hotspot2/PasspointNetworkScore;->RSSI_SCORE:Landroid/net/RssiCurve;

    sget-object v0, Lcom/android/server/wifi/hotspot2/PasspointNetworkScore;->NETWORK_TYPE_SCORES:Ljava/util/Map;

    sget-object v1, Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;->FreePublic:Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/hotspot2/PasspointNetworkScore;->NETWORK_TYPE_SCORES:Ljava/util/Map;

    sget-object v1, Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;->ChargeablePublic:Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/hotspot2/PasspointNetworkScore;->NETWORK_TYPE_SCORES:Ljava/util/Map;

    sget-object v1, Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;->PrivateWithGuest:Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/hotspot2/PasspointNetworkScore;->NETWORK_TYPE_SCORES:Ljava/util/Map;

    sget-object v1, Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;->Private:Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/hotspot2/PasspointNetworkScore;->NETWORK_TYPE_SCORES:Ljava/util/Map;

    sget-object v1, Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;->Personal:Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/hotspot2/PasspointNetworkScore;->NETWORK_TYPE_SCORES:Ljava/util/Map;

    sget-object v1, Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;->EmergencyOnly:Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/hotspot2/PasspointNetworkScore;->NETWORK_TYPE_SCORES:Ljava/util/Map;

    sget-object v1, Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;->Wildcard:Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/hotspot2/PasspointNetworkScore;->NETWORK_TYPE_SCORES:Ljava/util/Map;

    sget-object v1, Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;->TestOrExperimental:Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/hotspot2/PasspointNetworkScore;->IPV4_SCORES:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/hotspot2/PasspointNetworkScore;->IPV4_SCORES:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/hotspot2/PasspointNetworkScore;->IPV4_SCORES:Ljava/util/Map;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/hotspot2/PasspointNetworkScore;->IPV4_SCORES:Ljava/util/Map;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/hotspot2/PasspointNetworkScore;->IPV4_SCORES:Ljava/util/Map;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/hotspot2/PasspointNetworkScore;->IPV4_SCORES:Ljava/util/Map;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/hotspot2/PasspointNetworkScore;->IPV4_SCORES:Ljava/util/Map;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/hotspot2/PasspointNetworkScore;->IPV4_SCORES:Ljava/util/Map;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/hotspot2/PasspointNetworkScore;->IPV6_SCORES:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/hotspot2/PasspointNetworkScore;->IPV6_SCORES:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/hotspot2/PasspointNetworkScore;->IPV6_SCORES:Ljava/util/Map;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroid/net/RssiCurve;

    new-array v1, v9, [B

    fill-array-data v1, :array_1

    const/16 v2, 0x55

    invoke-direct {v0, v6, v2, v1}, Landroid/net/RssiCurve;-><init>(II[B)V

    sput-object v0, Lcom/android/server/wifi/hotspot2/PasspointNetworkScore;->CHANNEL_UTILIZATION_SCORES:Landroid/net/RssiCurve;

    return-void

    :array_0
    .array-data 1
        -0xat
        0x0t
        0xat
        0x14t
        0x1et
        0x28t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x2t
        0x1t
        0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculateScore(ZLcom/android/server/wifi/ScanDetail;Ljava/util/Map;ZLjava/lang/StringBuffer;Z)I
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/android/server/wifi/ScanDetail;",
            "Ljava/util/Map",
            "<",
            "Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;",
            "Lcom/android/server/wifi/hotspot2/anqp/ANQPElement;",
            ">;Z",
            "Ljava/lang/StringBuffer;",
            "Z)I"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/android/server/wifi/ScanDetail;->getNetworkDetail()Lcom/android/server/wifi/hotspot2/NetworkDetail;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/server/wifi/ScanDetail;->getScanResult()Landroid/net/wifi/ScanResult;

    move-result-object v3

    const/4 v4, 0x0

    const-string/jumbo v8, "[ "

    invoke-virtual {p4, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    iget-object v9, v3, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string/jumbo v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    iget-object v9, v3, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string/jumbo v9, " RSSI:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    iget v9, v3, Landroid/net/wifi/ScanResult;->level:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string/jumbo v9, " ] "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz p0, :cond_0

    const/16 v4, 0x64

    const-string/jumbo v8, " Home provider bonus: "

    invoke-virtual {p4, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const/16 v9, 0x64

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string/jumbo v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    invoke-virtual {v2}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->isInternet()Z

    move-result v8

    if-eqz v8, :cond_6

    const/4 v8, 0x1

    :goto_0
    mul-int/lit8 v8, v8, 0x32

    add-int/2addr v4, v8

    const-string/jumbo v8, " Internet accessibility score: "

    invoke-virtual {p4, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v2}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->isInternet()Z

    move-result v8

    if-eqz v8, :cond_7

    const/4 v8, 0x1

    :goto_1
    mul-int/lit8 v8, v8, 0x32

    invoke-virtual {v9, v8}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string/jumbo v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v8, Lcom/android/server/wifi/hotspot2/PasspointNetworkScore;->NETWORK_TYPE_SCORES:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getAnt()Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    add-int/2addr v4, v8

    const-string/jumbo v8, " Network type score: "

    invoke-virtual {p4, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    sget-object v9, Lcom/android/server/wifi/hotspot2/PasspointNetworkScore;->NETWORK_TYPE_SCORES:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getAnt()Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string/jumbo v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz p2, :cond_3

    sget-object v8, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;->HSWANMetrics:Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    invoke-interface {p2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wifi/hotspot2/anqp/HSWanMetricsElement;

    if-eqz v7, :cond_2

    invoke-virtual {v7}, Lcom/android/server/wifi/hotspot2/anqp/HSWanMetricsElement;->getStatus()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_1

    invoke-virtual {v7}, Lcom/android/server/wifi/hotspot2/anqp/HSWanMetricsElement;->isCapped()Z

    move-result v8

    if-eqz v8, :cond_2

    :cond_1
    add-int/lit8 v4, v4, -0x32

    const-string/jumbo v8, " Wan port down or capped penalty: "

    invoke-virtual {p4, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const/16 v9, -0x32

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string/jumbo v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    sget-object v8, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;->ANQPIPAddrAvailability:Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    invoke-interface {p2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/hotspot2/anqp/IPAddressTypeAvailabilityElement;

    if-eqz v0, :cond_3

    sget-object v8, Lcom/android/server/wifi/hotspot2/PasspointNetworkScore;->IPV4_SCORES:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/android/server/wifi/hotspot2/anqp/IPAddressTypeAvailabilityElement;->getV4Availability()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    sget-object v8, Lcom/android/server/wifi/hotspot2/PasspointNetworkScore;->IPV6_SCORES:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/android/server/wifi/hotspot2/anqp/IPAddressTypeAvailabilityElement;->getV6Availability()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    if-eqz v5, :cond_8

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v8

    :goto_2
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string/jumbo v8, " Ipv4 availability score: "

    invoke-virtual {p4, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string/jumbo v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz v6, :cond_9

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v8

    :goto_3
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string/jumbo v8, " Ipv6 availability score: "

    invoke-virtual {p4, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string/jumbo v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v9

    add-int/2addr v8, v9

    add-int/2addr v4, v8

    :cond_3
    sget-object v8, Lcom/android/server/wifi/hotspot2/PasspointNetworkScore;->RSSI_SCORE:Landroid/net/RssiCurve;

    invoke-virtual {p1}, Lcom/android/server/wifi/ScanDetail;->getScanResult()Landroid/net/wifi/ScanResult;

    move-result-object v9

    iget v9, v9, Landroid/net/wifi/ScanResult;->level:I

    invoke-virtual {v8, v9, p3}, Landroid/net/RssiCurve;->lookupScore(IZ)B

    move-result v8

    add-int/2addr v4, v8

    const-string/jumbo v8, " RSSI score: "

    invoke-virtual {p4, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    sget-object v9, Lcom/android/server/wifi/hotspot2/PasspointNetworkScore;->RSSI_SCORE:Landroid/net/RssiCurve;

    invoke-virtual {p1}, Lcom/android/server/wifi/ScanDetail;->getScanResult()Landroid/net/wifi/ScanResult;

    move-result-object v10

    iget v10, v10, Landroid/net/wifi/ScanResult;->level:I

    invoke-virtual {v9, v10, p3}, Landroid/net/RssiCurve;->lookupScore(IZ)B

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string/jumbo v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Landroid/net/wifi/ScanResult;->is5GHz()Z

    move-result v1

    if-eqz v1, :cond_4

    add-int/lit8 v4, v4, 0x14

    const-string/jumbo v8, " 5GHz bonus: "

    invoke-virtual {p4, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const/16 v9, 0x14

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string/jumbo v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v8, v3, Landroid/net/wifi/ScanResult;->channelWidth:I

    const/4 v9, 0x2

    if-lt v8, v9, :cond_4

    add-int/lit8 v4, v4, 0x5

    const-string/jumbo v8, " Channel bandwidth bonus: 5"

    invoke-virtual {p4, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string/jumbo v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_4
    if-eqz p5, :cond_5

    invoke-virtual {v3}, Landroid/net/wifi/ScanResult;->is24GHz()Z

    move-result v8

    if-eqz v8, :cond_5

    add-int/lit8 v4, v4, -0x32

    const-string/jumbo v8, " Active Bluetooth connection penalty: "

    invoke-virtual {p4, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const/16 v9, -0x32

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string/jumbo v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_5
    sget-object v8, Lcom/android/server/wifi/hotspot2/PasspointNetworkScore;->CHANNEL_UTILIZATION_SCORES:Landroid/net/RssiCurve;

    invoke-virtual {v2}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getChannelUtilization()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/net/RssiCurve;->lookupScore(I)B

    move-result v8

    add-int/2addr v4, v8

    const-string/jumbo v8, " Channel utilization award: "

    invoke-virtual {p4, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    sget-object v9, Lcom/android/server/wifi/hotspot2/PasspointNetworkScore;->CHANNEL_UTILIZATION_SCORES:Landroid/net/RssiCurve;

    invoke-virtual {v2}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getChannelUtilization()I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/net/RssiCurve;->lookupScore(I)B

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string/jumbo v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v8, " ## Total score: "

    invoke-virtual {p4, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string/jumbo v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return v4

    :cond_6
    const/4 v8, -0x1

    goto/16 :goto_0

    :cond_7
    const/4 v8, -0x1

    goto/16 :goto_1

    :cond_8
    const/4 v8, 0x0

    goto/16 :goto_2

    :cond_9
    const/4 v8, 0x0

    goto/16 :goto_3
.end method
