.class Lcom/samsung/android/server/wifi/AutoWifiController$UserTriggeredWifiOffState;
.super Lcom/android/internal/util/State;
.source "AutoWifiController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/AutoWifiController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UserTriggeredWifiOffState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/AutoWifiController;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/AutoWifiController;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/server/wifi/AutoWifiController$UserTriggeredWifiOffState;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 0

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/server/wifi/AutoWifiController$UserTriggeredWifiOffState;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    invoke-static {v0, p1, p0}, Lcom/samsung/android/server/wifi/AutoWifiController;->-wrap14(Lcom/samsung/android/server/wifi/AutoWifiController;Landroid/os/Message;Lcom/android/internal/util/State;)V

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    return v1

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/AutoWifiController$UserTriggeredWifiOffState;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/AutoWifiController;->-wrap21(Lcom/samsung/android/server/wifi/AutoWifiController;)V

    :cond_0
    :goto_0
    :pswitch_1
    const/4 v0, 0x1

    return v0

    :pswitch_2
    iget-object v0, p0, Lcom/samsung/android/server/wifi/AutoWifiController$UserTriggeredWifiOffState;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/AutoWifiController;->-get11(Lcom/samsung/android/server/wifi/AutoWifiController;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/server/wifi/AutoWifiController$UserTriggeredWifiOffState;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/AutoWifiController;->sendMessage(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
