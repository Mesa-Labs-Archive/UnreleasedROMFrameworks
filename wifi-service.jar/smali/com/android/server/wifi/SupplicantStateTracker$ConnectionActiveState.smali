.class Lcom/android/server/wifi/SupplicantStateTracker$ConnectionActiveState;
.super Lcom/android/internal/util/State;
.source "SupplicantStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/SupplicantStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ConnectionActiveState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/SupplicantStateTracker;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/SupplicantStateTracker;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wifi/SupplicantStateTracker$ConnectionActiveState;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .locals 3

    const/4 v2, 0x0

    iget v0, p1, Landroid/os/Message;->what:I

    const v1, 0x2006f

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStateTracker$ConnectionActiveState;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

    sget-object v1, Landroid/net/wifi/SupplicantState;->DISCONNECTED:Landroid/net/wifi/SupplicantState;

    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/SupplicantStateTracker;->-wrap1(Lcom/android/server/wifi/SupplicantStateTracker;Landroid/net/wifi/SupplicantState;Z)V

    :cond_0
    return v2
.end method
