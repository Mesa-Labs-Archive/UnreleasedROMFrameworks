.class Lcom/android/server/wifi/WifiGeofenceManager$2;
.super Landroid/content/BroadcastReceiver;
.source "WifiGeofenceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/WifiGeofenceManager;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/wifi/WifiConfigManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiGeofenceManager;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiGeofenceManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wifi/WifiGeofenceManager$2;->this$0:Lcom/android/server/wifi/WifiGeofenceManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13

    const/4 v12, 0x0

    const/4 v11, -0x1

    const/4 v10, 0x2

    const/4 v9, 0x1

    const-string/jumbo v6, "WifiGeofenceManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "BroadcastReceiver: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v6, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/server/wifi/WifiGeofenceManager$2;->this$0:Lcom/android/server/wifi/WifiGeofenceManager;

    invoke-static {v6}, Lcom/android/server/wifi/WifiGeofenceManager;->-get1(Lcom/android/server/wifi/WifiGeofenceManager;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "airplane_mode_on"

    invoke-static {v6, v7, v12}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v9, :cond_1

    const/4 v3, 0x1

    :goto_0
    if-eqz v3, :cond_2

    const-string/jumbo v6, "WifiGeofenceManager"

    const-string/jumbo v7, "Airplain mode enabled -> Set max interval to 128s"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/server/wifi/WifiGeofenceManager$2;->this$0:Lcom/android/server/wifi/WifiGeofenceManager;

    invoke-static {v6, v9}, Lcom/android/server/wifi/WifiGeofenceManager;->-wrap4(Lcom/android/server/wifi/WifiGeofenceManager;I)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    :cond_2
    iget-object v6, p0, Lcom/android/server/wifi/WifiGeofenceManager$2;->this$0:Lcom/android/server/wifi/WifiGeofenceManager;

    invoke-static {v6, v9}, Lcom/android/server/wifi/WifiGeofenceManager;->-wrap0(Lcom/android/server/wifi/WifiGeofenceManager;Z)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string/jumbo v6, "WifiGeofenceManager"

    const-string/jumbo v7, "Airplain mode disabled! But exit state -> Set max interval 1024s"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/server/wifi/WifiGeofenceManager$2;->this$0:Lcom/android/server/wifi/WifiGeofenceManager;

    invoke-static {v6, v10}, Lcom/android/server/wifi/WifiGeofenceManager;->-wrap4(Lcom/android/server/wifi/WifiGeofenceManager;I)V

    goto :goto_1

    :cond_3
    const-string/jumbo v6, "WifiGeofenceManager"

    const-string/jumbo v7, "Airplain mode disabled! Enter state -> Set max interval 128s"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/server/wifi/WifiGeofenceManager$2;->this$0:Lcom/android/server/wifi/WifiGeofenceManager;

    invoke-static {v6, v9}, Lcom/android/server/wifi/WifiGeofenceManager;->-wrap4(Lcom/android/server/wifi/WifiGeofenceManager;I)V

    goto :goto_1

    :cond_4
    const-string/jumbo v6, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/android/server/wifi/WifiGeofenceManager$2;->this$0:Lcom/android/server/wifi/WifiGeofenceManager;

    invoke-static {v6}, Lcom/android/server/wifi/WifiGeofenceManager;->-wrap1(Lcom/android/server/wifi/WifiGeofenceManager;)Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/android/server/wifi/WifiGeofenceManager$2;->this$0:Lcom/android/server/wifi/WifiGeofenceManager;

    invoke-static {v6, v9}, Lcom/android/server/wifi/WifiGeofenceManager;->-wrap0(Lcom/android/server/wifi/WifiGeofenceManager;Z)Z

    move-result v6

    if-eqz v6, :cond_5

    const-string/jumbo v6, "WifiGeofenceManager"

    const-string/jumbo v7, "getSimState() is SIM_STATE_READY! But exit state -> Set max interval 1024s"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/server/wifi/WifiGeofenceManager$2;->this$0:Lcom/android/server/wifi/WifiGeofenceManager;

    invoke-static {v6, v10}, Lcom/android/server/wifi/WifiGeofenceManager;->-wrap4(Lcom/android/server/wifi/WifiGeofenceManager;I)V

    goto :goto_1

    :cond_5
    const-string/jumbo v6, "WifiGeofenceManager"

    const-string/jumbo v7, "getSimState() is SIM_STATE_READY! Enter state -> Set max interval 128s"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/server/wifi/WifiGeofenceManager$2;->this$0:Lcom/android/server/wifi/WifiGeofenceManager;

    invoke-static {v6, v9}, Lcom/android/server/wifi/WifiGeofenceManager;->-wrap4(Lcom/android/server/wifi/WifiGeofenceManager;I)V

    goto :goto_1

    :cond_6
    const-string/jumbo v6, "WifiGeofenceManager"

    const-string/jumbo v7, "getSimState() is not SIM_STATE_READY! -> Set max interval to 128s"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/server/wifi/WifiGeofenceManager$2;->this$0:Lcom/android/server/wifi/WifiGeofenceManager;

    invoke-static {v6, v9}, Lcom/android/server/wifi/WifiGeofenceManager;->-wrap4(Lcom/android/server/wifi/WifiGeofenceManager;I)V

    goto :goto_1

    :cond_7
    const-string/jumbo v6, "com.sec.android.wifi.GEOFENCE_TRIGGERED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    const-string/jumbo v6, "id"

    invoke-virtual {p2, v6, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string/jumbo v6, "transition"

    invoke-virtual {p2, v6, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v6, p0, Lcom/android/server/wifi/WifiGeofenceManager$2;->this$0:Lcom/android/server/wifi/WifiGeofenceManager;

    invoke-static {v6}, Lcom/android/server/wifi/WifiGeofenceManager;->-get2(Lcom/android/server/wifi/WifiGeofenceManager;)Ljava/util/HashMap;

    move-result-object v6

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/WifiGeofenceDBHelper$WifiGeofenceData;

    if-nez v0, :cond_8

    const-string/jumbo v6, "WifiGeofenceManager"

    const-string/jumbo v7, "WifiGeofenceData is null!"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_8
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiGeofenceDBHelper$WifiGeofenceData;->setIsGeofenceEnter(I)V

    iget-object v6, p0, Lcom/android/server/wifi/WifiGeofenceManager$2;->this$0:Lcom/android/server/wifi/WifiGeofenceManager;

    invoke-static {v6, v9}, Lcom/android/server/wifi/WifiGeofenceManager;->-wrap0(Lcom/android/server/wifi/WifiGeofenceManager;Z)Z

    move-result v6

    if-eqz v6, :cond_a

    const/4 v4, 0x2

    :goto_2
    const-string/jumbo v6, "WifiGeofenceManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "id ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "], direction ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "], Result ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "]\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/server/wifi/WifiGeofenceManager$2;->this$0:Lcom/android/server/wifi/WifiGeofenceManager;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "                   [ id = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", direction = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/wifi/WifiGeofenceManager$2;->this$0:Lcom/android/server/wifi/WifiGeofenceManager;

    invoke-static {v8, v1}, Lcom/android/server/wifi/WifiGeofenceManager;->-wrap2(Lcom/android/server/wifi/WifiGeofenceManager;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "    Result : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/wifi/WifiGeofenceManager$2;->this$0:Lcom/android/server/wifi/WifiGeofenceManager;

    invoke-static {v8, v4}, Lcom/android/server/wifi/WifiGeofenceManager;->-wrap2(Lcom/android/server/wifi/WifiGeofenceManager;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " ]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/wifi/WifiGeofenceManager;->-wrap3(Lcom/android/server/wifi/WifiGeofenceManager;Ljava/lang/String;)V

    if-eq v1, v9, :cond_9

    if-nez v1, :cond_b

    :cond_9
    const-string/jumbo v6, "WifiGeofenceManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "BroadcastReceiver() - configKey : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiGeofenceDBHelper$WifiGeofenceData;->getConfigKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " IN. Reduce scan max interval"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/server/wifi/WifiGeofenceManager$2;->this$0:Lcom/android/server/wifi/WifiGeofenceManager;

    invoke-static {v6, v1}, Lcom/android/server/wifi/WifiGeofenceManager;->-wrap4(Lcom/android/server/wifi/WifiGeofenceManager;I)V

    goto/16 :goto_1

    :cond_a
    const/4 v4, 0x1

    goto/16 :goto_2

    :cond_b
    if-ne v1, v10, :cond_0

    if-ne v4, v10, :cond_c

    const-string/jumbo v6, "WifiGeofenceManager"

    const-string/jumbo v7, "BroadcastReceiver() - All of AP are OUT. Increase scan max interval"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/server/wifi/WifiGeofenceManager$2;->this$0:Lcom/android/server/wifi/WifiGeofenceManager;

    invoke-static {v6, v10}, Lcom/android/server/wifi/WifiGeofenceManager;->-wrap4(Lcom/android/server/wifi/WifiGeofenceManager;I)V

    goto/16 :goto_1

    :cond_c
    iget-object v6, p0, Lcom/android/server/wifi/WifiGeofenceManager$2;->this$0:Lcom/android/server/wifi/WifiGeofenceManager;

    invoke-static {v6, v9}, Lcom/android/server/wifi/WifiGeofenceManager;->-wrap4(Lcom/android/server/wifi/WifiGeofenceManager;I)V

    goto/16 :goto_1

    :cond_d
    const-string/jumbo v6, "com.samsung.android.location.SERVICE_READY"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v7, p0, Lcom/android/server/wifi/WifiGeofenceManager$2;->this$0:Lcom/android/server/wifi/WifiGeofenceManager;

    iget-object v6, p0, Lcom/android/server/wifi/WifiGeofenceManager$2;->this$0:Lcom/android/server/wifi/WifiGeofenceManager;

    invoke-static {v6}, Lcom/android/server/wifi/WifiGeofenceManager;->-get1(Lcom/android/server/wifi/WifiGeofenceManager;)Landroid/content/Context;

    move-result-object v6

    const-string/jumbo v8, "sec_location"

    invoke-virtual {v6, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/location/SemLocationManager;

    invoke-static {v7, v6}, Lcom/android/server/wifi/WifiGeofenceManager;->-set0(Lcom/android/server/wifi/WifiGeofenceManager;Lcom/samsung/android/location/SemLocationManager;)Lcom/samsung/android/location/SemLocationManager;

    iget-object v6, p0, Lcom/android/server/wifi/WifiGeofenceManager$2;->this$0:Lcom/android/server/wifi/WifiGeofenceManager;

    invoke-static {v6}, Lcom/android/server/wifi/WifiGeofenceManager;->-get3(Lcom/android/server/wifi/WifiGeofenceManager;)Lcom/samsung/android/location/SemLocationManager;

    move-result-object v6

    if-eqz v6, :cond_e

    const-string/jumbo v6, "WifiGeofenceManager"

    const-string/jumbo v7, "mSLocationManager is ready"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/server/wifi/WifiGeofenceManager$2;->this$0:Lcom/android/server/wifi/WifiGeofenceManager;

    invoke-static {v6}, Lcom/android/server/wifi/WifiGeofenceManager;->-get3(Lcom/android/server/wifi/WifiGeofenceManager;)Lcom/samsung/android/location/SemLocationManager;

    move-result-object v6

    new-instance v7, Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/android/server/wifi/WifiGeofenceManager$2;->this$0:Lcom/android/server/wifi/WifiGeofenceManager;

    invoke-static {v8}, Lcom/android/server/wifi/WifiGeofenceManager;->-get2(Lcom/android/server/wifi/WifiGeofenceManager;)Ljava/util/HashMap;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v6, v7}, Lcom/samsung/android/location/SemLocationManager;->syncGeofence(Ljava/util/List;)I

    move-result v5

    const-string/jumbo v6, "WifiGeofenceManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "mSLocationManager.syncGeofence - retVal : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/server/wifi/WifiGeofenceManager$2;->this$0:Lcom/android/server/wifi/WifiGeofenceManager;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "syncGeofence ()  - [ retVal : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " ], mSLocationManager.ACTION_SERVICE_READY !! "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/wifi/WifiGeofenceManager;->-wrap3(Lcom/android/server/wifi/WifiGeofenceManager;Ljava/lang/String;)V

    :cond_e
    iget-object v6, p0, Lcom/android/server/wifi/WifiGeofenceManager$2;->this$0:Lcom/android/server/wifi/WifiGeofenceManager;

    invoke-static {v6}, Lcom/android/server/wifi/WifiGeofenceManager;->-get5(Lcom/android/server/wifi/WifiGeofenceManager;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v6

    const/4 v7, 0x3

    if-eq v6, v7, :cond_f

    iget-object v6, p0, Lcom/android/server/wifi/WifiGeofenceManager$2;->this$0:Lcom/android/server/wifi/WifiGeofenceManager;

    invoke-static {v6}, Lcom/android/server/wifi/WifiGeofenceManager;->-get0(Lcom/android/server/wifi/WifiGeofenceManager;)Z

    move-result v6

    if-eqz v6, :cond_0

    :cond_f
    iget-object v6, p0, Lcom/android/server/wifi/WifiGeofenceManager$2;->this$0:Lcom/android/server/wifi/WifiGeofenceManager;

    invoke-static {v6}, Lcom/android/server/wifi/WifiGeofenceManager;->-get4(Lcom/android/server/wifi/WifiGeofenceManager;)Landroid/os/Handler;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/wifi/WifiGeofenceManager$2;->this$0:Lcom/android/server/wifi/WifiGeofenceManager;

    iget-object v7, v7, Lcom/android/server/wifi/WifiGeofenceManager;->mStartGeofenceThread:Ljava/lang/Runnable;

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1
.end method
