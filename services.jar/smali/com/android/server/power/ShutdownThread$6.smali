.class final Lcom/android/server/power/ShutdownThread$6;
.super Landroid/app/Dialog;
.source "ShutdownThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/ShutdownThread;->createDConfirmDialog(Landroid/content/Context;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$ctx:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;ILandroid/content/Context;)V
    .locals 0

    iput-object p3, p0, Lcom/android/server/power/ShutdownThread$6;->val$ctx:Landroid/content/Context;

    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public init()Landroid/app/Dialog;
    .locals 4

    const-string/jumbo v2, "ShutdownThread"

    const-string/jumbo v3, "init"

    invoke-static {v2, v3}, Lcom/android/server/power/ShutdownThread$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/power/ShutdownThread$6;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v3, 0x80582

    or-int/2addr v2, v3

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v2, v2, 0x10

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    const/16 v2, 0x96b

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const v2, 0x3f333333    # 0.7f

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    or-int/lit8 v2, v2, 0x40

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    invoke-virtual {p0}, Lcom/android/server/power/ShutdownThread$6;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/high16 v3, 0x10000

    invoke-virtual {v2, v3}, Landroid/view/Window;->clearFlags(I)V

    invoke-virtual {p0}, Lcom/android/server/power/ShutdownThread$6;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    invoke-virtual {p0}, Lcom/android/server/power/ShutdownThread$6;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/Window;->setWindowAnimations(I)V

    const/16 v1, 0x200

    invoke-virtual {p0}, Lcom/android/server/power/ShutdownThread$6;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-object p0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    const-string/jumbo v11, "ShutdownThread"

    const-string/jumbo v12, "onCreate"

    invoke-static {v11, v12}, Lcom/android/server/power/ShutdownThread$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v11, Landroid/widget/RelativeLayout;

    iget-object v12, p0, Lcom/android/server/power/ShutdownThread$6;->val$ctx:Landroid/content/Context;

    invoke-direct {v11, v12}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    invoke-static {v11}, Lcom/android/server/power/ShutdownThread;->-set20(Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout;

    new-instance v9, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v11, -0x1

    const/4 v12, -0x1

    invoke-direct {v9, v11, v12}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get33()Landroid/widget/RelativeLayout;

    move-result-object v11

    const/16 v12, 0x11

    invoke-virtual {v11, v12}, Landroid/widget/RelativeLayout;->setGravity(I)V

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get33()Landroid/widget/RelativeLayout;

    move-result-object v11

    invoke-virtual {v11, v9}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v11, Landroid/widget/RelativeLayout;

    iget-object v12, p0, Lcom/android/server/power/ShutdownThread$6;->val$ctx:Landroid/content/Context;

    invoke-direct {v11, v12}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    invoke-static {v11}, Lcom/android/server/power/ShutdownThread;->-set16(Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout;

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get29()Landroid/widget/RelativeLayout;

    move-result-object v11

    invoke-virtual {v11, v9}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get29()Landroid/widget/RelativeLayout;

    move-result-object v11

    const v12, -0x66f1f1f2

    invoke-virtual {v11, v12}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get29()Landroid/widget/RelativeLayout;

    move-result-object v11

    const v12, 0x3f19999a    # 0.6f

    invoke-virtual {v11, v12}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    new-instance v11, Landroid/widget/LinearLayout;

    iget-object v12, p0, Lcom/android/server/power/ShutdownThread$6;->val$ctx:Landroid/content/Context;

    invoke-direct {v11, v12}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-static {v11}, Lcom/android/server/power/ShutdownThread;->-set18(Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v11, -0x1

    const/4 v12, -0x2

    invoke-direct {v6, v11, v12}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/high16 v11, 0x431e0000    # 158.0f

    iget-object v12, p0, Lcom/android/server/power/ShutdownThread$6;->val$ctx:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v12

    const/4 v13, 0x1

    invoke-static {v13, v11, v12}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v11

    float-to-int v8, v11

    iput v8, v6, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    const/16 v11, 0xd

    const/4 v12, -0x1

    invoke-virtual {v6, v11, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get31()Landroid/widget/LinearLayout;

    move-result-object v11

    invoke-virtual {v11, v6}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get31()Landroid/widget/LinearLayout;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get31()Landroid/widget/LinearLayout;

    move-result-object v11

    const/16 v12, 0x11

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v11, -0x2

    const/4 v12, -0x2

    invoke-direct {v7, v11, v12}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v11, 0xd

    const/4 v12, -0x1

    invoke-virtual {v7, v11, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    new-instance v11, Landroid/widget/TextView;

    iget-object v12, p0, Lcom/android/server/power/ShutdownThread$6;->val$ctx:Landroid/content/Context;

    invoke-direct {v11, v12}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-static {v11}, Lcom/android/server/power/ShutdownThread;->-set2(Landroid/widget/TextView;)Landroid/widget/TextView;

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get5()Landroid/widget/TextView;

    move-result-object v11

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get32()I

    move-result v12

    add-int/lit8 v12, v12, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get5()Landroid/widget/TextView;

    move-result-object v11

    const/high16 v12, 0x42c80000    # 100.0f

    const/4 v13, 0x1

    invoke-virtual {v11, v13, v12}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get5()Landroid/widget/TextView;

    move-result-object v11

    const v12, -0x50506

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get5()Landroid/widget/TextView;

    move-result-object v11

    invoke-virtual {v11, v7}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get5()Landroid/widget/TextView;

    move-result-object v11

    const-string/jumbo v12, "sec-roboto-light"

    const/4 v13, 0x0

    invoke-static {v12, v13}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/high16 v11, 0x41a00000    # 20.0f

    iget-object v12, p0, Lcom/android/server/power/ShutdownThread$6;->val$ctx:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v12

    const/4 v13, 0x1

    invoke-static {v13, v11, v12}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v11

    float-to-int v8, v11

    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v11, -0x2

    const/4 v12, -0x2

    invoke-direct {v10, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v10, v11, v8, v12, v13}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    new-instance v11, Landroid/widget/TextView;

    iget-object v12, p0, Lcom/android/server/power/ShutdownThread$6;->val$ctx:Landroid/content/Context;

    invoke-direct {v11, v12}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-static {v11}, Lcom/android/server/power/ShutdownThread;->-set3(Landroid/widget/TextView;)Landroid/widget/TextView;

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get6()Landroid/widget/TextView;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Turning off in "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get32()I

    move-result v13

    add-int/lit8 v13, v13, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " seconds..."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get6()Landroid/widget/TextView;

    move-result-object v11

    const/high16 v12, 0x41880000    # 17.0f

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get6()Landroid/widget/TextView;

    move-result-object v11

    const v12, -0x50506

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get6()Landroid/widget/TextView;

    move-result-object v11

    invoke-virtual {v11, v10}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v11, 0x42aa0000    # 85.0f

    iget-object v12, p0, Lcom/android/server/power/ShutdownThread$6;->val$ctx:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v12

    const/4 v13, 0x1

    invoke-static {v13, v11, v12}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v11

    float-to-int v2, v11

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v11, 0xd

    const/4 v12, -0x1

    invoke-virtual {v3, v11, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/high16 v11, 0x42240000    # 41.0f

    iget-object v12, p0, Lcom/android/server/power/ShutdownThread$6;->val$ctx:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v12

    const/4 v13, 0x1

    invoke-static {v13, v11, v12}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v11

    float-to-int v8, v11

    new-instance v11, Landroid/widget/LinearLayout;

    iget-object v12, p0, Lcom/android/server/power/ShutdownThread$6;->val$ctx:Landroid/content/Context;

    invoke-direct {v11, v12}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-static {v11}, Lcom/android/server/power/ShutdownThread;->-set17(Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v11, -0x2

    const/4 v12, -0x2

    invoke-direct {v4, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v4, v11, v8, v12, v13}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get30()Landroid/widget/LinearLayout;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get30()Landroid/widget/LinearLayout;

    move-result-object v11

    const/16 v12, 0x11

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get30()Landroid/widget/LinearLayout;

    move-result-object v11

    invoke-virtual {v11, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v11, 0x429a0000    # 77.0f

    iget-object v12, p0, Lcom/android/server/power/ShutdownThread$6;->val$ctx:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v12

    const/4 v13, 0x1

    invoke-static {v13, v11, v12}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v11

    float-to-int v8, v11

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v11, -0x2

    const/4 v12, -0x2

    invoke-direct {v5, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v5, v11, v12, v8, v13}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    new-instance v11, Landroid/widget/LinearLayout;

    iget-object v12, p0, Lcom/android/server/power/ShutdownThread$6;->val$ctx:Landroid/content/Context;

    invoke-direct {v11, v12}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-static {v11}, Lcom/android/server/power/ShutdownThread;->-set1(Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get4()Landroid/widget/LinearLayout;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get4()Landroid/widget/LinearLayout;

    move-result-object v11

    iget-object v12, p0, Lcom/android/server/power/ShutdownThread$6;->val$ctx:Landroid/content/Context;

    const/4 v13, 0x1

    invoke-static {v12, v13}, Lcom/android/server/power/ShutdownThread;->-wrap4(Landroid/content/Context;I)Landroid/widget/ImageView;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get4()Landroid/widget/LinearLayout;

    move-result-object v11

    iget-object v12, p0, Lcom/android/server/power/ShutdownThread$6;->val$ctx:Landroid/content/Context;

    const/4 v13, 0x1

    invoke-static {v12, v13}, Lcom/android/server/power/ShutdownThread;->-wrap7(Landroid/content/Context;I)Landroid/widget/TextView;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get4()Landroid/widget/LinearLayout;

    move-result-object v11

    invoke-virtual {v11, v5}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v11, Landroid/widget/LinearLayout;

    iget-object v12, p0, Lcom/android/server/power/ShutdownThread$6;->val$ctx:Landroid/content/Context;

    invoke-direct {v11, v12}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-static {v11}, Lcom/android/server/power/ShutdownThread;->-set12(Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get24()Landroid/widget/LinearLayout;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get24()Landroid/widget/LinearLayout;

    move-result-object v11

    iget-object v12, p0, Lcom/android/server/power/ShutdownThread$6;->val$ctx:Landroid/content/Context;

    const/4 v13, 0x2

    invoke-static {v12, v13}, Lcom/android/server/power/ShutdownThread;->-wrap4(Landroid/content/Context;I)Landroid/widget/ImageView;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get24()Landroid/widget/LinearLayout;

    move-result-object v11

    iget-object v12, p0, Lcom/android/server/power/ShutdownThread$6;->val$ctx:Landroid/content/Context;

    const/4 v13, 0x2

    invoke-static {v12, v13}, Lcom/android/server/power/ShutdownThread;->-wrap7(Landroid/content/Context;I)Landroid/widget/TextView;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v1, Lcom/android/server/power/ShutdownThread$6$1;

    iget-object v11, p0, Lcom/android/server/power/ShutdownThread$6;->val$ctx:Landroid/content/Context;

    invoke-direct {v1, p0, v11}, Lcom/android/server/power/ShutdownThread$6$1;-><init>(Lcom/android/server/power/ShutdownThread$6;Landroid/content/Context;)V

    new-instance v0, Lcom/android/server/power/ShutdownThread$6$2;

    invoke-direct {v0, p0}, Lcom/android/server/power/ShutdownThread$6$2;-><init>(Lcom/android/server/power/ShutdownThread$6;)V

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get24()Landroid/widget/LinearLayout;

    move-result-object v11

    invoke-virtual {v11, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get4()Landroid/widget/LinearLayout;

    move-result-object v11

    invoke-virtual {v11, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get30()Landroid/widget/LinearLayout;

    move-result-object v11

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get4()Landroid/widget/LinearLayout;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get30()Landroid/widget/LinearLayout;

    move-result-object v11

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get24()Landroid/widget/LinearLayout;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get31()Landroid/widget/LinearLayout;

    move-result-object v11

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get5()Landroid/widget/TextView;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get31()Landroid/widget/LinearLayout;

    move-result-object v11

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get6()Landroid/widget/TextView;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get31()Landroid/widget/LinearLayout;

    move-result-object v11

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get30()Landroid/widget/LinearLayout;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get33()Landroid/widget/RelativeLayout;

    move-result-object v11

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get29()Landroid/widget/RelativeLayout;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get33()Landroid/widget/RelativeLayout;

    move-result-object v11

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get31()Landroid/widget/LinearLayout;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get33()Landroid/widget/RelativeLayout;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/android/server/power/ShutdownThread$6;->setContentView(Landroid/view/View;)V

    return-void
.end method
