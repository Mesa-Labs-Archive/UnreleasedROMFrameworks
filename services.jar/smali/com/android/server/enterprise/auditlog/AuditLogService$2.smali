.class Lcom/android/server/enterprise/auditlog/AuditLogService$2;
.super Landroid/content/BroadcastReceiver;
.source "AuditLogService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/auditlog/AuditLogService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/auditlog/AuditLogService;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/auditlog/AuditLogService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/auditlog/AuditLogService$2;->this$0:Lcom/android/server/enterprise/auditlog/AuditLogService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13

    const/4 v6, 0x1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "android.intent.action.REBOOT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_0
    const/4 v10, 0x0

    iget-object v2, p0, Lcom/android/server/enterprise/auditlog/AuditLogService$2;->this$0:Lcom/android/server/enterprise/auditlog/AuditLogService;

    invoke-static {v2}, Lcom/android/server/enterprise/auditlog/AuditLogService;->-get0(Lcom/android/server/enterprise/auditlog/AuditLogService;)Ljava/util/Map;

    move-result-object v3

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/server/enterprise/auditlog/AuditLogService$2;->this$0:Lcom/android/server/enterprise/auditlog/AuditLogService;

    invoke-static {v2}, Lcom/android/server/enterprise/auditlog/AuditLogService;->-get0(Lcom/android/server/enterprise/auditlog/AuditLogService;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/android/server/enterprise/auditlog/Admin;

    move-object v10, v0

    invoke-virtual {v10}, Lcom/android/server/enterprise/auditlog/Admin;->shutdown()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/android/server/enterprise/auditlog/AuditLogService$2;->this$0:Lcom/android/server/enterprise/auditlog/AuditLogService;

    invoke-static {v2}, Lcom/android/server/enterprise/auditlog/AuditLogService;->-wrap0(Lcom/android/server/enterprise/auditlog/AuditLogService;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_2
    monitor-exit v3

    :cond_3
    :goto_1
    return-void

    :cond_4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/server/enterprise/auditlog/AuditLogService$2;->this$0:Lcom/android/server/enterprise/auditlog/AuditLogService;

    invoke-static {v2, v6}, Lcom/android/server/enterprise/auditlog/AuditLogService;->-set0(Lcom/android/server/enterprise/auditlog/AuditLogService;Z)Z

    const/4 v10, 0x0

    iget-object v2, p0, Lcom/android/server/enterprise/auditlog/AuditLogService$2;->this$0:Lcom/android/server/enterprise/auditlog/AuditLogService;

    invoke-static {v2}, Lcom/android/server/enterprise/auditlog/AuditLogService;->-get0(Lcom/android/server/enterprise/auditlog/AuditLogService;)Ljava/util/Map;

    move-result-object v3

    monitor-enter v3

    :try_start_2
    iget-object v2, p0, Lcom/android/server/enterprise/auditlog/AuditLogService$2;->this$0:Lcom/android/server/enterprise/auditlog/AuditLogService;

    invoke-static {v2}, Lcom/android/server/enterprise/auditlog/AuditLogService;->-get0(Lcom/android/server/enterprise/auditlog/AuditLogService;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/android/server/enterprise/auditlog/Admin;

    move-object v10, v0

    const/4 v2, 0x1

    invoke-virtual {v10, v2}, Lcom/android/server/enterprise/auditlog/Admin;->setBootCompleted(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_5
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "android.intent.action.TIME_SET"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/server/enterprise/auditlog/AuditLogService$2;->this$0:Lcom/android/server/enterprise/auditlog/AuditLogService;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v7

    const-string/jumbo v8, "AuditLogService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "The device time has been changed. Current Time = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v3, 0x0

    const/4 v4, 0x5

    const/4 v5, 0x2

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/enterprise/auditlog/AuditLogService;->AuditLogger(Lcom/samsung/android/knox/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
