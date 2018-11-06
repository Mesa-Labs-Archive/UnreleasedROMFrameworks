.class Lcom/android/server/wm/AspectRatioController$2;
.super Ljava/lang/Object;
.source "AspectRatioController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/AspectRatioController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/AspectRatioController;


# direct methods
.method constructor <init>(Lcom/android/server/wm/AspectRatioController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/AspectRatioController$2;->this$0:Lcom/android/server/wm/AspectRatioController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget-object v3, p0, Lcom/android/server/wm/AspectRatioController$2;->this$0:Lcom/android/server/wm/AspectRatioController;

    invoke-static {v3}, Lcom/android/server/wm/AspectRatioController;->-get10(Lcom/android/server/wm/AspectRatioController;)Lcom/android/server/wm/SamsungWindowManagerService;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/wm/SamsungWindowManagerService;->mContext:Landroid/content/Context;

    const v4, 0x103012b

    invoke-direct {v1, v3, v4}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iget-object v3, p0, Lcom/android/server/wm/AspectRatioController$2;->this$0:Lcom/android/server/wm/AspectRatioController;

    invoke-static {v3}, Lcom/android/server/wm/AspectRatioController;->-get10(Lcom/android/server/wm/AspectRatioController;)Lcom/android/server/wm/SamsungWindowManagerService;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/wm/SamsungWindowManagerService;->mContext:Landroid/content/Context;

    const v4, 0x10400e1

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    invoke-static {v1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->setShowForAllUsers()V

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    return-void
.end method
