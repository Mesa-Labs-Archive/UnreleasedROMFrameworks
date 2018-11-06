.class public Lcom/android/server/pm/PersonaServiceProxy$PreInstallerReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PersonaServiceProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PersonaServiceProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PreInstallerReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PersonaServiceProxy;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PersonaServiceProxy;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/PersonaServiceProxy$PreInstallerReceiver;->this$0:Lcom/android/server/pm/PersonaServiceProxy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "com.samsung.intent.action.PREINSTALLER_FINISH"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "PersonaManagerService::Proxy"

    const-string/jumbo v4, "com.samsung.intent.action.PREINSTALLER_FINISH"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "persona"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/knox/SemPersonaManager;

    invoke-virtual {v2}, Lcom/samsung/android/knox/SemPersonaManager;->getKioskId()I

    move-result v1

    if-lez v1, :cond_0

    const-string/jumbo v3, "PersonaManagerService::Proxy"

    const-string/jumbo v4, "Switch to COM container"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v3, "android.intent.extra.user_handle"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v3, "knox.container.proxy.COMMAND_SWITCH_PROFILE"

    invoke-static {v3, v0}, Lcom/samsung/android/knox/ContainerProxy;->sendCommand(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    :cond_0
    return-void
.end method
