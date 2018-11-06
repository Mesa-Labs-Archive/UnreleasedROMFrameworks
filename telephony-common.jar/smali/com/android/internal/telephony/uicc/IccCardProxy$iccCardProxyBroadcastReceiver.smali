.class Lcom/android/internal/telephony/uicc/IccCardProxy$iccCardProxyBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "IccCardProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/IccCardProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "iccCardProxyBroadcastReceiver"
.end annotation


# static fields
.field private static final synthetic -com-android-internal-telephony-uicc-IccCardApplicationStatus$PersoSubStateSwitchesValues:[I


# instance fields
.field final synthetic $SWITCH_TABLE$com$android$internal$telephony$uicc$IccCardApplicationStatus$PersoSubState:[I

.field final synthetic this$0:Lcom/android/internal/telephony/uicc/IccCardProxy;


# direct methods
.method private static synthetic -getcom-android-internal-telephony-uicc-IccCardApplicationStatus$PersoSubStateSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardProxy$iccCardProxyBroadcastReceiver;->-com-android-internal-telephony-uicc-IccCardApplicationStatus$PersoSubStateSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardProxy$iccCardProxyBroadcastReceiver;->-com-android-internal-telephony-uicc-IccCardApplicationStatus$PersoSubStateSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->values()[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_IN_PROGRESS:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_19

    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_READY:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_18

    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_RUIM_CORPORATE:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_17

    :goto_2
    :try_start_3
    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_RUIM_CORPORATE_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_16

    :goto_3
    :try_start_4
    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_RUIM_HRPD:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_15

    :goto_4
    :try_start_5
    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_RUIM_HRPD_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_14

    :goto_5
    :try_start_6
    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_RUIM_NETWORK1:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_13

    :goto_6
    :try_start_7
    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_RUIM_NETWORK1_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_12

    :goto_7
    :try_start_8
    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_RUIM_NETWORK2:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_11

    :goto_8
    :try_start_9
    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_RUIM_NETWORK2_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_10

    :goto_9
    :try_start_a
    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_RUIM_RUIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_f

    :goto_a
    :try_start_b
    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_RUIM_RUIM_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_e

    :goto_b
    :try_start_c
    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_RUIM_SERVICE_PROVIDER:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_d

    :goto_c
    :try_start_d
    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_RUIM_SERVICE_PROVIDER_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_c

    :goto_d
    :try_start_e
    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_SIM_CORPORATE:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_b

    :goto_e
    :try_start_f
    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_SIM_CORPORATE_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_a

    :goto_f
    :try_start_10
    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_SIM_NETWORK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_9

    :goto_10
    :try_start_11
    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_SIM_NETWORK_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->ordinal()I

    move-result v1

    const/16 v2, 0x14

    aput v2, v0, v1
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_8

    :goto_11
    :try_start_12
    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_SIM_NETWORK_SUBSET:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_7

    :goto_12
    :try_start_13
    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_SIM_NETWORK_SUBSET_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->ordinal()I

    move-result v1

    const/16 v2, 0x15

    aput v2, v0, v1
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_6

    :goto_13
    :try_start_14
    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_SIM_SERVICE_PROVIDER:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_5

    :goto_14
    :try_start_15
    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_SIM_SERVICE_PROVIDER_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->ordinal()I

    move-result v1

    const/16 v2, 0x16

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_4

    :goto_15
    :try_start_16
    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_SIM_SIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->ordinal()I

    move-result v1

    const/16 v2, 0x17

    aput v2, v0, v1
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_3

    :goto_16
    :try_start_17
    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_SIM_SIM_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->ordinal()I

    move-result v1

    const/16 v2, 0x18

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_17} :catch_2

    :goto_17
    :try_start_18
    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_UNKNOWN:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->ordinal()I

    move-result v1

    const/16 v2, 0x19

    aput v2, v0, v1
    :try_end_18
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_18} :catch_1

    :goto_18
    :try_start_19
    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_USIM_MANUFACTURE_NETWORK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->ordinal()I

    move-result v1

    const/16 v2, 0x1a

    aput v2, v0, v1
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_19} :catch_0

    :goto_19
    sput-object v0, Lcom/android/internal/telephony/uicc/IccCardProxy$iccCardProxyBroadcastReceiver;->-com-android-internal-telephony-uicc-IccCardApplicationStatus$PersoSubStateSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_19

    :catch_1
    move-exception v1

    goto :goto_18

    :catch_2
    move-exception v1

    goto :goto_17

    :catch_3
    move-exception v1

    goto :goto_16

    :catch_4
    move-exception v1

    goto :goto_15

    :catch_5
    move-exception v1

    goto :goto_14

    :catch_6
    move-exception v1

    goto :goto_13

    :catch_7
    move-exception v1

    goto :goto_12

    :catch_8
    move-exception v1

    goto :goto_11

    :catch_9
    move-exception v1

    goto :goto_10

    :catch_a
    move-exception v1

    goto :goto_f

    :catch_b
    move-exception v1

    goto/16 :goto_e

    :catch_c
    move-exception v1

    goto/16 :goto_d

    :catch_d
    move-exception v1

    goto/16 :goto_c

    :catch_e
    move-exception v1

    goto/16 :goto_b

    :catch_f
    move-exception v1

    goto/16 :goto_a

    :catch_10
    move-exception v1

    goto/16 :goto_9

    :catch_11
    move-exception v1

    goto/16 :goto_8

    :catch_12
    move-exception v1

    goto/16 :goto_7

    :catch_13
    move-exception v1

    goto/16 :goto_6

    :catch_14
    move-exception v1

    goto/16 :goto_5

    :catch_15
    move-exception v1

    goto/16 :goto_4

    :catch_16
    move-exception v1

    goto/16 :goto_3

    :catch_17
    move-exception v1

    goto/16 :goto_2

    :catch_18
    move-exception v1

    goto/16 :goto_1

    :catch_19
    move-exception v1

    goto/16 :goto_0
.end method

.method private constructor <init>(Lcom/android/internal/telephony/uicc/IccCardProxy;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy$iccCardProxyBroadcastReceiver;->this$0:Lcom/android/internal/telephony/uicc/IccCardProxy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/uicc/IccCardProxy;Lcom/android/internal/telephony/uicc/IccCardProxy$iccCardProxyBroadcastReceiver;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/IccCardProxy$iccCardProxyBroadcastReceiver;-><init>(Lcom/android/internal/telephony/uicc/IccCardProxy;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "com.sec.android.app.secsetupwizard.SETUPWIZARD_COMPLETE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy$iccCardProxyBroadcastReceiver;->this$0:Lcom/android/internal/telephony/uicc/IccCardProxy;

    invoke-static {v2}, Lcom/android/internal/telephony/uicc/IccCardProxy;->-wrap2(Lcom/android/internal/telephony/uicc/IccCardProxy;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v2, "com.samsung.intent.action.START_ICC_NETWORK_DEPERSO"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "VZW"

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/IccCardProxy$iccCardProxyBroadcastReceiver;->this$0:Lcom/android/internal/telephony/uicc/IccCardProxy;

    invoke-static {v3}, Lcom/android/internal/telephony/uicc/IccCardProxy;->-get3(Lcom/android/internal/telephony/uicc/IccCardProxy;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/android/internal/telephony/TelephonyFeatures;->getSubOperatorName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/android/internal/telephony/uicc/IccCardProxy$iccCardProxyBroadcastReceiver;->-getcom-android-internal-telephony-uicc-IccCardApplicationStatus$PersoSubStateSwitchesValues()[I

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/IccCardProxy$iccCardProxyBroadcastReceiver;->this$0:Lcom/android/internal/telephony/uicc/IccCardProxy;

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/IccCardProxy;->getPersoSubState()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy$iccCardProxyBroadcastReceiver;->this$0:Lcom/android/internal/telephony/uicc/IccCardProxy;

    const-string/jumbo v3, "Receive START_ICC_NETWORK_DEPERSO, lockType : NETWORK"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/uicc/IccCardProxy;->-wrap0(Lcom/android/internal/telephony/uicc/IccCardProxy;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy$iccCardProxyBroadcastReceiver;->this$0:Lcom/android/internal/telephony/uicc/IccCardProxy;

    invoke-static {v2}, Lcom/android/internal/telephony/uicc/IccCardProxy;->-get1(Lcom/android/internal/telephony/uicc/IccCardProxy;)Landroid/os/RegistrantList;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/RegistrantList;->notifyRegistrants()V

    goto :goto_0

    :pswitch_1
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy$iccCardProxyBroadcastReceiver;->this$0:Lcom/android/internal/telephony/uicc/IccCardProxy;

    const-string/jumbo v3, "Receive START_ICC_NETWORK_DEPERSO, lockType : SUBSET"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/uicc/IccCardProxy;->-wrap0(Lcom/android/internal/telephony/uicc/IccCardProxy;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy$iccCardProxyBroadcastReceiver;->this$0:Lcom/android/internal/telephony/uicc/IccCardProxy;

    invoke-static {v2}, Lcom/android/internal/telephony/uicc/IccCardProxy;->-get2(Lcom/android/internal/telephony/uicc/IccCardProxy;)Landroid/os/RegistrantList;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/RegistrantList;->notifyRegistrants()V

    goto :goto_0

    :pswitch_2
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy$iccCardProxyBroadcastReceiver;->this$0:Lcom/android/internal/telephony/uicc/IccCardProxy;

    const-string/jumbo v3, "Receive START_ICC_NETWORK_DEPERSO, lockType : SP"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/uicc/IccCardProxy;->-wrap0(Lcom/android/internal/telephony/uicc/IccCardProxy;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy$iccCardProxyBroadcastReceiver;->this$0:Lcom/android/internal/telephony/uicc/IccCardProxy;

    invoke-static {v2}, Lcom/android/internal/telephony/uicc/IccCardProxy;->-get4(Lcom/android/internal/telephony/uicc/IccCardProxy;)Landroid/os/RegistrantList;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/RegistrantList;->notifyRegistrants()V

    goto :goto_0

    :cond_2
    const-string/jumbo v2, "com.samsung.intent.action.SIMHOTSWAP"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->isSimHotswapSupported()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/uicc/IccCardProxy;->-get0()I

    move-result v2

    if-le v2, v4, :cond_3

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy$iccCardProxyBroadcastReceiver;->this$0:Lcom/android/internal/telephony/uicc/IccCardProxy;

    invoke-static {v2}, Lcom/android/internal/telephony/uicc/IccCardProxy;->-get3(Lcom/android/internal/telephony/uicc/IccCardProxy;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    new-array v3, v4, [Ljava/lang/String;

    const-string/jumbo v4, "CTC"

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lcom/android/internal/telephony/TelephonyFeatures;->isNetworkCodeSpecific(I[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy$iccCardProxyBroadcastReceiver;->this$0:Lcom/android/internal/telephony/uicc/IccCardProxy;

    const-string/jumbo v3, "skip SIMHOTSWAP intent CTC"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/uicc/IccCardProxy;->-wrap1(Lcom/android/internal/telephony/uicc/IccCardProxy;Ljava/lang/String;)V

    return-void

    :cond_3
    invoke-static {v5}, Lcom/android/internal/telephony/uicc/IccCardProxy;->-set0(Z)Z

    const-string/jumbo v2, "REASON"

    invoke-virtual {p2, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy$iccCardProxyBroadcastReceiver;->this$0:Lcom/android/internal/telephony/uicc/IccCardProxy;

    invoke-static {v2}, Lcom/android/internal/telephony/uicc/IccCardProxy;->-get5(Lcom/android/internal/telephony/uicc/IccCardProxy;)Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy$iccCardProxyBroadcastReceiver;->this$0:Lcom/android/internal/telephony/uicc/IccCardProxy;

    invoke-static {v2}, Lcom/android/internal/telephony/uicc/IccCardProxy;->-get5(Lcom/android/internal/telephony/uicc/IccCardProxy;)Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/uicc/UiccController;->setIsSimMgrStarted(Z)V

    :cond_4
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy$iccCardProxyBroadcastReceiver;->this$0:Lcom/android/internal/telephony/uicc/IccCardProxy;

    const-string/jumbo v3, "Receive SIMHOTSWAP false intent so sIsStartSimManagement setted false for initial"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/uicc/IccCardProxy;->-wrap0(Lcom/android/internal/telephony/uicc/IccCardProxy;Ljava/lang/String;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
