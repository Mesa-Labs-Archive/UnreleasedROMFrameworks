.class Lcom/android/server/wifi/WifiServiceImpl$7;
.super Landroid/content/BroadcastReceiver;
.source "WifiServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/WifiServiceImpl;->checkAndStartWifi()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiServiceImpl;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiServiceImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wifi/WifiServiceImpl$7;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl$7;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    iget-object v1, v1, Lcom/android/server/wifi/WifiServiceImpl;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiSettingsStore;->handleAirplaneModeToggled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl$7;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-static {v1}, Lcom/android/server/wifi/WifiServiceImpl;->-get15(Lcom/android/server/wifi/WifiServiceImpl;)Lcom/android/server/wifi/WifiController;

    move-result-object v1

    const v2, 0x26009

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiController;->sendMessage(I)V

    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl$7;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    iget-object v1, v1, Lcom/android/server/wifi/WifiServiceImpl;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiSettingsStore;->isAirplaneModeOn()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v1, "WifiService"

    const-string/jumbo v2, "resetting country code because Airplane mode is ON"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl$7;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-static {v1}, Lcom/android/server/wifi/WifiServiceImpl;->-get6(Lcom/android/server/wifi/WifiServiceImpl;)Lcom/android/server/wifi/WifiCountryCode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiCountryCode;->airplaneModeEnabled()V

    :cond_1
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl$7;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-static {v1}, Lcom/android/server/wifi/WifiServiceImpl;->-get3(Lcom/android/server/wifi/WifiServiceImpl;)Lcom/samsung/android/server/wifi/AutoWifiController;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl$7;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-static {v1}, Lcom/android/server/wifi/WifiServiceImpl;->-get3(Lcom/android/server/wifi/WifiServiceImpl;)Lcom/samsung/android/server/wifi/AutoWifiController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/server/wifi/AutoWifiController;->setAirplainMode(Z)V

    :cond_2
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl$7;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    iget-object v1, v1, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/dqa/ReportUtil;->getReportDataForChangeState(Z)Landroid/os/Bundle;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v1, v3, v2}, Lcom/android/server/wifi/WifiStateMachine;->report(ILandroid/os/Bundle;)V

    return-void
.end method
