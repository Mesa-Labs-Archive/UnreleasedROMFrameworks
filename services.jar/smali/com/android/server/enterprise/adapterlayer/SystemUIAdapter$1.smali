.class Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter$1;
.super Landroid/content/BroadcastReceiver;
.source "SystemUIAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->registerKnoxModeChangeObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter$1;->this$0:Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const-string/jumbo v1, "android.intent.action.USER_ADDED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "SystemUIAdapter"

    const-string/jumbo v2, "Received intent: ACTION_USER_ADDED"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "android.intent.extra.user_handle"

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->isValidKnoxId(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter$1;->this$0:Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;

    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->isComContainerId(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter$1;->this$0:Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;

    invoke-static {v1, v0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->-wrap1(Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;I)V

    :cond_0
    return-void
.end method
