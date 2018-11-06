.class Lcom/android/server/enterprise/auditlog/AuditLogService$1;
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

    iput-object p1, p0, Lcom/android/server/enterprise/auditlog/AuditLogService$1;->this$0:Lcom/android/server/enterprise/auditlog/AuditLogService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    const/4 v1, 0x0

    const/4 v2, 0x5

    const/4 v3, 0x2

    const/4 v4, 0x1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v5, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService$1;->this$0:Lcom/android/server/enterprise/auditlog/AuditLogService;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    const-string/jumbo v6, "AuditLogService"

    const-string/jumbo v7, "Removable Media Event : External SD Card Mounted"

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/enterprise/auditlog/AuditLogService;->AuditLogger(Lcom/samsung/android/knox/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v5, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService$1;->this$0:Lcom/android/server/enterprise/auditlog/AuditLogService;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    const-string/jumbo v6, "AuditLogService"

    const-string/jumbo v7, "Removable Media Event : External SD Card Unmounted"

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/enterprise/auditlog/AuditLogService;->AuditLogger(Lcom/samsung/android/knox/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
