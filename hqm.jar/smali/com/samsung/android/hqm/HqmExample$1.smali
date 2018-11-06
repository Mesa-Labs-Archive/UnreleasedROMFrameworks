.class Lcom/samsung/android/hqm/HqmExample$1;
.super Landroid/content/BroadcastReceiver;
.source "HqmExample.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hqm/HqmExample;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/hqm/HqmExample;


# direct methods
.method constructor <init>(Lcom/samsung/android/hqm/HqmExample;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/hqm/HqmExample$1;->this$0:Lcom/samsung/android/hqm/HqmExample;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/hqm/HqmExample$1;->this$0:Lcom/samsung/android/hqm/HqmExample;

    invoke-virtual {v1}, Lcom/samsung/android/hqm/HqmExample;->examplePublicAPI()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/hqm/HqmExample$1;->this$0:Lcom/samsung/android/hqm/HqmExample;

    invoke-virtual {v1}, Lcom/samsung/android/hqm/HqmExample;->exampleIntent()V

    goto :goto_0
.end method
