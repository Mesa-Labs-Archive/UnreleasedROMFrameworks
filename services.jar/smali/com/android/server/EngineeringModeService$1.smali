.class Lcom/android/server/EngineeringModeService$1;
.super Landroid/content/BroadcastReceiver;
.source "EngineeringModeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/EngineeringModeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/EngineeringModeService;


# direct methods
.method constructor <init>(Lcom/android/server/EngineeringModeService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/EngineeringModeService$1;->this$0:Lcom/android/server/EngineeringModeService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 19

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v3, "EngineeringModeService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Broadcast received:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "com.android.server.em.EM_SYNC_SERVER_DATE"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/EngineeringModeService$1;->this$0:Lcom/android/server/EngineeringModeService;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/server/EngineeringModeService;->-set1(Lcom/android/server/EngineeringModeService;Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v3, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/EngineeringModeService$1;->this$0:Lcom/android/server/EngineeringModeService;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/android/server/EngineeringModeService;->-set0(Lcom/android/server/EngineeringModeService;Z)Z

    new-instance v17, Landroid/content/Intent;

    const-string/jumbo v3, "com.android.server.em.EM_SYNC_SERVER_DATE"

    move-object/from16 v0, v17

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/EngineeringModeService;->-get0()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    const/high16 v5, 0x8000000

    move-object/from16 v0, v17

    invoke-static {v3, v4, v0, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    new-instance v18, Landroid/content/Intent;

    const-string/jumbo v3, "com.android.server.em.EM_SYNC_TOKEN_STATE_TIMER"

    move-object/from16 v0, v18

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/EngineeringModeService;->-get0()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    const/high16 v5, 0x8000000

    move-object/from16 v0, v18

    invoke-static {v3, v4, v0, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v16

    invoke-static {}, Lcom/android/server/EngineeringModeService;->-get0()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "alarm"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const/4 v3, 0x3

    const-wide/32 v6, 0x5265c00

    invoke-virtual/range {v2 .. v8}, Landroid/app/AlarmManager;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    const/4 v11, 0x3

    const-wide/32 v14, 0xdbba0

    move-object v10, v2

    invoke-virtual/range {v10 .. v16}, Landroid/app/AlarmManager;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/EngineeringModeService$1;->this$0:Lcom/android/server/EngineeringModeService;

    invoke-static {v3}, Lcom/android/server/EngineeringModeService;->-wrap2(Lcom/android/server/EngineeringModeService;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/EngineeringModeService$1;->this$0:Lcom/android/server/EngineeringModeService;

    invoke-static {v3}, Lcom/android/server/EngineeringModeService;->-get1(Lcom/android/server/EngineeringModeService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    :try_start_0
    invoke-static {}, Lcom/android/server/EngineeringModeService;->-get2()I

    move-result v3

    const/16 v5, 0x14

    if-ne v3, v5, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/EngineeringModeService$1;->this$0:Lcom/android/server/EngineeringModeService;

    invoke-static {v3}, Lcom/android/server/EngineeringModeService;->-wrap1(Lcom/android/server/EngineeringModeService;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit v4

    goto/16 :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    :cond_3
    const-string/jumbo v3, "com.android.server.em.EM_SYNC_TOKEN_STATE_TIMER"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/EngineeringModeService$1;->this$0:Lcom/android/server/EngineeringModeService;

    invoke-static {v3}, Lcom/android/server/EngineeringModeService;->-wrap2(Lcom/android/server/EngineeringModeService;)V

    goto/16 :goto_0
.end method
