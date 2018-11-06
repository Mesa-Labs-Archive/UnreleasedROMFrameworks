.class Lcom/android/server/wifi/WifiController$NoLockHeldState;
.super Lcom/android/internal/util/State;
.source "WifiController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NoLockHeldState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiController;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wifi/WifiController$NoLockHeldState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wifi/WifiController$NoLockHeldState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v0}, Lcom/android/server/wifi/WifiController;->-get22(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiStateMachine;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->setOperationalMode(I)V

    iget-object v0, p0, Lcom/android/server/wifi/WifiController$NoLockHeldState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v0}, Lcom/android/server/wifi/WifiController;->-get22(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiStateMachine;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiController$NoLockHeldState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v1}, Lcom/android/server/wifi/WifiController;->-get20(Lcom/android/server/wifi/WifiController;)I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/server/wifi/dqa/ReportUtil;->getReportDataForDisconnectBySleepPolicy(I)Landroid/os/Bundle;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v0, v2, v1}, Lcom/android/server/wifi/WifiStateMachine;->report(ILandroid/os/Bundle;)V

    return-void
.end method
