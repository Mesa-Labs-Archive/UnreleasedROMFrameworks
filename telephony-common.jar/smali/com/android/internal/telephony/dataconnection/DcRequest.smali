.class public Lcom/android/internal/telephony/dataconnection/DcRequest;
.super Ljava/lang/Object;
.source "DcRequest.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/internal/telephony/dataconnection/DcRequest;",
        ">;"
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "DcRequest"

.field private static final sApnPriorityMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final apnId:I

.field public final networkRequest:Landroid/net/NetworkRequest;

.field public final priority:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/dataconnection/DcRequest;->sApnPriorityMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/net/NetworkRequest;Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/dataconnection/DcRequest;->initApnPriorities(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcRequest;->networkRequest:Landroid/net/NetworkRequest;

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcRequest;->networkRequest:Landroid/net/NetworkRequest;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcRequest;->apnIdForNetworkRequest(Landroid/net/NetworkRequest;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/dataconnection/DcRequest;->apnId:I

    iget v0, p0, Lcom/android/internal/telephony/dataconnection/DcRequest;->apnId:I

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcRequest;->priorityForApnId(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/dataconnection/DcRequest;->priority:I

    return-void
.end method

.method public constructor <init>(Landroid/net/NetworkRequest;Landroid/content/Context;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/dataconnection/DcRequest;->initApnPriorities(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcRequest;->networkRequest:Landroid/net/NetworkRequest;

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcRequest;->networkRequest:Landroid/net/NetworkRequest;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcRequest;->apnIdForNetworkRequest(Landroid/net/NetworkRequest;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/dataconnection/DcRequest;->apnId:I

    iput p3, p0, Lcom/android/internal/telephony/dataconnection/DcRequest;->priority:I

    return-void
.end method

.method private apnIdForNetworkRequest(Landroid/net/NetworkRequest;)I
    .locals 6

    const/4 v5, 0x0

    const/4 v4, -0x1

    iget-object v2, p1, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v2}, Landroid/net/NetworkCapabilities;->getTransportTypes()[I

    move-result-object v3

    array-length v3, v3

    if-lez v3, :cond_0

    invoke-virtual {v2, v5}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v3

    if-nez v3, :cond_0

    return v4

    :cond_0
    const/4 v0, -0x1

    const/4 v1, 0x0

    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x0

    :cond_1
    invoke-virtual {v2, v5}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v3

    if-eqz v3, :cond_3

    if-eq v0, v4, :cond_2

    const/4 v1, 0x1

    :cond_2
    const/4 v0, 0x1

    :cond_3
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v3

    if-eqz v3, :cond_5

    if-eq v0, v4, :cond_4

    const/4 v1, 0x1

    :cond_4
    const/4 v0, 0x2

    :cond_5
    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v3

    if-eqz v3, :cond_7

    if-eq v0, v4, :cond_6

    const/4 v1, 0x1

    :cond_6
    const/4 v0, 0x3

    :cond_7
    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v3

    if-eqz v3, :cond_9

    if-eq v0, v4, :cond_8

    const/4 v1, 0x1

    :cond_8
    const/4 v0, 0x6

    :cond_9
    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v3

    if-eqz v3, :cond_b

    if-eq v0, v4, :cond_a

    const/4 v1, 0x1

    :cond_a
    const/4 v0, 0x5

    :cond_b
    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v3

    if-eqz v3, :cond_d

    if-eq v0, v4, :cond_c

    const/4 v1, 0x1

    :cond_c
    const/4 v0, 0x7

    :cond_d
    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v3

    if-eqz v3, :cond_f

    if-eq v0, v4, :cond_e

    const/4 v1, 0x1

    :cond_e
    const/16 v0, 0x8

    :cond_f
    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v3

    if-eqz v3, :cond_11

    if-eq v0, v4, :cond_10

    const/4 v1, 0x1

    :cond_10
    const/4 v0, -0x1

    const-string/jumbo v3, "RCS APN type not yet supported"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/dataconnection/DcRequest;->loge(Ljava/lang/String;)V

    :cond_11
    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v3

    if-eqz v3, :cond_13

    if-eq v0, v4, :cond_12

    const/4 v1, 0x1

    :cond_12
    const/16 v0, 0x10

    :cond_13
    const/16 v3, 0x16

    invoke-virtual {v2, v3}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v3

    if-eqz v3, :cond_15

    if-eq v0, v4, :cond_14

    const/4 v1, 0x1

    :cond_14
    const/16 v0, 0xe

    :cond_15
    const/16 v3, 0x14

    invoke-virtual {v2, v3}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v3

    if-eqz v3, :cond_17

    if-eq v0, v4, :cond_16

    const/4 v1, 0x1

    :cond_16
    const/16 v0, 0x11

    :cond_17
    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v3

    if-eqz v3, :cond_19

    if-eq v0, v4, :cond_18

    const/4 v1, 0x1

    :cond_18
    const/16 v0, 0x9

    :cond_19
    if-eqz v1, :cond_1a

    const-string/jumbo v3, "Multiple apn types specified in request - result is unspecified!"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/dataconnection/DcRequest;->loge(Ljava/lang/String;)V

    :cond_1a
    if-ne v0, v4, :cond_1b

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unsupported NetworkRequest in Telephony: nr="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/dataconnection/DcRequest;->loge(Ljava/lang/String;)V

    :cond_1b
    return v0
.end method

.method private initApnPriorities(Landroid/content/Context;)V
    .locals 10

    sget-object v5, Lcom/android/internal/telephony/dataconnection/DcRequest;->sApnPriorityMap:Ljava/util/HashMap;

    monitor-enter v5

    :try_start_0
    sget-object v4, Lcom/android/internal/telephony/dataconnection/DcRequest;->sApnPriorityMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x10700a4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    array-length v6, v3

    :goto_0
    if-ge v4, v6, :cond_1

    aget-object v2, v3, v4

    new-instance v1, Landroid/net/NetworkConfig;

    invoke-direct {v1, v2}, Landroid/net/NetworkConfig;-><init>(Ljava/lang/String;)V

    iget v7, v1, Landroid/net/NetworkConfig;->type:I

    invoke-static {v7}, Lcom/android/internal/telephony/dataconnection/ApnContext;->apnIdForType(I)I

    move-result v0

    const/4 v7, -0x1

    if-ne v0, v7, :cond_0

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    sget-object v7, Lcom/android/internal/telephony/dataconnection/DcRequest;->sApnPriorityMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget v9, v1, Landroid/net/NetworkConfig;->priority:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    :cond_1
    monitor-exit v5

    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "DcRequest"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private priorityForApnId(I)I
    .locals 3

    sget-object v1, Lcom/android/internal/telephony/dataconnection/DcRequest;->sApnPriorityMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public compareTo(Lcom/android/internal/telephony/dataconnection/DcRequest;)I
    .locals 2

    iget v0, p1, Lcom/android/internal/telephony/dataconnection/DcRequest;->priority:I

    iget v1, p0, Lcom/android/internal/telephony/dataconnection/DcRequest;->priority:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/android/internal/telephony/dataconnection/DcRequest;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcRequest;->compareTo(Lcom/android/internal/telephony/dataconnection/DcRequest;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/android/internal/telephony/dataconnection/DcRequest;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcRequest;->networkRequest:Landroid/net/NetworkRequest;

    check-cast p1, Lcom/android/internal/telephony/dataconnection/DcRequest;

    iget-object v1, p1, Lcom/android/internal/telephony/dataconnection/DcRequest;->networkRequest:Landroid/net/NetworkRequest;

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcRequest;->networkRequest:Landroid/net/NetworkRequest;

    invoke-virtual {v0}, Landroid/net/NetworkRequest;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcRequest;->networkRequest:Landroid/net/NetworkRequest;

    invoke-virtual {v1}, Landroid/net/NetworkRequest;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", priority="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/dataconnection/DcRequest;->priority:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", apnId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/dataconnection/DcRequest;->apnId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
