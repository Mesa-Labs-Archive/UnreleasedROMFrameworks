.class Lcom/android/internal/telephony/ServiceStateTracker$13;
.super Ljava/lang/Object;
.source "ServiceStateTracker.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/ServiceStateTracker;->showRescanDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/ServiceStateTracker;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/ServiceStateTracker;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker$13;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker$13;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mRescanDialog:Landroid/app/AlertDialog;

    return-void
.end method
