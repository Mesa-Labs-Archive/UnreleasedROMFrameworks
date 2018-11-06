.class Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager$1;
.super Landroid/content/BroadcastReceiver;
.source "PasspointVendorApManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager$1;->this$0:Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12

    const/4 v10, 0x2

    const/4 v11, 0x1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iget-object v6, p0, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager$1;->this$0:Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;

    const-string/jumbo v7, "PasspointVendorApManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "onReceive, action: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;->logi(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v6, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string/jumbo v6, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    :cond_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    invoke-static {}, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;->-get0()Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager$1;->this$0:Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;

    const-string/jumbo v7, "PasspointVendorApManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "onReceive, SIM state: from "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;->-get6()[Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager$1;->this$0:Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;

    invoke-static {v10}, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;->-get4(Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;)I

    move-result v10

    aget-object v9, v9, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;->-get6()[Ljava/lang/String;

    move-result-object v9

    aget-object v9, v9, v2

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;->logv(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-static {}, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;->-get0()Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager$1;->this$0:Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;

    const-string/jumbo v7, "PasspointVendorApManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "onReceive, mloadInternalDataCompleted: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;->-get5()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", mPasspointVendorConfigurationList size("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;->-get3()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;->logv(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const/4 v6, 0x5

    if-ne v2, v6, :cond_4

    iget-object v6, p0, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager$1;->this$0:Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;

    invoke-static {v6}, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;->-get4(Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;)I

    move-result v6

    if-eq v2, v6, :cond_4

    iget-object v6, p0, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager$1;->this$0:Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;

    invoke-static {v6}, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;->-wrap2(Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6

    invoke-static {}, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;->-get5()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-static {}, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;->-get3()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager$1;->this$0:Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;

    invoke-static {}, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;->-get2()Ljava/io/File;

    move-result-object v7

    invoke-static {v6, v7, v11}, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;->-wrap0(Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;Ljava/io/File;I)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager$1;->this$0:Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;

    const-string/jumbo v7, "PasspointVendorApManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "onReceive, added to the PasspointVendorConfigurationList (size: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;->-get3()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;->logi(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget-object v6, p0, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager$1;->this$0:Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;

    invoke-static {v6, v3}, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;->-wrap9(Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;Ljava/lang/String;)V

    :cond_4
    iget-object v6, p0, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager$1;->this$0:Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;

    invoke-static {v6, v2}, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;->-set1(Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;I)I

    :cond_5
    :goto_0
    return-void

    :cond_6
    iget-object v6, p0, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager$1;->this$0:Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;

    const/4 v7, 0x6

    invoke-static {v6, v7}, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;->-set1(Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;I)I

    return-void

    :cond_7
    const-string/jumbo v6, "com.samsung.intent.action.CSC_WIFI_UPDATE_HOTSPOT20_CONFIG"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    iget-object v6, p0, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager$1;->this$0:Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;

    invoke-static {v6}, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;->-wrap8(Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;)V

    iget-object v6, p0, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager$1;->this$0:Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;

    invoke-static {}, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;->-get2()Ljava/io/File;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;->-wrap6(Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;Ljava/io/File;)V

    invoke-static {}, Lcom/samsung/android/server/wifi/hotspot2/PasspointCscUtils;->getInstance()Lcom/samsung/android/server/wifi/hotspot2/PasspointCscUtils;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/server/wifi/hotspot2/PasspointCscUtils;->parsingCsc()Z

    move-result v6

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager$1;->this$0:Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;

    const-string/jumbo v7, "PasspointVendorApManager"

    const-string/jumbo v8, "cred.conf file created"

    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;->logi(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    invoke-static {}, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;->-get5()Z

    move-result v6

    if-eqz v6, :cond_a

    iget-object v6, p0, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager$1;->this$0:Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;

    invoke-static {v6}, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;->-wrap7(Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;)V

    iget-object v6, p0, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager$1;->this$0:Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;

    invoke-static {}, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;->-get2()Ljava/io/File;

    move-result-object v7

    invoke-static {v6, v7, v11}, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;->-wrap0(Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;Ljava/io/File;I)Z

    move-result v6

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager$1;->this$0:Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;

    invoke-static {v6}, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;->-wrap4(Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;)V

    :cond_9
    invoke-static {v10}, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;->-set0(I)I

    goto :goto_0

    :cond_a
    invoke-static {v11}, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;->-set0(I)I

    goto :goto_0

    :cond_b
    const-string/jumbo v6, "com.samsung.intent.action.CREDENTIALS_INSTALL"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    const-string/jumbo v6, "credential"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v1

    const/4 v5, 0x0

    if-eqz v1, :cond_c

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v1}, Ljava/lang/String;-><init>([B)V

    :cond_c
    if-eqz v5, :cond_5

    iget-object v6, p0, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager$1;->this$0:Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;

    invoke-static {v6, v5}, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;->-wrap1(Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;Ljava/lang/String;)Z

    iget-object v6, p0, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager$1;->this$0:Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;

    invoke-static {v6}, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;->-wrap3(Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;)V

    goto :goto_0

    :cond_d
    const-string/jumbo v6, "com.samsung.intent.action.LOAD_LEGACY_HOTSPOT20_CREDENTIALS"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_12

    const-string/jumbo v6, "legacyCred"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_e

    iget-object v6, p0, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager$1;->this$0:Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;

    invoke-static {v6, v4}, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;->-wrap1(Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;Ljava/lang/String;)Z

    iget-object v6, p0, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager$1;->this$0:Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;

    invoke-static {v6}, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;->-wrap3(Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;)V

    goto/16 :goto_0

    :cond_e
    invoke-static {}, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;->-get5()Z

    move-result v6

    if-nez v6, :cond_5

    invoke-static {}, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;->-get0()Z

    move-result v6

    if-eqz v6, :cond_f

    iget-object v6, p0, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager$1;->this$0:Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;

    const-string/jumbo v7, "PasspointVendorApManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "mNeedtoUpdatePasspointVendorAp, "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;->-get1()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;->logd(Ljava/lang/String;Ljava/lang/String;)V

    :cond_f
    invoke-static {}, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;->-get1()I

    move-result v6

    if-ne v6, v11, :cond_11

    iget-object v6, p0, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager$1;->this$0:Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;

    invoke-static {v6}, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;->-wrap7(Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;)V

    iget-object v6, p0, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager$1;->this$0:Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;

    invoke-static {}, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;->-get2()Ljava/io/File;

    move-result-object v7

    invoke-static {v6, v7, v11}, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;->-wrap0(Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;Ljava/io/File;I)Z

    move-result v6

    if-eqz v6, :cond_10

    iget-object v6, p0, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager$1;->this$0:Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;

    invoke-static {v6}, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;->-wrap4(Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;)V

    :cond_10
    :goto_1
    invoke-static {v10}, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;->-set0(I)I

    invoke-static {v11}, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;->-set2(Z)Z

    goto/16 :goto_0

    :cond_11
    iget-object v6, p0, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager$1;->this$0:Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;

    invoke-static {}, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;->-get2()Ljava/io/File;

    move-result-object v7

    invoke-static {v6, v7, v11}, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;->-wrap0(Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;Ljava/io/File;I)Z

    move-result v6

    if-eqz v6, :cond_10

    iget-object v6, p0, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager$1;->this$0:Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;

    const-string/jumbo v7, "PasspointVendorApManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "loadInternalData Completed (size: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;->-get3()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;->logi(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager$1;->this$0:Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;

    invoke-static {v6}, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;->-wrap5(Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;)V

    goto :goto_1

    :cond_12
    const-string/jumbo v6, "com.samsung.intent.action.SETTINGS_RESET_WIFI"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager$1;->this$0:Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;

    invoke-virtual {v6}, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;->factoryReset()V

    goto/16 :goto_0
.end method
