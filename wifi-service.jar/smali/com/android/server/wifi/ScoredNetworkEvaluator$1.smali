.class Lcom/android/server/wifi/ScoredNetworkEvaluator$1;
.super Landroid/database/ContentObserver;
.source "ScoredNetworkEvaluator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/ScoredNetworkEvaluator;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/wifi/FrameworkFacade;Landroid/net/NetworkScoreManager;Lcom/android/server/wifi/WifiConfigManager;Landroid/util/LocalLog;Landroid/net/wifi/WifiNetworkScoreCache;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/ScoredNetworkEvaluator;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$frameworkFacade:Lcom/android/server/wifi/FrameworkFacade;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/ScoredNetworkEvaluator;Landroid/os/Handler;Lcom/android/server/wifi/FrameworkFacade;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wifi/ScoredNetworkEvaluator$1;->this$0:Lcom/android/server/wifi/ScoredNetworkEvaluator;

    iput-object p3, p0, Lcom/android/server/wifi/ScoredNetworkEvaluator$1;->val$frameworkFacade:Lcom/android/server/wifi/FrameworkFacade;

    iput-object p4, p0, Lcom/android/server/wifi/ScoredNetworkEvaluator$1;->val$context:Landroid/content/Context;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/wifi/ScoredNetworkEvaluator$1;->this$0:Lcom/android/server/wifi/ScoredNetworkEvaluator;

    iget-object v3, p0, Lcom/android/server/wifi/ScoredNetworkEvaluator$1;->val$frameworkFacade:Lcom/android/server/wifi/FrameworkFacade;

    iget-object v4, p0, Lcom/android/server/wifi/ScoredNetworkEvaluator$1;->val$context:Landroid/content/Context;

    const-string/jumbo v5, "network_recommendations_enabled"

    invoke-virtual {v3, v4, v5, v1}, Lcom/android/server/wifi/FrameworkFacade;->getIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v0, :cond_0

    :goto_0
    invoke-static {v2, v0}, Lcom/android/server/wifi/ScoredNetworkEvaluator;->-set0(Lcom/android/server/wifi/ScoredNetworkEvaluator;Z)Z

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method
