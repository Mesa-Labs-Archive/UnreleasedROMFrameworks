.class public Lcom/android/server/wm/MinimizeDockedStackDimlayerController;
.super Ljava/lang/Object;
.source "MinimizeDockedStackDimlayerController.java"

# interfaces
.implements Lcom/android/server/wm/DimLayer$DimLayerUser;


# instance fields
.field private mDimLayer:Lcom/android/server/wm/DimLayer;

.field private mDimLayerAlpha:F

.field private mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field private mReadyToShow:Z

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field private mTargetStackId:I

.field private final mTmpRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/MinimizeDockedStackDimlayerController;->mTmpRect:Landroid/graphics/Rect;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/MinimizeDockedStackDimlayerController;->mDimLayerAlpha:F

    iput-object p1, p0, Lcom/android/server/wm/MinimizeDockedStackDimlayerController;->mService:Lcom/android/server/wm/WindowManagerService;

    return-void
.end method

.method private initiate()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/MinimizeDockedStackDimlayerController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/MinimizeDockedStackDimlayerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    new-instance v0, Lcom/android/server/wm/DimLayer;

    iget-object v1, p0, Lcom/android/server/wm/MinimizeDockedStackDimlayerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, p0, Lcom/android/server/wm/MinimizeDockedStackDimlayerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v2

    const-string/jumbo v3, "MinimizeDockedStackDimlayer"

    invoke-direct {v0, v1, p0, v2, v3}, Lcom/android/server/wm/DimLayer;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DimLayer$DimLayerUser;ILjava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wm/MinimizeDockedStackDimlayerController;->mDimLayer:Lcom/android/server/wm/DimLayer;

    return-void
.end method


# virtual methods
.method public dimFullscreen()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDimBounds(Landroid/graphics/Rect;)V
    .locals 3

    iget-object v1, p0, Lcom/android/server/wm/MinimizeDockedStackDimlayerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v2, p0, Lcom/android/server/wm/MinimizeDockedStackDimlayerController;->mTargetStackId:I

    invoke-virtual {v1, v2}, Lcom/android/server/wm/DisplayContent;->getStackById(I)Lcom/android/server/wm/TaskStack;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/server/wm/TaskStack;->getDimBounds(Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method public getDisplayInfo()Landroid/view/DisplayInfo;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/wm/MinimizeDockedStackDimlayerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/MinimizeDockedStackDimlayerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method getMinimizeDimLayer()I
    .locals 2

    iget-object v1, p0, Lcom/android/server/wm/MinimizeDockedStackDimlayerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDockedDividerController()Lcom/android/server/wm/DockedStackDividerController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DockedStackDividerController;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, v0, Lcom/android/server/wm/WindowState;->mLayer:I

    add-int/lit8 v1, v1, -0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isAttachedToDisplay()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/MinimizeDockedStackDimlayerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public mightShowMinimizeDimLayerInTransaction()V
    .locals 6

    iget-boolean v0, p0, Lcom/android/server/wm/MinimizeDockedStackDimlayerController;->mReadyToShow:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/MinimizeDockedStackDimlayerController;->mDimLayer:Lcom/android/server/wm/DimLayer;

    invoke-virtual {p0}, Lcom/android/server/wm/MinimizeDockedStackDimlayerController;->getMinimizeDimLayer()I

    move-result v1

    iget v2, p0, Lcom/android/server/wm/MinimizeDockedStackDimlayerController;->mDimLayerAlpha:F

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v1, v2, v4, v5}, Lcom/android/server/wm/DimLayer;->show(IFJ)V

    :cond_0
    return-void
.end method

.method public setMinimizeDimLayer(ZIF)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/MinimizeDockedStackDimlayerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v0, p0, Lcom/android/server/wm/MinimizeDockedStackDimlayerController;->mDimLayer:Lcom/android/server/wm/DimLayer;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/wm/MinimizeDockedStackDimlayerController;->initiate()V

    :cond_0
    if-eqz p1, :cond_2

    iput p2, p0, Lcom/android/server/wm/MinimizeDockedStackDimlayerController;->mTargetStackId:I

    iput p3, p0, Lcom/android/server/wm/MinimizeDockedStackDimlayerController;->mDimLayerAlpha:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/MinimizeDockedStackDimlayerController;->mReadyToShow:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_2
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/wm/MinimizeDockedStackDimlayerController;->mReadyToShow:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/MinimizeDockedStackDimlayerController;->mReadyToShow:Z

    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    iget-object v0, p0, Lcom/android/server/wm/MinimizeDockedStackDimlayerController;->mDimLayer:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v0}, Lcom/android/server/wm/DimLayer;->hide()V

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public toShortString()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public updateMinimizeDimBoundsInTransaction()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/wm/MinimizeDockedStackDimlayerController;->mReadyToShow:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/MinimizeDockedStackDimlayerController;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/MinimizeDockedStackDimlayerController;->getDimBounds(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/server/wm/MinimizeDockedStackDimlayerController;->mDimLayer:Lcom/android/server/wm/DimLayer;

    iget-object v1, p0, Lcom/android/server/wm/MinimizeDockedStackDimlayerController;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DimLayer;->setBounds(Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method
