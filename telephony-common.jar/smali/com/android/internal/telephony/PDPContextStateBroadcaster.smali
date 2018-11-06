.class public Lcom/android/internal/telephony/PDPContextStateBroadcaster;
.super Ljava/lang/Object;
.source "PDPContextStateBroadcaster.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/PDPContextStateBroadcaster$1;,
        Lcom/android/internal/telephony/PDPContextStateBroadcaster$2;
    }
.end annotation


# static fields
.field private static final ACTION_PDP_CONTEXT_STATE:Ljava/lang/String; = "diagandroid.data.PDPContextState"

.field private static final APN_TYPE_PRIMARY:Ljava/lang/String; = "default"

.field private static final CONTEXT_STATE_CONNECTED:Ljava/lang/String; = "CONNECTED"

.field private static final CONTEXT_STATE_DISCONNECTED:Ljava/lang/String; = "DISCONNECTED"

.field private static final CONTEXT_STATE_REQUESTED:Ljava/lang/String; = "REQUEST"

.field private static final CONTEXT_TYPE_PRIMARY:Ljava/lang/String; = "PRIMARY"

.field private static final CONTEXT_TYPE_SECONDARY:Ljava/lang/String; = "SECONDARY"

.field private static final DEBUG_LOG:Z = false

.field private static final DNS_EXTRA_COUNT:I = 0x2

.field private static final EXTRA_CONTEXT_APN:Ljava/lang/String; = "ContextAPN"

.field private static final EXTRA_CONTEXT_DNS:[Ljava/lang/String;

.field private static final EXTRA_CONTEXT_ERROR_CODE:Ljava/lang/String; = "ContextErrorCode"

.field private static final EXTRA_CONTEXT_ID:Ljava/lang/String; = "ContextID"

.field private static final EXTRA_CONTEXT_INITIATOR:Ljava/lang/String; = "ContextInitiator"

.field private static final EXTRA_CONTEXT_IPV4_ADDR:Ljava/lang/String; = "ContextIPV4Addr"

.field private static final EXTRA_CONTEXT_IPV6_ADDR:Ljava/lang/String; = "ContextIPV6Addr"

.field private static final EXTRA_CONTEXT_NSAPI:Ljava/lang/String; = "ContextNSAPI"

.field private static final EXTRA_CONTEXT_SAPI:Ljava/lang/String; = "ContextSAPI"

.field private static final EXTRA_CONTEXT_STATE:Ljava/lang/String; = "ContextState"

.field private static final EXTRA_CONTEXT_TERM_CODE:Ljava/lang/String; = "ContextTermCode"

.field private static final EXTRA_CONTEXT_TYPE:Ljava/lang/String; = "ContextType"

.field private static final EXTRA_CONTEXT_V6DNS:[Ljava/lang/String;

.field private static final INITIATOR_NETWORK:Ljava/lang/String; = "NETWORK"

.field private static final INITIATOR_UE:Ljava/lang/String; = "USER"

.field private static final IP_ADDRESS_TYPE_COUNT:I = 0x2

.field private static final IP_ADDRESS_V4_INDEX:I = 0x0

.field private static final IP_ADDRESS_V6_INDEX:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "PDPContextStateBroadcaster"

.field private static final PERMISSION_RECEIVE_PDP_CONTEXT_STATE:Ljava/lang/String; = "diagandroid.data.receivePDPContextState"

.field private static final sExcludeTypes:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sInstance:Lcom/android/internal/telephony/PDPContextStateBroadcaster;

.field private static final sTermCodeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mApnIdMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mNextContextId:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "ContextDNS1"

    aput-object v1, v0, v2

    const-string/jumbo v1, "ContextDNS2"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->EXTRA_CONTEXT_DNS:[Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "ContextV6DNS1"

    aput-object v1, v0, v2

    const-string/jumbo v1, "ContextV6DNS2"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->EXTRA_CONTEXT_V6DNS:[Ljava/lang/String;

    new-instance v0, Lcom/android/internal/telephony/PDPContextStateBroadcaster$1;

    invoke-direct {v0}, Lcom/android/internal/telephony/PDPContextStateBroadcaster$1;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->sExcludeTypes:Ljava/util/HashSet;

    new-instance v0, Lcom/android/internal/telephony/PDPContextStateBroadcaster$2;

    invoke-direct {v0}, Lcom/android/internal/telephony/PDPContextStateBroadcaster$2;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->sTermCodeMap:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->mApnIdMap:Ljava/util/HashMap;

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->mNextContextId:I

    return-void
.end method

.method private static assignToArrayElementIfEmpty(Ljava/lang/String;[Ljava/lang/String;I)Z
    .locals 2

    aget-object v1, p1, p2

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    aput-object p0, p1, p2

    :cond_0
    return v0
.end method

.method private static assignToEmptyElement(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v1, v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->assignToArrayElementIfEmpty(Ljava/lang/String;[Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_0

    array-length v2, p1

    if-ne v1, v2, :cond_1

    :cond_0
    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private broadcast(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    const-string/jumbo v1, "diagandroid.data.receivePDPContextState"

    invoke-virtual {p1, p2, v0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    return-void
.end method

.method private contextIdInUse(I)Z
    .locals 5

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v4, p0, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->mApnIdMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    :cond_1
    return v3
.end method

.method private static createIntent(Ljava/lang/String;Ljava/lang/Integer;)Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "diagandroid.data.PDPContextState"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "com.tmobile.pr.mytmobile"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "ContextState"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "ContextID"

    invoke-virtual {p1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public static declared-synchronized disable()V
    .locals 2

    const-class v0, Lcom/android/internal/telephony/PDPContextStateBroadcaster;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->sInstance:Lcom/android/internal/telephony/PDPContextStateBroadcaster;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized enable()V
    .locals 2

    const-class v1, Lcom/android/internal/telephony/PDPContextStateBroadcaster;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->sInstance:Lcom/android/internal/telephony/PDPContextStateBroadcaster;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/internal/telephony/PDPContextStateBroadcaster;

    invoke-direct {v0}, Lcom/android/internal/telephony/PDPContextStateBroadcaster;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->sInstance:Lcom/android/internal/telephony/PDPContextStateBroadcaster;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getContextId(Lcom/android/internal/telephony/dataconnection/ApnContext;)Ljava/lang/Integer;
    .locals 5

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnSetting()Lcom/android/internal/telephony/dataconnection/ApnSetting;

    move-result-object v0

    iget-object v3, p0, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->mApnIdMap:Ljava/util/HashMap;

    iget v4, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    :cond_0
    return-object v2
.end method

.method private static getContextType(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "default"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "PRIMARY"

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "SECONDARY"

    goto :goto_0
.end method

.method private getNextContextId()I
    .locals 3

    :cond_0
    iget v0, p0, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->mNextContextId:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->mNextContextId:I

    iget v1, p0, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->mNextContextId:I

    const v2, 0xffff

    if-le v1, v2, :cond_1

    const/4 v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->mNextContextId:I

    :cond_1
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->contextIdInUse(I)Z

    move-result v1

    if-nez v1, :cond_0

    return v0
.end method

.method private static getTermCode(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 3

    const/4 v2, 0x0

    sget-object v1, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->sTermCodeMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    sget-object v1, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->sTermCodeMap:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    :cond_0
    return-object v0
.end method

.method private static processDNSAddresses(Ljava/util/Collection;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/net/InetAddress;",
            ">;[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    const/4 v2, 0x0

    instance-of v3, v0, Ljava/net/Inet4Address;

    if-eqz v3, :cond_2

    move-object v2, p1

    :cond_1
    :goto_1
    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->assignToEmptyElement(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    instance-of v3, v0, Ljava/net/Inet6Address;

    if-eqz v3, :cond_1

    move-object v2, p2

    goto :goto_1

    :cond_3
    return-void
.end method

.method private static processIPAddresses(Ljava/util/Collection;[Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/net/InetAddress;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    instance-of v2, v0, Ljava/net/Inet4Address;

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, p1, v3}, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->assignToArrayElementIfEmpty(Ljava/lang/String;[Ljava/lang/String;I)Z

    goto :goto_0

    :cond_1
    instance-of v2, v0, Ljava/net/Inet6Address;

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, p1, v3}, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->assignToArrayElementIfEmpty(Ljava/lang/String;[Ljava/lang/String;I)Z

    goto :goto_0

    :cond_2
    return-void
.end method

.method private removeContextId(Lcom/android/internal/telephony/dataconnection/ApnContext;)V
    .locals 4

    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnSetting()Lcom/android/internal/telephony/dataconnection/ApnSetting;

    move-result-object v1

    iget v3, v1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v3, p0, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->mApnIdMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->mApnIdMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static declared-synchronized sendConnected(Landroid/content/Context;Lcom/android/internal/telephony/dataconnection/ApnContext;)V
    .locals 11

    const-class v10, Lcom/android/internal/telephony/PDPContextStateBroadcaster;

    monitor-enter v10

    :try_start_0
    invoke-static {p1}, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->shouldReport(Lcom/android/internal/telephony/dataconnection/ApnContext;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    :try_start_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getDcAc()Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->getLinkPropertiesSync()Landroid/net/LinkProperties;

    move-result-object v9

    if-eqz v9, :cond_0

    const/4 v0, 0x2

    new-array v8, v0, [Ljava/lang/String;

    const-string/jumbo v0, ""

    const/4 v1, 0x0

    aput-object v0, v8, v1

    const-string/jumbo v0, ""

    const/4 v1, 0x1

    aput-object v0, v8, v1

    const/4 v0, 0x2

    new-array v5, v0, [Ljava/lang/String;

    const-string/jumbo v0, ""

    const/4 v1, 0x0

    aput-object v0, v5, v1

    const-string/jumbo v0, ""

    const/4 v1, 0x1

    aput-object v0, v5, v1

    const/4 v0, 0x2

    new-array v6, v0, [Ljava/lang/String;

    const-string/jumbo v0, ""

    const/4 v1, 0x0

    aput-object v0, v6, v1

    const-string/jumbo v0, ""

    const/4 v1, 0x1

    aput-object v0, v6, v1

    invoke-virtual {v9}, Landroid/net/LinkProperties;->getAddresses()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, v8}, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->processIPAddresses(Ljava/util/Collection;[Ljava/lang/String;)V

    invoke-virtual {v9}, Landroid/net/LinkProperties;->getDnses()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0, v5, v6}, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->processDNSAddresses(Ljava/util/Collection;[Ljava/lang/String;[Ljava/lang/String;)V

    sget-object v0, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->sInstance:Lcom/android/internal/telephony/PDPContextStateBroadcaster;

    const/4 v1, 0x0

    aget-object v3, v8, v1

    const/4 v1, 0x1

    aget-object v4, v8, v1

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->sendPDPContextConnected(Landroid/content/Context;Lcom/android/internal/telephony/dataconnection/ApnContext;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    monitor-exit v10

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v10

    throw v0

    :catch_0
    move-exception v7

    goto :goto_0
.end method

.method public static declared-synchronized sendDisconnected(Landroid/content/Context;Lcom/android/internal/telephony/dataconnection/ApnContext;)V
    .locals 4

    const-class v2, Lcom/android/internal/telephony/PDPContextStateBroadcaster;

    monitor-enter v2

    :try_start_0
    invoke-static {p1}, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->shouldReport(Lcom/android/internal/telephony/dataconnection/ApnContext;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    :try_start_1
    sget-object v1, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->sInstance:Lcom/android/internal/telephony/PDPContextStateBroadcaster;

    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, p1, v3}, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->sendPDPContextDisconnected(Landroid/content/Context;Lcom/android/internal/telephony/dataconnection/ApnContext;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static declared-synchronized sendDisconnected(Landroid/content/Context;Lcom/android/internal/telephony/dataconnection/ApnContext;Ljava/lang/String;)V
    .locals 3

    const-class v2, Lcom/android/internal/telephony/PDPContextStateBroadcaster;

    monitor-enter v2

    :try_start_0
    invoke-static {p1}, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->shouldReport(Lcom/android/internal/telephony/dataconnection/ApnContext;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    :try_start_1
    sget-object v1, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->sInstance:Lcom/android/internal/telephony/PDPContextStateBroadcaster;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->sendPDPContextDisconnected(Landroid/content/Context;Lcom/android/internal/telephony/dataconnection/ApnContext;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private sendPDPContextConnected(Landroid/content/Context;Lcom/android/internal/telephony/dataconnection/ApnContext;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 5

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->getContextId(Lcom/android/internal/telephony/dataconnection/ApnContext;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string/jumbo v3, "CONNECTED"

    invoke-static {v3, v0}, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->createIntent(Ljava/lang/String;Ljava/lang/Integer;)Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "ContextIPV4Addr"

    invoke-virtual {v2, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v3, "ContextIPV6Addr"

    invoke-virtual {v2, v3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x0

    :goto_0
    const/4 v3, 0x2

    if-ge v1, v3, :cond_0

    sget-object v3, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->EXTRA_CONTEXT_DNS:[Ljava/lang/String;

    aget-object v3, v3, v1

    aget-object v4, p5, v1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v3, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->EXTRA_CONTEXT_V6DNS:[Ljava/lang/String;

    aget-object v3, v3, v1

    aget-object v4, p6, v1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, v2}, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->broadcast(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_1
    return-void
.end method

.method private sendPDPContextDisconnected(Landroid/content/Context;Lcom/android/internal/telephony/dataconnection/ApnContext;Ljava/lang/String;)V
    .locals 5

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->getContextId(Lcom/android/internal/telephony/dataconnection/ApnContext;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->removeContextId(Lcom/android/internal/telephony/dataconnection/ApnContext;)V

    const-string/jumbo v3, "DISCONNECTED"

    invoke-static {v3, v0}, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->createIntent(Ljava/lang/String;Ljava/lang/Integer;)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v3, "ContextInitiator"

    const-string/jumbo v4, "USER"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p3}, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->getTermCode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, "ContextTermCode"

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v3, "ContextErrorCode"

    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->broadcast(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method private sendPDPContextRequested(Landroid/content/Context;Lcom/android/internal/telephony/dataconnection/ApnContext;)V
    .locals 12

    const/4 v11, 0x0

    invoke-virtual {p2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnSetting()Lcom/android/internal/telephony/dataconnection/ApnSetting;

    move-result-object v2

    iget v0, v2, Lcom/android/internal/telephony/dataconnection/ApnSetting;->id:I

    iget-object v5, v2, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apn:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->getContextType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v9, p0, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->mApnIdMap:Ljava/util/HashMap;

    invoke-virtual {v9, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iget-object v9, p0, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->mApnIdMap:Ljava/util/HashMap;

    invoke-virtual {v9, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v4, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    invoke-direct {p0}, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->getNextContextId()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v9, "REQUEST"

    invoke-static {v9, v6}, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->createIntent(Ljava/lang/String;Ljava/lang/Integer;)Landroid/content/Intent;

    move-result-object v8

    const-string/jumbo v9, "ContextInitiator"

    const-string/jumbo v10, "USER"

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v9, "ContextType"

    invoke-virtual {v8, v9, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v9, "ContextNSAPI"

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v9, "ContextSAPI"

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v9, "ContextAPN"

    invoke-virtual {v8, v9, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-direct {p0, p1, v8}, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->broadcast(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_1
    return-void
.end method

.method public static declared-synchronized sendRequested(Landroid/content/Context;Lcom/android/internal/telephony/dataconnection/ApnContext;)V
    .locals 3

    const-class v2, Lcom/android/internal/telephony/PDPContextStateBroadcaster;

    monitor-enter v2

    :try_start_0
    invoke-static {p1}, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->shouldReport(Lcom/android/internal/telephony/dataconnection/ApnContext;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    :try_start_1
    sget-object v1, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->sInstance:Lcom/android/internal/telephony/PDPContextStateBroadcaster;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->sendPDPContextRequested(Landroid/content/Context;Lcom/android/internal/telephony/dataconnection/ApnContext;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static shouldReport(Lcom/android/internal/telephony/dataconnection/ApnContext;)Z
    .locals 2

    sget-object v0, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->sInstance:Lcom/android/internal/telephony/PDPContextStateBroadcaster;

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnSetting()Lcom/android/internal/telephony/dataconnection/ApnSetting;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->sExcludeTypes:Ljava/util/HashSet;

    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
