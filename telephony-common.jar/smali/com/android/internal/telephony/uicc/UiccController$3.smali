.class Lcom/android/internal/telephony/uicc/UiccController$3;
.super Ljava/lang/Object;
.source "UiccController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/uicc/UiccController;->onSimCountMismatched(Landroid/os/AsyncResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/uicc/UiccController;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/uicc/UiccController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccController$3;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController$3;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    const-string/jumbo v2, "Reboot due to SIM count mismatched"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/uicc/UiccController;->-wrap0(Lcom/android/internal/telephony/uicc/UiccController;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/internal/telephony/uicc/UiccController$3$1;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/uicc/UiccController$3$1;-><init>(Lcom/android/internal/telephony/uicc/UiccController$3;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method
