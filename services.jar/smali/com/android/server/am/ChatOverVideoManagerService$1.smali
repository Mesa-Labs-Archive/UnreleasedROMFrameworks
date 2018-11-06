.class Lcom/android/server/am/ChatOverVideoManagerService$1;
.super Ljava/lang/Object;
.source "ChatOverVideoManagerService.java"

# interfaces
.implements Lcom/samsung/android/chatovervideo/ChatOverVideoSettingsOberver$onChatOverVideoModeChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ChatOverVideoManagerService;->initObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ChatOverVideoManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/ChatOverVideoManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/ChatOverVideoManagerService$1;->this$0:Lcom/android/server/am/ChatOverVideoManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChatOverVideoAppsChanged(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/ChatOverVideoManagerService$1;->this$0:Lcom/android/server/am/ChatOverVideoManagerService;

    invoke-static {v0, p1}, Lcom/android/server/am/ChatOverVideoManagerService;->-wrap1(Lcom/android/server/am/ChatOverVideoManagerService;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/ChatOverVideoManagerService$1;->this$0:Lcom/android/server/am/ChatOverVideoManagerService;

    invoke-static {v0}, Lcom/android/server/am/ChatOverVideoManagerService;->-get1(Lcom/android/server/am/ChatOverVideoManagerService;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/ChatOverVideoManagerService$1;->this$0:Lcom/android/server/am/ChatOverVideoManagerService;

    invoke-static {v1}, Lcom/android/server/am/ChatOverVideoManagerService;->-get0(Lcom/android/server/am/ChatOverVideoManagerService;)Z

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->setViewTransparencyEnabled(ZZ)Z

    return-void
.end method

.method public onChatOverVideoEnableChanged(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/ChatOverVideoManagerService$1;->this$0:Lcom/android/server/am/ChatOverVideoManagerService;

    invoke-static {v0}, Lcom/android/server/am/ChatOverVideoManagerService;->-get0(Lcom/android/server/am/ChatOverVideoManagerService;)Z

    move-result v0

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ChatOverVideoManagerService$1;->this$0:Lcom/android/server/am/ChatOverVideoManagerService;

    invoke-static {v0, p1}, Lcom/android/server/am/ChatOverVideoManagerService;->-wrap0(Lcom/android/server/am/ChatOverVideoManagerService;Z)V

    :cond_0
    return-void
.end method
