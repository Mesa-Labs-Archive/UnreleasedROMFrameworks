.class abstract Lcom/android/server/policy/LegacyGlobalActions$SinglePressAction;
.super Ljava/lang/Object;
.source "LegacyGlobalActions.java"

# interfaces
.implements Lcom/android/server/policy/LegacyGlobalActions$Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/LegacyGlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "SinglePressAction"
.end annotation


# instance fields
.field public customAction:I

.field public isKnoxCustom:Z

.field private final mIcon:Landroid/graphics/drawable/Drawable;

.field private final mIconResId:I

.field mLayoutId:I

.field private final mMessage:Ljava/lang/CharSequence;

.field private final mMessageResId:I


# direct methods
.method protected constructor <init>(II)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/android/server/policy/LegacyGlobalActions$SinglePressAction;->isKnoxCustom:Z

    iput v0, p0, Lcom/android/server/policy/LegacyGlobalActions$SinglePressAction;->customAction:I

    iput p1, p0, Lcom/android/server/policy/LegacyGlobalActions$SinglePressAction;->mIconResId:I

    iput p2, p0, Lcom/android/server/policy/LegacyGlobalActions$SinglePressAction;->mMessageResId:I

    iput-object v1, p0, Lcom/android/server/policy/LegacyGlobalActions$SinglePressAction;->mMessage:Ljava/lang/CharSequence;

    iput-object v1, p0, Lcom/android/server/policy/LegacyGlobalActions$SinglePressAction;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Lcom/android/server/policy/LegacyGlobalActions$SinglePressAction;->init()V

    return-void
.end method

.method protected constructor <init>(ILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/android/server/policy/LegacyGlobalActions$SinglePressAction;->isKnoxCustom:Z

    iput v0, p0, Lcom/android/server/policy/LegacyGlobalActions$SinglePressAction;->customAction:I

    iput p1, p0, Lcom/android/server/policy/LegacyGlobalActions$SinglePressAction;->mIconResId:I

    iput v0, p0, Lcom/android/server/policy/LegacyGlobalActions$SinglePressAction;->mMessageResId:I

    iput-object p3, p0, Lcom/android/server/policy/LegacyGlobalActions$SinglePressAction;->mMessage:Ljava/lang/CharSequence;

    iput-object p2, p0, Lcom/android/server/policy/LegacyGlobalActions$SinglePressAction;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Lcom/android/server/policy/LegacyGlobalActions$SinglePressAction;->init()V

    return-void
.end method

.method protected constructor <init>(ILjava/lang/CharSequence;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/android/server/policy/LegacyGlobalActions$SinglePressAction;->isKnoxCustom:Z

    iput v0, p0, Lcom/android/server/policy/LegacyGlobalActions$SinglePressAction;->customAction:I

    iput p1, p0, Lcom/android/server/policy/LegacyGlobalActions$SinglePressAction;->mIconResId:I

    iput v0, p0, Lcom/android/server/policy/LegacyGlobalActions$SinglePressAction;->mMessageResId:I

    iput-object p2, p0, Lcom/android/server/policy/LegacyGlobalActions$SinglePressAction;->mMessage:Ljava/lang/CharSequence;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions$SinglePressAction;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Lcom/android/server/policy/LegacyGlobalActions$SinglePressAction;->init()V

    return-void
.end method

.method protected constructor <init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/android/server/policy/LegacyGlobalActions$SinglePressAction;->isKnoxCustom:Z

    iput v0, p0, Lcom/android/server/policy/LegacyGlobalActions$SinglePressAction;->customAction:I

    iput-object p1, p0, Lcom/android/server/policy/LegacyGlobalActions$SinglePressAction;->mIcon:Landroid/graphics/drawable/Drawable;

    iput-object p2, p0, Lcom/android/server/policy/LegacyGlobalActions$SinglePressAction;->mMessage:Ljava/lang/CharSequence;

    iput v0, p0, Lcom/android/server/policy/LegacyGlobalActions$SinglePressAction;->mIconResId:I

    iput v0, p0, Lcom/android/server/policy/LegacyGlobalActions$SinglePressAction;->mMessageResId:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/LegacyGlobalActions$SinglePressAction;->isKnoxCustom:Z

    iput p3, p0, Lcom/android/server/policy/LegacyGlobalActions$SinglePressAction;->customAction:I

    invoke-direct {p0}, Lcom/android/server/policy/LegacyGlobalActions$SinglePressAction;->init()V

    return-void
.end method

.method private init()V
    .locals 1

    invoke-static {}, Lcom/android/server/policy/LegacyGlobalActions;->-get68()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x1090072

    iput v0, p0, Lcom/android/server/policy/LegacyGlobalActions$SinglePressAction;->mLayoutId:I

    :goto_0
    return-void

    :cond_0
    const v0, 0x1090070

    iput v0, p0, Lcom/android/server/policy/LegacyGlobalActions$SinglePressAction;->mLayoutId:I

    goto :goto_0
.end method


# virtual methods
.method public create(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 10

    invoke-static {}, Lcom/android/server/policy/LegacyGlobalActions;->-get68()Z

    move-result v7

    if-eqz v7, :cond_8

    const v7, 0x1090072

    const/4 v8, 0x0

    invoke-virtual {p4, v7, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    :goto_0
    const v7, 0x1020006

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v7, 0x102000b

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v7, 0x10204f9

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v7, 0x10202de

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/android/server/policy/LegacyGlobalActions$SinglePressAction;->isEnabled()Z

    move-result v0

    invoke-virtual {p0}, Lcom/android/server/policy/LegacyGlobalActions$SinglePressAction;->getStatus()Ljava/lang/String;

    move-result-object v4

    if-eqz v5, :cond_0

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-nez v0, :cond_0

    const v7, -0x777778

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    iget-object v7, p0, Lcom/android/server/policy/LegacyGlobalActions$SinglePressAction;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_9

    iget-object v7, p0, Lcom/android/server/policy/LegacyGlobalActions$SinglePressAction;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    sget-object v7, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget v7, p0, Lcom/android/server/policy/LegacyGlobalActions$SinglePressAction;->mIconResId:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    :cond_1
    :goto_1
    if-eqz v3, :cond_2

    iget-object v7, p0, Lcom/android/server/policy/LegacyGlobalActions$SinglePressAction;->mMessage:Ljava/lang/CharSequence;

    if-eqz v7, :cond_a

    iget-object v7, p0, Lcom/android/server/policy/LegacyGlobalActions$SinglePressAction;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    if-nez v0, :cond_2

    const v7, -0x777778

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_2
    if-eqz v2, :cond_4

    iget v7, p0, Lcom/android/server/policy/LegacyGlobalActions$SinglePressAction;->mMessageResId:I

    if-eqz v7, :cond_3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget v8, p0, Lcom/android/server/policy/LegacyGlobalActions$SinglePressAction;->mMessageResId:I

    invoke-virtual {p1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x10403a0

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_3
    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    if-eqz v0, :cond_b

    const/4 v7, 0x1

    invoke-virtual {v2, v7}, Landroid/widget/FrameLayout;->setClickable(Z)V

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v2, v7}, Landroid/widget/FrameLayout;->setAlpha(F)V

    :cond_4
    :goto_3
    invoke-static {}, Lcom/android/server/policy/LegacyGlobalActions;->-get67()Z

    move-result v7

    if-eqz v7, :cond_6

    if-eqz v3, :cond_5

    invoke-static {}, Lcom/android/server/policy/LegacyGlobalActions;->-get70()I

    move-result v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_5
    if-eqz v5, :cond_6

    invoke-static {}, Lcom/android/server/policy/LegacyGlobalActions;->-get74()I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_6
    invoke-static {}, Lcom/android/server/policy/LegacyGlobalActions;->-get66()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-static {}, Lcom/android/server/policy/LegacyGlobalActions;->-get62()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-static {}, Lcom/android/server/policy/LegacyGlobalActions;->-get71()I

    move-result v7

    invoke-static {v3, v7}, Lcom/android/server/policy/LegacyGlobalActions;->-wrap38(Landroid/widget/TextView;I)V

    invoke-static {}, Lcom/android/server/policy/LegacyGlobalActions;->-get75()I

    move-result v7

    invoke-static {v5, v7}, Lcom/android/server/policy/LegacyGlobalActions;->-wrap38(Landroid/widget/TextView;I)V

    :cond_7
    return-object v6

    :cond_8
    const v7, 0x1090070

    const/4 v8, 0x0

    invoke-virtual {p4, v7, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    goto/16 :goto_0

    :cond_9
    iget v7, p0, Lcom/android/server/policy/LegacyGlobalActions$SinglePressAction;->mIconResId:I

    if-eqz v7, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    iget v8, p0, Lcom/android/server/policy/LegacyGlobalActions$SinglePressAction;->mIconResId:I

    invoke-static {}, Lcom/android/server/policy/LegacyGlobalActions;->-get59()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget v7, p0, Lcom/android/server/policy/LegacyGlobalActions$SinglePressAction;->mIconResId:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_a
    iget v7, p0, Lcom/android/server/policy/LegacyGlobalActions$SinglePressAction;->mMessageResId:I

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_2

    :cond_b
    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Landroid/widget/FrameLayout;->setClickable(Z)V

    const v7, 0x3ecccccd    # 0.4f

    invoke-virtual {v2, v7}, Landroid/widget/FrameLayout;->setAlpha(F)V

    goto :goto_3
.end method

.method public getLabelForAccessibility(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions$SinglePressAction;->mMessage:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions$SinglePressAction;->mMessage:Ljava/lang/CharSequence;

    return-object v0

    :cond_0
    iget v0, p0, Lcom/android/server/policy/LegacyGlobalActions$SinglePressAction;->mMessageResId:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public abstract onPress()V
.end method
