.class public Lcom/android/internal/widget/AlertDialogLayout;
.super Landroid/widget/LinearLayout;
.source "AlertDialogLayout.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method private forceUniformWidth(II)V
    .locals 9

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/internal/widget/AlertDialogLayout;->getMeasuredWidth()I

    move-result v0

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v0, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    const/4 v6, 0x0

    :goto_0
    if-ge v6, p1, :cond_1

    invoke-virtual {p0, v6}, Lcom/android/internal/widget/AlertDialogLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v4, 0x8

    if-eq v0, v4, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout$LayoutParams;

    iget v0, v7, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v4, -0x1

    if-ne v0, v4, :cond_0

    iget v8, v7, Landroid/widget/LinearLayout$LayoutParams;->height:I

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, v7, Landroid/widget/LinearLayout$LayoutParams;->height:I

    move-object v0, p0

    move v4, p2

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/AlertDialogLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    iput v8, v7, Landroid/widget/LinearLayout$LayoutParams;->height:I

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private resolveMinimumHeight(Landroid/view/View;)I
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getMinimumHeight()I

    move-result v0

    if-lez v0, :cond_0

    return v0

    :cond_0
    instance-of v2, p1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/widget/AlertDialogLayout;->resolveMinimumHeight(Landroid/view/View;)I

    move-result v2

    return v2

    :cond_1
    return v4
.end method

.method private setChildFrame(Landroid/view/View;IIII)V
    .locals 2

    add-int v0, p2, p4

    add-int v1, p3, p5

    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method private tryOnMeasure(II)Z
    .locals 26

    const/16 v20, 0x0

    const/4 v4, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/AlertDialogLayout;->getChildCount()I

    move-result v9

    const/4 v14, 0x0

    :goto_0
    if-ge v14, v9, :cond_2

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/internal/widget/AlertDialogLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v24

    const/16 v25, 0x8

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_0

    :goto_1
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v6}, Landroid/view/View;->getId()I

    move-result v15

    sparse-switch v15, :sswitch_data_0

    const/16 v24, 0x0

    return v24

    :sswitch_0
    move-object/from16 v20, v6

    goto :goto_1

    :sswitch_1
    move-object v4, v6

    goto :goto_1

    :sswitch_2
    if-eqz v18, :cond_1

    const/16 v24, 0x0

    return v24

    :cond_1
    move-object/from16 v18, v6

    goto :goto_1

    :cond_2
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v10

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v11

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v22

    const/4 v8, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/AlertDialogLayout;->getPaddingTop()I

    move-result v24

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/AlertDialogLayout;->getPaddingBottom()I

    move-result v25

    add-int v21, v24, v25

    if-eqz v20, :cond_3

    const/16 v24, 0x0

    move-object/from16 v0, v20

    move/from16 v1, p1

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredHeight()I

    move-result v24

    add-int v21, v21, v24

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredState()I

    move-result v24

    move/from16 v0, v24

    invoke-static {v8, v0}, Lcom/android/internal/widget/AlertDialogLayout;->combineMeasuredStates(II)I

    move-result v8

    :cond_3
    const/4 v3, 0x0

    const/4 v5, 0x0

    if-eqz v4, :cond_4

    const/16 v24, 0x0

    move/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v4, v0, v1}, Landroid/view/View;->measure(II)V

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/internal/widget/AlertDialogLayout;->resolveMinimumHeight(Landroid/view/View;)I

    move-result v3

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v24

    sub-int v5, v24, v3

    add-int v21, v21, v3

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredState()I

    move-result v24

    move/from16 v0, v24

    invoke-static {v8, v0}, Lcom/android/internal/widget/AlertDialogLayout;->combineMeasuredStates(II)I

    move-result v8

    :cond_4
    const/16 v17, 0x0

    if-eqz v18, :cond_5

    if-nez v10, :cond_a

    const/4 v7, 0x0

    :goto_2
    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-virtual {v0, v1, v7}, Landroid/view/View;->measure(II)V

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getMeasuredHeight()I

    move-result v17

    add-int v21, v21, v17

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getMeasuredState()I

    move-result v24

    move/from16 v0, v24

    invoke-static {v8, v0}, Lcom/android/internal/widget/AlertDialogLayout;->combineMeasuredStates(II)I

    move-result v8

    :cond_5
    sub-int v19, v11, v21

    if-eqz v4, :cond_7

    sub-int v21, v21, v3

    move/from16 v0, v19

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v13

    if-lez v13, :cond_6

    sub-int v19, v19, v13

    add-int/2addr v3, v13

    :cond_6
    const/high16 v24, 0x40000000    # 2.0f

    move/from16 v0, v24

    invoke-static {v3, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    move/from16 v0, p1

    invoke-virtual {v4, v0, v7}, Landroid/view/View;->measure(II)V

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v24

    add-int v21, v21, v24

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredState()I

    move-result v24

    move/from16 v0, v24

    invoke-static {v8, v0}, Lcom/android/internal/widget/AlertDialogLayout;->combineMeasuredStates(II)I

    move-result v8

    :cond_7
    if-eqz v18, :cond_8

    if-lez v19, :cond_8

    sub-int v21, v21, v17

    move/from16 v13, v19

    sub-int v19, v19, v19

    add-int v17, v17, v13

    move/from16 v0, v17

    invoke-static {v0, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-virtual {v0, v1, v7}, Landroid/view/View;->measure(II)V

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getMeasuredHeight()I

    move-result v24

    add-int v21, v21, v24

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getMeasuredState()I

    move-result v24

    move/from16 v0, v24

    invoke-static {v8, v0}, Lcom/android/internal/widget/AlertDialogLayout;->combineMeasuredStates(II)I

    move-result v8

    :cond_8
    const/16 v16, 0x0

    const/4 v14, 0x0

    :goto_3
    if-ge v14, v9, :cond_b

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/internal/widget/AlertDialogLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v24

    const/16 v25, 0x8

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_9

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v24

    move/from16 v0, v16

    move/from16 v1, v24

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v16

    :cond_9
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    :cond_a
    sub-int v24, v11, v21

    const/16 v25, 0x0

    move/from16 v0, v25

    move/from16 v1, v24

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v24

    move/from16 v0, v24

    invoke-static {v0, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    goto/16 :goto_2

    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/AlertDialogLayout;->getPaddingLeft()I

    move-result v24

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/AlertDialogLayout;->getPaddingRight()I

    move-result v25

    add-int v24, v24, v25

    add-int v16, v16, v24

    move/from16 v0, v16

    move/from16 v1, p1

    invoke-static {v0, v1, v8}, Lcom/android/internal/widget/AlertDialogLayout;->resolveSizeAndState(III)I

    move-result v23

    const/16 v24, 0x0

    move/from16 v0, v21

    move/from16 v1, p2

    move/from16 v2, v24

    invoke-static {v0, v1, v2}, Lcom/android/internal/widget/AlertDialogLayout;->resolveSizeAndState(III)I

    move-result v12

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1, v12}, Lcom/android/internal/widget/AlertDialogLayout;->setMeasuredDimension(II)V

    const/high16 v24, 0x40000000    # 2.0f

    move/from16 v0, v22

    move/from16 v1, v24

    if-eq v0, v1, :cond_c

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v9, v1}, Lcom/android/internal/widget/AlertDialogLayout;->forceUniformWidth(II)V

    :cond_c
    const/16 v24, 0x1

    return v24

    nop

    :sswitch_data_0
    .sparse-switch
        0x102022c -> :sswitch_1
        0x102025d -> :sswitch_2
        0x1020264 -> :sswitch_2
        0x1020543 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/AlertDialogLayout;->mPaddingLeft:I

    move/from16 v20, v0

    sub-int v22, p4, p2

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/widget/AlertDialogLayout;->mPaddingRight:I

    sub-int v8, v22, v1

    sub-int v1, v22, v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/AlertDialogLayout;->mPaddingRight:I

    move/from16 v23, v0

    sub-int v9, v1, v23

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/AlertDialogLayout;->getMeasuredHeight()I

    move-result v21

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/AlertDialogLayout;->getChildCount()I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/AlertDialogLayout;->getGravity()I

    move-result v13

    and-int/lit8 v18, v13, 0x70

    const v1, 0x800007

    and-int v19, v13, v1

    sparse-switch v18, :sswitch_data_0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/widget/AlertDialogLayout;->mPaddingTop:I

    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/AlertDialogLayout;->getDividerDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    if-nez v11, :cond_3

    const/4 v12, 0x0

    :goto_1
    const/4 v14, 0x0

    :goto_2
    if-ge v14, v10, :cond_4

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/internal/widget/AlertDialogLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v23, 0x8

    move/from16 v0, v23

    if-eq v1, v0, :cond_2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    check-cast v17, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v0, v17

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    move/from16 v16, v0

    if-gez v16, :cond_0

    move/from16 v16, v19

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/AlertDialogLayout;->getLayoutDirection()I

    move-result v15

    move/from16 v0, v16

    invoke-static {v0, v15}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v7

    and-int/lit8 v1, v7, 0x7

    sparse-switch v1, :sswitch_data_1

    move-object/from16 v0, v17

    iget v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int v3, v20, v1

    :goto_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/internal/widget/AlertDialogLayout;->hasDividerBeforeChildAt(I)Z

    move-result v1

    if-eqz v1, :cond_1

    add-int/2addr v4, v12

    :cond_1
    move-object/from16 v0, v17

    iget v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v4, v1

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/widget/AlertDialogLayout;->setChildFrame(Landroid/view/View;IIII)V

    move-object/from16 v0, v17

    iget v1, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v1, v6

    add-int/2addr v4, v1

    :cond_2
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    :sswitch_0
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/widget/AlertDialogLayout;->mPaddingTop:I

    add-int v1, v1, p5

    sub-int v1, v1, p3

    sub-int v4, v1, v21

    goto :goto_0

    :sswitch_1
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/widget/AlertDialogLayout;->mPaddingTop:I

    sub-int v23, p5, p3

    sub-int v23, v23, v21

    div-int/lit8 v23, v23, 0x2

    add-int v4, v1, v23

    goto :goto_0

    :cond_3
    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v12

    goto :goto_1

    :sswitch_2
    sub-int v1, v9, v5

    div-int/lit8 v1, v1, 0x2

    add-int v1, v1, v20

    move-object/from16 v0, v17

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    move/from16 v23, v0

    add-int v1, v1, v23

    move-object/from16 v0, v17

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    move/from16 v23, v0

    sub-int v3, v1, v23

    goto :goto_3

    :sswitch_3
    sub-int v1, v8, v5

    move-object/from16 v0, v17

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    move/from16 v23, v0

    sub-int v3, v1, v23

    goto :goto_3

    :cond_4
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x50 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_2
        0x5 -> :sswitch_3
    .end sparse-switch
.end method

.method protected onMeasure(II)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/AlertDialogLayout;->tryOnMeasure(II)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    :cond_0
    return-void
.end method
