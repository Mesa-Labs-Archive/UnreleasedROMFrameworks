.class Lcom/android/server/net/NetworkStatsService$1;
.super Landroid/content/BroadcastReceiver;
.source "NetworkStatsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkStatsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/net/NetworkStatsService;


# direct methods
.method constructor <init>(Lcom/android/server/net/NetworkStatsService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/net/NetworkStatsService$1;->this$0:Lcom/android/server/net/NetworkStatsService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$1;->this$0:Lcom/android/server/net/NetworkStatsService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/net/NetworkStatsService;->-wrap3(Lcom/android/server/net/NetworkStatsService;I)V

    return-void
.end method
