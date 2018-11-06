.class Lcom/android/server/wifi/WifiStateMachine$11;
.super Landroid/telephony/PhoneStateListener;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/WifiStateMachine;->setWifiApState(IILjava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine$11;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataConnectionStateChanged(II)V
    .locals 20

    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get4()Z

    move-result v16

    if-eqz v16, :cond_0

    const-string/jumbo v16, "WifiStateMachine"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "onDataConnectionStateChanged state : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, ", networktype : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/16 v16, 0x2

    move/from16 v0, p1

    move/from16 v1, v16

    if-ne v0, v1, :cond_2

    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get41()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Landroid/net/TrafficStats;->getTxBytes(Ljava/lang/String;)J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Lcom/android/server/wifi/WifiStateMachine;->-set57(J)J

    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get41()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Landroid/net/TrafficStats;->getRxBytes(Ljava/lang/String;)J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Lcom/android/server/wifi/WifiStateMachine;->-set56(J)J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Lcom/android/server/wifi/WifiStateMachine;->-set52(J)J

    const/16 v16, 0x1

    invoke-static/range {v16 .. v16}, Lcom/android/server/wifi/WifiStateMachine;->-set1(Z)Z

    const/16 v16, 0x1

    invoke-static/range {v16 .. v16}, Lcom/android/server/wifi/WifiStateMachine;->-set0(Z)Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    if-nez p1, :cond_1

    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get11()Z

    move-result v16

    if-eqz v16, :cond_1

    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get15()J

    move-result-wide v10

    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get14()J

    move-result-wide v12

    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get13()J

    move-result-wide v8

    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get41()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Landroid/net/TrafficStats;->getTxBytes(Ljava/lang/String;)J

    move-result-wide v16

    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get102()J

    move-result-wide v18

    sub-long v6, v16, v18

    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get41()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Landroid/net/TrafficStats;->getRxBytes(Ljava/lang/String;)J

    move-result-wide v16

    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get101()J

    move-result-wide v18

    sub-long v4, v16, v18

    add-long v16, v12, v6

    invoke-static/range {v16 .. v17}, Lcom/android/server/wifi/WifiStateMachine;->-set5(J)J

    add-long v16, v8, v4

    invoke-static/range {v16 .. v17}, Lcom/android/server/wifi/WifiStateMachine;->-set4(J)J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get91()J

    move-result-wide v16

    sub-long v16, v2, v16

    const-wide/32 v18, 0xea60

    div-long v14, v16, v18

    add-long v16, v10, v14

    invoke-static/range {v16 .. v17}, Lcom/android/server/wifi/WifiStateMachine;->-set6(J)J

    const/16 v16, 0x0

    invoke-static/range {v16 .. v16}, Lcom/android/server/wifi/WifiStateMachine;->-set1(Z)Z

    const/16 v16, 0x0

    invoke-static/range {v16 .. v16}, Lcom/android/server/wifi/WifiStateMachine;->-set0(Z)Z

    goto :goto_0
.end method
