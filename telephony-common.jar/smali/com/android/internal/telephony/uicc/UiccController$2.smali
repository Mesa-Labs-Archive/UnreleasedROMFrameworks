.class Lcom/android/internal/telephony/uicc/UiccController$2;
.super Ljava/lang/Object;
.source "UiccController.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/UiccController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/uicc/UiccController;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/uicc/UiccController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccController$2;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccController$2;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    const-string/jumbo v1, "onServiceConnected() : AutoPreconfigService"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->-wrap0(Lcom/android/internal/telephony/uicc/UiccController;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccController$2;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    new-instance v1, Landroid/os/Messenger;

    invoke-direct {v1, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    iput-object v1, v0, Lcom/android/internal/telephony/uicc/UiccController;->mAutoPreconfigService:Landroid/os/Messenger;

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccController$2;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccController;->InitAutopreconfig()V

    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccController$2;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    const-string/jumbo v1, "onServiceDisconnected() : AutoPreconfigService"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->-wrap0(Lcom/android/internal/telephony/uicc/UiccController;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccController$2;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->-set0(Lcom/android/internal/telephony/uicc/UiccController;Z)Z

    return-void
.end method
