.class final synthetic Lcom/android/internal/widget/-$Lambda$nZD8NeHZxo4kFQHu5zIWiAfZj2s$5;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;

.field private final synthetic -$f1:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/widget/-$Lambda$nZD8NeHZxo4kFQHu5zIWiAfZj2s$5;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    iget-object v1, p0, Lcom/android/internal/widget/-$Lambda$nZD8NeHZxo4kFQHu5zIWiAfZj2s$5;->-$f1:Ljava/lang/Object;

    check-cast v1, Landroid/widget/ImageButton;

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->lambda$-com_android_internal_widget_FloatingToolbar$FloatingToolbarPopup_116089(Landroid/widget/ImageButton;Landroid/view/View;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/widget/-$Lambda$nZD8NeHZxo4kFQHu5zIWiAfZj2s$5;->-$f0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/internal/widget/-$Lambda$nZD8NeHZxo4kFQHu5zIWiAfZj2s$5;->-$f1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/widget/-$Lambda$nZD8NeHZxo4kFQHu5zIWiAfZj2s$5;->$m$0(Landroid/view/View;)V

    return-void
.end method
