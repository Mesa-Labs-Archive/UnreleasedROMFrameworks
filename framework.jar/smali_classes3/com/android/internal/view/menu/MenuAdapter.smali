.class public Lcom/android/internal/view/menu/MenuAdapter;
.super Landroid/widget/BaseAdapter;
.source "MenuAdapter.java"


# static fields
.field static final ITEM_LAYOUT:I = 0x10900b9


# instance fields
.field mAdapterMenu:Lcom/android/internal/view/menu/MenuBuilder;

.field private mExpandedIndex:I

.field private mForceShowIcon:Z

.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mOverflowOnly:Z


# direct methods
.method public constructor <init>(Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/LayoutInflater;Z)V
    .locals 1

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/view/menu/MenuAdapter;->mExpandedIndex:I

    iput-boolean p3, p0, Lcom/android/internal/view/menu/MenuAdapter;->mOverflowOnly:Z

    iput-object p2, p0, Lcom/android/internal/view/menu/MenuAdapter;->mInflater:Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/android/internal/view/menu/MenuAdapter;->mAdapterMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuAdapter;->findExpandedIndex()V

    return-void
.end method


# virtual methods
.method findExpandedIndex()V
    .locals 6

    iget-object v5, p0, Lcom/android/internal/view/menu/MenuAdapter;->mAdapterMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v5}, Lcom/android/internal/view/menu/MenuBuilder;->getExpandedItem()Lcom/android/internal/view/menu/MenuItemImpl;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v5, p0, Lcom/android/internal/view/menu/MenuAdapter;->mAdapterMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v5}, Lcom/android/internal/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/view/menu/MenuItemImpl;

    if-ne v3, v1, :cond_0

    iput v2, p0, Lcom/android/internal/view/menu/MenuAdapter;->mExpandedIndex:I

    return-void

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, -0x1

    iput v5, p0, Lcom/android/internal/view/menu/MenuAdapter;->mExpandedIndex:I

    return-void
.end method

.method public getAdapterMenu()Lcom/android/internal/view/menu/MenuBuilder;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/view/menu/MenuAdapter;->mAdapterMenu:Lcom/android/internal/view/menu/MenuBuilder;

    return-object v0
.end method

.method public getCount()I
    .locals 2

    iget-boolean v1, p0, Lcom/android/internal/view/menu/MenuAdapter;->mOverflowOnly:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/view/menu/MenuAdapter;->mAdapterMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v0

    :goto_0
    iget v1, p0, Lcom/android/internal/view/menu/MenuAdapter;->mExpandedIndex:I

    if-gez v1, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    return v1

    :cond_0
    iget-object v1, p0, Lcom/android/internal/view/menu/MenuAdapter;->mAdapterMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    return v1
.end method

.method public getForceShowIcon()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/view/menu/MenuAdapter;->mForceShowIcon:Z

    return v0
.end method

.method public getItem(I)Lcom/android/internal/view/menu/MenuItemImpl;
    .locals 2

    iget-boolean v1, p0, Lcom/android/internal/view/menu/MenuAdapter;->mOverflowOnly:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/view/menu/MenuAdapter;->mAdapterMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v0

    :goto_0
    iget v1, p0, Lcom/android/internal/view/menu/MenuAdapter;->mExpandedIndex:I

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/android/internal/view/menu/MenuAdapter;->mExpandedIndex:I

    if-lt p1, v1, :cond_0

    add-int/lit8 p1, p1, 0x1

    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/view/menu/MenuItemImpl;

    return-object v1

    :cond_1
    iget-object v1, p0, Lcom/android/internal/view/menu/MenuAdapter;->mAdapterMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/MenuAdapter;->getItem(I)Lcom/android/internal/view/menu/MenuItemImpl;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    const/4 v3, 0x0

    if-nez p2, :cond_0

    iget-object v1, p0, Lcom/android/internal/view/menu/MenuAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x10900b9

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_0
    move-object v0, p2

    check-cast v0, Lcom/android/internal/view/menu/MenuView$ItemView;

    iget-boolean v1, p0, Lcom/android/internal/view/menu/MenuAdapter;->mForceShowIcon:Z

    if-eqz v1, :cond_1

    move-object v1, p2

    check-cast v1, Lcom/android/internal/view/menu/ListMenuItemView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/internal/view/menu/ListMenuItemView;->setForceShowIcon(Z)V

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/MenuAdapter;->getItem(I)Lcom/android/internal/view/menu/MenuItemImpl;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Lcom/android/internal/view/menu/MenuView$ItemView;->initialize(Lcom/android/internal/view/menu/MenuItemImpl;I)V

    return-object p2
.end method

.method public notifyDataSetChanged()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuAdapter;->findExpandedIndex()V

    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setForceShowIcon(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/view/menu/MenuAdapter;->mForceShowIcon:Z

    return-void
.end method
