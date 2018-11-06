.class Lcom/android/internal/telephony/util/NotificationChannelController$1;
.super Landroid/content/BroadcastReceiver;
.source "NotificationChannelController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/util/NotificationChannelController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/util/NotificationChannelController;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/util/NotificationChannelController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/telephony/util/NotificationChannelController$1;->this$0:Lcom/android/internal/telephony/util/NotificationChannelController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string/jumbo v0, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/android/internal/telephony/util/NotificationChannelController;->-wrap0(Landroid/content/Context;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v1, v0, :cond_0

    invoke-static {p1}, Lcom/android/internal/telephony/util/NotificationChannelController;->-wrap1(Landroid/content/Context;)V

    goto :goto_0
.end method
