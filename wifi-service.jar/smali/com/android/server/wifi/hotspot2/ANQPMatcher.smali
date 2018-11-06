.class public Lcom/android/server/wifi/hotspot2/ANQPMatcher;
.super Ljava/lang/Object;
.source "ANQPMatcher.java"


# static fields
.field private static final CSC_CONFIG_OP_BRANDING:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v1, "CscFeature_Wifi_ConfigOpBranding"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/wifi/hotspot2/ANQPMatcher;->CSC_CONFIG_OP_BRANDING:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static matchCellularNetwork(Lcom/android/server/wifi/hotspot2/anqp/CellularNetwork;Lcom/android/server/wifi/IMSIParameter;Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wifi/hotspot2/anqp/CellularNetwork;",
            "Lcom/android/server/wifi/IMSIParameter;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/anqp/CellularNetwork;->getPlmns()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, p1, p2}, Lcom/android/server/wifi/hotspot2/ANQPMatcher;->matchMccMnc(Ljava/lang/String;Lcom/android/server/wifi/IMSIParameter;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    return v2

    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method public static matchDomainName(Lcom/android/server/wifi/hotspot2/anqp/DomainNameElement;Ljava/lang/String;Lcom/android/server/wifi/IMSIParameter;Ljava/util/List;)Z
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wifi/hotspot2/anqp/DomainNameElement;",
            "Ljava/lang/String;",
            "Lcom/android/server/wifi/IMSIParameter;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v11, 0x5

    const/4 v10, 0x3

    const/4 v9, 0x1

    const/4 v8, 0x0

    if-nez p0, :cond_0

    return v8

    :cond_0
    const/4 v2, 0x0

    const/4 v4, 0x0

    const-string/jumbo v6, "SKT"

    sget-object v7, Lcom/android/server/wifi/hotspot2/ANQPMatcher;->CSC_CONFIG_OP_BRANDING:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string/jumbo v6, "gsm.sim.operator.numeric"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v6, v11, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/anqp/DomainNameElement;->getDomains()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/android/server/wifi/hotspot2/DomainMatcher;->arg2SubdomainOfArg1(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    return v9

    :cond_3
    invoke-static {v0}, Lcom/android/server/wifi/hotspot2/Utils;->splitDomain(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/wifi/hotspot2/Utils;->getMccMnc(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p2, p3}, Lcom/android/server/wifi/hotspot2/ANQPMatcher;->matchMccMnc(Ljava/lang/String;Lcom/android/server/wifi/IMSIParameter;Ljava/util/List;)Z

    move-result v6

    if-eqz v6, :cond_4

    return v9

    :cond_4
    const-string/jumbo v6, "SKT"

    sget-object v7, Lcom/android/server/wifi/hotspot2/ANQPMatcher;->CSC_CONFIG_OP_BRANDING:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    if-eqz v3, :cond_2

    if-eqz v4, :cond_2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    return v9

    :cond_5
    return v8
.end method

.method private static matchEAPMethod(Lcom/android/server/wifi/hotspot2/anqp/eap/EAPMethod;ILcom/android/server/wifi/hotspot2/anqp/eap/AuthParam;)I
    .locals 4

    const/4 v3, -0x1

    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/anqp/eap/EAPMethod;->getEAPMethodID()I

    move-result v2

    if-eq v2, p1, :cond_0

    return v3

    :cond_0
    if-eqz p2, :cond_3

    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/anqp/eap/EAPMethod;->getAuthParams()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/server/wifi/hotspot2/anqp/eap/AuthParam;->getAuthTypeID()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    if-eqz v1, :cond_1

    invoke-interface {v1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    :cond_1
    return v3

    :cond_2
    const/4 v2, 0x3

    return v2

    :cond_3
    const/4 v2, 0x2

    return v2
.end method

.method private static matchMccMnc(Ljava/lang/String;Lcom/android/server/wifi/IMSIParameter;Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/server/wifi/IMSIParameter;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    return v3

    :cond_1
    if-eqz p0, :cond_0

    invoke-virtual {p1, p0}, Lcom/android/server/wifi/IMSIParameter;->matchesMccMnc(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    return v3

    :cond_2
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    return v2

    :cond_4
    return v3
.end method

.method public static matchNAIRealm(Lcom/android/server/wifi/hotspot2/anqp/NAIRealmElement;Ljava/lang/String;ILcom/android/server/wifi/hotspot2/anqp/eap/AuthParam;)I
    .locals 5

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/anqp/NAIRealmElement;->getRealmDataList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    const/4 v4, 0x0

    return v4

    :cond_1
    const/4 v0, -0x1

    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/anqp/NAIRealmElement;->getRealmDataList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wifi/hotspot2/anqp/NAIRealmData;

    invoke-static {v2, p1, p2, p3}, Lcom/android/server/wifi/hotspot2/ANQPMatcher;->matchNAIRealmData(Lcom/android/server/wifi/hotspot2/anqp/NAIRealmData;Ljava/lang/String;ILcom/android/server/wifi/hotspot2/anqp/eap/AuthParam;)I

    move-result v1

    if-le v1, v0, :cond_2

    move v0, v1

    const/4 v4, 0x7

    if-ne v1, v4, :cond_2

    :cond_3
    return v0
.end method

.method private static matchNAIRealmData(Lcom/android/server/wifi/hotspot2/anqp/NAIRealmData;Ljava/lang/String;ILcom/android/server/wifi/hotspot2/anqp/eap/AuthParam;)I
    .locals 8

    const/4 v7, -0x1

    const/4 v3, -0x1

    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/anqp/NAIRealmData;->getRealms()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {p1, v4}, Lcom/android/server/wifi/hotspot2/DomainMatcher;->arg2SubdomainOfArg1(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v3, 0x4

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/anqp/NAIRealmData;->getEAPMethods()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    return v3

    :cond_2
    const/4 v2, -0x1

    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/anqp/NAIRealmData;->getEAPMethods()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/hotspot2/anqp/eap/EAPMethod;

    invoke-static {v0, p2, p3}, Lcom/android/server/wifi/hotspot2/ANQPMatcher;->matchEAPMethod(Lcom/android/server/wifi/hotspot2/anqp/eap/EAPMethod;ILcom/android/server/wifi/hotspot2/anqp/eap/AuthParam;)I

    move-result v2

    if-eq v2, v7, :cond_3

    :cond_4
    if-ne v2, v7, :cond_5

    return v7

    :cond_5
    if-ne v3, v7, :cond_6

    return v2

    :cond_6
    or-int v6, v3, v2

    return v6
.end method

.method public static matchRoamingConsortium(Lcom/android/server/wifi/hotspot2/anqp/RoamingConsortiumElement;[J)Z
    .locals 7

    const/4 v4, 0x0

    if-nez p0, :cond_0

    return v4

    :cond_0
    if-nez p1, :cond_1

    return v4

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/anqp/RoamingConsortiumElement;->getOIs()Ljava/util/List;

    move-result-object v2

    array-length v5, p1

    move v3, v4

    :goto_0
    if-ge v3, v5, :cond_3

    aget-wide v0, p1, v3

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v3, 0x1

    return v3

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return v4
.end method

.method public static matchThreeGPPNetwork(Lcom/android/server/wifi/hotspot2/anqp/ThreeGPPNetworkElement;Lcom/android/server/wifi/IMSIParameter;Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wifi/hotspot2/anqp/ThreeGPPNetworkElement;",
            "Lcom/android/server/wifi/IMSIParameter;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v3, 0x0

    if-nez p0, :cond_0

    return v3

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/anqp/ThreeGPPNetworkElement;->getNetworks()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/hotspot2/anqp/CellularNetwork;

    invoke-static {v0, p1, p2}, Lcom/android/server/wifi/hotspot2/ANQPMatcher;->matchCellularNetwork(Lcom/android/server/wifi/hotspot2/anqp/CellularNetwork;Lcom/android/server/wifi/IMSIParameter;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    return v2

    :cond_2
    return v3
.end method
