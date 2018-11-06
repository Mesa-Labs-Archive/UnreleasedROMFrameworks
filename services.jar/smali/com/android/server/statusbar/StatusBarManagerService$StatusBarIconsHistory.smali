.class Lcom/android/server/statusbar/StatusBarManagerService$StatusBarIconsHistory;
.super Ljava/lang/Object;
.source "StatusBarManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/statusbar/StatusBarManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StatusBarIconsHistory"
.end annotation


# instance fields
.field callingUid:I

.field newVisibility:Z

.field slot:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/statusbar/StatusBarManagerService;

.field time:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/android/server/statusbar/StatusBarManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/statusbar/StatusBarManagerService$StatusBarIconsHistory;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/statusbar/StatusBarManagerService;Lcom/android/server/statusbar/StatusBarManagerService$StatusBarIconsHistory;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/statusbar/StatusBarManagerService$StatusBarIconsHistory;-><init>(Lcom/android/server/statusbar/StatusBarManagerService;)V

    return-void
.end method
