.class Lcom/android/server/wifi/hotspot2/PasspointManager$DataSourceHandler;
.super Ljava/lang/Object;
.source "PasspointManager.java"

# interfaces
.implements Lcom/android/server/wifi/hotspot2/PasspointConfigStoreData$DataSource;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/hotspot2/PasspointManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DataSourceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/hotspot2/PasspointManager;


# direct methods
.method private constructor <init>(Lcom/android/server/wifi/hotspot2/PasspointManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wifi/hotspot2/PasspointManager$DataSourceHandler;->this$0:Lcom/android/server/wifi/hotspot2/PasspointManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wifi/hotspot2/PasspointManager;Lcom/android/server/wifi/hotspot2/PasspointManager$DataSourceHandler;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wifi/hotspot2/PasspointManager$DataSourceHandler;-><init>(Lcom/android/server/wifi/hotspot2/PasspointManager;)V

    return-void
.end method


# virtual methods
.method public getProviderIndex()J
    .locals 2

    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/PasspointManager$DataSourceHandler;->this$0:Lcom/android/server/wifi/hotspot2/PasspointManager;

    invoke-static {v0}, Lcom/android/server/wifi/hotspot2/PasspointManager;->-get2(Lcom/android/server/wifi/hotspot2/PasspointManager;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getProviders()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/wifi/hotspot2/PasspointProvider;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/android/server/wifi/hotspot2/PasspointManager$DataSourceHandler;->this$0:Lcom/android/server/wifi/hotspot2/PasspointManager;

    invoke-static {v3}, Lcom/android/server/wifi/hotspot2/PasspointManager;->-get3(Lcom/android/server/wifi/hotspot2/PasspointManager;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wifi/hotspot2/PasspointProvider;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method public setProviderIndex(J)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/PasspointManager$DataSourceHandler;->this$0:Lcom/android/server/wifi/hotspot2/PasspointManager;

    invoke-static {v0, p1, p2}, Lcom/android/server/wifi/hotspot2/PasspointManager;->-set0(Lcom/android/server/wifi/hotspot2/PasspointManager;J)J

    return-void
.end method

.method public setProviders(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/wifi/hotspot2/PasspointProvider;",
            ">;)V"
        }
    .end annotation

    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/PasspointManager$DataSourceHandler;->this$0:Lcom/android/server/wifi/hotspot2/PasspointManager;

    invoke-static {v2}, Lcom/android/server/wifi/hotspot2/PasspointManager;->-get3(Lcom/android/server/wifi/hotspot2/PasspointManager;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/hotspot2/PasspointProvider;

    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/PasspointManager$DataSourceHandler;->this$0:Lcom/android/server/wifi/hotspot2/PasspointManager;

    invoke-static {v2}, Lcom/android/server/wifi/hotspot2/PasspointManager;->-get3(Lcom/android/server/wifi/hotspot2/PasspointManager;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/server/wifi/hotspot2/PasspointProvider;->getConfig()Landroid/net/wifi/hotspot2/PasspointConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getHomeSp()Landroid/net/wifi/hotspot2/pps/HomeSp;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/hotspot2/pps/HomeSp;->getFqdn()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method
