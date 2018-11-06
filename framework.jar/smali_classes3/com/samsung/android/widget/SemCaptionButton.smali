.class public Lcom/samsung/android/widget/SemCaptionButton;
.super Landroid/widget/Button;
.source "SemCaptionButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/widget/SemCaptionButton$OnAccessibilityActionClickListener;
    }
.end annotation


# instance fields
.field public mOnAccessibilityActionClickListener:Lcom/samsung/android/widget/SemCaptionButton$OnAccessibilityActionClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public performAccessibilityActionInternal(ILandroid/os/Bundle;)Z
    .locals 1

    const/16 v0, 0x10

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/widget/SemCaptionButton;->mOnAccessibilityActionClickListener:Lcom/samsung/android/widget/SemCaptionButton$OnAccessibilityActionClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/widget/SemCaptionButton;->mOnAccessibilityActionClickListener:Lcom/samsung/android/widget/SemCaptionButton$OnAccessibilityActionClickListener;

    invoke-interface {v0, p0}, Lcom/samsung/android/widget/SemCaptionButton$OnAccessibilityActionClickListener;->onAccessibilityActionClick(Landroid/view/View;)V

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/Button;->performAccessibilityActionInternal(ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public setOnAccessibilityActionClickListener(Lcom/samsung/android/widget/SemCaptionButton$OnAccessibilityActionClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/widget/SemCaptionButton;->mOnAccessibilityActionClickListener:Lcom/samsung/android/widget/SemCaptionButton$OnAccessibilityActionClickListener;

    return-void
.end method
