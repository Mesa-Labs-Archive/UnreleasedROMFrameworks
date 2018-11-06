.class Lcom/android/server/wifi/WifiServiceImpl$5;
.super Landroid/content/BroadcastReceiver;
.source "WifiServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/WifiServiceImpl;-><init>(Landroid/content/Context;Lcom/android/server/wifi/WifiInjector;Lcom/android/internal/util/AsyncChannel;)V
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

    iput-object p1, p0, Lcom/android/server/wifi/WifiServiceImpl$5;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11

    iget-object v8, p0, Lcom/android/server/wifi/WifiServiceImpl$5;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    const/4 v9, 0x1

    invoke-static {v8, v9}, Lcom/android/server/wifi/WifiServiceImpl;->-set3(Lcom/android/server/wifi/WifiServiceImpl;Z)Z

    const-string/jumbo v8, "chameleon_wifi_tetheredData"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v4, "10"

    const-string/jumbo v2, "1"

    const-string/jumbo v1, "8"

    const-string/jumbo v3, "8"

    const-string/jumbo v8, "chameleon_wifi_ssid"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    const-string/jumbo v8, "WifiService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "[onReceive] CHAMELEON Tethering.SSID : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/android/server/wifi/WifiServiceImpl$5;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-virtual {v8}, Lcom/android/server/wifi/WifiServiceImpl;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v7

    iput-object v5, v7, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/server/wifi/WifiServiceImpl$5;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-virtual {v8, v7}, Lcom/android/server/wifi/WifiServiceImpl;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)V

    :cond_0
    if-eqz v6, :cond_1

    iget-object v8, p0, Lcom/android/server/wifi/WifiServiceImpl$5;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v8, v9}, Lcom/android/server/wifi/WifiServiceImpl;->-set8(Lcom/android/server/wifi/WifiServiceImpl;I)I

    const-string/jumbo v8, "WifiService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "[onReceive] CHAMELEON mTetheredData : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/wifi/WifiServiceImpl$5;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-static {v10}, Lcom/android/server/wifi/WifiServiceImpl;->-get13(Lcom/android/server/wifi/WifiServiceImpl;)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-eqz v4, :cond_2

    iget-object v8, p0, Lcom/android/server/wifi/WifiServiceImpl$5;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v8, v9}, Lcom/android/server/wifi/WifiServiceImpl;->-set7(Lcom/android/server/wifi/WifiServiceImpl;I)I

    const-string/jumbo v8, "WifiService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "[onReceive] mMaxUser : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/wifi/WifiServiceImpl$5;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-static {v10}, Lcom/android/server/wifi/WifiServiceImpl;->-get11(Lcom/android/server/wifi/WifiServiceImpl;)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-eqz v2, :cond_3

    iget-object v8, p0, Lcom/android/server/wifi/WifiServiceImpl$5;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v8, v9}, Lcom/android/server/wifi/WifiServiceImpl;->-set5(Lcom/android/server/wifi/WifiServiceImpl;I)I

    const-string/jumbo v8, "WifiService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "[onReceive] mGsmMaxUser : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/wifi/WifiServiceImpl$5;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-static {v10}, Lcom/android/server/wifi/WifiServiceImpl;->-get9(Lcom/android/server/wifi/WifiServiceImpl;)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    if-eqz v1, :cond_4

    iget-object v8, p0, Lcom/android/server/wifi/WifiServiceImpl$5;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v8, v9}, Lcom/android/server/wifi/WifiServiceImpl;->-set4(Lcom/android/server/wifi/WifiServiceImpl;I)I

    const-string/jumbo v8, "WifiService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "[onReceive] mDomRoamMaxUser : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/wifi/WifiServiceImpl$5;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-static {v10}, Lcom/android/server/wifi/WifiServiceImpl;->-get7(Lcom/android/server/wifi/WifiServiceImpl;)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    if-eqz v3, :cond_5

    iget-object v8, p0, Lcom/android/server/wifi/WifiServiceImpl$5;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v8, v9}, Lcom/android/server/wifi/WifiServiceImpl;->-set6(Lcom/android/server/wifi/WifiServiceImpl;I)I

    const-string/jumbo v8, "WifiService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "[onReceive] mIntRoamMaxUser : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/wifi/WifiServiceImpl$5;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-static {v10}, Lcom/android/server/wifi/WifiServiceImpl;->-get10(Lcom/android/server/wifi/WifiServiceImpl;)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    const-string/jumbo v8, "WifiService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "[setValue] mTetheredData = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/wifi/WifiServiceImpl$5;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-static {v10}, Lcom/android/server/wifi/WifiServiceImpl;->-get13(Lcom/android/server/wifi/WifiServiceImpl;)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", mMaxUser = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/wifi/WifiServiceImpl$5;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-static {v10}, Lcom/android/server/wifi/WifiServiceImpl;->-get11(Lcom/android/server/wifi/WifiServiceImpl;)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", mGsmMaxUser = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/wifi/WifiServiceImpl$5;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-static {v10}, Lcom/android/server/wifi/WifiServiceImpl;->-get9(Lcom/android/server/wifi/WifiServiceImpl;)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", mDomRoamMaxUser = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/wifi/WifiServiceImpl$5;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-static {v10}, Lcom/android/server/wifi/WifiServiceImpl;->-get7(Lcom/android/server/wifi/WifiServiceImpl;)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", mIntRoamMaxUser = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/wifi/WifiServiceImpl$5;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-static {v10}, Lcom/android/server/wifi/WifiServiceImpl;->-get10(Lcom/android/server/wifi/WifiServiceImpl;)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/android/server/wifi/WifiServiceImpl$5;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-static {v8}, Lcom/android/server/wifi/WifiServiceImpl;->-get5(Lcom/android/server/wifi/WifiServiceImpl;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v8, "chameleon_tethereddata"

    iget-object v9, p0, Lcom/android/server/wifi/WifiServiceImpl$5;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-static {v9}, Lcom/android/server/wifi/WifiServiceImpl;->-get13(Lcom/android/server/wifi/WifiServiceImpl;)I

    move-result v9

    invoke-static {v0, v8, v9}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo v8, "chameleon_maxuser"

    iget-object v9, p0, Lcom/android/server/wifi/WifiServiceImpl$5;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-static {v9}, Lcom/android/server/wifi/WifiServiceImpl;->-get11(Lcom/android/server/wifi/WifiServiceImpl;)I

    move-result v9

    invoke-static {v0, v8, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo v8, "chameleon_gsmmaxuser"

    iget-object v9, p0, Lcom/android/server/wifi/WifiServiceImpl$5;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-static {v9}, Lcom/android/server/wifi/WifiServiceImpl;->-get9(Lcom/android/server/wifi/WifiServiceImpl;)I

    move-result v9

    invoke-static {v0, v8, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo v8, "chameleon_domroammaxuser"

    iget-object v9, p0, Lcom/android/server/wifi/WifiServiceImpl$5;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-static {v9}, Lcom/android/server/wifi/WifiServiceImpl;->-get7(Lcom/android/server/wifi/WifiServiceImpl;)I

    move-result v9

    invoke-static {v0, v8, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo v8, "chameleon_introammaxuser"

    iget-object v9, p0, Lcom/android/server/wifi/WifiServiceImpl$5;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-static {v9}, Lcom/android/server/wifi/WifiServiceImpl;->-get10(Lcom/android/server/wifi/WifiServiceImpl;)I

    move-result v9

    invoke-static {v0, v8, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo v8, "chameleon_ssid"

    invoke-static {v0, v8, v5}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method
