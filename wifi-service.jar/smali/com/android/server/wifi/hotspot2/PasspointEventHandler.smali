.class public Lcom/android/server/wifi/hotspot2/PasspointEventHandler;
.super Ljava/lang/Object;
.source "PasspointEventHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/hotspot2/PasspointEventHandler$Callbacks;
    }
.end annotation


# instance fields
.field private final mCallbacks:Lcom/android/server/wifi/hotspot2/PasspointEventHandler$Callbacks;

.field private final mSupplicantHook:Lcom/android/server/wifi/WifiNative;


# direct methods
.method public constructor <init>(Lcom/android/server/wifi/WifiNative;Lcom/android/server/wifi/hotspot2/PasspointEventHandler$Callbacks;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wifi/hotspot2/PasspointEventHandler;->mSupplicantHook:Lcom/android/server/wifi/WifiNative;

    iput-object p2, p0, Lcom/android/server/wifi/hotspot2/PasspointEventHandler;->mCallbacks:Lcom/android/server/wifi/hotspot2/PasspointEventHandler$Callbacks;

    return-void
.end method

.method private static buildAnqpIdSet(Ljava/util/List;)Landroid/util/Pair;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;",
            ">;)",
            "Landroid/util/Pair",
            "<",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    invoke-static {v1}, Lcom/android/server/wifi/hotspot2/anqp/Constants;->getANQPElementID(Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;)Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lcom/android/server/wifi/hotspot2/anqp/Constants;->getHS20ElementID(Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-static {v0, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    return-object v5
.end method


# virtual methods
.method public notifyANQPDone(Lcom/android/server/wifi/hotspot2/AnqpEvent;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/PasspointEventHandler;->mCallbacks:Lcom/android/server/wifi/hotspot2/PasspointEventHandler$Callbacks;

    invoke-virtual {p1}, Lcom/android/server/wifi/hotspot2/AnqpEvent;->getBssid()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/android/server/wifi/hotspot2/AnqpEvent;->getElements()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v2, v3, v1}, Lcom/android/server/wifi/hotspot2/PasspointEventHandler$Callbacks;->onANQPResponse(JLjava/util/Map;)V

    return-void
.end method

.method public notifyIconDone(Lcom/android/server/wifi/hotspot2/IconEvent;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/PasspointEventHandler;->mCallbacks:Lcom/android/server/wifi/hotspot2/PasspointEventHandler$Callbacks;

    invoke-virtual {p1}, Lcom/android/server/wifi/hotspot2/IconEvent;->getBSSID()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/android/server/wifi/hotspot2/IconEvent;->getFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/server/wifi/hotspot2/IconEvent;->getData()[B

    move-result-object v4

    invoke-interface {v0, v2, v3, v1, v4}, Lcom/android/server/wifi/hotspot2/PasspointEventHandler$Callbacks;->onIconResponse(JLjava/lang/String;[B)V

    return-void
.end method

.method public notifyWnmFrameReceived(Lcom/android/server/wifi/hotspot2/WnmData;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/PasspointEventHandler;->mCallbacks:Lcom/android/server/wifi/hotspot2/PasspointEventHandler$Callbacks;

    invoke-interface {v0, p1}, Lcom/android/server/wifi/hotspot2/PasspointEventHandler$Callbacks;->onWnmFrameReceived(Lcom/android/server/wifi/hotspot2/WnmData;)V

    return-void
.end method

.method public requestANQP(JLjava/util/List;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;",
            ">;)Z"
        }
    .end annotation

    const/4 v5, 0x0

    invoke-static {p3}, Lcom/android/server/wifi/hotspot2/PasspointEventHandler;->buildAnqpIdSet(Ljava/util/List;)Landroid/util/Pair;

    move-result-object v0

    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    :cond_0
    return v5

    :cond_1
    iget-object v3, p0, Lcom/android/server/wifi/hotspot2/PasspointEventHandler;->mSupplicantHook:Lcom/android/server/wifi/WifiNative;

    invoke-static {p1, p2}, Lcom/android/server/wifi/hotspot2/Utils;->macToString(J)Ljava/lang/String;

    move-result-object v4

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/util/Set;

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/util/Set;

    invoke-virtual {v3, v4, v1, v2}, Lcom/android/server/wifi/WifiNative;->requestAnqp(Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/PasspointEventHandler;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/wifi/hotspot2/Utils;->hs2LogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ANQP failed on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1, p2}, Lcom/android/server/wifi/hotspot2/Utils;->macToString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/PasspointEventHandler;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/wifi/hotspot2/Utils;->hs2LogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ANQP initiated on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1, p2}, Lcom/android/server/wifi/hotspot2/Utils;->macToString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    return v1
.end method

.method public requestIcon(JLjava/lang/String;)Z
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    if-nez p3, :cond_1

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/PasspointEventHandler;->mSupplicantHook:Lcom/android/server/wifi/WifiNative;

    invoke-static {p1, p2}, Lcom/android/server/wifi/hotspot2/Utils;->macToString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Lcom/android/server/wifi/WifiNative;->requestIcon(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
